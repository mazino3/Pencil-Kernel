
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
c0100023:	83 ec 68             	sub    esp,0x68
c0100026:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c010002d:	e8 0f 75 00 00       	call   c0107541 <set_cursor>
c0100032:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0100039:	eb 18                	jmp    c0100053 <kernel_main+0x33>
c010003b:	c7 44 24 04 0a 00 00 	mov    DWORD PTR [esp+0x4],0xa
c0100042:	00 
c0100043:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c010004a:	e8 48 70 00 00       	call   c0107097 <put_char>
c010004f:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0100053:	83 7d f4 22          	cmp    DWORD PTR [ebp-0xc],0x22
c0100057:	7e e2                	jle    c010003b <kernel_main+0x1b>
c0100059:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0100060:	e8 dc 74 00 00       	call   c0107541 <set_cursor>
c0100065:	e8 76 0a 00 00       	call   c0100ae0 <init_all>
c010006a:	e8 5a 17 00 00       	call   c01017c9 <intr_enable>
c010006f:	b8 40 4f 10 c0       	mov    eax,0xc0104f40
c0100074:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010007b:	00 
c010007c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100080:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c0100087:	00 
c0100088:	c7 04 24 33 ab 10 c0 	mov    DWORD PTR [esp],0xc010ab33
c010008f:	e8 05 30 00 00       	call   c0103099 <thread_start>
c0100094:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0100097:	a3 70 24 11 c0       	mov    ds:0xc0112470,eax
c010009c:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01000a3:	00 
c01000a4:	c7 44 24 08 3c 58 10 	mov    DWORD PTR [esp+0x8],0xc010583c
c01000ab:	c0 
c01000ac:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c01000b3:	00 
c01000b4:	c7 04 24 36 ab 10 c0 	mov    DWORD PTR [esp],0xc010ab36
c01000bb:	e8 d9 2f 00 00       	call   c0103099 <thread_start>
c01000c0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01000c3:	a3 74 24 11 c0       	mov    ds:0xc0112474,eax
c01000c8:	c7 44 24 0c 3b ab 10 	mov    DWORD PTR [esp+0xc],0xc010ab3b
c01000cf:	c0 
c01000d0:	c7 44 24 08 4f 01 10 	mov    DWORD PTR [esp+0x8],0xc010014f
c01000d7:	c0 
c01000d8:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c01000df:	00 
c01000e0:	c7 04 24 42 ab 10 c0 	mov    DWORD PTR [esp],0xc010ab42
c01000e7:	e8 ad 2f 00 00       	call   c0103099 <thread_start>
c01000ec:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01000f3:	00 
c01000f4:	c7 44 24 08 bf 06 10 	mov    DWORD PTR [esp+0x8],0xc01006bf
c01000fb:	c0 
c01000fc:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c0100103:	00 
c0100104:	c7 04 24 46 ab 10 c0 	mov    DWORD PTR [esp],0xc010ab46
c010010b:	e8 89 2f 00 00       	call   c0103099 <thread_start>
c0100110:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0100117:	00 
c0100118:	c7 44 24 08 a9 07 10 	mov    DWORD PTR [esp+0x8],0xc01007a9
c010011f:	c0 
c0100120:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c0100127:	00 
c0100128:	c7 04 24 4c ab 10 c0 	mov    DWORD PTR [esp],0xc010ab4c
c010012f:	e8 65 2f 00 00       	call   c0103099 <thread_start>
c0100134:	c7 44 24 04 52 ab 10 	mov    DWORD PTR [esp+0x4],0xc010ab52
c010013b:	c0 
c010013c:	c7 04 24 9f 09 10 c0 	mov    DWORD PTR [esp],0xc010099f
c0100143:	e8 23 38 00 00       	call   c010396b <process_execute>
c0100148:	e8 00 7d 00 00       	call   c0107e4d <init_screen>
c010014d:	eb fe                	jmp    c010014d <kernel_main+0x12d>

c010014f <k_thread_a>:
c010014f:	55                   	push   ebp
c0100150:	89 e5                	mov    ebp,esp
c0100152:	57                   	push   edi
c0100153:	56                   	push   esi
c0100154:	53                   	push   ebx
c0100155:	81 ec 9c 00 00 00    	sub    esp,0x9c
c010015b:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100160:	8b 00                	mov    eax,DWORD PTR [eax]
c0100162:	69 c0 c8 00 00 00    	imul   eax,eax,0xc8
c0100168:	89 04 24             	mov    DWORD PTR [esp],eax
c010016b:	e8 78 17 00 00       	call   c01018e8 <kmalloc>
c0100170:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0100173:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100178:	8b 00                	mov    eax,DWORD PTR [eax]
c010017a:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c010017d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0100181:	c7 44 24 04 32 00 00 	mov    DWORD PTR [esp+0x4],0x32
c0100188:	00 
c0100189:	89 04 24             	mov    DWORD PTR [esp],eax
c010018c:	e8 34 66 00 00       	call   c01067c5 <api_viewinit>
c0100191:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0100194:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100199:	8b 00                	mov    eax,DWORD PTR [eax]
c010019b:	83 e8 01             	sub    eax,0x1
c010019e:	89 c3                	mov    ebx,eax
c01001a0:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c01001a7:	00 
c01001a8:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c01001af:	00 
c01001b0:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c01001b7:	e8 c8 78 00 00       	call   c0107a84 <rgb>
c01001bc:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01001c1:	8b 12                	mov    edx,DWORD PTR [edx]
c01001c3:	c7 44 24 18 31 00 00 	mov    DWORD PTR [esp+0x18],0x31
c01001ca:	00 
c01001cb:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01001cf:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c01001d6:	00 
c01001d7:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01001de:	00 
c01001df:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01001e3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01001e7:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01001ea:	89 04 24             	mov    DWORD PTR [esp],eax
c01001ed:	e8 5a 7a 00 00       	call   c0107c4c <viewFill>
c01001f2:	c7 45 d0 03 00 00 00 	mov    DWORD PTR [ebp-0x30],0x3
c01001f9:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01001fc:	83 c0 28             	add    eax,0x28
c01001ff:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0100202:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100205:	8d 78 28             	lea    edi,[eax+0x28]
c0100208:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010020b:	8d 70 0a             	lea    esi,[eax+0xa]
c010020e:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100211:	8d 58 0a             	lea    ebx,[eax+0xa]
c0100214:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c010021b:	00 
c010021c:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0100223:	00 
c0100224:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c010022b:	e8 54 78 00 00       	call   c0107a84 <rgb>
c0100230:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100235:	8b 12                	mov    edx,DWORD PTR [edx]
c0100237:	8b 4d 84             	mov    ecx,DWORD PTR [ebp-0x7c]
c010023a:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c010023e:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0100242:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0100246:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c010024a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010024e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100252:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100255:	89 04 24             	mov    DWORD PTR [esp],eax
c0100258:	e8 ef 79 00 00       	call   c0107c4c <viewFill>
c010025d:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0100264:	00 
c0100265:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c010026c:	00 
c010026d:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0100274:	e8 0b 78 00 00       	call   c0107a84 <rgb>
c0100279:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010027e:	8b 12                	mov    edx,DWORD PTR [edx]
c0100280:	c7 44 24 18 28 00 00 	mov    DWORD PTR [esp+0x18],0x28
c0100287:	00 
c0100288:	c7 44 24 14 28 00 00 	mov    DWORD PTR [esp+0x14],0x28
c010028f:	00 
c0100290:	c7 44 24 10 0a 00 00 	mov    DWORD PTR [esp+0x10],0xa
c0100297:	00 
c0100298:	c7 44 24 0c 0a 00 00 	mov    DWORD PTR [esp+0xc],0xa
c010029f:	00 
c01002a0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01002a4:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01002a8:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01002ab:	89 04 24             	mov    DWORD PTR [esp],eax
c01002ae:	e8 99 79 00 00       	call   c0107c4c <viewFill>
c01002b3:	c7 45 cc 0a 00 00 00 	mov    DWORD PTR [ebp-0x34],0xa
c01002ba:	c7 45 c8 0a 00 00 00 	mov    DWORD PTR [ebp-0x38],0xa
c01002c1:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c01002c8:	e9 b1 00 00 00       	jmp    c010037e <k_thread_a+0x22f>
c01002cd:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c01002d4:	e9 97 00 00 00       	jmp    c0100370 <k_thread_a+0x221>
c01002d9:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01002dc:	89 d0                	mov    eax,edx
c01002de:	c1 e0 04             	shl    eax,0x4
c01002e1:	29 d0                	sub    eax,edx
c01002e3:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c01002e6:	05 20 80 10 c0       	add    eax,0xc0108020
c01002eb:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01002ee:	3c 23                	cmp    al,0x23
c01002f0:	75 7a                	jne    c010036c <k_thread_a+0x21d>
c01002f2:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01002f5:	83 c0 01             	add    eax,0x1
c01002f8:	01 c0                	add    eax,eax
c01002fa:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
c01002fd:	01 c2                	add    edx,eax
c01002ff:	89 55 80             	mov    DWORD PTR [ebp-0x80],edx
c0100302:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0100305:	83 c0 01             	add    eax,0x1
c0100308:	01 c0                	add    eax,eax
c010030a:	89 c7                	mov    edi,eax
c010030c:	03 7d cc             	add    edi,DWORD PTR [ebp-0x34]
c010030f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0100312:	01 c0                	add    eax,eax
c0100314:	89 c6                	mov    esi,eax
c0100316:	03 75 c8             	add    esi,DWORD PTR [ebp-0x38]
c0100319:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010031c:	01 c0                	add    eax,eax
c010031e:	89 c3                	mov    ebx,eax
c0100320:	03 5d cc             	add    ebx,DWORD PTR [ebp-0x34]
c0100323:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c010032a:	00 
c010032b:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0100332:	00 
c0100333:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c010033a:	e8 45 77 00 00       	call   c0107a84 <rgb>
c010033f:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100344:	8b 12                	mov    edx,DWORD PTR [edx]
c0100346:	8b 4d 80             	mov    ecx,DWORD PTR [ebp-0x80]
c0100349:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c010034d:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0100351:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0100355:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0100359:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010035d:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100361:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100364:	89 04 24             	mov    DWORD PTR [esp],eax
c0100367:	e8 e0 78 00 00       	call   c0107c4c <viewFill>
c010036c:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0100370:	83 7d e4 0e          	cmp    DWORD PTR [ebp-0x1c],0xe
c0100374:	0f 8e 5f ff ff ff    	jle    c01002d9 <k_thread_a+0x18a>
c010037a:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c010037e:	83 7d e0 0e          	cmp    DWORD PTR [ebp-0x20],0xe
c0100382:	0f 8e 45 ff ff ff    	jle    c01002cd <k_thread_a+0x17e>
c0100388:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010038b:	83 c0 28             	add    eax,0x28
c010038e:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0100394:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100397:	8d 78 3c             	lea    edi,[eax+0x3c]
c010039a:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010039d:	8d 70 0a             	lea    esi,[eax+0xa]
c01003a0:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01003a3:	8d 58 32             	lea    ebx,[eax+0x32]
c01003a6:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c01003ad:	00 
c01003ae:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c01003b5:	00 
c01003b6:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c01003bd:	e8 c2 76 00 00       	call   c0107a84 <rgb>
c01003c2:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01003c7:	8b 12                	mov    edx,DWORD PTR [edx]
c01003c9:	8b 8d 7c ff ff ff    	mov    ecx,DWORD PTR [ebp-0x84]
c01003cf:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c01003d3:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c01003d7:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c01003db:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01003df:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01003e3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01003e7:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01003ea:	89 04 24             	mov    DWORD PTR [esp],eax
c01003ed:	e8 5a 78 00 00       	call   c0107c4c <viewFill>
c01003f2:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01003f9:	00 
c01003fa:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0100401:	00 
c0100402:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0100409:	e8 76 76 00 00       	call   c0107a84 <rgb>
c010040e:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100413:	8b 12                	mov    edx,DWORD PTR [edx]
c0100415:	c7 44 24 18 28 00 00 	mov    DWORD PTR [esp+0x18],0x28
c010041c:	00 
c010041d:	c7 44 24 14 3c 00 00 	mov    DWORD PTR [esp+0x14],0x3c
c0100424:	00 
c0100425:	c7 44 24 10 0a 00 00 	mov    DWORD PTR [esp+0x10],0xa
c010042c:	00 
c010042d:	c7 44 24 0c 32 00 00 	mov    DWORD PTR [esp+0xc],0x32
c0100434:	00 
c0100435:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100439:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010043d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100440:	89 04 24             	mov    DWORD PTR [esp],eax
c0100443:	e8 04 78 00 00       	call   c0107c4c <viewFill>
c0100448:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010044b:	83 c0 27             	add    eax,0x27
c010044e:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c0100454:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100459:	8b 10                	mov    edx,DWORD PTR [eax]
c010045b:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010045e:	01 d0                	add    eax,edx
c0100460:	83 e8 0b             	sub    eax,0xb
c0100463:	89 c6                	mov    esi,eax
c0100465:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100468:	8d 78 09             	lea    edi,[eax+0x9]
c010046b:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100470:	8b 10                	mov    edx,DWORD PTR [eax]
c0100472:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100475:	01 d0                	add    eax,edx
c0100477:	2d 99 00 00 00       	sub    eax,0x99
c010047c:	89 c3                	mov    ebx,eax
c010047e:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c0100485:	00 
c0100486:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c010048d:	00 
c010048e:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c0100495:	e8 ea 75 00 00       	call   c0107a84 <rgb>
c010049a:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010049f:	8b 12                	mov    edx,DWORD PTR [edx]
c01004a1:	8b 8d 78 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x88]
c01004a7:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c01004ab:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c01004af:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
c01004b3:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01004b7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01004bb:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01004bf:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004c2:	89 04 24             	mov    DWORD PTR [esp],eax
c01004c5:	e8 82 77 00 00       	call   c0107c4c <viewFill>
c01004ca:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01004cf:	8b 00                	mov    eax,DWORD PTR [eax]
c01004d1:	83 e8 0b             	sub    eax,0xb
c01004d4:	89 c6                	mov    esi,eax
c01004d6:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01004db:	8b 00                	mov    eax,DWORD PTR [eax]
c01004dd:	2d 99 00 00 00       	sub    eax,0x99
c01004e2:	89 c3                	mov    ebx,eax
c01004e4:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01004eb:	00 
c01004ec:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01004f3:	00 
c01004f4:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01004fb:	e8 84 75 00 00       	call   c0107a84 <rgb>
c0100500:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100505:	8b 12                	mov    edx,DWORD PTR [edx]
c0100507:	c7 44 24 18 27 00 00 	mov    DWORD PTR [esp+0x18],0x27
c010050e:	00 
c010050f:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0100513:	c7 44 24 10 09 00 00 	mov    DWORD PTR [esp+0x10],0x9
c010051a:	00 
c010051b:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c010051f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100523:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100527:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010052a:	89 04 24             	mov    DWORD PTR [esp],eax
c010052d:	e8 1a 77 00 00       	call   c0107c4c <viewFill>
c0100532:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0100537:	8b 00                	mov    eax,DWORD PTR [eax]
c0100539:	83 e8 32             	sub    eax,0x32
c010053c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100540:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0100547:	00 
c0100548:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010054b:	89 04 24             	mov    DWORD PTR [esp],eax
c010054e:	e8 05 63 00 00       	call   c0106858 <api_viewslide>
c0100553:	8d 45 b0             	lea    eax,[ebp-0x50]
c0100556:	89 04 24             	mov    DWORD PTR [esp],eax
c0100559:	e8 bd 41 00 00       	call   c010471b <get_time>
c010055e:	a1 8c bf 10 c0       	mov    eax,ds:0xc010bf8c
c0100563:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0100566:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
c0100569:	8b 5d b8             	mov    ebx,DWORD PTR [ebp-0x48]
c010056c:	8b 4d bc             	mov    ecx,DWORD PTR [ebp-0x44]
c010056f:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
c0100572:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0100575:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c0100579:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010057d:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0100581:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0100585:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100589:	c7 44 24 04 5d ab 10 	mov    DWORD PTR [esp+0x4],0xc010ab5d
c0100590:	c0 
c0100591:	8d 45 90             	lea    eax,[ebp-0x70]
c0100594:	89 04 24             	mov    DWORD PTR [esp],eax
c0100597:	e8 e4 71 00 00       	call   c0107780 <sprintf>
c010059c:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01005a1:	8b 00                	mov    eax,DWORD PTR [eax]
c01005a3:	83 e8 11             	sub    eax,0x11
c01005a6:	89 c6                	mov    esi,eax
c01005a8:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01005ad:	8b 00                	mov    eax,DWORD PTR [eax]
c01005af:	2d 91 00 00 00       	sub    eax,0x91
c01005b4:	89 c3                	mov    ebx,eax
c01005b6:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01005bd:	00 
c01005be:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01005c5:	00 
c01005c6:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01005cd:	e8 b2 74 00 00       	call   c0107a84 <rgb>
c01005d2:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01005d7:	8b 12                	mov    edx,DWORD PTR [edx]
c01005d9:	c7 44 24 18 20 00 00 	mov    DWORD PTR [esp+0x18],0x20
c01005e0:	00 
c01005e1:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c01005e5:	c7 44 24 10 11 00 00 	mov    DWORD PTR [esp+0x10],0x11
c01005ec:	00 
c01005ed:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01005f1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01005f5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01005f9:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01005fc:	89 04 24             	mov    DWORD PTR [esp],eax
c01005ff:	e8 48 76 00 00       	call   c0107c4c <viewFill>
c0100604:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c010060b:	00 
c010060c:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0100613:	00 
c0100614:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c010061b:	e8 64 74 00 00       	call   c0107a84 <rgb>
c0100620:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100625:	8b 12                	mov    edx,DWORD PTR [edx]
c0100627:	81 ea 91 00 00 00    	sub    edx,0x91
c010062d:	89 d1                	mov    ecx,edx
c010062f:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100634:	8b 12                	mov    edx,DWORD PTR [edx]
c0100636:	8d 5d 90             	lea    ebx,[ebp-0x70]
c0100639:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010063d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0100641:	c7 44 24 0c 11 00 00 	mov    DWORD PTR [esp+0xc],0x11
c0100648:	00 
c0100649:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010064d:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100651:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100654:	89 04 24             	mov    DWORD PTR [esp],eax
c0100657:	e8 75 77 00 00       	call   c0107dd1 <vput_str>
c010065c:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100661:	8b 00                	mov    eax,DWORD PTR [eax]
c0100663:	83 e8 11             	sub    eax,0x11
c0100666:	89 c2                	mov    edx,eax
c0100668:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010066d:	8b 00                	mov    eax,DWORD PTR [eax]
c010066f:	2d 91 00 00 00       	sub    eax,0x91
c0100674:	c7 44 24 10 20 00 00 	mov    DWORD PTR [esp+0x10],0x20
c010067b:	00 
c010067c:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0100680:	c7 44 24 08 11 00 00 	mov    DWORD PTR [esp+0x8],0x11
c0100687:	00 
c0100688:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010068c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010068f:	89 04 24             	mov    DWORD PTR [esp],eax
c0100692:	e8 73 61 00 00       	call   c010680a <api_viewflush>
c0100697:	90                   	nop
c0100698:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010069b:	8d 50 64             	lea    edx,[eax+0x64]
c010069e:	a1 8c bf 10 c0       	mov    eax,ds:0xc010bf8c
c01006a3:	39 c2                	cmp    edx,eax
c01006a5:	7d f1                	jge    c0100698 <k_thread_a+0x549>
c01006a7:	a1 8c bf 10 c0       	mov    eax,ds:0xc010bf8c
c01006ac:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01006af:	8d 45 b0             	lea    eax,[ebp-0x50]
c01006b2:	89 04 24             	mov    DWORD PTR [esp],eax
c01006b5:	e8 61 40 00 00       	call   c010471b <get_time>
c01006ba:	e9 a7 fe ff ff       	jmp    c0100566 <k_thread_a+0x417>

c01006bf <shell>:
c01006bf:	55                   	push   ebp
c01006c0:	89 e5                	mov    ebp,esp
c01006c2:	53                   	push   ebx
c01006c3:	83 ec 34             	sub    esp,0x34
c01006c6:	c7 44 24 04 76 ab 10 	mov    DWORD PTR [esp+0x4],0xc010ab76
c01006cd:	c0 
c01006ce:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c01006d5:	e8 35 34 00 00       	call   c0103b0f <console_str>
c01006da:	c7 45 f4 14 00 00 00 	mov    DWORD PTR [ebp-0xc],0x14
c01006e1:	c7 45 f0 64 00 00 00 	mov    DWORD PTR [ebp-0x10],0x64
c01006e8:	eb 01                	jmp    c01006eb <shell+0x2c>
c01006ea:	90                   	nop
c01006eb:	c7 04 24 20 24 11 c0 	mov    DWORD PTR [esp],0xc0112420
c01006f2:	e8 92 3a 00 00       	call   c0104189 <fifo_empty>
c01006f7:	85 c0                	test   eax,eax
c01006f9:	75 ef                	jne    c01006ea <shell+0x2b>
c01006fb:	8d 45 ef             	lea    eax,[ebp-0x11]
c01006fe:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100702:	c7 04 24 20 24 11 c0 	mov    DWORD PTR [esp],0xc0112420
c0100709:	e8 e3 38 00 00       	call   c0103ff1 <fifo_get>
c010070e:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0100712:	0f be c0             	movsx  eax,al
c0100715:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100719:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c0100720:	e8 a7 33 00 00       	call   c0103acc <console_char>
c0100725:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0100729:	0f be d8             	movsx  ebx,al
c010072c:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0100733:	00 
c0100734:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c010073b:	00 
c010073c:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0100743:	e8 3c 73 00 00       	call   c0107a84 <rgb>
c0100748:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010074d:	8b 12                	mov    edx,DWORD PTR [edx]
c010074f:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0100753:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0100757:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010075a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c010075e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0100761:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100765:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100769:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0100770:	e8 41 75 00 00       	call   c0107cb6 <vput_char>
c0100775:	83 45 f4 08          	add    DWORD PTR [ebp-0xc],0x8
c0100779:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c010077d:	3c 0d                	cmp    al,0xd
c010077f:	0f 85 65 ff ff ff    	jne    c01006ea <shell+0x2b>
c0100785:	c7 45 f4 14 00 00 00 	mov    DWORD PTR [ebp-0xc],0x14
c010078c:	83 45 f0 10          	add    DWORD PTR [ebp-0x10],0x10
c0100790:	c7 44 24 04 7f ab 10 	mov    DWORD PTR [esp+0x4],0xc010ab7f
c0100797:	c0 
c0100798:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c010079f:	e8 6b 33 00 00       	call   c0103b0f <console_str>
c01007a4:	e9 41 ff ff ff       	jmp    c01006ea <shell+0x2b>

c01007a9 <View_thread>:
c01007a9:	55                   	push   ebp
c01007aa:	89 e5                	mov    ebp,esp
c01007ac:	53                   	push   ebx
c01007ad:	83 ec 44             	sub    esp,0x44
c01007b0:	c7 04 24 00 04 00 00 	mov    DWORD PTR [esp],0x400
c01007b7:	e8 58 5f 00 00       	call   c0106714 <api_malloc>
c01007bc:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01007bf:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01007c2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01007c6:	c7 44 24 04 10 00 00 	mov    DWORD PTR [esp+0x4],0x10
c01007cd:	00 
c01007ce:	c7 04 24 10 00 00 00 	mov    DWORD PTR [esp],0x10
c01007d5:	e8 eb 5f 00 00       	call   c01067c5 <api_viewinit>
c01007da:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01007dd:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01007e4:	e9 d0 00 00 00       	jmp    c01008b9 <View_thread+0x110>
c01007e9:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01007f0:	e9 b6 00 00 00       	jmp    c01008ab <View_thread+0x102>
c01007f5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01007f8:	c1 e0 04             	shl    eax,0x4
c01007fb:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01007fe:	05 20 81 10 c0       	add    eax,0xc0108120
c0100803:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0100806:	3c 23                	cmp    al,0x23
c0100808:	75 2f                	jne    c0100839 <View_thread+0x90>
c010080a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010080d:	c1 e0 04             	shl    eax,0x4
c0100810:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0100813:	c1 e0 02             	shl    eax,0x2
c0100816:	89 c3                	mov    ebx,eax
c0100818:	03 5d e4             	add    ebx,DWORD PTR [ebp-0x1c]
c010081b:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0100822:	00 
c0100823:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c010082a:	00 
c010082b:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0100832:	e8 4d 72 00 00       	call   c0107a84 <rgb>
c0100837:	89 03                	mov    DWORD PTR [ebx],eax
c0100839:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010083c:	c1 e0 04             	shl    eax,0x4
c010083f:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0100842:	05 20 81 10 c0       	add    eax,0xc0108120
c0100847:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010084a:	3c 2d                	cmp    al,0x2d
c010084c:	75 15                	jne    c0100863 <View_thread+0xba>
c010084e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0100851:	c1 e0 04             	shl    eax,0x4
c0100854:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0100857:	c1 e0 02             	shl    eax,0x2
c010085a:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c010085d:	c7 00 00 00 00 ff    	mov    DWORD PTR [eax],0xff000000
c0100863:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0100866:	c1 e0 04             	shl    eax,0x4
c0100869:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c010086c:	05 20 81 10 c0       	add    eax,0xc0108120
c0100871:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0100874:	3c 2a                	cmp    al,0x2a
c0100876:	75 2f                	jne    c01008a7 <View_thread+0xfe>
c0100878:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010087b:	c1 e0 04             	shl    eax,0x4
c010087e:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0100881:	c1 e0 02             	shl    eax,0x2
c0100884:	89 c3                	mov    ebx,eax
c0100886:	03 5d e4             	add    ebx,DWORD PTR [ebp-0x1c]
c0100889:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c0100890:	00 
c0100891:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0100898:	00 
c0100899:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c01008a0:	e8 df 71 00 00       	call   c0107a84 <rgb>
c01008a5:	89 03                	mov    DWORD PTR [ebx],eax
c01008a7:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01008ab:	83 7d f4 0f          	cmp    DWORD PTR [ebp-0xc],0xf
c01008af:	0f 8e 40 ff ff ff    	jle    c01007f5 <View_thread+0x4c>
c01008b5:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c01008b9:	83 7d f0 0f          	cmp    DWORD PTR [ebp-0x10],0xf
c01008bd:	0f 8e 26 ff ff ff    	jle    c01007e9 <View_thread+0x40>
c01008c3:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01008c8:	8b 00                	mov    eax,DWORD PTR [eax]
c01008ca:	d1 e8                	shr    eax,1
c01008cc:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01008cf:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01008d4:	8b 00                	mov    eax,DWORD PTR [eax]
c01008d6:	d1 e8                	shr    eax,1
c01008d8:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01008db:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01008de:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01008e2:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01008e5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01008e9:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01008ec:	89 04 24             	mov    DWORD PTR [esp],eax
c01008ef:	e8 64 5f 00 00       	call   c0106858 <api_viewslide>
c01008f4:	eb 01                	jmp    c01008f7 <View_thread+0x14e>
c01008f6:	90                   	nop
c01008f7:	8d 45 cc             	lea    eax,[ebp-0x34]
c01008fa:	89 04 24             	mov    DWORD PTR [esp],eax
c01008fd:	e8 73 3d 00 00       	call   c0104675 <get_mouse>
c0100902:	83 ec 04             	sub    esp,0x4
c0100905:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100908:	85 c0                	test   eax,eax
c010090a:	74 ea                	je     c01008f6 <View_thread+0x14d>
c010090c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010090f:	01 45 ec             	add    DWORD PTR [ebp-0x14],eax
c0100912:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100915:	01 45 e8             	add    DWORD PTR [ebp-0x18],eax
c0100918:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c010091c:	79 07                	jns    c0100925 <View_thread+0x17c>
c010091e:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0100925:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0100929:	79 07                	jns    c0100932 <View_thread+0x189>
c010092b:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0100932:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0100935:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010093a:	8b 00                	mov    eax,DWORD PTR [eax]
c010093c:	83 e8 03             	sub    eax,0x3
c010093f:	39 c2                	cmp    edx,eax
c0100941:	76 0d                	jbe    c0100950 <View_thread+0x1a7>
c0100943:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100948:	8b 00                	mov    eax,DWORD PTR [eax]
c010094a:	83 e8 03             	sub    eax,0x3
c010094d:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0100950:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0100953:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0100958:	8b 00                	mov    eax,DWORD PTR [eax]
c010095a:	83 e8 03             	sub    eax,0x3
c010095d:	39 c2                	cmp    edx,eax
c010095f:	76 0d                	jbe    c010096e <View_thread+0x1c5>
c0100961:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0100966:	8b 00                	mov    eax,DWORD PTR [eax]
c0100968:	83 e8 03             	sub    eax,0x3
c010096b:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010096e:	c7 44 24 04 00 04 00 	mov    DWORD PTR [esp+0x4],0x400
c0100975:	00 
c0100976:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0100979:	89 04 24             	mov    DWORD PTR [esp],eax
c010097c:	e8 19 5f 00 00       	call   c010689a <api_viewupdown>
c0100981:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0100984:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100988:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010098b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010098f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0100992:	89 04 24             	mov    DWORD PTR [esp],eax
c0100995:	e8 be 5e 00 00       	call   c0106858 <api_viewslide>
c010099a:	e9 57 ff ff ff       	jmp    c01008f6 <View_thread+0x14d>

c010099f <u_prog_a>:
c010099f:	55                   	push   ebp
c01009a0:	89 e5                	mov    ebp,esp
c01009a2:	83 ec 28             	sub    esp,0x28
c01009a5:	c7 04 24 40 9c 00 00 	mov    DWORD PTR [esp],0x9c40
c01009ac:	e8 63 5d 00 00       	call   c0106714 <api_malloc>
c01009b1:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01009b4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01009b7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01009bb:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
c01009c2:	00 
c01009c3:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c01009ca:	e8 f6 5d 00 00       	call   c01067c5 <api_viewinit>
c01009cf:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01009d2:	eb fe                	jmp    c01009d2 <u_prog_a+0x33>

c01009d4 <panic_spin>:
c01009d4:	55                   	push   ebp
c01009d5:	89 e5                	mov    ebp,esp
c01009d7:	81 ec a8 00 00 00    	sub    esp,0xa8
c01009dd:	e8 14 0e 00 00       	call   c01017f6 <intr_disable>
c01009e2:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c01009e9:	e8 53 6b 00 00       	call   c0107541 <set_cursor>
c01009ee:	e8 04 26 00 00       	call   c0102ff7 <running_thread>
c01009f3:	83 c0 0c             	add    eax,0xc
c01009f6:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
c01009fa:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c01009fd:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0100a01:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0100a04:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
c0100a08:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0100a0b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0100a0f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0100a12:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0100a16:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100a19:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100a1d:	c7 44 24 04 a8 ab 10 	mov    DWORD PTR [esp+0x4],0xc010aba8
c0100a24:	c0 
c0100a25:	8d 85 79 ff ff ff    	lea    eax,[ebp-0x87]
c0100a2b:	89 04 24             	mov    DWORD PTR [esp],eax
c0100a2e:	e8 4d 6d 00 00       	call   c0107780 <sprintf>
c0100a33:	8d 85 79 ff ff ff    	lea    eax,[ebp-0x87]
c0100a39:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100a3d:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0100a44:	e8 76 67 00 00       	call   c01071bf <put_str>
c0100a49:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0100a50:	00 
c0100a51:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0100a58:	00 
c0100a59:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0100a60:	e8 1f 70 00 00       	call   c0107a84 <rgb>
c0100a65:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100a6a:	8b 12                	mov    edx,DWORD PTR [edx]
c0100a6c:	8d 8d 79 ff ff ff    	lea    ecx,[ebp-0x87]
c0100a72:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c0100a76:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0100a7a:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0100a81:	00 
c0100a82:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0100a89:	00 
c0100a8a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100a8e:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0100a95:	e8 37 73 00 00       	call   c0107dd1 <vput_str>
c0100a9a:	eb fe                	jmp    c0100a9a <panic_spin+0xc6>

c0100a9c <log>:
c0100a9c:	55                   	push   ebp
c0100a9d:	89 e5                	mov    ebp,esp
c0100a9f:	83 ec 18             	sub    esp,0x18
c0100aa2:	c7 44 24 04 16 ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac16
c0100aa9:	c0 
c0100aaa:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100ab1:	e8 09 67 00 00       	call   c01071bf <put_str>
c0100ab6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100ab9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100abd:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100ac4:	e8 f6 66 00 00       	call   c01071bf <put_str>
c0100ac9:	c7 44 24 04 0a 00 00 	mov    DWORD PTR [esp+0x4],0xa
c0100ad0:	00 
c0100ad1:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100ad8:	e8 ba 65 00 00       	call   c0107097 <put_char>
c0100add:	c9                   	leave  
c0100ade:	c3                   	ret    
	...

c0100ae0 <init_all>:
c0100ae0:	55                   	push   ebp
c0100ae1:	89 e5                	mov    ebp,esp
c0100ae3:	83 ec 18             	sub    esp,0x18
c0100ae6:	c7 04 24 3f ac 10 c0 	mov    DWORD PTR [esp],0xc010ac3f
c0100aed:	e8 aa ff ff ff       	call   c0100a9c <log>
c0100af2:	e8 1a 09 00 00       	call   c0101411 <init_idt>
c0100af7:	e8 e5 2a 00 00       	call   c01035e1 <init_tss>
c0100afc:	e8 93 3d 00 00       	call   c0104894 <init_pit>
c0100b01:	e8 96 12 00 00       	call   c0101d9c <init_memory>
c0100b06:	e8 f7 36 00 00       	call   c0104202 <init_keyboard>
c0100b0b:	e8 c7 39 00 00       	call   c01044d7 <init_mouse>
c0100b10:	e8 93 23 00 00       	call   c0102ea8 <init_thread>
c0100b15:	e8 9e 2f 00 00       	call   c0103ab8 <init_console>
c0100b1a:	c7 04 24 48 ac 10 c0 	mov    DWORD PTR [esp],0xc010ac48
c0100b21:	e8 76 ff ff ff       	call   c0100a9c <log>
c0100b26:	c9                   	leave  
c0100b27:	c3                   	ret    
	...

c0100b30 <intr_exit>:
c0100b30:	81 c4 04 00 00 00    	add    esp,0x4
c0100b36:	61                   	popa   
c0100b37:	0f a9                	pop    gs
c0100b39:	0f a1                	pop    fs
c0100b3b:	07                   	pop    es
c0100b3c:	1f                   	pop    ds
c0100b3d:	81 c4 04 00 00 00    	add    esp,0x4
c0100b43:	cf                   	iret   

c0100b44 <asm_intr0x00_handler>:
c0100b44:	68 00 00 00 00       	push   0x0
c0100b49:	1e                   	push   ds
c0100b4a:	06                   	push   es
c0100b4b:	0f a0                	push   fs
c0100b4d:	0f a8                	push   gs
c0100b4f:	60                   	pusha  
c0100b50:	68 00 00 00 00       	push   0x0
c0100b55:	66 8c d0             	mov    ax,ss
c0100b58:	8e d8                	mov    ds,eax
c0100b5a:	8e c0                	mov    es,eax
c0100b5c:	ff 15 60 c3 10 c0    	call   DWORD PTR ds:0xc010c360
c0100b62:	e9 c9 ff ff ff       	jmp    c0100b30 <intr_exit>

c0100b67 <asm_intr0x01_handler>:
c0100b67:	68 00 00 00 00       	push   0x0
c0100b6c:	1e                   	push   ds
c0100b6d:	06                   	push   es
c0100b6e:	0f a0                	push   fs
c0100b70:	0f a8                	push   gs
c0100b72:	60                   	pusha  
c0100b73:	68 01 00 00 00       	push   0x1
c0100b78:	66 8c d0             	mov    ax,ss
c0100b7b:	8e d8                	mov    ds,eax
c0100b7d:	8e c0                	mov    es,eax
c0100b7f:	ff 15 64 c3 10 c0    	call   DWORD PTR ds:0xc010c364
c0100b85:	e9 a6 ff ff ff       	jmp    c0100b30 <intr_exit>

c0100b8a <asm_intr0x02_handler>:
c0100b8a:	68 00 00 00 00       	push   0x0
c0100b8f:	1e                   	push   ds
c0100b90:	06                   	push   es
c0100b91:	0f a0                	push   fs
c0100b93:	0f a8                	push   gs
c0100b95:	60                   	pusha  
c0100b96:	68 02 00 00 00       	push   0x2
c0100b9b:	66 8c d0             	mov    ax,ss
c0100b9e:	8e d8                	mov    ds,eax
c0100ba0:	8e c0                	mov    es,eax
c0100ba2:	ff 15 68 c3 10 c0    	call   DWORD PTR ds:0xc010c368
c0100ba8:	e9 83 ff ff ff       	jmp    c0100b30 <intr_exit>

c0100bad <asm_intr0x03_handler>:
c0100bad:	68 00 00 00 00       	push   0x0
c0100bb2:	1e                   	push   ds
c0100bb3:	06                   	push   es
c0100bb4:	0f a0                	push   fs
c0100bb6:	0f a8                	push   gs
c0100bb8:	60                   	pusha  
c0100bb9:	68 03 00 00 00       	push   0x3
c0100bbe:	66 8c d0             	mov    ax,ss
c0100bc1:	8e d8                	mov    ds,eax
c0100bc3:	8e c0                	mov    es,eax
c0100bc5:	ff 15 6c c3 10 c0    	call   DWORD PTR ds:0xc010c36c
c0100bcb:	e9 60 ff ff ff       	jmp    c0100b30 <intr_exit>

c0100bd0 <asm_intr0x04_handler>:
c0100bd0:	68 00 00 00 00       	push   0x0
c0100bd5:	1e                   	push   ds
c0100bd6:	06                   	push   es
c0100bd7:	0f a0                	push   fs
c0100bd9:	0f a8                	push   gs
c0100bdb:	60                   	pusha  
c0100bdc:	68 04 00 00 00       	push   0x4
c0100be1:	66 8c d0             	mov    ax,ss
c0100be4:	8e d8                	mov    ds,eax
c0100be6:	8e c0                	mov    es,eax
c0100be8:	ff 15 70 c3 10 c0    	call   DWORD PTR ds:0xc010c370
c0100bee:	e9 3d ff ff ff       	jmp    c0100b30 <intr_exit>

c0100bf3 <asm_intr0x05_handler>:
c0100bf3:	68 00 00 00 00       	push   0x0
c0100bf8:	1e                   	push   ds
c0100bf9:	06                   	push   es
c0100bfa:	0f a0                	push   fs
c0100bfc:	0f a8                	push   gs
c0100bfe:	60                   	pusha  
c0100bff:	68 05 00 00 00       	push   0x5
c0100c04:	66 8c d0             	mov    ax,ss
c0100c07:	8e d8                	mov    ds,eax
c0100c09:	8e c0                	mov    es,eax
c0100c0b:	ff 15 74 c3 10 c0    	call   DWORD PTR ds:0xc010c374
c0100c11:	e9 1a ff ff ff       	jmp    c0100b30 <intr_exit>

c0100c16 <asm_intr0x06_handler>:
c0100c16:	68 00 00 00 00       	push   0x0
c0100c1b:	1e                   	push   ds
c0100c1c:	06                   	push   es
c0100c1d:	0f a0                	push   fs
c0100c1f:	0f a8                	push   gs
c0100c21:	60                   	pusha  
c0100c22:	68 06 00 00 00       	push   0x6
c0100c27:	66 8c d0             	mov    ax,ss
c0100c2a:	8e d8                	mov    ds,eax
c0100c2c:	8e c0                	mov    es,eax
c0100c2e:	ff 15 78 c3 10 c0    	call   DWORD PTR ds:0xc010c378
c0100c34:	e9 f7 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100c39 <asm_intr0x07_handler>:
c0100c39:	68 00 00 00 00       	push   0x0
c0100c3e:	1e                   	push   ds
c0100c3f:	06                   	push   es
c0100c40:	0f a0                	push   fs
c0100c42:	0f a8                	push   gs
c0100c44:	60                   	pusha  
c0100c45:	68 07 00 00 00       	push   0x7
c0100c4a:	66 8c d0             	mov    ax,ss
c0100c4d:	8e d8                	mov    ds,eax
c0100c4f:	8e c0                	mov    es,eax
c0100c51:	ff 15 7c c3 10 c0    	call   DWORD PTR ds:0xc010c37c
c0100c57:	e9 d4 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100c5c <asm_intr0x08_handler>:
c0100c5c:	90                   	nop
c0100c5d:	1e                   	push   ds
c0100c5e:	06                   	push   es
c0100c5f:	0f a0                	push   fs
c0100c61:	0f a8                	push   gs
c0100c63:	60                   	pusha  
c0100c64:	68 08 00 00 00       	push   0x8
c0100c69:	66 8c d0             	mov    ax,ss
c0100c6c:	8e d8                	mov    ds,eax
c0100c6e:	8e c0                	mov    es,eax
c0100c70:	ff 15 80 c3 10 c0    	call   DWORD PTR ds:0xc010c380
c0100c76:	e9 b5 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100c7b <asm_intr0x09_handler>:
c0100c7b:	68 00 00 00 00       	push   0x0
c0100c80:	1e                   	push   ds
c0100c81:	06                   	push   es
c0100c82:	0f a0                	push   fs
c0100c84:	0f a8                	push   gs
c0100c86:	60                   	pusha  
c0100c87:	68 09 00 00 00       	push   0x9
c0100c8c:	66 8c d0             	mov    ax,ss
c0100c8f:	8e d8                	mov    ds,eax
c0100c91:	8e c0                	mov    es,eax
c0100c93:	ff 15 84 c3 10 c0    	call   DWORD PTR ds:0xc010c384
c0100c99:	e9 92 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100c9e <asm_intr0x0a_handler>:
c0100c9e:	90                   	nop
c0100c9f:	1e                   	push   ds
c0100ca0:	06                   	push   es
c0100ca1:	0f a0                	push   fs
c0100ca3:	0f a8                	push   gs
c0100ca5:	60                   	pusha  
c0100ca6:	68 0a 00 00 00       	push   0xa
c0100cab:	66 8c d0             	mov    ax,ss
c0100cae:	8e d8                	mov    ds,eax
c0100cb0:	8e c0                	mov    es,eax
c0100cb2:	ff 15 88 c3 10 c0    	call   DWORD PTR ds:0xc010c388
c0100cb8:	e9 73 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100cbd <asm_intr0x0b_handler>:
c0100cbd:	90                   	nop
c0100cbe:	1e                   	push   ds
c0100cbf:	06                   	push   es
c0100cc0:	0f a0                	push   fs
c0100cc2:	0f a8                	push   gs
c0100cc4:	60                   	pusha  
c0100cc5:	68 0b 00 00 00       	push   0xb
c0100cca:	66 8c d0             	mov    ax,ss
c0100ccd:	8e d8                	mov    ds,eax
c0100ccf:	8e c0                	mov    es,eax
c0100cd1:	ff 15 8c c3 10 c0    	call   DWORD PTR ds:0xc010c38c
c0100cd7:	e9 54 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100cdc <asm_intr0x0c_handler>:
c0100cdc:	68 00 00 00 00       	push   0x0
c0100ce1:	1e                   	push   ds
c0100ce2:	06                   	push   es
c0100ce3:	0f a0                	push   fs
c0100ce5:	0f a8                	push   gs
c0100ce7:	60                   	pusha  
c0100ce8:	68 0c 00 00 00       	push   0xc
c0100ced:	66 8c d0             	mov    ax,ss
c0100cf0:	8e d8                	mov    ds,eax
c0100cf2:	8e c0                	mov    es,eax
c0100cf4:	ff 15 90 c3 10 c0    	call   DWORD PTR ds:0xc010c390
c0100cfa:	e9 31 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100cff <asm_intr0x0d_handler>:
c0100cff:	90                   	nop
c0100d00:	1e                   	push   ds
c0100d01:	06                   	push   es
c0100d02:	0f a0                	push   fs
c0100d04:	0f a8                	push   gs
c0100d06:	60                   	pusha  
c0100d07:	68 0d 00 00 00       	push   0xd
c0100d0c:	66 8c d0             	mov    ax,ss
c0100d0f:	8e d8                	mov    ds,eax
c0100d11:	8e c0                	mov    es,eax
c0100d13:	ff 15 94 c3 10 c0    	call   DWORD PTR ds:0xc010c394
c0100d19:	e9 12 fe ff ff       	jmp    c0100b30 <intr_exit>

c0100d1e <asm_intr0x0e_handler>:
c0100d1e:	90                   	nop
c0100d1f:	1e                   	push   ds
c0100d20:	06                   	push   es
c0100d21:	0f a0                	push   fs
c0100d23:	0f a8                	push   gs
c0100d25:	60                   	pusha  
c0100d26:	68 0e 00 00 00       	push   0xe
c0100d2b:	66 8c d0             	mov    ax,ss
c0100d2e:	8e d8                	mov    ds,eax
c0100d30:	8e c0                	mov    es,eax
c0100d32:	ff 15 98 c3 10 c0    	call   DWORD PTR ds:0xc010c398
c0100d38:	e9 f3 fd ff ff       	jmp    c0100b30 <intr_exit>

c0100d3d <asm_intr0x0f_handler>:
c0100d3d:	68 00 00 00 00       	push   0x0
c0100d42:	1e                   	push   ds
c0100d43:	06                   	push   es
c0100d44:	0f a0                	push   fs
c0100d46:	0f a8                	push   gs
c0100d48:	60                   	pusha  
c0100d49:	68 0f 00 00 00       	push   0xf
c0100d4e:	66 8c d0             	mov    ax,ss
c0100d51:	8e d8                	mov    ds,eax
c0100d53:	8e c0                	mov    es,eax
c0100d55:	ff 15 9c c3 10 c0    	call   DWORD PTR ds:0xc010c39c
c0100d5b:	e9 d0 fd ff ff       	jmp    c0100b30 <intr_exit>

c0100d60 <asm_intr0x10_handler>:
c0100d60:	68 00 00 00 00       	push   0x0
c0100d65:	1e                   	push   ds
c0100d66:	06                   	push   es
c0100d67:	0f a0                	push   fs
c0100d69:	0f a8                	push   gs
c0100d6b:	60                   	pusha  
c0100d6c:	68 10 00 00 00       	push   0x10
c0100d71:	66 8c d0             	mov    ax,ss
c0100d74:	8e d8                	mov    ds,eax
c0100d76:	8e c0                	mov    es,eax
c0100d78:	ff 15 a0 c3 10 c0    	call   DWORD PTR ds:0xc010c3a0
c0100d7e:	e9 ad fd ff ff       	jmp    c0100b30 <intr_exit>

c0100d83 <asm_intr0x11_handler>:
c0100d83:	90                   	nop
c0100d84:	1e                   	push   ds
c0100d85:	06                   	push   es
c0100d86:	0f a0                	push   fs
c0100d88:	0f a8                	push   gs
c0100d8a:	60                   	pusha  
c0100d8b:	68 11 00 00 00       	push   0x11
c0100d90:	66 8c d0             	mov    ax,ss
c0100d93:	8e d8                	mov    ds,eax
c0100d95:	8e c0                	mov    es,eax
c0100d97:	ff 15 a4 c3 10 c0    	call   DWORD PTR ds:0xc010c3a4
c0100d9d:	e9 8e fd ff ff       	jmp    c0100b30 <intr_exit>

c0100da2 <asm_intr0x12_handler>:
c0100da2:	68 00 00 00 00       	push   0x0
c0100da7:	1e                   	push   ds
c0100da8:	06                   	push   es
c0100da9:	0f a0                	push   fs
c0100dab:	0f a8                	push   gs
c0100dad:	60                   	pusha  
c0100dae:	68 12 00 00 00       	push   0x12
c0100db3:	66 8c d0             	mov    ax,ss
c0100db6:	8e d8                	mov    ds,eax
c0100db8:	8e c0                	mov    es,eax
c0100dba:	ff 15 a8 c3 10 c0    	call   DWORD PTR ds:0xc010c3a8
c0100dc0:	e9 6b fd ff ff       	jmp    c0100b30 <intr_exit>

c0100dc5 <asm_intr0x13_handler>:
c0100dc5:	68 00 00 00 00       	push   0x0
c0100dca:	1e                   	push   ds
c0100dcb:	06                   	push   es
c0100dcc:	0f a0                	push   fs
c0100dce:	0f a8                	push   gs
c0100dd0:	60                   	pusha  
c0100dd1:	68 13 00 00 00       	push   0x13
c0100dd6:	66 8c d0             	mov    ax,ss
c0100dd9:	8e d8                	mov    ds,eax
c0100ddb:	8e c0                	mov    es,eax
c0100ddd:	ff 15 ac c3 10 c0    	call   DWORD PTR ds:0xc010c3ac
c0100de3:	e9 48 fd ff ff       	jmp    c0100b30 <intr_exit>

c0100de8 <asm_intr0x14_handler>:
c0100de8:	68 00 00 00 00       	push   0x0
c0100ded:	1e                   	push   ds
c0100dee:	06                   	push   es
c0100def:	0f a0                	push   fs
c0100df1:	0f a8                	push   gs
c0100df3:	60                   	pusha  
c0100df4:	68 14 00 00 00       	push   0x14
c0100df9:	66 8c d0             	mov    ax,ss
c0100dfc:	8e d8                	mov    ds,eax
c0100dfe:	8e c0                	mov    es,eax
c0100e00:	ff 15 b0 c3 10 c0    	call   DWORD PTR ds:0xc010c3b0
c0100e06:	e9 25 fd ff ff       	jmp    c0100b30 <intr_exit>

c0100e0b <asm_intr0x15_handler>:
c0100e0b:	68 00 00 00 00       	push   0x0
c0100e10:	1e                   	push   ds
c0100e11:	06                   	push   es
c0100e12:	0f a0                	push   fs
c0100e14:	0f a8                	push   gs
c0100e16:	60                   	pusha  
c0100e17:	68 15 00 00 00       	push   0x15
c0100e1c:	66 8c d0             	mov    ax,ss
c0100e1f:	8e d8                	mov    ds,eax
c0100e21:	8e c0                	mov    es,eax
c0100e23:	ff 15 b4 c3 10 c0    	call   DWORD PTR ds:0xc010c3b4
c0100e29:	e9 02 fd ff ff       	jmp    c0100b30 <intr_exit>

c0100e2e <asm_intr0x16_handler>:
c0100e2e:	68 00 00 00 00       	push   0x0
c0100e33:	1e                   	push   ds
c0100e34:	06                   	push   es
c0100e35:	0f a0                	push   fs
c0100e37:	0f a8                	push   gs
c0100e39:	60                   	pusha  
c0100e3a:	68 16 00 00 00       	push   0x16
c0100e3f:	66 8c d0             	mov    ax,ss
c0100e42:	8e d8                	mov    ds,eax
c0100e44:	8e c0                	mov    es,eax
c0100e46:	ff 15 b8 c3 10 c0    	call   DWORD PTR ds:0xc010c3b8
c0100e4c:	e9 df fc ff ff       	jmp    c0100b30 <intr_exit>

c0100e51 <asm_intr0x17_handler>:
c0100e51:	68 00 00 00 00       	push   0x0
c0100e56:	1e                   	push   ds
c0100e57:	06                   	push   es
c0100e58:	0f a0                	push   fs
c0100e5a:	0f a8                	push   gs
c0100e5c:	60                   	pusha  
c0100e5d:	68 17 00 00 00       	push   0x17
c0100e62:	66 8c d0             	mov    ax,ss
c0100e65:	8e d8                	mov    ds,eax
c0100e67:	8e c0                	mov    es,eax
c0100e69:	ff 15 bc c3 10 c0    	call   DWORD PTR ds:0xc010c3bc
c0100e6f:	e9 bc fc ff ff       	jmp    c0100b30 <intr_exit>

c0100e74 <asm_intr0x18_handler>:
c0100e74:	90                   	nop
c0100e75:	1e                   	push   ds
c0100e76:	06                   	push   es
c0100e77:	0f a0                	push   fs
c0100e79:	0f a8                	push   gs
c0100e7b:	60                   	pusha  
c0100e7c:	68 18 00 00 00       	push   0x18
c0100e81:	66 8c d0             	mov    ax,ss
c0100e84:	8e d8                	mov    ds,eax
c0100e86:	8e c0                	mov    es,eax
c0100e88:	ff 15 c0 c3 10 c0    	call   DWORD PTR ds:0xc010c3c0
c0100e8e:	e9 9d fc ff ff       	jmp    c0100b30 <intr_exit>

c0100e93 <asm_intr0x19_handler>:
c0100e93:	68 00 00 00 00       	push   0x0
c0100e98:	1e                   	push   ds
c0100e99:	06                   	push   es
c0100e9a:	0f a0                	push   fs
c0100e9c:	0f a8                	push   gs
c0100e9e:	60                   	pusha  
c0100e9f:	68 19 00 00 00       	push   0x19
c0100ea4:	66 8c d0             	mov    ax,ss
c0100ea7:	8e d8                	mov    ds,eax
c0100ea9:	8e c0                	mov    es,eax
c0100eab:	ff 15 c4 c3 10 c0    	call   DWORD PTR ds:0xc010c3c4
c0100eb1:	e9 7a fc ff ff       	jmp    c0100b30 <intr_exit>

c0100eb6 <asm_intr0x1a_handler>:
c0100eb6:	90                   	nop
c0100eb7:	1e                   	push   ds
c0100eb8:	06                   	push   es
c0100eb9:	0f a0                	push   fs
c0100ebb:	0f a8                	push   gs
c0100ebd:	60                   	pusha  
c0100ebe:	68 1a 00 00 00       	push   0x1a
c0100ec3:	66 8c d0             	mov    ax,ss
c0100ec6:	8e d8                	mov    ds,eax
c0100ec8:	8e c0                	mov    es,eax
c0100eca:	ff 15 c8 c3 10 c0    	call   DWORD PTR ds:0xc010c3c8
c0100ed0:	e9 5b fc ff ff       	jmp    c0100b30 <intr_exit>

c0100ed5 <asm_intr0x1b_handler>:
c0100ed5:	90                   	nop
c0100ed6:	1e                   	push   ds
c0100ed7:	06                   	push   es
c0100ed8:	0f a0                	push   fs
c0100eda:	0f a8                	push   gs
c0100edc:	60                   	pusha  
c0100edd:	68 1b 00 00 00       	push   0x1b
c0100ee2:	66 8c d0             	mov    ax,ss
c0100ee5:	8e d8                	mov    ds,eax
c0100ee7:	8e c0                	mov    es,eax
c0100ee9:	ff 15 cc c3 10 c0    	call   DWORD PTR ds:0xc010c3cc
c0100eef:	e9 3c fc ff ff       	jmp    c0100b30 <intr_exit>

c0100ef4 <asm_intr0x1c_handler>:
c0100ef4:	68 00 00 00 00       	push   0x0
c0100ef9:	1e                   	push   ds
c0100efa:	06                   	push   es
c0100efb:	0f a0                	push   fs
c0100efd:	0f a8                	push   gs
c0100eff:	60                   	pusha  
c0100f00:	68 1c 00 00 00       	push   0x1c
c0100f05:	66 8c d0             	mov    ax,ss
c0100f08:	8e d8                	mov    ds,eax
c0100f0a:	8e c0                	mov    es,eax
c0100f0c:	ff 15 d0 c3 10 c0    	call   DWORD PTR ds:0xc010c3d0
c0100f12:	e9 19 fc ff ff       	jmp    c0100b30 <intr_exit>

c0100f17 <asm_intr0x1d_handler>:
c0100f17:	90                   	nop
c0100f18:	1e                   	push   ds
c0100f19:	06                   	push   es
c0100f1a:	0f a0                	push   fs
c0100f1c:	0f a8                	push   gs
c0100f1e:	60                   	pusha  
c0100f1f:	68 1d 00 00 00       	push   0x1d
c0100f24:	66 8c d0             	mov    ax,ss
c0100f27:	8e d8                	mov    ds,eax
c0100f29:	8e c0                	mov    es,eax
c0100f2b:	ff 15 d4 c3 10 c0    	call   DWORD PTR ds:0xc010c3d4
c0100f31:	e9 fa fb ff ff       	jmp    c0100b30 <intr_exit>

c0100f36 <asm_intr0x1e_handler>:
c0100f36:	90                   	nop
c0100f37:	1e                   	push   ds
c0100f38:	06                   	push   es
c0100f39:	0f a0                	push   fs
c0100f3b:	0f a8                	push   gs
c0100f3d:	60                   	pusha  
c0100f3e:	68 1e 00 00 00       	push   0x1e
c0100f43:	66 8c d0             	mov    ax,ss
c0100f46:	8e d8                	mov    ds,eax
c0100f48:	8e c0                	mov    es,eax
c0100f4a:	ff 15 d8 c3 10 c0    	call   DWORD PTR ds:0xc010c3d8
c0100f50:	e9 db fb ff ff       	jmp    c0100b30 <intr_exit>

c0100f55 <asm_intr0x1f_handler>:
c0100f55:	68 00 00 00 00       	push   0x0
c0100f5a:	1e                   	push   ds
c0100f5b:	06                   	push   es
c0100f5c:	0f a0                	push   fs
c0100f5e:	0f a8                	push   gs
c0100f60:	60                   	pusha  
c0100f61:	68 1f 00 00 00       	push   0x1f
c0100f66:	66 8c d0             	mov    ax,ss
c0100f69:	8e d8                	mov    ds,eax
c0100f6b:	8e c0                	mov    es,eax
c0100f6d:	ff 15 dc c3 10 c0    	call   DWORD PTR ds:0xc010c3dc
c0100f73:	e9 b8 fb ff ff       	jmp    c0100b30 <intr_exit>

c0100f78 <asm_intr0x20_handler>:
c0100f78:	68 00 00 00 00       	push   0x0
c0100f7d:	1e                   	push   ds
c0100f7e:	06                   	push   es
c0100f7f:	0f a0                	push   fs
c0100f81:	0f a8                	push   gs
c0100f83:	60                   	pusha  
c0100f84:	68 20 00 00 00       	push   0x20
c0100f89:	66 8c d0             	mov    ax,ss
c0100f8c:	8e d8                	mov    ds,eax
c0100f8e:	8e c0                	mov    es,eax
c0100f90:	ff 15 e0 c3 10 c0    	call   DWORD PTR ds:0xc010c3e0
c0100f96:	e9 95 fb ff ff       	jmp    c0100b30 <intr_exit>

c0100f9b <asm_intr0x21_handler>:
c0100f9b:	68 00 00 00 00       	push   0x0
c0100fa0:	1e                   	push   ds
c0100fa1:	06                   	push   es
c0100fa2:	0f a0                	push   fs
c0100fa4:	0f a8                	push   gs
c0100fa6:	60                   	pusha  
c0100fa7:	68 21 00 00 00       	push   0x21
c0100fac:	66 8c d0             	mov    ax,ss
c0100faf:	8e d8                	mov    ds,eax
c0100fb1:	8e c0                	mov    es,eax
c0100fb3:	ff 15 e4 c3 10 c0    	call   DWORD PTR ds:0xc010c3e4
c0100fb9:	e9 72 fb ff ff       	jmp    c0100b30 <intr_exit>

c0100fbe <asm_intr0x22_handler>:
c0100fbe:	68 00 00 00 00       	push   0x0
c0100fc3:	1e                   	push   ds
c0100fc4:	06                   	push   es
c0100fc5:	0f a0                	push   fs
c0100fc7:	0f a8                	push   gs
c0100fc9:	60                   	pusha  
c0100fca:	68 22 00 00 00       	push   0x22
c0100fcf:	66 8c d0             	mov    ax,ss
c0100fd2:	8e d8                	mov    ds,eax
c0100fd4:	8e c0                	mov    es,eax
c0100fd6:	ff 15 e8 c3 10 c0    	call   DWORD PTR ds:0xc010c3e8
c0100fdc:	e9 4f fb ff ff       	jmp    c0100b30 <intr_exit>

c0100fe1 <asm_intr0x23_handler>:
c0100fe1:	68 00 00 00 00       	push   0x0
c0100fe6:	1e                   	push   ds
c0100fe7:	06                   	push   es
c0100fe8:	0f a0                	push   fs
c0100fea:	0f a8                	push   gs
c0100fec:	60                   	pusha  
c0100fed:	68 23 00 00 00       	push   0x23
c0100ff2:	66 8c d0             	mov    ax,ss
c0100ff5:	8e d8                	mov    ds,eax
c0100ff7:	8e c0                	mov    es,eax
c0100ff9:	ff 15 ec c3 10 c0    	call   DWORD PTR ds:0xc010c3ec
c0100fff:	e9 2c fb ff ff       	jmp    c0100b30 <intr_exit>

c0101004 <asm_intr0x24_handler>:
c0101004:	68 00 00 00 00       	push   0x0
c0101009:	1e                   	push   ds
c010100a:	06                   	push   es
c010100b:	0f a0                	push   fs
c010100d:	0f a8                	push   gs
c010100f:	60                   	pusha  
c0101010:	68 24 00 00 00       	push   0x24
c0101015:	66 8c d0             	mov    ax,ss
c0101018:	8e d8                	mov    ds,eax
c010101a:	8e c0                	mov    es,eax
c010101c:	ff 15 f0 c3 10 c0    	call   DWORD PTR ds:0xc010c3f0
c0101022:	e9 09 fb ff ff       	jmp    c0100b30 <intr_exit>

c0101027 <asm_intr0x25_handler>:
c0101027:	68 00 00 00 00       	push   0x0
c010102c:	1e                   	push   ds
c010102d:	06                   	push   es
c010102e:	0f a0                	push   fs
c0101030:	0f a8                	push   gs
c0101032:	60                   	pusha  
c0101033:	68 25 00 00 00       	push   0x25
c0101038:	66 8c d0             	mov    ax,ss
c010103b:	8e d8                	mov    ds,eax
c010103d:	8e c0                	mov    es,eax
c010103f:	ff 15 f4 c3 10 c0    	call   DWORD PTR ds:0xc010c3f4
c0101045:	e9 e6 fa ff ff       	jmp    c0100b30 <intr_exit>

c010104a <asm_intr0x26_handler>:
c010104a:	68 00 00 00 00       	push   0x0
c010104f:	1e                   	push   ds
c0101050:	06                   	push   es
c0101051:	0f a0                	push   fs
c0101053:	0f a8                	push   gs
c0101055:	60                   	pusha  
c0101056:	68 26 00 00 00       	push   0x26
c010105b:	66 8c d0             	mov    ax,ss
c010105e:	8e d8                	mov    ds,eax
c0101060:	8e c0                	mov    es,eax
c0101062:	ff 15 f8 c3 10 c0    	call   DWORD PTR ds:0xc010c3f8
c0101068:	e9 c3 fa ff ff       	jmp    c0100b30 <intr_exit>

c010106d <asm_intr0x27_handler>:
c010106d:	68 00 00 00 00       	push   0x0
c0101072:	1e                   	push   ds
c0101073:	06                   	push   es
c0101074:	0f a0                	push   fs
c0101076:	0f a8                	push   gs
c0101078:	60                   	pusha  
c0101079:	68 27 00 00 00       	push   0x27
c010107e:	66 8c d0             	mov    ax,ss
c0101081:	8e d8                	mov    ds,eax
c0101083:	8e c0                	mov    es,eax
c0101085:	ff 15 fc c3 10 c0    	call   DWORD PTR ds:0xc010c3fc
c010108b:	e9 a0 fa ff ff       	jmp    c0100b30 <intr_exit>

c0101090 <asm_intr0x28_handler>:
c0101090:	68 00 00 00 00       	push   0x0
c0101095:	1e                   	push   ds
c0101096:	06                   	push   es
c0101097:	0f a0                	push   fs
c0101099:	0f a8                	push   gs
c010109b:	60                   	pusha  
c010109c:	68 28 00 00 00       	push   0x28
c01010a1:	66 8c d0             	mov    ax,ss
c01010a4:	8e d8                	mov    ds,eax
c01010a6:	8e c0                	mov    es,eax
c01010a8:	ff 15 00 c4 10 c0    	call   DWORD PTR ds:0xc010c400
c01010ae:	e9 7d fa ff ff       	jmp    c0100b30 <intr_exit>

c01010b3 <asm_intr0x29_handler>:
c01010b3:	68 00 00 00 00       	push   0x0
c01010b8:	1e                   	push   ds
c01010b9:	06                   	push   es
c01010ba:	0f a0                	push   fs
c01010bc:	0f a8                	push   gs
c01010be:	60                   	pusha  
c01010bf:	68 29 00 00 00       	push   0x29
c01010c4:	66 8c d0             	mov    ax,ss
c01010c7:	8e d8                	mov    ds,eax
c01010c9:	8e c0                	mov    es,eax
c01010cb:	ff 15 04 c4 10 c0    	call   DWORD PTR ds:0xc010c404
c01010d1:	e9 5a fa ff ff       	jmp    c0100b30 <intr_exit>

c01010d6 <asm_intr0x2a_handler>:
c01010d6:	68 00 00 00 00       	push   0x0
c01010db:	1e                   	push   ds
c01010dc:	06                   	push   es
c01010dd:	0f a0                	push   fs
c01010df:	0f a8                	push   gs
c01010e1:	60                   	pusha  
c01010e2:	68 2a 00 00 00       	push   0x2a
c01010e7:	66 8c d0             	mov    ax,ss
c01010ea:	8e d8                	mov    ds,eax
c01010ec:	8e c0                	mov    es,eax
c01010ee:	ff 15 08 c4 10 c0    	call   DWORD PTR ds:0xc010c408
c01010f4:	e9 37 fa ff ff       	jmp    c0100b30 <intr_exit>

c01010f9 <asm_intr0x2b_handler>:
c01010f9:	68 00 00 00 00       	push   0x0
c01010fe:	1e                   	push   ds
c01010ff:	06                   	push   es
c0101100:	0f a0                	push   fs
c0101102:	0f a8                	push   gs
c0101104:	60                   	pusha  
c0101105:	68 2b 00 00 00       	push   0x2b
c010110a:	66 8c d0             	mov    ax,ss
c010110d:	8e d8                	mov    ds,eax
c010110f:	8e c0                	mov    es,eax
c0101111:	ff 15 0c c4 10 c0    	call   DWORD PTR ds:0xc010c40c
c0101117:	e9 14 fa ff ff       	jmp    c0100b30 <intr_exit>

c010111c <asm_intr0x2c_handler>:
c010111c:	68 00 00 00 00       	push   0x0
c0101121:	1e                   	push   ds
c0101122:	06                   	push   es
c0101123:	0f a0                	push   fs
c0101125:	0f a8                	push   gs
c0101127:	60                   	pusha  
c0101128:	68 2c 00 00 00       	push   0x2c
c010112d:	66 8c d0             	mov    ax,ss
c0101130:	8e d8                	mov    ds,eax
c0101132:	8e c0                	mov    es,eax
c0101134:	ff 15 10 c4 10 c0    	call   DWORD PTR ds:0xc010c410
c010113a:	e9 f1 f9 ff ff       	jmp    c0100b30 <intr_exit>

c010113f <asm_intr0x2d_handler>:
c010113f:	68 00 00 00 00       	push   0x0
c0101144:	1e                   	push   ds
c0101145:	06                   	push   es
c0101146:	0f a0                	push   fs
c0101148:	0f a8                	push   gs
c010114a:	60                   	pusha  
c010114b:	68 2d 00 00 00       	push   0x2d
c0101150:	66 8c d0             	mov    ax,ss
c0101153:	8e d8                	mov    ds,eax
c0101155:	8e c0                	mov    es,eax
c0101157:	ff 15 14 c4 10 c0    	call   DWORD PTR ds:0xc010c414
c010115d:	e9 ce f9 ff ff       	jmp    c0100b30 <intr_exit>

c0101162 <asm_intr0x2e_handler>:
c0101162:	68 00 00 00 00       	push   0x0
c0101167:	1e                   	push   ds
c0101168:	06                   	push   es
c0101169:	0f a0                	push   fs
c010116b:	0f a8                	push   gs
c010116d:	60                   	pusha  
c010116e:	68 2e 00 00 00       	push   0x2e
c0101173:	66 8c d0             	mov    ax,ss
c0101176:	8e d8                	mov    ds,eax
c0101178:	8e c0                	mov    es,eax
c010117a:	ff 15 18 c4 10 c0    	call   DWORD PTR ds:0xc010c418
c0101180:	e9 ab f9 ff ff       	jmp    c0100b30 <intr_exit>

c0101185 <asm_intr0x2f_handler>:
c0101185:	68 00 00 00 00       	push   0x0
c010118a:	1e                   	push   ds
c010118b:	06                   	push   es
c010118c:	0f a0                	push   fs
c010118e:	0f a8                	push   gs
c0101190:	60                   	pusha  
c0101191:	68 2f 00 00 00       	push   0x2f
c0101196:	66 8c d0             	mov    ax,ss
c0101199:	8e d8                	mov    ds,eax
c010119b:	8e c0                	mov    es,eax
c010119d:	ff 15 1c c4 10 c0    	call   DWORD PTR ds:0xc010c41c
c01011a3:	e9 88 f9 ff ff       	jmp    c0100b30 <intr_exit>

c01011a8 <syscall_entry>:
c01011a8:	68 00 00 00 00       	push   0x0
c01011ad:	1e                   	push   ds
c01011ae:	06                   	push   es
c01011af:	0f a0                	push   fs
c01011b1:	0f a8                	push   gs
c01011b3:	60                   	pusha  
c01011b4:	68 4d 00 00 00       	push   0x4d
c01011b9:	51                   	push   ecx
c01011ba:	53                   	push   ebx
c01011bb:	50                   	push   eax
c01011bc:	e8 9b 3c 00 00       	call   c0104e5c <sys_sendrec>
c01011c1:	81 c4 0c 00 00 00    	add    esp,0xc
c01011c7:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
c01011cb:	e9 60 f9 ff ff       	jmp    c0100b30 <intr_exit>

c01011d0 <io_sti>:
c01011d0:	55                   	push   ebp
c01011d1:	89 e5                	mov    ebp,esp
c01011d3:	fb                   	sti    
c01011d4:	5d                   	pop    ebp
c01011d5:	c3                   	ret    

c01011d6 <io_cli>:
c01011d6:	55                   	push   ebp
c01011d7:	89 e5                	mov    ebp,esp
c01011d9:	fa                   	cli    
c01011da:	5d                   	pop    ebp
c01011db:	c3                   	ret    

c01011dc <io_out8>:
c01011dc:	55                   	push   ebp
c01011dd:	89 e5                	mov    ebp,esp
c01011df:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01011e2:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01011e5:	ee                   	out    dx,al
c01011e6:	5d                   	pop    ebp
c01011e7:	c3                   	ret    

c01011e8 <get_flages>:
c01011e8:	55                   	push   ebp
c01011e9:	89 e5                	mov    ebp,esp
c01011eb:	53                   	push   ebx
c01011ec:	83 ec 10             	sub    esp,0x10
c01011ef:	9c                   	pushf  
c01011f0:	58                   	pop    eax
c01011f1:	89 c3                	mov    ebx,eax
c01011f3:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c01011f6:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01011f9:	83 c4 10             	add    esp,0x10
c01011fc:	5b                   	pop    ebx
c01011fd:	5d                   	pop    ebp
c01011fe:	c3                   	ret    

c01011ff <init_pic>:
c01011ff:	55                   	push   ebp
c0101200:	89 e5                	mov    ebp,esp
c0101202:	83 ec 08             	sub    esp,0x8
c0101205:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c010120c:	00 
c010120d:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101214:	e8 c3 ff ff ff       	call   c01011dc <io_out8>
c0101219:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0101220:	00 
c0101221:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c0101228:	e8 af ff ff ff       	call   c01011dc <io_out8>
c010122d:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
c0101234:	00 
c0101235:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c010123c:	e8 9b ff ff ff       	call   c01011dc <io_out8>
c0101241:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0101248:	00 
c0101249:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101250:	e8 87 ff ff ff       	call   c01011dc <io_out8>
c0101255:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
c010125c:	00 
c010125d:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101264:	e8 73 ff ff ff       	call   c01011dc <io_out8>
c0101269:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0101270:	00 
c0101271:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101278:	e8 5f ff ff ff       	call   c01011dc <io_out8>
c010127d:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
c0101284:	00 
c0101285:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
c010128c:	e8 4b ff ff ff       	call   c01011dc <io_out8>
c0101291:	c7 44 24 04 28 00 00 	mov    DWORD PTR [esp+0x4],0x28
c0101298:	00 
c0101299:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01012a0:	e8 37 ff ff ff       	call   c01011dc <io_out8>
c01012a5:	c7 44 24 04 02 00 00 	mov    DWORD PTR [esp+0x4],0x2
c01012ac:	00 
c01012ad:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01012b4:	e8 23 ff ff ff       	call   c01011dc <io_out8>
c01012b9:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01012c0:	00 
c01012c1:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01012c8:	e8 0f ff ff ff       	call   c01011dc <io_out8>
c01012cd:	c7 44 24 04 f8 00 00 	mov    DWORD PTR [esp+0x4],0xf8
c01012d4:	00 
c01012d5:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c01012dc:	e8 fb fe ff ff       	call   c01011dc <io_out8>
c01012e1:	c7 44 24 04 ef 00 00 	mov    DWORD PTR [esp+0x4],0xef
c01012e8:	00 
c01012e9:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01012f0:	e8 e7 fe ff ff       	call   c01011dc <io_out8>
c01012f5:	c9                   	leave  
c01012f6:	c3                   	ret    

c01012f7 <intr0x27_handler>:
c01012f7:	55                   	push   ebp
c01012f8:	89 e5                	mov    ebp,esp
c01012fa:	83 ec 08             	sub    esp,0x8
c01012fd:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0101304:	00 
c0101305:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c010130c:	e8 cb fe ff ff       	call   c01011dc <io_out8>
c0101311:	c9                   	leave  
c0101312:	c3                   	ret    

c0101313 <idt_desc_init>:
c0101313:	55                   	push   ebp
c0101314:	89 e5                	mov    ebp,esp
c0101316:	83 ec 28             	sub    esp,0x28
c0101319:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101320:	eb 12                	jmp    c0101334 <idt_desc_init+0x21>
c0101322:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101325:	c7 04 85 60 c3 10 c0 	mov    DWORD PTR [eax*4-0x3fef3ca0],0xc0101457
c010132c:	57 14 10 c0 
c0101330:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0101334:	83 7d f4 4d          	cmp    DWORD PTR [ebp-0xc],0x4d
c0101338:	7e e8                	jle    c0101322 <idt_desc_init+0xf>
c010133a:	c7 05 e0 c3 10 c0 d8 	mov    DWORD PTR ds:0xc010c3e0,0xc01048d8
c0101341:	48 10 c0 
c0101344:	c7 05 e4 c3 10 c0 60 	mov    DWORD PTR ds:0xc010c3e4,0xc0104260
c010134b:	42 10 c0 
c010134e:	c7 05 fc c3 10 c0 f7 	mov    DWORD PTR ds:0xc010c3fc,0xc01012f7
c0101355:	12 10 c0 
c0101358:	c7 05 10 c4 10 c0 1b 	mov    DWORD PTR ds:0xc010c410,0xc010451b
c010135f:	45 10 c0 
c0101362:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101369:	eb 36                	jmp    c01013a1 <idt_desc_init+0x8e>
c010136b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010136e:	8b 04 85 20 82 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef7de0]
c0101375:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0101378:	c1 e2 03             	shl    edx,0x3
c010137b:	81 c2 e0 c0 10 c0    	add    edx,0xc010c0e0
c0101381:	c7 44 24 0c 8e 00 00 	mov    DWORD PTR [esp+0xc],0x8e
c0101388:	00 
c0101389:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c0101390:	00 
c0101391:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101395:	89 14 24             	mov    DWORD PTR [esp],edx
c0101398:	e8 30 00 00 00       	call   c01013cd <set_gatedesc>
c010139d:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01013a1:	83 7d f4 4d          	cmp    DWORD PTR [ebp-0xc],0x4d
c01013a5:	7e c4                	jle    c010136b <idt_desc_init+0x58>
c01013a7:	c7 44 24 0c ee 00 00 	mov    DWORD PTR [esp+0xc],0xee
c01013ae:	00 
c01013af:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c01013b6:	00 
c01013b7:	c7 44 24 04 a8 11 10 	mov    DWORD PTR [esp+0x4],0xc01011a8
c01013be:	c0 
c01013bf:	c7 04 24 48 c3 10 c0 	mov    DWORD PTR [esp],0xc010c348
c01013c6:	e8 02 00 00 00       	call   c01013cd <set_gatedesc>
c01013cb:	c9                   	leave  
c01013cc:	c3                   	ret    

c01013cd <set_gatedesc>:
c01013cd:	55                   	push   ebp
c01013ce:	89 e5                	mov    ebp,esp
c01013d0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01013d3:	89 c2                	mov    edx,eax
c01013d5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01013d8:	66 89 10             	mov    WORD PTR [eax],dx
c01013db:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01013de:	89 c2                	mov    edx,eax
c01013e0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01013e3:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c01013e7:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01013ea:	c1 f8 08             	sar    eax,0x8
c01013ed:	89 c2                	mov    edx,eax
c01013ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01013f2:	88 50 04             	mov    BYTE PTR [eax+0x4],dl
c01013f5:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01013f8:	89 c2                	mov    edx,eax
c01013fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01013fd:	88 50 05             	mov    BYTE PTR [eax+0x5],dl
c0101400:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0101403:	c1 e8 10             	shr    eax,0x10
c0101406:	89 c2                	mov    edx,eax
c0101408:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010140b:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c010140f:	5d                   	pop    ebp
c0101410:	c3                   	ret    

c0101411 <init_idt>:
c0101411:	55                   	push   ebp
c0101412:	89 e5                	mov    ebp,esp
c0101414:	56                   	push   esi
c0101415:	53                   	push   ebx
c0101416:	83 ec 10             	sub    esp,0x10
c0101419:	e8 f5 fe ff ff       	call   c0101313 <idt_desc_init>
c010141e:	e8 dc fd ff ff       	call   c01011ff <init_pic>
c0101423:	b8 e0 c0 10 c0       	mov    eax,0xc010c0e0
c0101428:	ba 00 00 00 00       	mov    edx,0x0
c010142d:	0f a4 c2 10          	shld   edx,eax,0x10
c0101431:	c1 e0 10             	shl    eax,0x10
c0101434:	89 c3                	mov    ebx,eax
c0101436:	81 cb 6f 02 00 00    	or     ebx,0x26f
c010143c:	89 d6                	mov    esi,edx
c010143e:	83 ce 00             	or     esi,0x0
c0101441:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c0101444:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
c0101447:	e8 b0 02 00 00       	call   c01016fc <exception_init>
c010144c:	0f 01 5d f0          	lidtd  [ebp-0x10]
c0101450:	83 c4 10             	add    esp,0x10
c0101453:	5b                   	pop    ebx
c0101454:	5e                   	pop    esi
c0101455:	5d                   	pop    ebp
c0101456:	c3                   	ret    

c0101457 <general_intr_handler>:
c0101457:	55                   	push   ebp
c0101458:	89 e5                	mov    ebp,esp
c010145a:	56                   	push   esi
c010145b:	53                   	push   ebx
c010145c:	81 ec 40 01 00 00    	sub    esp,0x140
c0101462:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101465:	88 85 e4 fe ff ff    	mov    BYTE PTR [ebp-0x11c],al
c010146b:	e8 86 03 00 00       	call   c01017f6 <intr_disable>
c0101470:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0101477:	e8 c5 60 00 00       	call   c0107541 <set_cursor>
c010147c:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0101481:	8b 00                	mov    eax,DWORD PTR [eax]
c0101483:	83 e8 01             	sub    eax,0x1
c0101486:	89 c6                	mov    esi,eax
c0101488:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010148d:	8b 00                	mov    eax,DWORD PTR [eax]
c010148f:	83 e8 01             	sub    eax,0x1
c0101492:	89 c3                	mov    ebx,eax
c0101494:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c010149b:	00 
c010149c:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01014a3:	00 
c01014a4:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c01014ab:	e8 d4 65 00 00       	call   c0107a84 <rgb>
c01014b0:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01014b5:	8b 12                	mov    edx,DWORD PTR [edx]
c01014b7:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c01014bb:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01014bf:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c01014c6:	00 
c01014c7:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01014ce:	00 
c01014cf:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01014d3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01014d7:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01014de:	e8 69 67 00 00       	call   c0107c4c <viewFill>
c01014e3:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01014ea:	00 
c01014eb:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01014f2:	00 
c01014f3:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01014fa:	e8 85 65 00 00       	call   c0107a84 <rgb>
c01014ff:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0101504:	8b 12                	mov    edx,DWORD PTR [edx]
c0101506:	c7 44 24 14 74 ac 10 	mov    DWORD PTR [esp+0x14],0xc010ac74
c010150d:	c0 
c010150e:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0101512:	c7 44 24 0c 0a 00 00 	mov    DWORD PTR [esp+0xc],0xa
c0101519:	00 
c010151a:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c0101521:	00 
c0101522:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0101526:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c010152d:	e8 9f 68 00 00       	call   c0107dd1 <vput_str>
c0101532:	e8 c0 1a 00 00       	call   c0102ff7 <running_thread>
c0101537:	8d 50 0c             	lea    edx,[eax+0xc]
c010153a:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c0101541:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
c0101545:	8b 55 40             	mov    edx,DWORD PTR [ebp+0x40]
c0101548:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c010154c:	8b 55 44             	mov    edx,DWORD PTR [ebp+0x44]
c010154f:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c0101553:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0101557:	c7 44 24 08 14 ab 10 	mov    DWORD PTR [esp+0x8],0xc010ab14
c010155e:	c0 
c010155f:	c7 44 24 04 98 ad 10 	mov    DWORD PTR [esp+0x4],0xc010ad98
c0101566:	c0 
c0101567:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010156d:	89 04 24             	mov    DWORD PTR [esp],eax
c0101570:	e8 0b 62 00 00       	call   c0107780 <sprintf>
c0101575:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010157b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010157f:	c7 04 24 17 00 00 00 	mov    DWORD PTR [esp],0x17
c0101586:	e8 34 5c 00 00       	call   c01071bf <put_str>
c010158b:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0101592:	00 
c0101593:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c010159a:	00 
c010159b:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01015a2:	e8 dd 64 00 00       	call   c0107a84 <rgb>
c01015a7:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01015ac:	8b 12                	mov    edx,DWORD PTR [edx]
c01015ae:	8d 8d f5 fe ff ff    	lea    ecx,[ebp-0x10b]
c01015b4:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c01015b8:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c01015bc:	c7 44 24 0c 5a 00 00 	mov    DWORD PTR [esp+0xc],0x5a
c01015c3:	00 
c01015c4:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c01015cb:	00 
c01015cc:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01015d0:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01015d7:	e8 f5 67 00 00       	call   c0107dd1 <vput_str>
c01015dc:	80 bd e4 fe ff ff 13 	cmp    BYTE PTR [ebp-0x11c],0x13
c01015e3:	77 77                	ja     c010165c <general_intr_handler+0x205>
c01015e5:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c01015ec:	8b 04 85 a0 bf 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef4060]
c01015f3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01015f7:	c7 04 24 14 00 00 00 	mov    DWORD PTR [esp],0x14
c01015fe:	e8 bc 5b 00 00       	call   c01071bf <put_str>
c0101603:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c010160a:	8b 1c 85 a0 bf 10 c0 	mov    ebx,DWORD PTR [eax*4-0x3fef4060]
c0101611:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0101618:	00 
c0101619:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0101620:	00 
c0101621:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0101628:	e8 57 64 00 00       	call   c0107a84 <rgb>
c010162d:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0101632:	8b 12                	mov    edx,DWORD PTR [edx]
c0101634:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0101638:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c010163c:	c7 44 24 0c 8a 00 00 	mov    DWORD PTR [esp+0xc],0x8a
c0101643:	00 
c0101644:	c7 44 24 08 12 00 00 	mov    DWORD PTR [esp+0x8],0x12
c010164b:	00 
c010164c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0101650:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0101657:	e8 75 67 00 00       	call   c0107dd1 <vput_str>
c010165c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101663:	80 bd e4 fe ff ff 0e 	cmp    BYTE PTR [ebp-0x11c],0xe
c010166a:	0f 85 8a 00 00 00    	jne    c01016fa <general_intr_handler+0x2a3>
c0101670:	0f 20 d3             	mov    ebx,cr2
c0101673:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
c0101676:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101679:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010167d:	c7 44 24 04 cb ad 10 	mov    DWORD PTR [esp+0x4],0xc010adcb
c0101684:	c0 
c0101685:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010168b:	89 04 24             	mov    DWORD PTR [esp],eax
c010168e:	e8 ed 60 00 00       	call   c0107780 <sprintf>
c0101693:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c0101699:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010169d:	c7 04 24 17 00 00 00 	mov    DWORD PTR [esp],0x17
c01016a4:	e8 16 5b 00 00       	call   c01071bf <put_str>
c01016a9:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01016b0:	00 
c01016b1:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01016b8:	00 
c01016b9:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01016c0:	e8 bf 63 00 00       	call   c0107a84 <rgb>
c01016c5:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01016ca:	8b 12                	mov    edx,DWORD PTR [edx]
c01016cc:	8d 8d f5 fe ff ff    	lea    ecx,[ebp-0x10b]
c01016d2:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c01016d6:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c01016da:	c7 44 24 0c 9a 00 00 	mov    DWORD PTR [esp+0xc],0x9a
c01016e1:	00 
c01016e2:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c01016e9:	00 
c01016ea:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01016ee:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01016f5:	e8 d7 66 00 00       	call   c0107dd1 <vput_str>
c01016fa:	eb fe                	jmp    c01016fa <general_intr_handler+0x2a3>

c01016fc <exception_init>:
c01016fc:	55                   	push   ebp
c01016fd:	89 e5                	mov    ebp,esp
c01016ff:	c7 05 a0 bf 10 c0 e1 	mov    DWORD PTR ds:0xc010bfa0,0xc010ade1
c0101706:	ad 10 c0 
c0101709:	c7 05 a4 bf 10 c0 f2 	mov    DWORD PTR ds:0xc010bfa4,0xc010adf2
c0101710:	ad 10 c0 
c0101713:	c7 05 a8 bf 10 c0 06 	mov    DWORD PTR ds:0xc010bfa8,0xc010ae06
c010171a:	ae 10 c0 
c010171d:	c7 05 ac bf 10 c0 14 	mov    DWORD PTR ds:0xc010bfac,0xc010ae14
c0101724:	ae 10 c0 
c0101727:	c7 05 b0 bf 10 c0 2d 	mov    DWORD PTR ds:0xc010bfb0,0xc010ae2d
c010172e:	ae 10 c0 
c0101731:	c7 05 b4 bf 10 c0 44 	mov    DWORD PTR ds:0xc010bfb4,0xc010ae44
c0101738:	ae 10 c0 
c010173b:	c7 05 b8 bf 10 c0 67 	mov    DWORD PTR ds:0xc010bfb8,0xc010ae67
c0101742:	ae 10 c0 
c0101745:	c7 05 bc bf 10 c0 84 	mov    DWORD PTR ds:0xc010bfbc,0xc010ae84
c010174c:	ae 10 c0 
c010174f:	c7 05 c0 bf 10 c0 a7 	mov    DWORD PTR ds:0xc010bfc0,0xc010aea7
c0101756:	ae 10 c0 
c0101759:	c7 05 c4 bf 10 c0 c2 	mov    DWORD PTR ds:0xc010bfc4,0xc010aec2
c0101760:	ae 10 c0 
c0101763:	c7 05 c8 bf 10 c0 de 	mov    DWORD PTR ds:0xc010bfc8,0xc010aede
c010176a:	ae 10 c0 
c010176d:	c7 05 cc bf 10 c0 f8 	mov    DWORD PTR ds:0xc010bfcc,0xc010aef8
c0101774:	ae 10 c0 
c0101777:	c7 05 d0 bf 10 c0 10 	mov    DWORD PTR ds:0xc010bfd0,0xc010af10
c010177e:	af 10 c0 
c0101781:	c7 05 d4 bf 10 c0 2c 	mov    DWORD PTR ds:0xc010bfd4,0xc010af2c
c0101788:	af 10 c0 
c010178b:	c7 05 d8 bf 10 c0 4d 	mov    DWORD PTR ds:0xc010bfd8,0xc010af4d
c0101792:	af 10 c0 
c0101795:	c7 05 dc bf 10 c0 66 	mov    DWORD PTR ds:0xc010bfdc,0xc010af66
c010179c:	af 10 c0 
c010179f:	c7 05 e0 bf 10 c0 70 	mov    DWORD PTR ds:0xc010bfe0,0xc010af70
c01017a6:	af 10 c0 
c01017a9:	c7 05 e4 bf 10 c0 91 	mov    DWORD PTR ds:0xc010bfe4,0xc010af91
c01017b0:	af 10 c0 
c01017b3:	c7 05 e8 bf 10 c0 af 	mov    DWORD PTR ds:0xc010bfe8,0xc010afaf
c01017ba:	af 10 c0 
c01017bd:	c7 05 ec bf 10 c0 cc 	mov    DWORD PTR ds:0xc010bfec,0xc010afcc
c01017c4:	af 10 c0 
c01017c7:	5d                   	pop    ebp
c01017c8:	c3                   	ret    

c01017c9 <intr_enable>:
c01017c9:	55                   	push   ebp
c01017ca:	89 e5                	mov    ebp,esp
c01017cc:	83 ec 18             	sub    esp,0x18
c01017cf:	e8 69 00 00 00       	call   c010183d <intr_get_status>
c01017d4:	83 f8 01             	cmp    eax,0x1
c01017d7:	75 0c                	jne    c01017e5 <intr_enable+0x1c>
c01017d9:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c01017e0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01017e3:	eb 0f                	jmp    c01017f4 <intr_enable+0x2b>
c01017e5:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01017ec:	e8 df f9 ff ff       	call   c01011d0 <io_sti>
c01017f1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01017f4:	c9                   	leave  
c01017f5:	c3                   	ret    

c01017f6 <intr_disable>:
c01017f6:	55                   	push   ebp
c01017f7:	89 e5                	mov    ebp,esp
c01017f9:	83 ec 18             	sub    esp,0x18
c01017fc:	e8 3c 00 00 00       	call   c010183d <intr_get_status>
c0101801:	83 f8 01             	cmp    eax,0x1
c0101804:	75 11                	jne    c0101817 <intr_disable+0x21>
c0101806:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c010180d:	e8 c4 f9 ff ff       	call   c01011d6 <io_cli>
c0101812:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101815:	eb 0a                	jmp    c0101821 <intr_disable+0x2b>
c0101817:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010181e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101821:	c9                   	leave  
c0101822:	c3                   	ret    

c0101823 <intr_set_status>:
c0101823:	55                   	push   ebp
c0101824:	89 e5                	mov    ebp,esp
c0101826:	83 ec 08             	sub    esp,0x8
c0101829:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c010182d:	75 07                	jne    c0101836 <intr_set_status+0x13>
c010182f:	e8 95 ff ff ff       	call   c01017c9 <intr_enable>
c0101834:	eb 05                	jmp    c010183b <intr_set_status+0x18>
c0101836:	e8 bb ff ff ff       	call   c01017f6 <intr_disable>
c010183b:	c9                   	leave  
c010183c:	c3                   	ret    

c010183d <intr_get_status>:
c010183d:	55                   	push   ebp
c010183e:	89 e5                	mov    ebp,esp
c0101840:	e8 a3 f9 ff ff       	call   c01011e8 <get_flages>
c0101845:	25 00 02 00 00       	and    eax,0x200
c010184a:	85 c0                	test   eax,eax
c010184c:	0f 95 c0             	setne  al
c010184f:	0f b6 c0             	movzx  eax,al
c0101852:	5d                   	pop    ebp
c0101853:	c3                   	ret    

c0101854 <init_block>:
c0101854:	55                   	push   ebp
c0101855:	89 e5                	mov    ebp,esp
c0101857:	53                   	push   ebx
c0101858:	83 ec 34             	sub    esp,0x34
c010185b:	c7 45 f0 20 00 00 00 	mov    DWORD PTR [ebp-0x10],0x20
c0101862:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101869:	eb 4a                	jmp    c01018b5 <init_block+0x61>
c010186b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010186e:	c1 e0 05             	shl    eax,0x5
c0101871:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0101874:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0101877:	89 10                	mov    DWORD PTR [eax],edx
c0101879:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010187c:	c1 e0 05             	shl    eax,0x5
c010187f:	89 c1                	mov    ecx,eax
c0101881:	03 4d 08             	add    ecx,DWORD PTR [ebp+0x8]
c0101884:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0101887:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c010188a:	b8 f4 0f 00 00       	mov    eax,0xff4
c010188f:	ba 00 00 00 00       	mov    edx,0x0
c0101894:	f7 75 e4             	div    DWORD PTR [ebp-0x1c]
c0101897:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
c010189a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010189d:	c1 e0 05             	shl    eax,0x5
c01018a0:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c01018a3:	83 c0 08             	add    eax,0x8
c01018a6:	89 04 24             	mov    DWORD PTR [esp],eax
c01018a9:	e8 ee 55 00 00       	call   c0106e9c <list_init>
c01018ae:	d1 65 f0             	shl    DWORD PTR [ebp-0x10],1
c01018b1:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01018b5:	83 7d f4 05          	cmp    DWORD PTR [ebp-0xc],0x5
c01018b9:	7e b0                	jle    c010186b <init_block+0x17>
c01018bb:	83 c4 34             	add    esp,0x34
c01018be:	5b                   	pop    ebx
c01018bf:	5d                   	pop    ebp
c01018c0:	c3                   	ret    

c01018c1 <arena2block>:
c01018c1:	55                   	push   ebp
c01018c2:	89 e5                	mov    ebp,esp
c01018c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01018c7:	8b 00                	mov    eax,DWORD PTR [eax]
c01018c9:	8b 10                	mov    edx,DWORD PTR [eax]
c01018cb:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01018ce:	0f af d0             	imul   edx,eax
c01018d1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01018d4:	01 d0                	add    eax,edx
c01018d6:	83 c0 0c             	add    eax,0xc
c01018d9:	5d                   	pop    ebp
c01018da:	c3                   	ret    

c01018db <block2arena>:
c01018db:	55                   	push   ebp
c01018dc:	89 e5                	mov    ebp,esp
c01018de:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01018e1:	25 00 f0 ff ff       	and    eax,0xfffff000
c01018e6:	5d                   	pop    ebp
c01018e7:	c3                   	ret    

c01018e8 <kmalloc>:
c01018e8:	55                   	push   ebp
c01018e9:	89 e5                	mov    ebp,esp
c01018eb:	83 ec 58             	sub    esp,0x58
c01018ee:	e8 04 17 00 00       	call   c0102ff7 <running_thread>
c01018f3:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01018f6:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01018f9:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01018fc:	85 c0                	test   eax,eax
c01018fe:	75 22                	jne    c0101922 <kmalloc+0x3a>
c0101900:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0101907:	a1 d4 23 11 c0       	mov    eax,ds:0xc01123d4
c010190c:	c1 e0 0c             	shl    eax,0xc
c010190f:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0101912:	c7 45 f0 a0 23 11 c0 	mov    DWORD PTR [ebp-0x10],0xc01123a0
c0101919:	c7 45 e8 e0 e3 10 c0 	mov    DWORD PTR [ebp-0x18],0xc010e3e0
c0101920:	eb 22                	jmp    c0101944 <kmalloc+0x5c>
c0101922:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0101929:	a1 d4 e4 10 c0       	mov    eax,ds:0xc010e4d4
c010192e:	c1 e0 0c             	shl    eax,0xc
c0101931:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0101934:	c7 45 f0 a0 e4 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010e4a0
c010193b:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010193e:	83 c0 7c             	add    eax,0x7c
c0101941:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0101944:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101947:	3b 45 ec             	cmp    eax,DWORD PTR [ebp-0x14]
c010194a:	7e 0a                	jle    c0101956 <kmalloc+0x6e>
c010194c:	b8 00 00 00 00       	mov    eax,0x0
c0101951:	e9 cc 02 00 00       	jmp    c0101c22 <kmalloc+0x33a>
c0101956:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101959:	89 04 24             	mov    DWORD PTR [esp],eax
c010195c:	e8 05 14 00 00       	call   c0102d66 <lock_acquire>
c0101961:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c0101968:	0f 8f df 01 00 00    	jg     c0101b4d <kmalloc+0x265>
c010196e:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0101975:	eb 17                	jmp    c010198e <kmalloc+0xa6>
c0101977:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010197a:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010197d:	c1 e0 05             	shl    eax,0x5
c0101980:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101983:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101986:	39 c2                	cmp    edx,eax
c0101988:	76 0c                	jbe    c0101996 <kmalloc+0xae>
c010198a:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c010198e:	83 7d e4 05          	cmp    DWORD PTR [ebp-0x1c],0x5
c0101992:	7e e3                	jle    c0101977 <kmalloc+0x8f>
c0101994:	eb 01                	jmp    c0101997 <kmalloc+0xaf>
c0101996:	90                   	nop
c0101997:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010199a:	c1 e0 05             	shl    eax,0x5
c010199d:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c01019a0:	83 c0 08             	add    eax,0x8
c01019a3:	89 04 24             	mov    DWORD PTR [esp],eax
c01019a6:	e8 a5 56 00 00       	call   c0107050 <list_empty>
c01019ab:	85 c0                	test   eax,eax
c01019ad:	0f 84 2e 01 00 00    	je     c0101ae1 <kmalloc+0x1f9>
c01019b3:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01019ba:	00 
c01019bb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01019be:	89 04 24             	mov    DWORD PTR [esp],eax
c01019c1:	e8 ad 09 00 00       	call   c0102373 <page_alloc>
c01019c6:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c01019c9:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c01019cd:	75 15                	jne    c01019e4 <kmalloc+0xfc>
c01019cf:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01019d2:	89 04 24             	mov    DWORD PTR [esp],eax
c01019d5:	e8 10 14 00 00       	call   c0102dea <lock_release>
c01019da:	b8 00 00 00 00       	mov    eax,0x0
c01019df:	e9 3e 02 00 00       	jmp    c0101c22 <kmalloc+0x33a>
c01019e4:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c01019eb:	00 
c01019ec:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01019f3:	00 
c01019f4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01019f7:	89 04 24             	mov    DWORD PTR [esp],eax
c01019fa:	e8 a5 5b 00 00       	call   c01075a4 <memset>
c01019ff:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101a02:	c1 e0 05             	shl    eax,0x5
c0101a05:	89 c2                	mov    edx,eax
c0101a07:	03 55 e8             	add    edx,DWORD PTR [ebp-0x18]
c0101a0a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a0d:	89 10                	mov    DWORD PTR [eax],edx
c0101a0f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a12:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0101a19:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101a1c:	c1 e0 05             	shl    eax,0x5
c0101a1f:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101a22:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101a25:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a28:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101a2b:	e8 c6 fd ff ff       	call   c01017f6 <intr_disable>
c0101a30:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0101a33:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0101a3a:	e9 80 00 00 00       	jmp    c0101abf <kmalloc+0x1d7>
c0101a3f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101a42:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101a46:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a49:	89 04 24             	mov    DWORD PTR [esp],eax
c0101a4c:	e8 70 fe ff ff       	call   c01018c1 <arena2block>
c0101a51:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0101a54:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101a57:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0101a5a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101a5d:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101a60:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0101a63:	8b 12                	mov    edx,DWORD PTR [edx]
c0101a65:	83 c2 08             	add    edx,0x8
c0101a68:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101a6c:	89 14 24             	mov    DWORD PTR [esp],edx
c0101a6f:	e8 25 55 00 00       	call   c0106f99 <list_find>
c0101a74:	85 c0                	test   eax,eax
c0101a76:	74 2c                	je     c0101aa4 <kmalloc+0x1bc>
c0101a78:	c7 44 24 10 10 b0 10 	mov    DWORD PTR [esp+0x10],0xc010b010
c0101a7f:	c0 
c0101a80:	c7 44 24 0c ba b0 10 	mov    DWORD PTR [esp+0xc],0xc010b0ba
c0101a87:	c0 
c0101a88:	c7 44 24 08 60 00 00 	mov    DWORD PTR [esp+0x8],0x60
c0101a8f:	00 
c0101a90:	c7 44 24 04 3f b0 10 	mov    DWORD PTR [esp+0x4],0xc010b03f
c0101a97:	c0 
c0101a98:	c7 04 24 3f b0 10 c0 	mov    DWORD PTR [esp],0xc010b03f
c0101a9f:	e8 30 ef ff ff       	call   c01009d4 <panic_spin>
c0101aa4:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101aa7:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0101aaa:	8b 12                	mov    edx,DWORD PTR [edx]
c0101aac:	83 c2 08             	add    edx,0x8
c0101aaf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101ab3:	89 14 24             	mov    DWORD PTR [esp],edx
c0101ab6:	e8 6c 54 00 00       	call   c0106f27 <list_append>
c0101abb:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0101abf:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101ac2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ac5:	c1 e0 05             	shl    eax,0x5
c0101ac8:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101acb:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101ace:	39 c2                	cmp    edx,eax
c0101ad0:	0f 82 69 ff ff ff    	jb     c0101a3f <kmalloc+0x157>
c0101ad6:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0101ad9:	89 04 24             	mov    DWORD PTR [esp],eax
c0101adc:	e8 42 fd ff ff       	call   c0101823 <intr_set_status>
c0101ae1:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ae4:	c1 e0 05             	shl    eax,0x5
c0101ae7:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101aea:	83 c0 08             	add    eax,0x8
c0101aed:	89 04 24             	mov    DWORD PTR [esp],eax
c0101af0:	e8 85 54 00 00       	call   c0106f7a <list_pop>
c0101af5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101af8:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0101afb:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101afe:	c1 e0 05             	shl    eax,0x5
c0101b01:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101b04:	8b 00                	mov    eax,DWORD PTR [eax]
c0101b06:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101b0a:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0101b11:	00 
c0101b12:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101b15:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b18:	e8 87 5a 00 00       	call   c01075a4 <memset>
c0101b1d:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101b20:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b23:	e8 b3 fd ff ff       	call   c01018db <block2arena>
c0101b28:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101b2b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101b2e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101b31:	8d 50 ff             	lea    edx,[eax-0x1]
c0101b34:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101b37:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101b3a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101b3d:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b40:	e8 a5 12 00 00       	call   c0102dea <lock_release>
c0101b45:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101b48:	e9 d5 00 00 00       	jmp    c0101c22 <kmalloc+0x33a>
c0101b4d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101b50:	05 0b 10 00 00       	add    eax,0x100b
c0101b55:	c1 e8 0c             	shr    eax,0xc
c0101b58:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
c0101b5b:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101b5e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101b62:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101b65:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b68:	e8 06 08 00 00       	call   c0102373 <page_alloc>
c0101b6d:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101b70:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c0101b74:	75 15                	jne    c0101b8b <kmalloc+0x2a3>
c0101b76:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101b79:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b7c:	e8 69 12 00 00       	call   c0102dea <lock_release>
c0101b81:	b8 00 00 00 00       	mov    eax,0x0
c0101b86:	e9 97 00 00 00       	jmp    c0101c22 <kmalloc+0x33a>
c0101b8b:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101b8e:	c1 e0 0c             	shl    eax,0xc
c0101b91:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101b95:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0101b9c:	00 
c0101b9d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101ba0:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ba3:	e8 fc 59 00 00       	call   c01075a4 <memset>
c0101ba8:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101bab:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0101bb1:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
c0101bb4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101bb7:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101bba:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101bbd:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
c0101bc4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101bc7:	8b 00                	mov    eax,DWORD PTR [eax]
c0101bc9:	85 c0                	test   eax,eax
c0101bcb:	75 18                	jne    c0101be5 <kmalloc+0x2fd>
c0101bcd:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101bd0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101bd3:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101bd6:	39 c2                	cmp    edx,eax
c0101bd8:	75 0b                	jne    c0101be5 <kmalloc+0x2fd>
c0101bda:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101bdd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101be0:	83 f8 01             	cmp    eax,0x1
c0101be3:	74 2c                	je     c0101c11 <kmalloc+0x329>
c0101be5:	c7 44 24 10 50 b0 10 	mov    DWORD PTR [esp+0x10],0xc010b050
c0101bec:	c0 
c0101bed:	c7 44 24 0c ba b0 10 	mov    DWORD PTR [esp+0xc],0xc010b0ba
c0101bf4:	c0 
c0101bf5:	c7 44 24 08 7b 00 00 	mov    DWORD PTR [esp+0x8],0x7b
c0101bfc:	00 
c0101bfd:	c7 44 24 04 3f b0 10 	mov    DWORD PTR [esp+0x4],0xc010b03f
c0101c04:	c0 
c0101c05:	c7 04 24 3f b0 10 c0 	mov    DWORD PTR [esp],0xc010b03f
c0101c0c:	e8 c3 ed ff ff       	call   c01009d4 <panic_spin>
c0101c11:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101c14:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c17:	e8 ce 11 00 00       	call   c0102dea <lock_release>
c0101c1c:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101c1f:	83 c0 0c             	add    eax,0xc
c0101c22:	c9                   	leave  
c0101c23:	c3                   	ret    

c0101c24 <kfree>:
c0101c24:	55                   	push   ebp
c0101c25:	89 e5                	mov    ebp,esp
c0101c27:	83 ec 48             	sub    esp,0x48
c0101c2a:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0101c2e:	0f 84 65 01 00 00    	je     c0101d99 <kfree+0x175>
c0101c34:	e8 be 13 00 00       	call   c0102ff7 <running_thread>
c0101c39:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0101c3c:	85 c0                	test   eax,eax
c0101c3e:	75 10                	jne    c0101c50 <kfree+0x2c>
c0101c40:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0101c47:	c7 45 f0 a0 23 11 c0 	mov    DWORD PTR [ebp-0x10],0xc01123a0
c0101c4e:	eb 0e                	jmp    c0101c5e <kfree+0x3a>
c0101c50:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0101c57:	c7 45 f0 a0 e4 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010e4a0
c0101c5e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101c61:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c64:	e8 fd 10 00 00       	call   c0102d66 <lock_acquire>
c0101c69:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101c6c:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0101c6f:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0101c72:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c75:	e8 61 fc ff ff       	call   c01018db <block2arena>
c0101c7a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101c7d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c80:	8b 00                	mov    eax,DWORD PTR [eax]
c0101c82:	85 c0                	test   eax,eax
c0101c84:	75 2c                	jne    c0101cb2 <kfree+0x8e>
c0101c86:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c89:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101c8c:	83 f8 01             	cmp    eax,0x1
c0101c8f:	75 21                	jne    c0101cb2 <kfree+0x8e>
c0101c91:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c94:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101c97:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101c9b:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c9e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101ca2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101ca5:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ca8:	e8 9e 0c 00 00       	call   c010294b <page_free>
c0101cad:	e9 d9 00 00 00       	jmp    c0101d8b <kfree+0x167>
c0101cb2:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0101cb5:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0101cb8:	8b 12                	mov    edx,DWORD PTR [edx]
c0101cba:	83 c2 08             	add    edx,0x8
c0101cbd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101cc1:	89 14 24             	mov    DWORD PTR [esp],edx
c0101cc4:	e8 5e 52 00 00       	call   c0106f27 <list_append>
c0101cc9:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ccc:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101ccf:	8d 50 01             	lea    edx,[eax+0x1]
c0101cd2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101cd5:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101cd8:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101cdb:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101cde:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ce1:	8b 00                	mov    eax,DWORD PTR [eax]
c0101ce3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101ce6:	39 c2                	cmp    edx,eax
c0101ce8:	0f 85 9d 00 00 00    	jne    c0101d8b <kfree+0x167>
c0101cee:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0101cf5:	eb 6b                	jmp    c0101d62 <kfree+0x13e>
c0101cf7:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0101cfa:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101cfe:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101d01:	89 04 24             	mov    DWORD PTR [esp],eax
c0101d04:	e8 b8 fb ff ff       	call   c01018c1 <arena2block>
c0101d09:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0101d0c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101d0f:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0101d12:	8b 12                	mov    edx,DWORD PTR [edx]
c0101d14:	83 c2 08             	add    edx,0x8
c0101d17:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101d1b:	89 14 24             	mov    DWORD PTR [esp],edx
c0101d1e:	e8 76 52 00 00       	call   c0106f99 <list_find>
c0101d23:	85 c0                	test   eax,eax
c0101d25:	75 2c                	jne    c0101d53 <kfree+0x12f>
c0101d27:	c7 44 24 10 88 b0 10 	mov    DWORD PTR [esp+0x10],0xc010b088
c0101d2e:	c0 
c0101d2f:	c7 44 24 0c b4 b0 10 	mov    DWORD PTR [esp+0xc],0xc010b0b4
c0101d36:	c0 
c0101d37:	c7 44 24 08 a9 00 00 	mov    DWORD PTR [esp+0x8],0xa9
c0101d3e:	00 
c0101d3f:	c7 44 24 04 3f b0 10 	mov    DWORD PTR [esp+0x4],0xc010b03f
c0101d46:	c0 
c0101d47:	c7 04 24 3f b0 10 c0 	mov    DWORD PTR [esp],0xc010b03f
c0101d4e:	e8 81 ec ff ff       	call   c01009d4 <panic_spin>
c0101d53:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101d56:	89 04 24             	mov    DWORD PTR [esp],eax
c0101d59:	e8 e6 51 00 00       	call   c0106f44 <list_remove>
c0101d5e:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0101d62:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0101d65:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101d68:	8b 00                	mov    eax,DWORD PTR [eax]
c0101d6a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101d6d:	39 c2                	cmp    edx,eax
c0101d6f:	72 86                	jb     c0101cf7 <kfree+0xd3>
c0101d71:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c0101d78:	00 
c0101d79:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101d7c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101d80:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101d83:	89 04 24             	mov    DWORD PTR [esp],eax
c0101d86:	e8 c0 0b 00 00       	call   c010294b <page_free>
c0101d8b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101d8e:	89 04 24             	mov    DWORD PTR [esp],eax
c0101d91:	e8 54 10 00 00       	call   c0102dea <lock_release>
c0101d96:	90                   	nop
c0101d97:	eb 01                	jmp    c0101d9a <kfree+0x176>
c0101d99:	90                   	nop
c0101d9a:	c9                   	leave  
c0101d9b:	c3                   	ret    

c0101d9c <init_memory>:
c0101d9c:	55                   	push   ebp
c0101d9d:	89 e5                	mov    ebp,esp
c0101d9f:	57                   	push   edi
c0101da0:	56                   	push   esi
c0101da1:	53                   	push   ebx
c0101da2:	83 ec 4c             	sub    esp,0x4c
c0101da5:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c0101daa:	8b 00                	mov    eax,DWORD PTR [eax]
c0101dac:	85 c0                	test   eax,eax
c0101dae:	0f 85 21 01 00 00    	jne    c0101ed5 <init_memory+0x139>
c0101db4:	b8 0c 7c 00 c0       	mov    eax,0xc0007c0c
c0101db9:	8b 00                	mov    eax,DWORD PTR [eax]
c0101dbb:	85 c0                	test   eax,eax
c0101dbd:	0f 85 12 01 00 00    	jne    c0101ed5 <init_memory+0x139>
c0101dc3:	b8 00 7c 00 c0       	mov    eax,0xc0007c00
c0101dc8:	8b 00                	mov    eax,DWORD PTR [eax]
c0101dca:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101dcd:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
c0101dd4:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
c0101ddb:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0101de2:	eb 74                	jmp    c0101e58 <init_memory+0xbc>
c0101de4:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101de7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0101dea:	83 f8 01             	cmp    eax,0x1
c0101ded:	75 61                	jne    c0101e50 <init_memory+0xb4>
c0101def:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101df2:	8b 00                	mov    eax,DWORD PTR [eax]
c0101df4:	3d 00 00 10 00       	cmp    eax,0x100000
c0101df9:	75 55                	jne    c0101e50 <init_memory+0xb4>
c0101dfb:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101dfe:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101e01:	ba 00 00 00 00       	mov    edx,0x0
c0101e06:	89 c1                	mov    ecx,eax
c0101e08:	89 d3                	mov    ebx,edx
c0101e0a:	89 cb                	mov    ebx,ecx
c0101e0c:	b9 00 00 00 00       	mov    ecx,0x0
c0101e11:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e14:	8b 00                	mov    eax,DWORD PTR [eax]
c0101e16:	ba 00 00 00 00       	mov    edx,0x0
c0101e1b:	01 c1                	add    ecx,eax
c0101e1d:	11 d3                	adc    ebx,edx
c0101e1f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e22:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0101e25:	ba 00 00 00 00       	mov    edx,0x0
c0101e2a:	89 c6                	mov    esi,eax
c0101e2c:	89 d7                	mov    edi,edx
c0101e2e:	89 f7                	mov    edi,esi
c0101e30:	be 00 00 00 00       	mov    esi,0x0
c0101e35:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e38:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101e3b:	ba 00 00 00 00       	mov    edx,0x0
c0101e40:	01 f0                	add    eax,esi
c0101e42:	11 fa                	adc    edx,edi
c0101e44:	01 c8                	add    eax,ecx
c0101e46:	11 da                	adc    edx,ebx
c0101e48:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101e4b:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0101e4e:	eb 1a                	jmp    c0101e6a <init_memory+0xce>
c0101e50:	83 45 e4 14          	add    DWORD PTR [ebp-0x1c],0x14
c0101e54:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0101e58:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101e5b:	b8 04 7c 00 c0       	mov    eax,0xc0007c04
c0101e60:	8b 00                	mov    eax,DWORD PTR [eax]
c0101e62:	39 c2                	cmp    edx,eax
c0101e64:	0f 82 7a ff ff ff    	jb     c0101de4 <init_memory+0x48>
c0101e6a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101e6d:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0101e70:	09 d0                	or     eax,edx
c0101e72:	85 c0                	test   eax,eax
c0101e74:	75 2c                	jne    c0101ea2 <init_memory+0x106>
c0101e76:	c7 44 24 10 e3 b0 10 	mov    DWORD PTR [esp+0x10],0xc010b0e3
c0101e7d:	c0 
c0101e7e:	c7 44 24 0c 81 b2 10 	mov    DWORD PTR [esp+0xc],0xc010b281
c0101e85:	c0 
c0101e86:	c7 44 24 08 2f 00 00 	mov    DWORD PTR [esp+0x8],0x2f
c0101e8d:	00 
c0101e8e:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c0101e95:	c0 
c0101e96:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c0101e9d:	e8 32 eb ff ff       	call   c01009d4 <panic_spin>
c0101ea2:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c0101ea6:	72 1d                	jb     c0101ec5 <init_memory+0x129>
c0101ea8:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c0101eac:	77 09                	ja     c0101eb7 <init_memory+0x11b>
c0101eae:	81 7d d8 ff ff ff 3f 	cmp    DWORD PTR [ebp-0x28],0x3fffffff
c0101eb5:	76 0e                	jbe    c0101ec5 <init_memory+0x129>
c0101eb7:	c7 45 d8 ff ff ff 3f 	mov    DWORD PTR [ebp-0x28],0x3fffffff
c0101ebe:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
c0101ec5:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c0101eca:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0101ecd:	81 c2 00 00 10 00    	add    edx,0x100000
c0101ed3:	89 10                	mov    DWORD PTR [eax],edx
c0101ed5:	c7 45 d4 00 00 10 00 	mov    DWORD PTR [ebp-0x2c],0x100000
c0101edc:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c0101ee1:	8b 00                	mov    eax,DWORD PTR [eax]
c0101ee3:	2b 45 d4             	sub    eax,DWORD PTR [ebp-0x2c]
c0101ee6:	2d 00 00 40 00       	sub    eax,0x400000
c0101eeb:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0101eee:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101ef1:	d1 e8                	shr    eax,1
c0101ef3:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
c0101ef6:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101ef9:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0101efc:	89 d1                	mov    ecx,edx
c0101efe:	29 c1                	sub    ecx,eax
c0101f00:	89 c8                	mov    eax,ecx
c0101f02:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
c0101f05:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101f08:	c1 e8 0c             	shr    eax,0xc
c0101f0b:	c7 44 24 08 60 04 11 	mov    DWORD PTR [esp+0x8],0xc0110460
c0101f12:	c0 
c0101f13:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101f17:	c7 04 24 a0 23 11 c0 	mov    DWORD PTR [esp],0xc01123a0
c0101f1e:	e8 c9 00 00 00       	call   c0101fec <init_memman>
c0101f23:	c7 44 24 08 a0 c4 10 	mov    DWORD PTR [esp+0x8],0xc010c4a0
c0101f2a:	c0 
c0101f2b:	c7 44 24 04 ff ff 0f 	mov    DWORD PTR [esp+0x4],0xfffff
c0101f32:	00 
c0101f33:	c7 04 24 e0 e4 10 c0 	mov    DWORD PTR [esp],0xc010e4e0
c0101f3a:	e8 ad 00 00 00       	call   c0101fec <init_memman>
c0101f3f:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0101f42:	c1 e8 0c             	shr    eax,0xc
c0101f45:	c7 44 24 08 20 e5 10 	mov    DWORD PTR [esp+0x8],0xc010e520
c0101f4c:	c0 
c0101f4d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101f51:	c7 04 24 a0 e4 10 c0 	mov    DWORD PTR [esp],0xc010e4a0
c0101f58:	e8 8f 00 00 00       	call   c0101fec <init_memman>
c0101f5d:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101f60:	c1 e8 0c             	shr    eax,0xc
c0101f63:	89 c2                	mov    edx,eax
c0101f65:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0101f68:	05 00 00 40 00       	add    eax,0x400000
c0101f6d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0101f71:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101f75:	c7 04 24 a0 23 11 c0 	mov    DWORD PTR [esp],0xc01123a0
c0101f7c:	e8 f6 05 00 00       	call   c0102577 <pgman_free>
c0101f81:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0101f84:	c1 e8 0c             	shr    eax,0xc
c0101f87:	89 c2                	mov    edx,eax
c0101f89:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101f8c:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
c0101f8f:	01 c8                	add    eax,ecx
c0101f91:	05 00 00 40 00       	add    eax,0x400000
c0101f96:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0101f9a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101f9e:	c7 04 24 a0 e4 10 c0 	mov    DWORD PTR [esp],0xc010e4a0
c0101fa5:	e8 cd 05 00 00       	call   c0102577 <pgman_free>
c0101faa:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101fad:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c0101fb0:	01 d0                	add    eax,edx
c0101fb2:	05 00 00 40 00       	add    eax,0x400000
c0101fb7:	a3 e0 bd 10 c0       	mov    ds:0xc010bde0,eax
c0101fbc:	c7 44 24 08 00 fc 01 	mov    DWORD PTR [esp+0x8],0x1fc00
c0101fc3:	00 
c0101fc4:	c7 44 24 04 00 00 40 	mov    DWORD PTR [esp+0x4],0xc0400000
c0101fcb:	c0 
c0101fcc:	c7 04 24 e0 e4 10 c0 	mov    DWORD PTR [esp],0xc010e4e0
c0101fd3:	e8 9f 05 00 00       	call   c0102577 <pgman_free>
c0101fd8:	c7 04 24 e0 e3 10 c0 	mov    DWORD PTR [esp],0xc010e3e0
c0101fdf:	e8 70 f8 ff ff       	call   c0101854 <init_block>
c0101fe4:	83 c4 4c             	add    esp,0x4c
c0101fe7:	5b                   	pop    ebx
c0101fe8:	5e                   	pop    esi
c0101fe9:	5f                   	pop    edi
c0101fea:	5d                   	pop    ebp
c0101feb:	c3                   	ret    

c0101fec <init_memman>:
c0101fec:	55                   	push   ebp
c0101fed:	89 e5                	mov    ebp,esp
c0101fef:	83 ec 28             	sub    esp,0x28
c0101ff2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101ff5:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ff8:	e8 09 0b 00 00       	call   c0102b06 <lock_init>
c0101ffd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102000:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0102007:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010200a:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0102011:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102014:	c7 40 2c 00 00 00 00 	mov    DWORD PTR [eax+0x2c],0x0
c010201b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010201e:	c7 40 30 00 00 00 00 	mov    DWORD PTR [eax+0x30],0x0
c0102025:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0102029:	75 2c                	jne    c0102057 <init_memman+0x6b>
c010202b:	c7 44 24 10 08 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b108
c0102032:	c0 
c0102033:	c7 44 24 0c 75 b2 10 	mov    DWORD PTR [esp+0xc],0xc010b275
c010203a:	c0 
c010203b:	c7 44 24 08 55 00 00 	mov    DWORD PTR [esp+0x8],0x55
c0102042:	00 
c0102043:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c010204a:	c0 
c010204b:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c0102052:	e8 7d e9 ff ff       	call   c01009d4 <panic_spin>
c0102057:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010205a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010205d:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0102060:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0102064:	75 2c                	jne    c0102092 <init_memman+0xa6>
c0102066:	c7 44 24 10 13 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b113
c010206d:	c0 
c010206e:	c7 44 24 0c 75 b2 10 	mov    DWORD PTR [esp+0xc],0xc010b275
c0102075:	c0 
c0102076:	c7 44 24 08 57 00 00 	mov    DWORD PTR [esp+0x8],0x57
c010207d:	00 
c010207e:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c0102085:	c0 
c0102086:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c010208d:	e8 42 e9 ff ff       	call   c01009d4 <panic_spin>
c0102092:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102095:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0102098:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c010209b:	c9                   	leave  
c010209c:	c3                   	ret    

c010209d <TotalFreeSize>:
c010209d:	55                   	push   ebp
c010209e:	89 e5                	mov    ebp,esp
c01020a0:	83 ec 10             	sub    esp,0x10
c01020a3:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c01020aa:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c01020b1:	eb 18                	jmp    c01020cb <TotalFreeSize+0x2e>
c01020b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020b6:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01020b9:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c01020bc:	c1 e2 03             	shl    edx,0x3
c01020bf:	01 d0                	add    eax,edx
c01020c1:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01020c4:	01 45 fc             	add    DWORD PTR [ebp-0x4],eax
c01020c7:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c01020cb:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c01020ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020d1:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01020d4:	39 c2                	cmp    edx,eax
c01020d6:	72 db                	jb     c01020b3 <TotalFreeSize+0x16>
c01020d8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01020db:	c9                   	leave  
c01020dc:	c3                   	ret    

c01020dd <pde_ptr>:
c01020dd:	55                   	push   ebp
c01020de:	89 e5                	mov    ebp,esp
c01020e0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020e3:	c1 e8 16             	shr    eax,0x16
c01020e6:	c1 e0 02             	shl    eax,0x2
c01020e9:	2d 00 10 00 00       	sub    eax,0x1000
c01020ee:	5d                   	pop    ebp
c01020ef:	c3                   	ret    

c01020f0 <pte_ptr>:
c01020f0:	55                   	push   ebp
c01020f1:	89 e5                	mov    ebp,esp
c01020f3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020f6:	25 00 00 c0 ff       	and    eax,0xffc00000
c01020fb:	89 c2                	mov    edx,eax
c01020fd:	c1 ea 0a             	shr    edx,0xa
c0102100:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102103:	25 00 f0 3f 00       	and    eax,0x3ff000
c0102108:	c1 f8 0c             	sar    eax,0xc
c010210b:	c1 e0 02             	shl    eax,0x2
c010210e:	01 d0                	add    eax,edx
c0102110:	2d 00 00 40 00       	sub    eax,0x400000
c0102115:	5d                   	pop    ebp
c0102116:	c3                   	ret    

c0102117 <addr_v2p>:
c0102117:	55                   	push   ebp
c0102118:	89 e5                	mov    ebp,esp
c010211a:	83 ec 14             	sub    esp,0x14
c010211d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102120:	89 04 24             	mov    DWORD PTR [esp],eax
c0102123:	e8 c8 ff ff ff       	call   c01020f0 <pte_ptr>
c0102128:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010212b:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010212e:	8b 00                	mov    eax,DWORD PTR [eax]
c0102130:	89 c2                	mov    edx,eax
c0102132:	81 e2 00 f0 ff ff    	and    edx,0xfffff000
c0102138:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010213b:	25 ff 0f 00 00       	and    eax,0xfff
c0102140:	09 d0                	or     eax,edx
c0102142:	c9                   	leave  
c0102143:	c3                   	ret    

c0102144 <pgman_alloc>:
c0102144:	55                   	push   ebp
c0102145:	89 e5                	mov    ebp,esp
c0102147:	53                   	push   ebx
c0102148:	83 ec 24             	sub    esp,0x24
c010214b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010214e:	89 04 24             	mov    DWORD PTR [esp],eax
c0102151:	e8 10 0c 00 00       	call   c0102d66 <lock_acquire>
c0102156:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010215d:	e9 fb 00 00 00       	jmp    c010225d <pgman_alloc+0x119>
c0102162:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102165:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102168:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010216b:	c1 e2 03             	shl    edx,0x3
c010216e:	01 d0                	add    eax,edx
c0102170:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0102173:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102176:	39 c2                	cmp    edx,eax
c0102178:	0f 82 db 00 00 00    	jb     c0102259 <pgman_alloc+0x115>
c010217e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102181:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102184:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102187:	c1 e2 03             	shl    edx,0x3
c010218a:	01 d0                	add    eax,edx
c010218c:	8b 00                	mov    eax,DWORD PTR [eax]
c010218e:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102191:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102194:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102197:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010219a:	c1 e2 03             	shl    edx,0x3
c010219d:	01 c2                	add    edx,eax
c010219f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01021a2:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01021a5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01021a8:	c1 e1 03             	shl    ecx,0x3
c01021ab:	01 c8                	add    eax,ecx
c01021ad:	8b 00                	mov    eax,DWORD PTR [eax]
c01021af:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c01021b2:	89 02                	mov    DWORD PTR [edx],eax
c01021b4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01021b7:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01021ba:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01021bd:	c1 e2 03             	shl    edx,0x3
c01021c0:	01 c2                	add    edx,eax
c01021c2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01021c5:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01021c8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01021cb:	c1 e1 03             	shl    ecx,0x3
c01021ce:	01 c8                	add    eax,ecx
c01021d0:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c01021d3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01021d6:	89 cb                	mov    ebx,ecx
c01021d8:	29 c3                	sub    ebx,eax
c01021da:	89 d8                	mov    eax,ebx
c01021dc:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c01021df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01021e2:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01021e5:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01021e8:	c1 e2 03             	shl    edx,0x3
c01021eb:	01 d0                	add    eax,edx
c01021ed:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01021f0:	85 c0                	test   eax,eax
c01021f2:	75 52                	jne    c0102246 <pgman_alloc+0x102>
c01021f4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01021f7:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01021fa:	8d 50 ff             	lea    edx,[eax-0x1]
c01021fd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102200:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c0102203:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102206:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0102209:	eb 2e                	jmp    c0102239 <pgman_alloc+0xf5>
c010220b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010220e:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102211:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102214:	c1 e2 03             	shl    edx,0x3
c0102217:	8d 0c 10             	lea    ecx,[eax+edx*1]
c010221a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010221d:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102220:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102223:	83 c2 01             	add    edx,0x1
c0102226:	c1 e2 03             	shl    edx,0x3
c0102229:	01 d0                	add    eax,edx
c010222b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c010222e:	8b 00                	mov    eax,DWORD PTR [eax]
c0102230:	89 01                	mov    DWORD PTR [ecx],eax
c0102232:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0102235:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0102239:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010223c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010223f:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102242:	39 c2                	cmp    edx,eax
c0102244:	72 c5                	jb     c010220b <pgman_alloc+0xc7>
c0102246:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102249:	89 04 24             	mov    DWORD PTR [esp],eax
c010224c:	e8 99 0b 00 00       	call   c0102dea <lock_release>
c0102251:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102254:	c1 e0 0c             	shl    eax,0xc
c0102257:	eb 25                	jmp    c010227e <pgman_alloc+0x13a>
c0102259:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010225d:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102260:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102263:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102266:	39 c2                	cmp    edx,eax
c0102268:	0f 82 f4 fe ff ff    	jb     c0102162 <pgman_alloc+0x1e>
c010226e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102271:	89 04 24             	mov    DWORD PTR [esp],eax
c0102274:	e8 71 0b 00 00       	call   c0102dea <lock_release>
c0102279:	b8 00 00 00 00       	mov    eax,0x0
c010227e:	83 c4 24             	add    esp,0x24
c0102281:	5b                   	pop    ebx
c0102282:	5d                   	pop    ebp
c0102283:	c3                   	ret    

c0102284 <page_table_add>:
c0102284:	55                   	push   ebp
c0102285:	89 e5                	mov    ebp,esp
c0102287:	83 ec 38             	sub    esp,0x38
c010228a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010228d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102290:	e8 48 fe ff ff       	call   c01020dd <pde_ptr>
c0102295:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102298:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010229b:	89 04 24             	mov    DWORD PTR [esp],eax
c010229e:	e8 4d fe ff ff       	call   c01020f0 <pte_ptr>
c01022a3:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01022a6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01022a9:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01022ac:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01022af:	8b 00                	mov    eax,DWORD PTR [eax]
c01022b1:	83 e0 01             	and    eax,0x1
c01022b4:	84 c0                	test   al,al
c01022b6:	74 30                	je     c01022e8 <page_table_add+0x64>
c01022b8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01022bb:	8b 00                	mov    eax,DWORD PTR [eax]
c01022bd:	83 e0 01             	and    eax,0x1
c01022c0:	85 c0                	test   eax,eax
c01022c2:	75 12                	jne    c01022d6 <page_table_add+0x52>
c01022c4:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01022c7:	89 c2                	mov    edx,eax
c01022c9:	83 ca 07             	or     edx,0x7
c01022cc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01022cf:	89 10                	mov    DWORD PTR [eax],edx
c01022d1:	e9 9b 00 00 00       	jmp    c0102371 <page_table_add+0xed>
c01022d6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01022d9:	89 c2                	mov    edx,eax
c01022db:	83 ca 07             	or     edx,0x7
c01022de:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01022e1:	89 10                	mov    DWORD PTR [eax],edx
c01022e3:	e9 89 00 00 00       	jmp    c0102371 <page_table_add+0xed>
c01022e8:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01022ef:	00 
c01022f0:	c7 04 24 a0 23 11 c0 	mov    DWORD PTR [esp],0xc01123a0
c01022f7:	e8 48 fe ff ff       	call   c0102144 <pgman_alloc>
c01022fc:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01022ff:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102302:	89 c2                	mov    edx,eax
c0102304:	83 ca 07             	or     edx,0x7
c0102307:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010230a:	89 10                	mov    DWORD PTR [eax],edx
c010230c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010230f:	25 00 f0 ff ff       	and    eax,0xfffff000
c0102314:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c010231b:	00 
c010231c:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102323:	00 
c0102324:	89 04 24             	mov    DWORD PTR [esp],eax
c0102327:	e8 78 52 00 00       	call   c01075a4 <memset>
c010232c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010232f:	8b 00                	mov    eax,DWORD PTR [eax]
c0102331:	83 e0 01             	and    eax,0x1
c0102334:	85 c0                	test   eax,eax
c0102336:	74 2c                	je     c0102364 <page_table_add+0xe0>
c0102338:	c7 44 24 10 20 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b120
c010233f:	c0 
c0102340:	c7 44 24 0c 66 b2 10 	mov    DWORD PTR [esp+0xc],0xc010b266
c0102347:	c0 
c0102348:	c7 44 24 08 b3 00 00 	mov    DWORD PTR [esp+0x8],0xb3
c010234f:	00 
c0102350:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c0102357:	c0 
c0102358:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c010235f:	e8 70 e6 ff ff       	call   c01009d4 <panic_spin>
c0102364:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102367:	89 c2                	mov    edx,eax
c0102369:	83 ca 07             	or     edx,0x7
c010236c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010236f:	89 10                	mov    DWORD PTR [eax],edx
c0102371:	c9                   	leave  
c0102372:	c3                   	ret    

c0102373 <page_alloc>:
c0102373:	55                   	push   ebp
c0102374:	89 e5                	mov    ebp,esp
c0102376:	83 ec 38             	sub    esp,0x38
c0102379:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010237c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010237f:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102383:	75 07                	jne    c010238c <page_alloc+0x19>
c0102385:	b8 a0 23 11 c0       	mov    eax,0xc01123a0
c010238a:	eb 05                	jmp    c0102391 <page_alloc+0x1e>
c010238c:	b8 a0 e4 10 c0       	mov    eax,0xc010e4a0
c0102391:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102394:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102398:	74 0a                	je     c01023a4 <page_alloc+0x31>
c010239a:	e8 58 0c 00 00       	call   c0102ff7 <running_thread>
c010239f:	83 c0 40             	add    eax,0x40
c01023a2:	eb 05                	jmp    c01023a9 <page_alloc+0x36>
c01023a4:	b8 e0 e4 10 c0       	mov    eax,0xc010e4e0
c01023a9:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01023ac:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01023af:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01023b3:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01023b6:	89 04 24             	mov    DWORD PTR [esp],eax
c01023b9:	e8 86 fd ff ff       	call   c0102144 <pgman_alloc>
c01023be:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01023c1:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c01023c5:	75 07                	jne    c01023ce <page_alloc+0x5b>
c01023c7:	b8 00 00 00 00       	mov    eax,0x0
c01023cc:	eb 51                	jmp    c010241f <page_alloc+0xac>
c01023ce:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01023d1:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01023d4:	eb 40                	jmp    c0102416 <page_alloc+0xa3>
c01023d6:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01023da:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01023e1:	00 
c01023e2:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01023e5:	89 04 24             	mov    DWORD PTR [esp],eax
c01023e8:	e8 57 fd ff ff       	call   c0102144 <pgman_alloc>
c01023ed:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01023f0:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01023f4:	75 07                	jne    c01023fd <page_alloc+0x8a>
c01023f6:	b8 00 00 00 00       	mov    eax,0x0
c01023fb:	eb 22                	jmp    c010241f <page_alloc+0xac>
c01023fd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102400:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0102403:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102407:	89 04 24             	mov    DWORD PTR [esp],eax
c010240a:	e8 75 fe ff ff       	call   c0102284 <page_table_add>
c010240f:	81 45 f4 00 10 00 00 	add    DWORD PTR [ebp-0xc],0x1000
c0102416:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c010241a:	75 ba                	jne    c01023d6 <page_alloc+0x63>
c010241c:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010241f:	c9                   	leave  
c0102420:	c3                   	ret    

c0102421 <get_kernel_page>:
c0102421:	55                   	push   ebp
c0102422:	89 e5                	mov    ebp,esp
c0102424:	83 ec 28             	sub    esp,0x28
c0102427:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010242a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010242e:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0102435:	e8 39 ff ff ff       	call   c0102373 <page_alloc>
c010243a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010243d:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102441:	74 1d                	je     c0102460 <get_kernel_page+0x3f>
c0102443:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102446:	c1 e0 0c             	shl    eax,0xc
c0102449:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010244d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102454:	00 
c0102455:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102458:	89 04 24             	mov    DWORD PTR [esp],eax
c010245b:	e8 44 51 00 00       	call   c01075a4 <memset>
c0102460:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102463:	c9                   	leave  
c0102464:	c3                   	ret    

c0102465 <get_user_page>:
c0102465:	55                   	push   ebp
c0102466:	89 e5                	mov    ebp,esp
c0102468:	83 ec 28             	sub    esp,0x28
c010246b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010246e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102472:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0102479:	e8 f5 fe ff ff       	call   c0102373 <page_alloc>
c010247e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102481:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102485:	74 1d                	je     c01024a4 <get_user_page+0x3f>
c0102487:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010248a:	c1 e0 0c             	shl    eax,0xc
c010248d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102491:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102498:	00 
c0102499:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010249c:	89 04 24             	mov    DWORD PTR [esp],eax
c010249f:	e8 00 51 00 00       	call   c01075a4 <memset>
c01024a4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01024a7:	c9                   	leave  
c01024a8:	c3                   	ret    

c01024a9 <get_a_page>:
c01024a9:	55                   	push   ebp
c01024aa:	89 e5                	mov    ebp,esp
c01024ac:	83 ec 38             	sub    esp,0x38
c01024af:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01024b3:	75 07                	jne    c01024bc <get_a_page+0x13>
c01024b5:	b8 a0 23 11 c0       	mov    eax,0xc01123a0
c01024ba:	eb 05                	jmp    c01024c1 <get_a_page+0x18>
c01024bc:	b8 a0 e4 10 c0       	mov    eax,0xc010e4a0
c01024c1:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01024c4:	e8 2e 0b 00 00       	call   c0102ff7 <running_thread>
c01024c9:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01024cc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01024cf:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01024d2:	85 c0                	test   eax,eax
c01024d4:	74 06                	je     c01024dc <get_a_page+0x33>
c01024d6:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
c01024da:	74 3c                	je     c0102518 <get_a_page+0x6f>
c01024dc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01024df:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01024e2:	85 c0                	test   eax,eax
c01024e4:	75 06                	jne    c01024ec <get_a_page+0x43>
c01024e6:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01024ea:	74 2c                	je     c0102518 <get_a_page+0x6f>
c01024ec:	c7 44 24 10 38 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b138
c01024f3:	c0 
c01024f4:	c7 44 24 0c 5b b2 10 	mov    DWORD PTR [esp+0xc],0xc010b25b
c01024fb:	c0 
c01024fc:	c7 44 24 08 f7 00 00 	mov    DWORD PTR [esp+0x8],0xf7
c0102503:	00 
c0102504:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c010250b:	c0 
c010250c:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c0102513:	e8 bc e4 ff ff       	call   c01009d4 <panic_spin>
c0102518:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c010251f:	00 
c0102520:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102523:	89 04 24             	mov    DWORD PTR [esp],eax
c0102526:	e8 19 fc ff ff       	call   c0102144 <pgman_alloc>
c010252b:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010252e:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0102532:	75 2c                	jne    c0102560 <get_a_page+0xb7>
c0102534:	c7 44 24 10 8f b1 10 	mov    DWORD PTR [esp+0x10],0xc010b18f
c010253b:	c0 
c010253c:	c7 44 24 0c 5b b2 10 	mov    DWORD PTR [esp+0xc],0xc010b25b
c0102543:	c0 
c0102544:	c7 44 24 08 fa 00 00 	mov    DWORD PTR [esp+0x8],0xfa
c010254b:	00 
c010254c:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c0102553:	c0 
c0102554:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c010255b:	e8 74 e4 ff ff       	call   c01009d4 <panic_spin>
c0102560:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102563:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102567:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010256a:	89 04 24             	mov    DWORD PTR [esp],eax
c010256d:	e8 12 fd ff ff       	call   c0102284 <page_table_add>
c0102572:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102575:	c9                   	leave  
c0102576:	c3                   	ret    

c0102577 <pgman_free>:
c0102577:	55                   	push   ebp
c0102578:	89 e5                	mov    ebp,esp
c010257a:	53                   	push   ebx
c010257b:	83 ec 34             	sub    esp,0x34
c010257e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102581:	c1 e8 0c             	shr    eax,0xc
c0102584:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0102587:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010258a:	89 04 24             	mov    DWORD PTR [esp],eax
c010258d:	e8 d4 07 00 00       	call   c0102d66 <lock_acquire>
c0102592:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0102599:	eb 19                	jmp    c01025b4 <pgman_free+0x3d>
c010259b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010259e:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01025a1:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01025a4:	c1 e2 03             	shl    edx,0x3
c01025a7:	01 d0                	add    eax,edx
c01025a9:	8b 00                	mov    eax,DWORD PTR [eax]
c01025ab:	3b 45 e8             	cmp    eax,DWORD PTR [ebp-0x18]
c01025ae:	7f 13                	jg     c01025c3 <pgman_free+0x4c>
c01025b0:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01025b4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01025b7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025ba:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01025bd:	39 c2                	cmp    edx,eax
c01025bf:	72 da                	jb     c010259b <pgman_free+0x24>
c01025c1:	eb 01                	jmp    c01025c4 <pgman_free+0x4d>
c01025c3:	90                   	nop
c01025c4:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c01025c8:	0f 8e 37 01 00 00    	jle    c0102705 <pgman_free+0x18e>
c01025ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025d1:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01025d4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01025d7:	83 ea 01             	sub    edx,0x1
c01025da:	c1 e2 03             	shl    edx,0x3
c01025dd:	01 d0                	add    eax,edx
c01025df:	8b 00                	mov    eax,DWORD PTR [eax]
c01025e1:	89 c2                	mov    edx,eax
c01025e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025e6:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01025e9:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01025ec:	83 e9 01             	sub    ecx,0x1
c01025ef:	c1 e1 03             	shl    ecx,0x3
c01025f2:	01 c8                	add    eax,ecx
c01025f4:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01025f7:	01 c2                	add    edx,eax
c01025f9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01025fc:	39 c2                	cmp    edx,eax
c01025fe:	0f 85 01 01 00 00    	jne    c0102705 <pgman_free+0x18e>
c0102604:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102607:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010260a:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010260d:	83 ea 01             	sub    edx,0x1
c0102610:	c1 e2 03             	shl    edx,0x3
c0102613:	01 c2                	add    edx,eax
c0102615:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102618:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010261b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c010261e:	83 e9 01             	sub    ecx,0x1
c0102621:	c1 e1 03             	shl    ecx,0x3
c0102624:	01 c8                	add    eax,ecx
c0102626:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102629:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010262c:	01 c8                	add    eax,ecx
c010262e:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102631:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102634:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102637:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010263a:	39 c2                	cmp    edx,eax
c010263c:	0f 83 ae 00 00 00    	jae    c01026f0 <pgman_free+0x179>
c0102642:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102645:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0102648:	8d 0c 02             	lea    ecx,[edx+eax*1]
c010264b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010264e:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102651:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102654:	c1 e2 03             	shl    edx,0x3
c0102657:	01 d0                	add    eax,edx
c0102659:	8b 00                	mov    eax,DWORD PTR [eax]
c010265b:	39 c1                	cmp    ecx,eax
c010265d:	0f 85 8d 00 00 00    	jne    c01026f0 <pgman_free+0x179>
c0102663:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102666:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102669:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010266c:	83 ea 01             	sub    edx,0x1
c010266f:	c1 e2 03             	shl    edx,0x3
c0102672:	01 c2                	add    edx,eax
c0102674:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102677:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010267a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c010267d:	83 e9 01             	sub    ecx,0x1
c0102680:	c1 e1 03             	shl    ecx,0x3
c0102683:	01 c8                	add    eax,ecx
c0102685:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102688:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010268b:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010268e:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
c0102691:	c1 e3 03             	shl    ebx,0x3
c0102694:	01 d8                	add    eax,ebx
c0102696:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102699:	01 c8                	add    eax,ecx
c010269b:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c010269e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026a1:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01026a4:	8d 50 ff             	lea    edx,[eax-0x1]
c01026a7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026aa:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c01026ad:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01026b0:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01026b3:	eb 2e                	jmp    c01026e3 <pgman_free+0x16c>
c01026b5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026b8:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01026bb:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01026be:	c1 e2 03             	shl    edx,0x3
c01026c1:	8d 0c 10             	lea    ecx,[eax+edx*1]
c01026c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026c7:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01026ca:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01026cd:	83 c2 01             	add    edx,0x1
c01026d0:	c1 e2 03             	shl    edx,0x3
c01026d3:	01 d0                	add    eax,edx
c01026d5:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01026d8:	8b 00                	mov    eax,DWORD PTR [eax]
c01026da:	89 01                	mov    DWORD PTR [ecx],eax
c01026dc:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c01026df:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c01026e3:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01026e6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026e9:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01026ec:	39 c2                	cmp    edx,eax
c01026ee:	72 c5                	jb     c01026b5 <pgman_free+0x13e>
c01026f0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026f3:	89 04 24             	mov    DWORD PTR [esp],eax
c01026f6:	e8 ef 06 00 00       	call   c0102dea <lock_release>
c01026fb:	b8 00 00 00 00       	mov    eax,0x0
c0102700:	e9 8b 01 00 00       	jmp    c0102890 <pgman_free+0x319>
c0102705:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102708:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010270b:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010270e:	39 c2                	cmp    edx,eax
c0102710:	73 6c                	jae    c010277e <pgman_free+0x207>
c0102712:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102715:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0102718:	8d 0c 02             	lea    ecx,[edx+eax*1]
c010271b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010271e:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102721:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102724:	c1 e2 03             	shl    edx,0x3
c0102727:	01 d0                	add    eax,edx
c0102729:	8b 00                	mov    eax,DWORD PTR [eax]
c010272b:	39 c1                	cmp    ecx,eax
c010272d:	75 4f                	jne    c010277e <pgman_free+0x207>
c010272f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102732:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102735:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102738:	c1 e2 03             	shl    edx,0x3
c010273b:	01 c2                	add    edx,eax
c010273d:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102740:	89 02                	mov    DWORD PTR [edx],eax
c0102742:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102745:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102748:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010274b:	c1 e2 03             	shl    edx,0x3
c010274e:	01 c2                	add    edx,eax
c0102750:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102753:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102756:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0102759:	c1 e1 03             	shl    ecx,0x3
c010275c:	01 c8                	add    eax,ecx
c010275e:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102761:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102764:	01 c8                	add    eax,ecx
c0102766:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102769:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010276c:	89 04 24             	mov    DWORD PTR [esp],eax
c010276f:	e8 76 06 00 00       	call   c0102dea <lock_release>
c0102774:	b8 00 00 00 00       	mov    eax,0x0
c0102779:	e9 12 01 00 00       	jmp    c0102890 <pgman_free+0x319>
c010277e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102781:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102784:	3d e7 03 00 00       	cmp    eax,0x3e7
c0102789:	0f 87 a5 00 00 00    	ja     c0102834 <pgman_free+0x2bd>
c010278f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102792:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102795:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102798:	eb 2e                	jmp    c01027c8 <pgman_free+0x251>
c010279a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010279d:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01027a0:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c01027a3:	c1 e2 03             	shl    edx,0x3
c01027a6:	8d 0c 10             	lea    ecx,[eax+edx*1]
c01027a9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027ac:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01027af:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c01027b2:	83 ea 01             	sub    edx,0x1
c01027b5:	c1 e2 03             	shl    edx,0x3
c01027b8:	01 d0                	add    eax,edx
c01027ba:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01027bd:	8b 00                	mov    eax,DWORD PTR [eax]
c01027bf:	89 01                	mov    DWORD PTR [ecx],eax
c01027c1:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c01027c4:	83 6d ec 01          	sub    DWORD PTR [ebp-0x14],0x1
c01027c8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01027cb:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c01027ce:	7f ca                	jg     c010279a <pgman_free+0x223>
c01027d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027d3:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01027d6:	8d 50 01             	lea    edx,[eax+0x1]
c01027d9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027dc:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c01027df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027e2:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
c01027e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027e8:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01027eb:	39 c2                	cmp    edx,eax
c01027ed:	73 0c                	jae    c01027fb <pgman_free+0x284>
c01027ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027f2:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
c01027f5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027f8:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01027fb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027fe:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102801:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102804:	c1 e2 03             	shl    edx,0x3
c0102807:	01 c2                	add    edx,eax
c0102809:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010280c:	89 02                	mov    DWORD PTR [edx],eax
c010280e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102811:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102814:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102817:	c1 e2 03             	shl    edx,0x3
c010281a:	01 c2                	add    edx,eax
c010281c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010281f:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102822:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102825:	89 04 24             	mov    DWORD PTR [esp],eax
c0102828:	e8 bd 05 00 00       	call   c0102dea <lock_release>
c010282d:	b8 00 00 00 00       	mov    eax,0x0
c0102832:	eb 5c                	jmp    c0102890 <pgman_free+0x319>
c0102834:	c7 44 24 10 a2 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b1a2
c010283b:	c0 
c010283c:	c7 44 24 0c 50 b2 10 	mov    DWORD PTR [esp+0xc],0xc010b250
c0102843:	c0 
c0102844:	c7 44 24 08 48 01 00 	mov    DWORD PTR [esp+0x8],0x148
c010284b:	00 
c010284c:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c0102853:	c0 
c0102854:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c010285b:	e8 74 e1 ff ff       	call   c01009d4 <panic_spin>
c0102860:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102863:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0102866:	8d 50 01             	lea    edx,[eax+0x1]
c0102869:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010286c:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c010286f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102872:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0102875:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102878:	01 c2                	add    edx,eax
c010287a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010287d:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0102880:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102883:	89 04 24             	mov    DWORD PTR [esp],eax
c0102886:	e8 5f 05 00 00       	call   c0102dea <lock_release>
c010288b:	b8 01 00 00 00       	mov    eax,0x1
c0102890:	83 c4 34             	add    esp,0x34
c0102893:	5b                   	pop    ebx
c0102894:	5d                   	pop    ebp
c0102895:	c3                   	ret    

c0102896 <page_table_remove>:
c0102896:	55                   	push   ebp
c0102897:	89 e5                	mov    ebp,esp
c0102899:	83 ec 14             	sub    esp,0x14
c010289c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010289f:	89 04 24             	mov    DWORD PTR [esp],eax
c01028a2:	e8 49 f8 ff ff       	call   c01020f0 <pte_ptr>
c01028a7:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01028aa:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01028ad:	8b 00                	mov    eax,DWORD PTR [eax]
c01028af:	89 c2                	mov    edx,eax
c01028b1:	83 e2 fe             	and    edx,0xfffffffe
c01028b4:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01028b7:	89 10                	mov    DWORD PTR [eax],edx
c01028b9:	0f 01 7d 08          	invlpg BYTE PTR [ebp+0x8]
c01028bd:	c9                   	leave  
c01028be:	c3                   	ret    

c01028bf <paddr_free>:
c01028bf:	55                   	push   ebp
c01028c0:	89 e5                	mov    ebp,esp
c01028c2:	83 ec 28             	sub    esp,0x28
c01028c5:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01028c8:	a1 e0 bd 10 c0       	mov    eax,ds:0xc010bde0
c01028cd:	39 c2                	cmp    edx,eax
c01028cf:	72 09                	jb     c01028da <paddr_free+0x1b>
c01028d1:	c7 45 f4 a0 e4 10 c0 	mov    DWORD PTR [ebp-0xc],0xc010e4a0
c01028d8:	eb 07                	jmp    c01028e1 <paddr_free+0x22>
c01028da:	c7 45 f4 a0 23 11 c0 	mov    DWORD PTR [ebp-0xc],0xc01123a0
c01028e1:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c01028e8:	00 
c01028e9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01028ec:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01028f0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01028f3:	89 04 24             	mov    DWORD PTR [esp],eax
c01028f6:	e8 7c fc ff ff       	call   c0102577 <pgman_free>
c01028fb:	c9                   	leave  
c01028fc:	c3                   	ret    

c01028fd <vaddr_free>:
c01028fd:	55                   	push   ebp
c01028fe:	89 e5                	mov    ebp,esp
c0102900:	83 ec 28             	sub    esp,0x28
c0102903:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102907:	75 1c                	jne    c0102925 <vaddr_free+0x28>
c0102909:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010290c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102910:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102913:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102917:	c7 04 24 e0 e4 10 c0 	mov    DWORD PTR [esp],0xc010e4e0
c010291e:	e8 54 fc ff ff       	call   c0102577 <pgman_free>
c0102923:	eb 24                	jmp    c0102949 <vaddr_free+0x4c>
c0102925:	e8 cd 06 00 00       	call   c0102ff7 <running_thread>
c010292a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010292d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102930:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102933:	83 c2 40             	add    edx,0x40
c0102936:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010293a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010293d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102941:	89 14 24             	mov    DWORD PTR [esp],edx
c0102944:	e8 2e fc ff ff       	call   c0102577 <pgman_free>
c0102949:	c9                   	leave  
c010294a:	c3                   	ret    

c010294b <page_free>:
c010294b:	55                   	push   ebp
c010294c:	89 e5                	mov    ebp,esp
c010294e:	83 ec 38             	sub    esp,0x38
c0102951:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0102955:	7e 0c                	jle    c0102963 <page_free+0x18>
c0102957:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010295a:	25 ff 0f 00 00       	and    eax,0xfff
c010295f:	85 c0                	test   eax,eax
c0102961:	74 2c                	je     c010298f <page_free+0x44>
c0102963:	c7 44 24 10 b4 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b1b4
c010296a:	c0 
c010296b:	c7 44 24 0c 46 b2 10 	mov    DWORD PTR [esp+0xc],0xc010b246
c0102972:	c0 
c0102973:	c7 44 24 08 78 01 00 	mov    DWORD PTR [esp+0x8],0x178
c010297a:	00 
c010297b:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c0102982:	c0 
c0102983:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c010298a:	e8 45 e0 ff ff       	call   c01009d4 <panic_spin>
c010298f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102992:	89 04 24             	mov    DWORD PTR [esp],eax
c0102995:	e8 7d f7 ff ff       	call   c0102117 <addr_v2p>
c010299a:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010299d:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01029a0:	25 ff 0f 00 00       	and    eax,0xfff
c01029a5:	85 c0                	test   eax,eax
c01029a7:	75 0a                	jne    c01029b3 <page_free+0x68>
c01029a9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01029ac:	3d ff ff 5f 00       	cmp    eax,0x5fffff
c01029b1:	77 2c                	ja     c01029df <page_free+0x94>
c01029b3:	c7 44 24 10 e8 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b1e8
c01029ba:	c0 
c01029bb:	c7 44 24 0c 46 b2 10 	mov    DWORD PTR [esp+0xc],0xc010b246
c01029c2:	c0 
c01029c3:	c7 44 24 08 7a 01 00 	mov    DWORD PTR [esp+0x8],0x17a
c01029ca:	00 
c01029cb:	c7 44 24 04 f8 b0 10 	mov    DWORD PTR [esp+0x4],0xc010b0f8
c01029d2:	c0 
c01029d3:	c7 04 24 f8 b0 10 c0 	mov    DWORD PTR [esp],0xc010b0f8
c01029da:	e8 f5 df ff ff       	call   c01009d4 <panic_spin>
c01029df:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01029e2:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01029e5:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c01029e8:	a1 e0 bd 10 c0       	mov    eax,ds:0xc010bde0
c01029ed:	39 c2                	cmp    edx,eax
c01029ef:	72 5b                	jb     c0102a4c <page_free+0x101>
c01029f1:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01029f8:	eb 2f                	jmp    c0102a29 <page_free+0xde>
c01029fa:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01029fd:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a00:	e8 12 f7 ff ff       	call   c0102117 <addr_v2p>
c0102a05:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102a08:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102a0b:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a0e:	e8 ac fe ff ff       	call   c01028bf <paddr_free>
c0102a13:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102a16:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a19:	e8 78 fe ff ff       	call   c0102896 <page_table_remove>
c0102a1e:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0102a22:	81 45 f0 00 10 00 00 	add    DWORD PTR [ebp-0x10],0x1000
c0102a29:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102a2c:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0102a2f:	77 c9                	ja     c01029fa <page_free+0xaf>
c0102a31:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102a34:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102a38:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102a3b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102a3f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102a42:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a45:	e8 b3 fe ff ff       	call   c01028fd <vaddr_free>
c0102a4a:	eb 59                	jmp    c0102aa5 <page_free+0x15a>
c0102a4c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0102a53:	eb 2f                	jmp    c0102a84 <page_free+0x139>
c0102a55:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102a58:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a5b:	e8 b7 f6 ff ff       	call   c0102117 <addr_v2p>
c0102a60:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102a63:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102a66:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a69:	e8 51 fe ff ff       	call   c01028bf <paddr_free>
c0102a6e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102a71:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a74:	e8 1d fe ff ff       	call   c0102896 <page_table_remove>
c0102a79:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0102a7d:	81 45 f0 00 10 00 00 	add    DWORD PTR [ebp-0x10],0x1000
c0102a84:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102a87:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0102a8a:	77 c9                	ja     c0102a55 <page_free+0x10a>
c0102a8c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102a8f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102a93:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102a96:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102a9a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102a9d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102aa0:	e8 58 fe ff ff       	call   c01028fd <vaddr_free>
c0102aa5:	c9                   	leave  
c0102aa6:	c3                   	ret    
	...

c0102aa8 <sema_init>:
c0102aa8:	55                   	push   ebp
c0102aa9:	89 e5                	mov    ebp,esp
c0102aab:	83 ec 38             	sub    esp,0x38
c0102aae:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102ab1:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0102ab4:	0f b6 55 f4          	movzx  edx,BYTE PTR [ebp-0xc]
c0102ab8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102abb:	89 10                	mov    DWORD PTR [eax],edx
c0102abd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ac0:	83 c0 04             	add    eax,0x4
c0102ac3:	89 04 24             	mov    DWORD PTR [esp],eax
c0102ac6:	e8 d1 43 00 00       	call   c0106e9c <list_init>
c0102acb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ace:	8b 10                	mov    edx,DWORD PTR [eax]
c0102ad0:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0102ad4:	39 c2                	cmp    edx,eax
c0102ad6:	74 2c                	je     c0102b04 <sema_init+0x5c>
c0102ad8:	c7 44 24 10 af b2 10 	mov    DWORD PTR [esp+0x10],0xc010b2af
c0102adf:	c0 
c0102ae0:	c7 44 24 0c 2f b4 10 	mov    DWORD PTR [esp+0xc],0xc010b42f
c0102ae7:	c0 
c0102ae8:	c7 44 24 08 0d 00 00 	mov    DWORD PTR [esp+0x8],0xd
c0102aef:	00 
c0102af0:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102af7:	c0 
c0102af8:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102aff:	e8 d0 de ff ff       	call   c01009d4 <panic_spin>
c0102b04:	c9                   	leave  
c0102b05:	c3                   	ret    

c0102b06 <lock_init>:
c0102b06:	55                   	push   ebp
c0102b07:	89 e5                	mov    ebp,esp
c0102b09:	83 ec 18             	sub    esp,0x18
c0102b0c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b0f:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0102b15:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b18:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0102b1f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b22:	83 c0 04             	add    eax,0x4
c0102b25:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0102b2c:	00 
c0102b2d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102b30:	e8 73 ff ff ff       	call   c0102aa8 <sema_init>
c0102b35:	c9                   	leave  
c0102b36:	c3                   	ret    

c0102b37 <sema_down>:
c0102b37:	55                   	push   ebp
c0102b38:	89 e5                	mov    ebp,esp
c0102b3a:	53                   	push   ebx
c0102b3b:	83 ec 34             	sub    esp,0x34
c0102b3e:	e8 b3 ec ff ff       	call   c01017f6 <intr_disable>
c0102b43:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102b46:	e9 f7 00 00 00       	jmp    c0102c42 <sema_down+0x10b>
c0102b4b:	e8 a7 04 00 00       	call   c0102ff7 <running_thread>
c0102b50:	8d 50 30             	lea    edx,[eax+0x30]
c0102b53:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b56:	83 c0 04             	add    eax,0x4
c0102b59:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102b5d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102b60:	e8 34 44 00 00       	call   c0106f99 <list_find>
c0102b65:	85 c0                	test   eax,eax
c0102b67:	74 2c                	je     c0102b95 <sema_down+0x5e>
c0102b69:	c7 44 24 10 d4 b2 10 	mov    DWORD PTR [esp+0x10],0xc010b2d4
c0102b70:	c0 
c0102b71:	c7 44 24 0c 25 b4 10 	mov    DWORD PTR [esp+0xc],0xc010b425
c0102b78:	c0 
c0102b79:	c7 44 24 08 24 00 00 	mov    DWORD PTR [esp+0x8],0x24
c0102b80:	00 
c0102b81:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102b88:	c0 
c0102b89:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102b90:	e8 3f de ff ff       	call   c01009d4 <panic_spin>
c0102b95:	e8 5d 04 00 00       	call   c0102ff7 <running_thread>
c0102b9a:	8d 50 30             	lea    edx,[eax+0x30]
c0102b9d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ba0:	83 c0 04             	add    eax,0x4
c0102ba3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102ba7:	89 04 24             	mov    DWORD PTR [esp],eax
c0102baa:	e8 ea 43 00 00       	call   c0106f99 <list_find>
c0102baf:	85 c0                	test   eax,eax
c0102bb1:	74 2c                	je     c0102bdf <sema_down+0xa8>
c0102bb3:	c7 44 24 10 18 b3 10 	mov    DWORD PTR [esp+0x10],0xc010b318
c0102bba:	c0 
c0102bbb:	c7 44 24 0c 25 b4 10 	mov    DWORD PTR [esp+0xc],0xc010b425
c0102bc2:	c0 
c0102bc3:	c7 44 24 08 27 00 00 	mov    DWORD PTR [esp+0x8],0x27
c0102bca:	00 
c0102bcb:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102bd2:	c0 
c0102bd3:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102bda:	e8 f5 dd ff ff       	call   c01009d4 <panic_spin>
c0102bdf:	e8 13 04 00 00       	call   c0102ff7 <running_thread>
c0102be4:	8b 58 34             	mov    ebx,DWORD PTR [eax+0x34]
c0102be7:	e8 0b 04 00 00       	call   c0102ff7 <running_thread>
c0102bec:	39 c3                	cmp    ebx,eax
c0102bee:	74 2c                	je     c0102c1c <sema_down+0xe5>
c0102bf0:	c7 44 24 10 4c b3 10 	mov    DWORD PTR [esp+0x10],0xc010b34c
c0102bf7:	c0 
c0102bf8:	c7 44 24 0c 25 b4 10 	mov    DWORD PTR [esp+0xc],0xc010b425
c0102bff:	c0 
c0102c00:	c7 44 24 08 29 00 00 	mov    DWORD PTR [esp+0x8],0x29
c0102c07:	00 
c0102c08:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102c0f:	c0 
c0102c10:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102c17:	e8 b8 dd ff ff       	call   c01009d4 <panic_spin>
c0102c1c:	e8 d6 03 00 00       	call   c0102ff7 <running_thread>
c0102c21:	8d 50 30             	lea    edx,[eax+0x30]
c0102c24:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c27:	83 c0 04             	add    eax,0x4
c0102c2a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102c2e:	89 04 24             	mov    DWORD PTR [esp],eax
c0102c31:	e8 f1 42 00 00       	call   c0106f27 <list_append>
c0102c36:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0102c3d:	e8 5b 07 00 00       	call   c010339d <thread_block>
c0102c42:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c45:	8b 00                	mov    eax,DWORD PTR [eax]
c0102c47:	85 c0                	test   eax,eax
c0102c49:	0f 84 fc fe ff ff    	je     c0102b4b <sema_down+0x14>
c0102c4f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c52:	8b 00                	mov    eax,DWORD PTR [eax]
c0102c54:	8d 50 ff             	lea    edx,[eax-0x1]
c0102c57:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c5a:	89 10                	mov    DWORD PTR [eax],edx
c0102c5c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c5f:	8b 00                	mov    eax,DWORD PTR [eax]
c0102c61:	85 c0                	test   eax,eax
c0102c63:	74 2c                	je     c0102c91 <sema_down+0x15a>
c0102c65:	c7 44 24 10 83 b3 10 	mov    DWORD PTR [esp+0x10],0xc010b383
c0102c6c:	c0 
c0102c6d:	c7 44 24 0c 25 b4 10 	mov    DWORD PTR [esp+0xc],0xc010b425
c0102c74:	c0 
c0102c75:	c7 44 24 08 2e 00 00 	mov    DWORD PTR [esp+0x8],0x2e
c0102c7c:	00 
c0102c7d:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102c84:	c0 
c0102c85:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102c8c:	e8 43 dd ff ff       	call   c01009d4 <panic_spin>
c0102c91:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102c94:	89 04 24             	mov    DWORD PTR [esp],eax
c0102c97:	e8 87 eb ff ff       	call   c0101823 <intr_set_status>
c0102c9c:	83 c4 34             	add    esp,0x34
c0102c9f:	5b                   	pop    ebx
c0102ca0:	5d                   	pop    ebp
c0102ca1:	c3                   	ret    

c0102ca2 <sema_up>:
c0102ca2:	55                   	push   ebp
c0102ca3:	89 e5                	mov    ebp,esp
c0102ca5:	83 ec 38             	sub    esp,0x38
c0102ca8:	e8 49 eb ff ff       	call   c01017f6 <intr_disable>
c0102cad:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102cb0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cb3:	8b 00                	mov    eax,DWORD PTR [eax]
c0102cb5:	85 c0                	test   eax,eax
c0102cb7:	74 2c                	je     c0102ce5 <sema_up+0x43>
c0102cb9:	c7 44 24 10 83 b3 10 	mov    DWORD PTR [esp+0x10],0xc010b383
c0102cc0:	c0 
c0102cc1:	c7 44 24 0c 1d b4 10 	mov    DWORD PTR [esp+0xc],0xc010b41d
c0102cc8:	c0 
c0102cc9:	c7 44 24 08 39 00 00 	mov    DWORD PTR [esp+0x8],0x39
c0102cd0:	00 
c0102cd1:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102cd8:	c0 
c0102cd9:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102ce0:	e8 ef dc ff ff       	call   c01009d4 <panic_spin>
c0102ce5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ce8:	83 c0 04             	add    eax,0x4
c0102ceb:	89 04 24             	mov    DWORD PTR [esp],eax
c0102cee:	e8 5d 43 00 00       	call   c0107050 <list_empty>
c0102cf3:	85 c0                	test   eax,eax
c0102cf5:	75 1f                	jne    c0102d16 <sema_up+0x74>
c0102cf7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cfa:	83 c0 04             	add    eax,0x4
c0102cfd:	89 04 24             	mov    DWORD PTR [esp],eax
c0102d00:	e8 75 42 00 00       	call   c0106f7a <list_pop>
c0102d05:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102d08:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0102d0b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102d0e:	89 04 24             	mov    DWORD PTR [esp],eax
c0102d11:	e8 27 07 00 00       	call   c010343d <thread_unblock>
c0102d16:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d19:	8b 00                	mov    eax,DWORD PTR [eax]
c0102d1b:	8d 50 01             	lea    edx,[eax+0x1]
c0102d1e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d21:	89 10                	mov    DWORD PTR [eax],edx
c0102d23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d26:	8b 00                	mov    eax,DWORD PTR [eax]
c0102d28:	83 f8 01             	cmp    eax,0x1
c0102d2b:	74 2c                	je     c0102d59 <sema_up+0xb7>
c0102d2d:	c7 44 24 10 95 b3 10 	mov    DWORD PTR [esp+0x10],0xc010b395
c0102d34:	c0 
c0102d35:	c7 44 24 0c 1d b4 10 	mov    DWORD PTR [esp+0xc],0xc010b41d
c0102d3c:	c0 
c0102d3d:	c7 44 24 08 40 00 00 	mov    DWORD PTR [esp+0x8],0x40
c0102d44:	00 
c0102d45:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102d4c:	c0 
c0102d4d:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102d54:	e8 7b dc ff ff       	call   c01009d4 <panic_spin>
c0102d59:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102d5c:	89 04 24             	mov    DWORD PTR [esp],eax
c0102d5f:	e8 bf ea ff ff       	call   c0101823 <intr_set_status>
c0102d64:	c9                   	leave  
c0102d65:	c3                   	ret    

c0102d66 <lock_acquire>:
c0102d66:	55                   	push   ebp
c0102d67:	89 e5                	mov    ebp,esp
c0102d69:	53                   	push   ebx
c0102d6a:	83 ec 24             	sub    esp,0x24
c0102d6d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d70:	8b 18                	mov    ebx,DWORD PTR [eax]
c0102d72:	e8 80 02 00 00       	call   c0102ff7 <running_thread>
c0102d77:	39 c3                	cmp    ebx,eax
c0102d79:	74 5a                	je     c0102dd5 <lock_acquire+0x6f>
c0102d7b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d7e:	83 c0 04             	add    eax,0x4
c0102d81:	89 04 24             	mov    DWORD PTR [esp],eax
c0102d84:	e8 ae fd ff ff       	call   c0102b37 <sema_down>
c0102d89:	e8 69 02 00 00       	call   c0102ff7 <running_thread>
c0102d8e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102d91:	89 02                	mov    DWORD PTR [edx],eax
c0102d93:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d96:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102d99:	85 c0                	test   eax,eax
c0102d9b:	74 2c                	je     c0102dc9 <lock_acquire+0x63>
c0102d9d:	c7 44 24 10 a7 b3 10 	mov    DWORD PTR [esp+0x10],0xc010b3a7
c0102da4:	c0 
c0102da5:	c7 44 24 0c 10 b4 10 	mov    DWORD PTR [esp+0xc],0xc010b410
c0102dac:	c0 
c0102dad:	c7 44 24 08 4e 00 00 	mov    DWORD PTR [esp+0x8],0x4e
c0102db4:	00 
c0102db5:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102dbc:	c0 
c0102dbd:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102dc4:	e8 0b dc ff ff       	call   c01009d4 <panic_spin>
c0102dc9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102dcc:	c7 40 20 01 00 00 00 	mov    DWORD PTR [eax+0x20],0x1
c0102dd3:	eb 0f                	jmp    c0102de4 <lock_acquire+0x7e>
c0102dd5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102dd8:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102ddb:	8d 50 01             	lea    edx,[eax+0x1]
c0102dde:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102de1:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0102de4:	83 c4 24             	add    esp,0x24
c0102de7:	5b                   	pop    ebx
c0102de8:	5d                   	pop    ebp
c0102de9:	c3                   	ret    

c0102dea <lock_release>:
c0102dea:	55                   	push   ebp
c0102deb:	89 e5                	mov    ebp,esp
c0102ded:	53                   	push   ebx
c0102dee:	83 ec 24             	sub    esp,0x24
c0102df1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102df4:	8b 18                	mov    ebx,DWORD PTR [eax]
c0102df6:	e8 fc 01 00 00       	call   c0102ff7 <running_thread>
c0102dfb:	39 c3                	cmp    ebx,eax
c0102dfd:	74 2c                	je     c0102e2b <lock_release+0x41>
c0102dff:	c7 44 24 10 c4 b3 10 	mov    DWORD PTR [esp+0x10],0xc010b3c4
c0102e06:	c0 
c0102e07:	c7 44 24 0c 03 b4 10 	mov    DWORD PTR [esp+0xc],0xc010b403
c0102e0e:	c0 
c0102e0f:	c7 44 24 08 5d 00 00 	mov    DWORD PTR [esp+0x8],0x5d
c0102e16:	00 
c0102e17:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102e1e:	c0 
c0102e1f:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102e26:	e8 a9 db ff ff       	call   c01009d4 <panic_spin>
c0102e2b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e2e:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102e31:	83 f8 01             	cmp    eax,0x1
c0102e34:	76 11                	jbe    c0102e47 <lock_release+0x5d>
c0102e36:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e39:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102e3c:	8d 50 ff             	lea    edx,[eax-0x1]
c0102e3f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e42:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0102e45:	eb 59                	jmp    c0102ea0 <lock_release+0xb6>
c0102e47:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e4a:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102e4d:	83 f8 01             	cmp    eax,0x1
c0102e50:	74 2c                	je     c0102e7e <lock_release+0x94>
c0102e52:	c7 44 24 10 e6 b3 10 	mov    DWORD PTR [esp+0x10],0xc010b3e6
c0102e59:	c0 
c0102e5a:	c7 44 24 0c 03 b4 10 	mov    DWORD PTR [esp+0xc],0xc010b403
c0102e61:	c0 
c0102e62:	c7 44 24 08 63 00 00 	mov    DWORD PTR [esp+0x8],0x63
c0102e69:	00 
c0102e6a:	c7 44 24 04 c5 b2 10 	mov    DWORD PTR [esp+0x4],0xc010b2c5
c0102e71:	c0 
c0102e72:	c7 04 24 c5 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2c5
c0102e79:	e8 56 db ff ff       	call   c01009d4 <panic_spin>
c0102e7e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e81:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0102e87:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e8a:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0102e91:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e94:	83 c0 04             	add    eax,0x4
c0102e97:	89 04 24             	mov    DWORD PTR [esp],eax
c0102e9a:	e8 03 fe ff ff       	call   c0102ca2 <sema_up>
c0102e9f:	90                   	nop
c0102ea0:	83 c4 24             	add    esp,0x24
c0102ea3:	5b                   	pop    ebx
c0102ea4:	5d                   	pop    ebp
c0102ea5:	c3                   	ret    
	...

c0102ea8 <init_thread>:
c0102ea8:	55                   	push   ebp
c0102ea9:	89 e5                	mov    ebp,esp
c0102eab:	83 ec 18             	sub    esp,0x18
c0102eae:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c0102eb5:	e8 e2 3f 00 00       	call   c0106e9c <list_init>
c0102eba:	c7 04 24 f4 23 11 c0 	mov    DWORD PTR [esp],0xc01123f4
c0102ec1:	e8 d6 3f 00 00       	call   c0106e9c <list_init>
c0102ec6:	c7 05 20 be 10 c0 05 	mov    DWORD PTR ds:0xc010be20,0x5
c0102ecd:	00 00 00 
c0102ed0:	c7 04 24 24 be 10 c0 	mov    DWORD PTR [esp],0xc010be24
c0102ed7:	e8 2a fc ff ff       	call   c0102b06 <lock_init>
c0102edc:	e8 d5 02 00 00       	call   c01031b6 <make_main_thread>
c0102ee1:	c9                   	leave  
c0102ee2:	c3                   	ret    

c0102ee3 <alloc_pid>:
c0102ee3:	55                   	push   ebp
c0102ee4:	89 e5                	mov    ebp,esp
c0102ee6:	83 ec 28             	sub    esp,0x28
c0102ee9:	c7 04 24 24 be 10 c0 	mov    DWORD PTR [esp],0xc010be24
c0102ef0:	e8 71 fe ff ff       	call   c0102d66 <lock_acquire>
c0102ef5:	a1 20 be 10 c0       	mov    eax,ds:0xc010be20
c0102efa:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102efd:	a1 20 be 10 c0       	mov    eax,ds:0xc010be20
c0102f02:	83 c0 01             	add    eax,0x1
c0102f05:	a3 20 be 10 c0       	mov    ds:0xc010be20,eax
c0102f0a:	c7 04 24 24 be 10 c0 	mov    DWORD PTR [esp],0xc010be24
c0102f11:	e8 d4 fe ff ff       	call   c0102dea <lock_release>
c0102f16:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102f19:	c9                   	leave  
c0102f1a:	c3                   	ret    

c0102f1b <thread_init>:
c0102f1b:	55                   	push   ebp
c0102f1c:	89 e5                	mov    ebp,esp
c0102f1e:	83 ec 28             	sub    esp,0x28
c0102f21:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102f24:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0102f27:	c7 44 24 08 a0 01 00 	mov    DWORD PTR [esp+0x8],0x1a0
c0102f2e:	00 
c0102f2f:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102f36:	00 
c0102f37:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f3a:	89 04 24             	mov    DWORD PTR [esp],eax
c0102f3d:	e8 62 46 00 00       	call   c01075a4 <memset>
c0102f42:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f45:	8d 50 0c             	lea    edx,[eax+0xc]
c0102f48:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102f4b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102f4f:	89 14 24             	mov    DWORD PTR [esp],edx
c0102f52:	e8 c8 47 00 00       	call   c010771f <strcpy>
c0102f57:	a1 0c 24 11 c0       	mov    eax,ds:0xc011240c
c0102f5c:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
c0102f5f:	75 0c                	jne    c0102f6d <thread_init+0x52>
c0102f61:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f64:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0102f6b:	eb 0a                	jmp    c0102f77 <thread_init+0x5c>
c0102f6d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f70:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
c0102f77:	e8 67 ff ff ff       	call   c0102ee3 <alloc_pid>
c0102f7c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102f7f:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
c0102f82:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f85:	0f b6 55 f4          	movzx  edx,BYTE PTR [ebp-0xc]
c0102f89:	88 50 1c             	mov    BYTE PTR [eax+0x1c],dl
c0102f8c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f8f:	05 00 10 00 00       	add    eax,0x1000
c0102f94:	89 c2                	mov    edx,eax
c0102f96:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f99:	89 10                	mov    DWORD PTR [eax],edx
c0102f9b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f9e:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [eax+0x3c],0x0
c0102fa5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102fa8:	c7 80 6c 01 00 00 00 	mov    DWORD PTR [eax+0x16c],0x0
c0102faf:	00 00 00 
c0102fb2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102fb5:	c7 80 70 01 00 00 00 	mov    DWORD PTR [eax+0x170],0x0
c0102fbc:	00 00 00 
c0102fbf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102fc2:	c7 80 74 01 00 00 00 	mov    DWORD PTR [eax+0x174],0x0
c0102fc9:	00 00 00 
c0102fcc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102fcf:	05 78 01 00 00       	add    eax,0x178
c0102fd4:	89 04 24             	mov    DWORD PTR [esp],eax
c0102fd7:	e8 c0 3e 00 00       	call   c0106e9c <list_init>
c0102fdc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102fdf:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102fe2:	89 90 94 01 00 00    	mov    DWORD PTR [eax+0x194],edx
c0102fe8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102feb:	c7 80 9c 01 00 00 78 	mov    DWORD PTR [eax+0x19c],0x12345678
c0102ff2:	56 34 12 
c0102ff5:	c9                   	leave  
c0102ff6:	c3                   	ret    

c0102ff7 <running_thread>:
c0102ff7:	55                   	push   ebp
c0102ff8:	89 e5                	mov    ebp,esp
c0102ffa:	53                   	push   ebx
c0102ffb:	83 ec 10             	sub    esp,0x10
c0102ffe:	89 e3                	mov    ebx,esp
c0103000:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0103003:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0103006:	25 00 f0 ff ff       	and    eax,0xfffff000
c010300b:	83 c4 10             	add    esp,0x10
c010300e:	5b                   	pop    ebx
c010300f:	5d                   	pop    ebp
c0103010:	c3                   	ret    

c0103011 <kernel_thread>:
c0103011:	55                   	push   ebp
c0103012:	89 e5                	mov    ebp,esp
c0103014:	83 ec 18             	sub    esp,0x18
c0103017:	e8 ad e7 ff ff       	call   c01017c9 <intr_enable>
c010301c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010301f:	89 04 24             	mov    DWORD PTR [esp],eax
c0103022:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103025:	ff d0                	call   eax
c0103027:	c9                   	leave  
c0103028:	c3                   	ret    

c0103029 <thread_create>:
c0103029:	55                   	push   ebp
c010302a:	89 e5                	mov    ebp,esp
c010302c:	83 ec 10             	sub    esp,0x10
c010302f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103032:	8b 00                	mov    eax,DWORD PTR [eax]
c0103034:	8d 90 d0 fe ff ff    	lea    edx,[eax-0x130]
c010303a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010303d:	89 10                	mov    DWORD PTR [eax],edx
c010303f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103042:	8b 00                	mov    eax,DWORD PTR [eax]
c0103044:	8d 50 80             	lea    edx,[eax-0x80]
c0103047:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010304a:	89 10                	mov    DWORD PTR [eax],edx
c010304c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010304f:	8b 00                	mov    eax,DWORD PTR [eax]
c0103051:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0103054:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103057:	c7 40 10 11 30 10 c0 	mov    DWORD PTR [eax+0x10],0xc0103011
c010305e:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103061:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103064:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c0103067:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010306a:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010306d:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c0103070:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103073:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0103079:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010307c:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0103083:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103086:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c010308d:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103090:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0103097:	c9                   	leave  
c0103098:	c3                   	ret    

c0103099 <thread_start>:
c0103099:	55                   	push   ebp
c010309a:	89 e5                	mov    ebp,esp
c010309c:	83 ec 48             	sub    esp,0x48
c010309f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01030a2:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
c01030a5:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01030ac:	e8 70 f3 ff ff       	call   c0102421 <get_kernel_page>
c01030b1:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01030b4:	0f b6 45 e4          	movzx  eax,BYTE PTR [ebp-0x1c]
c01030b8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01030bc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01030bf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01030c3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01030c6:	89 04 24             	mov    DWORD PTR [esp],eax
c01030c9:	e8 4d fe ff ff       	call   c0102f1b <thread_init>
c01030ce:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01030d1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01030d5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01030d8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01030dc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01030df:	89 04 24             	mov    DWORD PTR [esp],eax
c01030e2:	e8 42 ff ff ff       	call   c0103029 <thread_create>
c01030e7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01030ea:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01030ed:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01030f0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01030f3:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01030f6:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c01030f9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01030fc:	83 c0 30             	add    eax,0x30
c01030ff:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103103:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c010310a:	e8 8a 3e 00 00       	call   c0106f99 <list_find>
c010310f:	85 c0                	test   eax,eax
c0103111:	74 2c                	je     c010313f <thread_start+0xa6>
c0103113:	c7 44 24 10 5c b4 10 	mov    DWORD PTR [esp+0x10],0xc010b45c
c010311a:	c0 
c010311b:	c7 44 24 0c 56 b6 10 	mov    DWORD PTR [esp+0xc],0xc010b656
c0103122:	c0 
c0103123:	c7 44 24 08 7f 00 00 	mov    DWORD PTR [esp+0x8],0x7f
c010312a:	00 
c010312b:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c0103132:	c0 
c0103133:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c010313a:	e8 95 d8 ff ff       	call   c01009d4 <panic_spin>
c010313f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103142:	83 c0 30             	add    eax,0x30
c0103145:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103149:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c0103150:	e8 d2 3d 00 00       	call   c0106f27 <list_append>
c0103155:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103158:	83 c0 24             	add    eax,0x24
c010315b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010315f:	c7 04 24 f4 23 11 c0 	mov    DWORD PTR [esp],0xc01123f4
c0103166:	e8 2e 3e 00 00       	call   c0106f99 <list_find>
c010316b:	85 c0                	test   eax,eax
c010316d:	74 2c                	je     c010319b <thread_start+0x102>
c010316f:	c7 44 24 10 9c b4 10 	mov    DWORD PTR [esp+0x10],0xc010b49c
c0103176:	c0 
c0103177:	c7 44 24 0c 56 b6 10 	mov    DWORD PTR [esp+0xc],0xc010b656
c010317e:	c0 
c010317f:	c7 44 24 08 82 00 00 	mov    DWORD PTR [esp+0x8],0x82
c0103186:	00 
c0103187:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c010318e:	c0 
c010318f:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c0103196:	e8 39 d8 ff ff       	call   c01009d4 <panic_spin>
c010319b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010319e:	83 c0 24             	add    eax,0x24
c01031a1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01031a5:	c7 04 24 f4 23 11 c0 	mov    DWORD PTR [esp],0xc01123f4
c01031ac:	e8 76 3d 00 00       	call   c0106f27 <list_append>
c01031b1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01031b4:	c9                   	leave  
c01031b5:	c3                   	ret    

c01031b6 <make_main_thread>:
c01031b6:	55                   	push   ebp
c01031b7:	89 e5                	mov    ebp,esp
c01031b9:	83 ec 18             	sub    esp,0x18
c01031bc:	e8 36 fe ff ff       	call   c0102ff7 <running_thread>
c01031c1:	a3 0c 24 11 c0       	mov    ds:0xc011240c,eax
c01031c6:	a1 0c 24 11 c0       	mov    eax,ds:0xc011240c
c01031cb:	c7 44 24 08 1f 00 00 	mov    DWORD PTR [esp+0x8],0x1f
c01031d2:	00 
c01031d3:	c7 44 24 04 c5 b4 10 	mov    DWORD PTR [esp+0x4],0xc010b4c5
c01031da:	c0 
c01031db:	89 04 24             	mov    DWORD PTR [esp],eax
c01031de:	e8 38 fd ff ff       	call   c0102f1b <thread_init>
c01031e3:	a1 0c 24 11 c0       	mov    eax,ds:0xc011240c
c01031e8:	8b 15 0c 24 11 c0    	mov    edx,DWORD PTR ds:0xc011240c
c01031ee:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01031f1:	a1 0c 24 11 c0       	mov    eax,ds:0xc011240c
c01031f6:	8b 15 0c 24 11 c0    	mov    edx,DWORD PTR ds:0xc011240c
c01031fc:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c01031ff:	a1 0c 24 11 c0       	mov    eax,ds:0xc011240c
c0103204:	83 c0 24             	add    eax,0x24
c0103207:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010320b:	c7 04 24 f4 23 11 c0 	mov    DWORD PTR [esp],0xc01123f4
c0103212:	e8 10 3d 00 00       	call   c0106f27 <list_append>
c0103217:	c9                   	leave  
c0103218:	c3                   	ret    

c0103219 <schedule>:
c0103219:	55                   	push   ebp
c010321a:	89 e5                	mov    ebp,esp
c010321c:	83 ec 38             	sub    esp,0x38
c010321f:	e8 d3 fd ff ff       	call   c0102ff7 <running_thread>
c0103224:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103227:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010322a:	8b 80 9c 01 00 00    	mov    eax,DWORD PTR [eax+0x19c]
c0103230:	3d 78 56 34 12       	cmp    eax,0x12345678
c0103235:	74 2c                	je     c0103263 <schedule+0x4a>
c0103237:	c7 44 24 10 d4 b4 10 	mov    DWORD PTR [esp+0x10],0xc010b4d4
c010323e:	c0 
c010323f:	c7 44 24 0c 4d b6 10 	mov    DWORD PTR [esp+0xc],0xc010b64d
c0103246:	c0 
c0103247:	c7 44 24 08 94 00 00 	mov    DWORD PTR [esp+0x8],0x94
c010324e:	00 
c010324f:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c0103256:	c0 
c0103257:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c010325e:	e8 71 d7 ff ff       	call   c01009d4 <panic_spin>
c0103263:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103266:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103269:	85 c0                	test   eax,eax
c010326b:	75 66                	jne    c01032d3 <schedule+0xba>
c010326d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103270:	83 c0 30             	add    eax,0x30
c0103273:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103277:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c010327e:	e8 16 3d 00 00       	call   c0106f99 <list_find>
c0103283:	85 c0                	test   eax,eax
c0103285:	74 2c                	je     c01032b3 <schedule+0x9a>
c0103287:	c7 44 24 10 fc b4 10 	mov    DWORD PTR [esp+0x10],0xc010b4fc
c010328e:	c0 
c010328f:	c7 44 24 0c 4d b6 10 	mov    DWORD PTR [esp+0xc],0xc010b64d
c0103296:	c0 
c0103297:	c7 44 24 08 98 00 00 	mov    DWORD PTR [esp+0x8],0x98
c010329e:	00 
c010329f:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c01032a6:	c0 
c01032a7:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c01032ae:	e8 21 d7 ff ff       	call   c01009d4 <panic_spin>
c01032b3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01032b6:	83 c0 30             	add    eax,0x30
c01032b9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01032bd:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c01032c4:	e8 5e 3c 00 00       	call   c0106f27 <list_append>
c01032c9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01032cc:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c01032d3:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01032da:	c7 05 00 be 10 c0 00 	mov    DWORD PTR ds:0xc010be00,0x0
c01032e1:	00 00 00 
c01032e4:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c01032eb:	e8 60 3d 00 00       	call   c0107050 <list_empty>
c01032f0:	85 c0                	test   eax,eax
c01032f2:	74 2c                	je     c0103320 <schedule+0x107>
c01032f4:	c7 44 24 10 31 b5 10 	mov    DWORD PTR [esp+0x10],0xc010b531
c01032fb:	c0 
c01032fc:	c7 44 24 0c 4d b6 10 	mov    DWORD PTR [esp+0xc],0xc010b64d
c0103303:	c0 
c0103304:	c7 44 24 08 a4 00 00 	mov    DWORD PTR [esp+0x8],0xa4
c010330b:	00 
c010330c:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c0103313:	c0 
c0103314:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c010331b:	e8 b4 d6 ff ff       	call   c01009d4 <panic_spin>
c0103320:	a1 e8 23 11 c0       	mov    eax,ds:0xc01123e8
c0103325:	3d dc 23 11 c0       	cmp    eax,0xc01123dc
c010332a:	75 2c                	jne    c0103358 <schedule+0x13f>
c010332c:	c7 44 24 10 4c b5 10 	mov    DWORD PTR [esp+0x10],0xc010b54c
c0103333:	c0 
c0103334:	c7 44 24 0c 4d b6 10 	mov    DWORD PTR [esp+0xc],0xc010b64d
c010333b:	c0 
c010333c:	c7 44 24 08 a5 00 00 	mov    DWORD PTR [esp+0x8],0xa5
c0103343:	00 
c0103344:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c010334b:	c0 
c010334c:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c0103353:	e8 7c d6 ff ff       	call   c01009d4 <panic_spin>
c0103358:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c010335f:	e8 16 3c 00 00       	call   c0106f7a <list_pop>
c0103364:	a3 00 be 10 c0       	mov    ds:0xc010be00,eax
c0103369:	a1 00 be 10 c0       	mov    eax,ds:0xc010be00
c010336e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103371:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103374:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103377:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c010337e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103381:	89 04 24             	mov    DWORD PTR [esp],eax
c0103384:	e8 c3 04 00 00       	call   c010384c <process_activate>
c0103389:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010338c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010338f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103393:	89 04 24             	mov    DWORD PTR [esp],eax
c0103396:	e8 c8 01 00 00       	call   c0103563 <switch_to>
c010339b:	c9                   	leave  
c010339c:	c3                   	ret    

c010339d <thread_block>:
c010339d:	55                   	push   ebp
c010339e:	89 e5                	mov    ebp,esp
c01033a0:	83 ec 38             	sub    esp,0x38
c01033a3:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c01033a7:	74 06                	je     c01033af <thread_block+0x12>
c01033a9:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01033ad:	75 2c                	jne    c01033db <thread_block+0x3e>
c01033af:	c7 44 24 10 78 b5 10 	mov    DWORD PTR [esp+0x10],0xc010b578
c01033b6:	c0 
c01033b7:	c7 44 24 0c 40 b6 10 	mov    DWORD PTR [esp+0xc],0xc010b640
c01033be:	c0 
c01033bf:	c7 44 24 08 b2 00 00 	mov    DWORD PTR [esp+0x8],0xb2
c01033c6:	00 
c01033c7:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c01033ce:	c0 
c01033cf:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c01033d6:	e8 f9 d5 ff ff       	call   c01009d4 <panic_spin>
c01033db:	e8 16 e4 ff ff       	call   c01017f6 <intr_disable>
c01033e0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01033e3:	e8 0f fc ff ff       	call   c0102ff7 <running_thread>
c01033e8:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01033eb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01033ee:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01033f1:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01033f4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01033f7:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01033fa:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c01033fd:	74 2c                	je     c010342b <thread_block+0x8e>
c01033ff:	c7 44 24 10 a8 b5 10 	mov    DWORD PTR [esp+0x10],0xc010b5a8
c0103406:	c0 
c0103407:	c7 44 24 0c 40 b6 10 	mov    DWORD PTR [esp+0xc],0xc010b640
c010340e:	c0 
c010340f:	c7 44 24 08 b6 00 00 	mov    DWORD PTR [esp+0x8],0xb6
c0103416:	00 
c0103417:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c010341e:	c0 
c010341f:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c0103426:	e8 a9 d5 ff ff       	call   c01009d4 <panic_spin>
c010342b:	e8 e9 fd ff ff       	call   c0103219 <schedule>
c0103430:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103433:	89 04 24             	mov    DWORD PTR [esp],eax
c0103436:	e8 e8 e3 ff ff       	call   c0101823 <intr_set_status>
c010343b:	c9                   	leave  
c010343c:	c3                   	ret    

c010343d <thread_unblock>:
c010343d:	55                   	push   ebp
c010343e:	89 e5                	mov    ebp,esp
c0103440:	83 ec 38             	sub    esp,0x38
c0103443:	e8 ae e3 ff ff       	call   c01017f6 <intr_disable>
c0103448:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010344b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010344e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103451:	83 f8 01             	cmp    eax,0x1
c0103454:	0f 84 ac 00 00 00    	je     c0103506 <thread_unblock+0xc9>
c010345a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010345d:	83 c0 30             	add    eax,0x30
c0103460:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103464:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c010346b:	e8 29 3b 00 00       	call   c0106f99 <list_find>
c0103470:	85 c0                	test   eax,eax
c0103472:	74 2c                	je     c01034a0 <thread_unblock+0x63>
c0103474:	c7 44 24 10 d4 b5 10 	mov    DWORD PTR [esp+0x10],0xc010b5d4
c010347b:	c0 
c010347c:	c7 44 24 0c 31 b6 10 	mov    DWORD PTR [esp+0xc],0xc010b631
c0103483:	c0 
c0103484:	c7 44 24 08 c1 00 00 	mov    DWORD PTR [esp+0x8],0xc1
c010348b:	00 
c010348c:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c0103493:	c0 
c0103494:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c010349b:	e8 34 d5 ff ff       	call   c01009d4 <panic_spin>
c01034a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034a3:	83 c0 30             	add    eax,0x30
c01034a6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01034aa:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c01034b1:	e8 e3 3a 00 00       	call   c0106f99 <list_find>
c01034b6:	85 c0                	test   eax,eax
c01034b8:	74 2c                	je     c01034e6 <thread_unblock+0xa9>
c01034ba:	c7 44 24 10 04 b6 10 	mov    DWORD PTR [esp+0x10],0xc010b604
c01034c1:	c0 
c01034c2:	c7 44 24 0c 31 b6 10 	mov    DWORD PTR [esp+0xc],0xc010b631
c01034c9:	c0 
c01034ca:	c7 44 24 08 c4 00 00 	mov    DWORD PTR [esp+0x8],0xc4
c01034d1:	00 
c01034d2:	c7 44 24 04 8b b4 10 	mov    DWORD PTR [esp+0x4],0xc010b48b
c01034d9:	c0 
c01034da:	c7 04 24 8b b4 10 c0 	mov    DWORD PTR [esp],0xc010b48b
c01034e1:	e8 ee d4 ff ff       	call   c01009d4 <panic_spin>
c01034e6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034e9:	83 c0 30             	add    eax,0x30
c01034ec:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01034f0:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c01034f7:	e8 0e 3a 00 00       	call   c0106f0a <list_push>
c01034fc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034ff:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
c0103506:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103509:	89 04 24             	mov    DWORD PTR [esp],eax
c010350c:	e8 12 e3 ff ff       	call   c0101823 <intr_set_status>
c0103511:	c9                   	leave  
c0103512:	c3                   	ret    

c0103513 <pid_check>:
c0103513:	55                   	push   ebp
c0103514:	89 e5                	mov    ebp,esp
c0103516:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103519:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010351c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010351f:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0103522:	0f 94 c0             	sete   al
c0103525:	0f b6 c0             	movzx  eax,al
c0103528:	5d                   	pop    ebp
c0103529:	c3                   	ret    

c010352a <pid2thread>:
c010352a:	55                   	push   ebp
c010352b:	89 e5                	mov    ebp,esp
c010352d:	83 ec 28             	sub    esp,0x28
c0103530:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103533:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0103537:	c7 44 24 04 13 35 10 	mov    DWORD PTR [esp+0x4],0xc0103513
c010353e:	c0 
c010353f:	c7 04 24 f4 23 11 c0 	mov    DWORD PTR [esp],0xc01123f4
c0103546:	e8 89 3a 00 00       	call   c0106fd4 <list_traversal>
c010354b:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010354e:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0103552:	75 07                	jne    c010355b <pid2thread+0x31>
c0103554:	b8 00 00 00 00       	mov    eax,0x0
c0103559:	eb 06                	jmp    c0103561 <pid2thread+0x37>
c010355b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010355e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103561:	c9                   	leave  
c0103562:	c3                   	ret    

c0103563 <switch_to>:
c0103563:	56                   	push   esi
c0103564:	57                   	push   edi
c0103565:	53                   	push   ebx
c0103566:	55                   	push   ebp
c0103567:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c010356b:	89 20                	mov    DWORD PTR [eax],esp
c010356d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0103571:	8b 20                	mov    esp,DWORD PTR [eax]
c0103573:	5d                   	pop    ebp
c0103574:	5b                   	pop    ebx
c0103575:	5f                   	pop    edi
c0103576:	5e                   	pop    esi
c0103577:	c3                   	ret    

c0103578 <make_segmdesc>:
c0103578:	55                   	push   ebp
c0103579:	89 e5                	mov    ebp,esp
c010357b:	83 ec 14             	sub    esp,0x14
c010357e:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0103581:	66 89 45 ec          	mov    WORD PTR [ebp-0x14],ax
c0103585:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103588:	66 89 45 f8          	mov    WORD PTR [ebp-0x8],ax
c010358c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010358f:	66 89 45 fa          	mov    WORD PTR [ebp-0x6],ax
c0103593:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103596:	25 00 00 ff 00       	and    eax,0xff0000
c010359b:	c1 e8 10             	shr    eax,0x10
c010359e:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
c01035a1:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
c01035a5:	88 45 fd             	mov    BYTE PTR [ebp-0x3],al
c01035a8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01035ab:	c1 e8 10             	shr    eax,0x10
c01035ae:	89 c2                	mov    edx,eax
c01035b0:	83 e2 0f             	and    edx,0xf
c01035b3:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
c01035b7:	66 c1 e8 08          	shr    ax,0x8
c01035bb:	83 e0 f0             	and    eax,0xfffffff0
c01035be:	09 d0                	or     eax,edx
c01035c0:	88 45 fe             	mov    BYTE PTR [ebp-0x2],al
c01035c3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01035c6:	c1 e8 18             	shr    eax,0x18
c01035c9:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
c01035cc:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c01035cf:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01035d2:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c01035d5:	89 01                	mov    DWORD PTR [ecx],eax
c01035d7:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c01035da:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01035dd:	c9                   	leave  
c01035de:	c2 04 00             	ret    0x4

c01035e1 <init_tss>:
c01035e1:	55                   	push   ebp
c01035e2:	89 e5                	mov    ebp,esp
c01035e4:	53                   	push   ebx
c01035e5:	83 ec 34             	sub    esp,0x34
c01035e8:	c7 45 f4 6c 00 00 00 	mov    DWORD PTR [ebp-0xc],0x6c
c01035ef:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01035f2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01035f6:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01035fd:	00 
c01035fe:	c7 04 24 60 be 10 c0 	mov    DWORD PTR [esp],0xc010be60
c0103605:	e8 9a 3f 00 00       	call   c01075a4 <memset>
c010360a:	c7 05 68 be 10 c0 10 	mov    DWORD PTR ds:0xc010be68,0x10
c0103611:	00 00 00 
c0103614:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103617:	a3 c8 be 10 c0       	mov    ds:0xc010bec8,eax
c010361c:	bb 18 10 00 c0       	mov    ebx,0xc0001018
c0103621:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103624:	8d 48 ff             	lea    ecx,[eax-0x1]
c0103627:	ba 60 be 10 c0       	mov    edx,0xc010be60
c010362c:	8d 45 e0             	lea    eax,[ebp-0x20]
c010362f:	c7 44 24 0c 89 80 00 	mov    DWORD PTR [esp+0xc],0x8089
c0103636:	00 
c0103637:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010363b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010363f:	89 04 24             	mov    DWORD PTR [esp],eax
c0103642:	e8 31 ff ff ff       	call   c0103578 <make_segmdesc>
c0103647:	83 ec 04             	sub    esp,0x4
c010364a:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010364d:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103650:	89 03                	mov    DWORD PTR [ebx],eax
c0103652:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103655:	bb 20 10 00 c0       	mov    ebx,0xc0001020
c010365a:	8d 45 e0             	lea    eax,[ebp-0x20]
c010365d:	c7 44 24 0c f8 c0 00 	mov    DWORD PTR [esp+0xc],0xc0f8
c0103664:	00 
c0103665:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c010366c:	00 
c010366d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103674:	00 
c0103675:	89 04 24             	mov    DWORD PTR [esp],eax
c0103678:	e8 fb fe ff ff       	call   c0103578 <make_segmdesc>
c010367d:	83 ec 04             	sub    esp,0x4
c0103680:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103683:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103686:	89 03                	mov    DWORD PTR [ebx],eax
c0103688:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c010368b:	bb 28 10 00 c0       	mov    ebx,0xc0001028
c0103690:	8d 45 e0             	lea    eax,[ebp-0x20]
c0103693:	c7 44 24 0c f2 c0 00 	mov    DWORD PTR [esp+0xc],0xc0f2
c010369a:	00 
c010369b:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c01036a2:	00 
c01036a3:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01036aa:	00 
c01036ab:	89 04 24             	mov    DWORD PTR [esp],eax
c01036ae:	e8 c5 fe ff ff       	call   c0103578 <make_segmdesc>
c01036b3:	83 ec 04             	sub    esp,0x4
c01036b6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01036b9:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01036bc:	89 03                	mov    DWORD PTR [ebx],eax
c01036be:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c01036c1:	c7 45 e8 2f 00 00 10 	mov    DWORD PTR [ebp-0x18],0x1000002f
c01036c8:	c7 45 ec 00 c0 00 00 	mov    DWORD PTR [ebp-0x14],0xc000
c01036cf:	0f 01 55 e8          	lgdtd  [ebp-0x18]
c01036d3:	b8 18 00 00 00       	mov    eax,0x18
c01036d8:	0f 00 d8             	ltr    ax
c01036db:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01036de:	c9                   	leave  
c01036df:	c3                   	ret    

c01036e0 <update_tss_esp0>:
c01036e0:	55                   	push   ebp
c01036e1:	89 e5                	mov    ebp,esp
c01036e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036e6:	05 00 10 00 00       	add    eax,0x1000
c01036eb:	a3 64 be 10 c0       	mov    ds:0xc010be64,eax
c01036f0:	5d                   	pop    ebp
c01036f1:	c3                   	ret    
	...

c01036f4 <start_process>:
c01036f4:	55                   	push   ebp
c01036f5:	89 e5                	mov    ebp,esp
c01036f7:	83 ec 28             	sub    esp,0x28
c01036fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036fd:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103700:	e8 f2 f8 ff ff       	call   c0102ff7 <running_thread>
c0103705:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103708:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010370b:	8b 00                	mov    eax,DWORD PTR [eax]
c010370d:	8d 90 80 00 00 00    	lea    edx,[eax+0x80]
c0103713:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103716:	89 10                	mov    DWORD PTR [eax],edx
c0103718:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010371b:	8b 00                	mov    eax,DWORD PTR [eax]
c010371d:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0103720:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103723:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c010372a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010372d:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0103734:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103737:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c010373e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103741:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c0103748:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010374b:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0103752:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103755:	c7 40 18 00 00 00 00 	mov    DWORD PTR [eax+0x18],0x0
c010375c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010375f:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
c0103766:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103769:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0103770:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103773:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c010377a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010377d:	c7 40 28 2b 00 00 00 	mov    DWORD PTR [eax+0x28],0x2b
c0103784:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103787:	c7 40 2c 2b 00 00 00 	mov    DWORD PTR [eax+0x2c],0x2b
c010378e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103791:	c7 40 30 2b 00 00 00 	mov    DWORD PTR [eax+0x30],0x2b
c0103798:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010379b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010379e:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c01037a1:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01037a4:	c7 40 3c 23 00 00 00 	mov    DWORD PTR [eax+0x3c],0x23
c01037ab:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01037ae:	c7 40 40 02 02 00 00 	mov    DWORD PTR [eax+0x40],0x202
c01037b5:	c7 44 24 04 00 f0 ff 	mov    DWORD PTR [esp+0x4],0xbffff000
c01037bc:	bf 
c01037bd:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01037c4:	e8 e0 ec ff ff       	call   c01024a9 <get_a_page>
c01037c9:	05 00 10 00 00       	add    eax,0x1000
c01037ce:	89 c2                	mov    edx,eax
c01037d0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01037d3:	89 50 44             	mov    DWORD PTR [eax+0x44],edx
c01037d6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01037d9:	c7 40 48 2b 00 00 00 	mov    DWORD PTR [eax+0x48],0x2b
c01037e0:	8b 65 ec             	mov    esp,DWORD PTR [ebp-0x14]
c01037e3:	e9 48 d3 ff ff       	jmp    c0100b30 <intr_exit>
c01037e8:	c9                   	leave  
c01037e9:	c3                   	ret    

c01037ea <page_dir_activate>:
c01037ea:	55                   	push   ebp
c01037eb:	89 e5                	mov    ebp,esp
c01037ed:	83 ec 38             	sub    esp,0x38
c01037f0:	c7 45 f4 00 00 40 00 	mov    DWORD PTR [ebp-0xc],0x400000
c01037f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01037fa:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01037fd:	85 c0                	test   eax,eax
c01037ff:	74 11                	je     c0103812 <page_dir_activate+0x28>
c0103801:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103804:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103807:	89 04 24             	mov    DWORD PTR [esp],eax
c010380a:	e8 08 e9 ff ff       	call   c0102117 <addr_v2p>
c010380f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103812:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0103816:	75 2c                	jne    c0103844 <page_dir_activate+0x5a>
c0103818:	c7 44 24 10 a3 b6 10 	mov    DWORD PTR [esp+0x10],0xc010b6a3
c010381f:	c0 
c0103820:	c7 44 24 0c 8b b7 10 	mov    DWORD PTR [esp+0xc],0xc010b78b
c0103827:	c0 
c0103828:	c7 44 24 08 33 00 00 	mov    DWORD PTR [esp+0x8],0x33
c010382f:	00 
c0103830:	c7 44 24 04 be b6 10 	mov    DWORD PTR [esp+0x4],0xc010b6be
c0103837:	c0 
c0103838:	c7 04 24 be b6 10 c0 	mov    DWORD PTR [esp],0xc010b6be
c010383f:	e8 90 d1 ff ff       	call   c01009d4 <panic_spin>
c0103844:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103847:	0f 22 d8             	mov    cr3,eax
c010384a:	c9                   	leave  
c010384b:	c3                   	ret    

c010384c <process_activate>:
c010384c:	55                   	push   ebp
c010384d:	89 e5                	mov    ebp,esp
c010384f:	83 ec 28             	sub    esp,0x28
c0103852:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0103856:	75 2c                	jne    c0103884 <process_activate+0x38>
c0103858:	c7 44 24 10 cd b6 10 	mov    DWORD PTR [esp+0x10],0xc010b6cd
c010385f:	c0 
c0103860:	c7 44 24 0c 7a b7 10 	mov    DWORD PTR [esp+0xc],0xc010b77a
c0103867:	c0 
c0103868:	c7 44 24 08 43 00 00 	mov    DWORD PTR [esp+0x8],0x43
c010386f:	00 
c0103870:	c7 44 24 04 be b6 10 	mov    DWORD PTR [esp+0x4],0xc010b6be
c0103877:	c0 
c0103878:	c7 04 24 be b6 10 c0 	mov    DWORD PTR [esp],0xc010b6be
c010387f:	e8 50 d1 ff ff       	call   c01009d4 <panic_spin>
c0103884:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103887:	89 04 24             	mov    DWORD PTR [esp],eax
c010388a:	e8 5b ff ff ff       	call   c01037ea <page_dir_activate>
c010388f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103892:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103895:	85 c0                	test   eax,eax
c0103897:	74 0b                	je     c01038a4 <process_activate+0x58>
c0103899:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010389c:	89 04 24             	mov    DWORD PTR [esp],eax
c010389f:	e8 3c fe ff ff       	call   c01036e0 <update_tss_esp0>
c01038a4:	c9                   	leave  
c01038a5:	c3                   	ret    

c01038a6 <create_page_dir>:
c01038a6:	55                   	push   ebp
c01038a7:	89 e5                	mov    ebp,esp
c01038a9:	83 ec 28             	sub    esp,0x28
c01038ac:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01038b3:	e8 69 eb ff ff       	call   c0102421 <get_kernel_page>
c01038b8:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01038bb:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c01038bf:	75 1b                	jne    c01038dc <create_page_dir+0x36>
c01038c1:	c7 44 24 04 e0 b6 10 	mov    DWORD PTR [esp+0x4],0xc010b6e0
c01038c8:	c0 
c01038c9:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c01038d0:	e8 3a 02 00 00       	call   c0103b0f <console_str>
c01038d5:	b8 00 00 00 00       	mov    eax,0x0
c01038da:	eb 41                	jmp    c010391d <create_page_dir+0x77>
c01038dc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038df:	05 00 0c 00 00       	add    eax,0xc00
c01038e4:	c7 44 24 08 00 04 00 	mov    DWORD PTR [esp+0x8],0x400
c01038eb:	00 
c01038ec:	c7 44 24 04 00 fc ff 	mov    DWORD PTR [esp+0x4],0xfffffc00
c01038f3:	ff 
c01038f4:	89 04 24             	mov    DWORD PTR [esp],eax
c01038f7:	e8 10 3d 00 00       	call   c010760c <memcpy>
c01038fc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038ff:	89 04 24             	mov    DWORD PTR [esp],eax
c0103902:	e8 10 e8 ff ff       	call   c0102117 <addr_v2p>
c0103907:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010390a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010390d:	05 fc 0f 00 00       	add    eax,0xffc
c0103912:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0103915:	83 ca 07             	or     edx,0x7
c0103918:	89 10                	mov    DWORD PTR [eax],edx
c010391a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010391d:	c9                   	leave  
c010391e:	c3                   	ret    

c010391f <create_user_vaddr_memman>:
c010391f:	55                   	push   ebp
c0103920:	89 e5                	mov    ebp,esp
c0103922:	83 ec 18             	sub    esp,0x18
c0103925:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c010392c:	e8 f0 ea ff ff       	call   c0102421 <get_kernel_page>
c0103931:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103934:	83 c2 40             	add    edx,0x40
c0103937:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010393b:	c7 44 24 04 ff ff 0f 	mov    DWORD PTR [esp+0x4],0xfffff
c0103942:	00 
c0103943:	89 14 24             	mov    DWORD PTR [esp],edx
c0103946:	e8 a1 e6 ff ff       	call   c0101fec <init_memman>
c010394b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010394e:	83 c0 40             	add    eax,0x40
c0103951:	c7 44 24 08 b7 7f 0b 	mov    DWORD PTR [esp+0x8],0xb7fb7
c0103958:	00 
c0103959:	c7 44 24 04 00 80 04 	mov    DWORD PTR [esp+0x4],0x8048000
c0103960:	08 
c0103961:	89 04 24             	mov    DWORD PTR [esp],eax
c0103964:	e8 0e ec ff ff       	call   c0102577 <pgman_free>
c0103969:	c9                   	leave  
c010396a:	c3                   	ret    

c010396b <process_execute>:
c010396b:	55                   	push   ebp
c010396c:	89 e5                	mov    ebp,esp
c010396e:	83 ec 38             	sub    esp,0x38
c0103971:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0103978:	e8 a4 ea ff ff       	call   c0102421 <get_kernel_page>
c010397d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103980:	c7 44 24 08 1f 00 00 	mov    DWORD PTR [esp+0x8],0x1f
c0103987:	00 
c0103988:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010398b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010398f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103992:	89 04 24             	mov    DWORD PTR [esp],eax
c0103995:	e8 81 f5 ff ff       	call   c0102f1b <thread_init>
c010399a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010399d:	89 04 24             	mov    DWORD PTR [esp],eax
c01039a0:	e8 7a ff ff ff       	call   c010391f <create_user_vaddr_memman>
c01039a5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01039a8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01039ac:	c7 44 24 04 f4 36 10 	mov    DWORD PTR [esp+0x4],0xc01036f4
c01039b3:	c0 
c01039b4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01039b7:	89 04 24             	mov    DWORD PTR [esp],eax
c01039ba:	e8 6a f6 ff ff       	call   c0103029 <thread_create>
c01039bf:	e8 e2 fe ff ff       	call   c01038a6 <create_page_dir>
c01039c4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01039c7:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
c01039ca:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01039cd:	83 c0 7c             	add    eax,0x7c
c01039d0:	89 04 24             	mov    DWORD PTR [esp],eax
c01039d3:	e8 7c de ff ff       	call   c0101854 <init_block>
c01039d8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01039db:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01039de:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c01039e1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01039e4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01039e7:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01039ea:	e8 07 de ff ff       	call   c01017f6 <intr_disable>
c01039ef:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01039f2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01039f5:	83 c0 24             	add    eax,0x24
c01039f8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01039fc:	c7 04 24 f4 23 11 c0 	mov    DWORD PTR [esp],0xc01123f4
c0103a03:	e8 91 35 00 00       	call   c0106f99 <list_find>
c0103a08:	85 c0                	test   eax,eax
c0103a0a:	74 2c                	je     c0103a38 <process_execute+0xcd>
c0103a0c:	c7 44 24 10 0c b7 10 	mov    DWORD PTR [esp+0x10],0xc010b70c
c0103a13:	c0 
c0103a14:	c7 44 24 0c 6a b7 10 	mov    DWORD PTR [esp+0xc],0xc010b76a
c0103a1b:	c0 
c0103a1c:	c7 44 24 08 75 00 00 	mov    DWORD PTR [esp+0x8],0x75
c0103a23:	00 
c0103a24:	c7 44 24 04 be b6 10 	mov    DWORD PTR [esp+0x4],0xc010b6be
c0103a2b:	c0 
c0103a2c:	c7 04 24 be b6 10 c0 	mov    DWORD PTR [esp],0xc010b6be
c0103a33:	e8 9c cf ff ff       	call   c01009d4 <panic_spin>
c0103a38:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103a3b:	83 c0 24             	add    eax,0x24
c0103a3e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103a42:	c7 04 24 f4 23 11 c0 	mov    DWORD PTR [esp],0xc01123f4
c0103a49:	e8 d9 34 00 00       	call   c0106f27 <list_append>
c0103a4e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103a51:	83 c0 30             	add    eax,0x30
c0103a54:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103a58:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c0103a5f:	e8 35 35 00 00       	call   c0106f99 <list_find>
c0103a64:	85 c0                	test   eax,eax
c0103a66:	74 2c                	je     c0103a94 <process_execute+0x129>
c0103a68:	c7 44 24 10 38 b7 10 	mov    DWORD PTR [esp+0x10],0xc010b738
c0103a6f:	c0 
c0103a70:	c7 44 24 0c 6a b7 10 	mov    DWORD PTR [esp+0xc],0xc010b76a
c0103a77:	c0 
c0103a78:	c7 44 24 08 78 00 00 	mov    DWORD PTR [esp+0x8],0x78
c0103a7f:	00 
c0103a80:	c7 44 24 04 be b6 10 	mov    DWORD PTR [esp+0x4],0xc010b6be
c0103a87:	c0 
c0103a88:	c7 04 24 be b6 10 c0 	mov    DWORD PTR [esp],0xc010b6be
c0103a8f:	e8 40 cf ff ff       	call   c01009d4 <panic_spin>
c0103a94:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103a97:	83 c0 30             	add    eax,0x30
c0103a9a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103a9e:	c7 04 24 dc 23 11 c0 	mov    DWORD PTR [esp],0xc01123dc
c0103aa5:	e8 7d 34 00 00       	call   c0106f27 <list_append>
c0103aaa:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103aad:	89 04 24             	mov    DWORD PTR [esp],eax
c0103ab0:	e8 6e dd ff ff       	call   c0101823 <intr_set_status>
c0103ab5:	c9                   	leave  
c0103ab6:	c3                   	ret    
	...

c0103ab8 <init_console>:
c0103ab8:	55                   	push   ebp
c0103ab9:	89 e5                	mov    ebp,esp
c0103abb:	83 ec 18             	sub    esp,0x18
c0103abe:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103ac5:	e8 3c f0 ff ff       	call   c0102b06 <lock_init>
c0103aca:	c9                   	leave  
c0103acb:	c3                   	ret    

c0103acc <console_char>:
c0103acc:	55                   	push   ebp
c0103acd:	89 e5                	mov    ebp,esp
c0103acf:	83 ec 28             	sub    esp,0x28
c0103ad2:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103ad5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103ad8:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0103adb:	88 45 f0             	mov    BYTE PTR [ebp-0x10],al
c0103ade:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103ae5:	e8 7c f2 ff ff       	call   c0102d66 <lock_acquire>
c0103aea:	0f b6 45 f0          	movzx  eax,BYTE PTR [ebp-0x10]
c0103aee:	0f b6 d0             	movzx  edx,al
c0103af1:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0103af5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103af9:	89 04 24             	mov    DWORD PTR [esp],eax
c0103afc:	e8 96 35 00 00       	call   c0107097 <put_char>
c0103b01:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103b08:	e8 dd f2 ff ff       	call   c0102dea <lock_release>
c0103b0d:	c9                   	leave  
c0103b0e:	c3                   	ret    

c0103b0f <console_str>:
c0103b0f:	55                   	push   ebp
c0103b10:	89 e5                	mov    ebp,esp
c0103b12:	83 ec 28             	sub    esp,0x28
c0103b15:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b18:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0103b1b:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103b22:	e8 3f f2 ff ff       	call   c0102d66 <lock_acquire>
c0103b27:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0103b2b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103b2e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103b32:	89 04 24             	mov    DWORD PTR [esp],eax
c0103b35:	e8 85 36 00 00       	call   c01071bf <put_str>
c0103b3a:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103b41:	e8 a4 f2 ff ff       	call   c0102dea <lock_release>
c0103b46:	c9                   	leave  
c0103b47:	c3                   	ret    

c0103b48 <console_int>:
c0103b48:	55                   	push   ebp
c0103b49:	89 e5                	mov    ebp,esp
c0103b4b:	83 ec 28             	sub    esp,0x28
c0103b4e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b51:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0103b54:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103b5b:	e8 06 f2 ff ff       	call   c0102d66 <lock_acquire>
c0103b60:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0103b64:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0103b67:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0103b6b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103b6e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103b72:	89 04 24             	mov    DWORD PTR [esp],eax
c0103b75:	e8 7c 36 00 00       	call   c01071f6 <put_int>
c0103b7a:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103b81:	e8 64 f2 ff ff       	call   c0102dea <lock_release>
c0103b86:	c9                   	leave  
c0103b87:	c3                   	ret    

c0103b88 <console_uint>:
c0103b88:	55                   	push   ebp
c0103b89:	89 e5                	mov    ebp,esp
c0103b8b:	83 ec 28             	sub    esp,0x28
c0103b8e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b91:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0103b94:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103b9b:	e8 c6 f1 ff ff       	call   c0102d66 <lock_acquire>
c0103ba0:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0103ba4:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0103ba7:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0103bab:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103bae:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103bb2:	89 04 24             	mov    DWORD PTR [esp],eax
c0103bb5:	e8 c4 36 00 00       	call   c010727e <put_uint>
c0103bba:	c7 04 24 e0 be 10 c0 	mov    DWORD PTR [esp],0xc010bee0
c0103bc1:	e8 24 f2 ff ff       	call   c0102dea <lock_release>
c0103bc6:	c9                   	leave  
c0103bc7:	c3                   	ret    

c0103bc8 <get_cpuid>:
c0103bc8:	55                   	push   ebp
c0103bc9:	89 e5                	mov    ebp,esp
c0103bcb:	56                   	push   esi
c0103bcc:	53                   	push   ebx
c0103bcd:	83 ec 0c             	sub    esp,0xc
c0103bd0:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103bd3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103bd6:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
c0103bd9:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103bdc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103bdf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103be2:	0f a2                	cpuid  
c0103be4:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
c0103be7:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
c0103bea:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103bed:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0103bf0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103bf3:	89 06                	mov    DWORD PTR [esi],eax
c0103bf5:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0103bf8:	89 1a                	mov    DWORD PTR [edx],ebx
c0103bfa:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0103bfd:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103c00:	89 0a                	mov    DWORD PTR [edx],ecx
c0103c02:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0103c05:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0103c08:	89 10                	mov    DWORD PTR [eax],edx
c0103c0a:	83 c4 0c             	add    esp,0xc
c0103c0d:	5b                   	pop    ebx
c0103c0e:	5e                   	pop    esi
c0103c0f:	5d                   	pop    ebp
c0103c10:	c3                   	ret    

c0103c11 <init_cpu>:
c0103c11:	55                   	push   ebp
c0103c12:	89 e5                	mov    ebp,esp
c0103c14:	83 ec 58             	sub    esp,0x58
c0103c17:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0103c1e:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0103c25:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0103c2c:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0103c33:	c7 45 d3 00 00 00 00 	mov    DWORD PTR [ebp-0x2d],0x0
c0103c3a:	c7 45 d7 00 00 00 00 	mov    DWORD PTR [ebp-0x29],0x0
c0103c41:	c7 45 db 00 00 00 00 	mov    DWORD PTR [ebp-0x25],0x0
c0103c48:	c7 45 df 00 00 00 00 	mov    DWORD PTR [ebp-0x21],0x0
c0103c4f:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c0103c53:	c7 45 f4 02 00 00 80 	mov    DWORD PTR [ebp-0xc],0x80000002
c0103c5a:	eb 7c                	jmp    c0103cd8 <init_cpu+0xc7>
c0103c5c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103c5f:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103c62:	83 c2 0c             	add    edx,0xc
c0103c65:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0103c69:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103c6c:	83 c2 08             	add    edx,0x8
c0103c6f:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c0103c73:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103c76:	83 c2 04             	add    edx,0x4
c0103c79:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0103c7d:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103c80:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0103c84:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103c8b:	00 
c0103c8c:	89 04 24             	mov    DWORD PTR [esp],eax
c0103c8f:	e8 34 ff ff ff       	call   c0103bc8 <get_cpuid>
c0103c94:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103c97:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103c9a:	89 10                	mov    DWORD PTR [eax],edx
c0103c9c:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103c9f:	8d 50 04             	lea    edx,[eax+0x4]
c0103ca2:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0103ca5:	89 02                	mov    DWORD PTR [edx],eax
c0103ca7:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103caa:	8d 50 08             	lea    edx,[eax+0x8]
c0103cad:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103cb0:	89 02                	mov    DWORD PTR [edx],eax
c0103cb2:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103cb5:	8d 50 0c             	lea    edx,[eax+0xc]
c0103cb8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103cbb:	89 02                	mov    DWORD PTR [edx],eax
c0103cbd:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c0103cc1:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103cc4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103cc8:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c0103ccf:	e8 eb 34 00 00       	call   c01071bf <put_str>
c0103cd4:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0103cd8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103cdb:	3d 04 00 00 80       	cmp    eax,0x80000004
c0103ce0:	0f 86 76 ff ff ff    	jbe    c0103c5c <init_cpu+0x4b>
c0103ce6:	c9                   	leave  
c0103ce7:	c3                   	ret    

c0103ce8 <cpu_info>:
c0103ce8:	55                   	push   ebp
c0103ce9:	89 e5                	mov    ebp,esp
c0103ceb:	83 ec 58             	sub    esp,0x58
c0103cee:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0103cf5:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0103cfc:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0103d03:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0103d0a:	c7 45 d3 00 00 00 00 	mov    DWORD PTR [ebp-0x2d],0x0
c0103d11:	c7 45 d7 00 00 00 00 	mov    DWORD PTR [ebp-0x29],0x0
c0103d18:	c7 45 db 00 00 00 00 	mov    DWORD PTR [ebp-0x25],0x0
c0103d1f:	c7 45 df 00 00 00 00 	mov    DWORD PTR [ebp-0x21],0x0
c0103d26:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c0103d2a:	c7 45 f4 02 00 00 80 	mov    DWORD PTR [ebp-0xc],0x80000002
c0103d31:	eb 7c                	jmp    c0103daf <cpu_info+0xc7>
c0103d33:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103d36:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103d39:	83 c2 0c             	add    edx,0xc
c0103d3c:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0103d40:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103d43:	83 c2 08             	add    edx,0x8
c0103d46:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c0103d4a:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103d4d:	83 c2 04             	add    edx,0x4
c0103d50:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0103d54:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0103d57:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0103d5b:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103d62:	00 
c0103d63:	89 04 24             	mov    DWORD PTR [esp],eax
c0103d66:	e8 5d fe ff ff       	call   c0103bc8 <get_cpuid>
c0103d6b:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103d6e:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103d71:	89 10                	mov    DWORD PTR [eax],edx
c0103d73:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103d76:	8d 50 04             	lea    edx,[eax+0x4]
c0103d79:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0103d7c:	89 02                	mov    DWORD PTR [edx],eax
c0103d7e:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103d81:	8d 50 08             	lea    edx,[eax+0x8]
c0103d84:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103d87:	89 02                	mov    DWORD PTR [edx],eax
c0103d89:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103d8c:	8d 50 0c             	lea    edx,[eax+0xc]
c0103d8f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103d92:	89 02                	mov    DWORD PTR [edx],eax
c0103d94:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c0103d98:	8d 45 d3             	lea    eax,[ebp-0x2d]
c0103d9b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103d9f:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c0103da6:	e8 14 34 00 00       	call   c01071bf <put_str>
c0103dab:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0103daf:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103db2:	3d 04 00 00 80       	cmp    eax,0x80000004
c0103db7:	0f 86 76 ff ff ff    	jbe    c0103d33 <cpu_info+0x4b>
c0103dbd:	c9                   	leave  
c0103dbe:	c3                   	ret    
	...

c0103dc0 <init_fifo>:
c0103dc0:	55                   	push   ebp
c0103dc1:	89 e5                	mov    ebp,esp
c0103dc3:	83 ec 18             	sub    esp,0x18
c0103dc6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103dc9:	89 04 24             	mov    DWORD PTR [esp],eax
c0103dcc:	e8 35 ed ff ff       	call   c0102b06 <lock_init>
c0103dd1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103dd4:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0103ddb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103dde:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0103de5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103de8:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0103deb:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c0103dee:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103df1:	83 f8 10             	cmp    eax,0x10
c0103df4:	74 23                	je     c0103e19 <init_fifo+0x59>
c0103df6:	83 f8 10             	cmp    eax,0x10
c0103df9:	7f 07                	jg     c0103e02 <init_fifo+0x42>
c0103dfb:	83 f8 08             	cmp    eax,0x8
c0103dfe:	74 0e                	je     c0103e0e <init_fifo+0x4e>
c0103e00:	eb 37                	jmp    c0103e39 <init_fifo+0x79>
c0103e02:	83 f8 20             	cmp    eax,0x20
c0103e05:	74 1d                	je     c0103e24 <init_fifo+0x64>
c0103e07:	83 f8 40             	cmp    eax,0x40
c0103e0a:	74 23                	je     c0103e2f <init_fifo+0x6f>
c0103e0c:	eb 2b                	jmp    c0103e39 <init_fifo+0x79>
c0103e0e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e11:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103e14:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103e17:	eb 20                	jmp    c0103e39 <init_fifo+0x79>
c0103e19:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e1c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103e1f:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103e22:	eb 15                	jmp    c0103e39 <init_fifo+0x79>
c0103e24:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e27:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103e2a:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103e2d:	eb 0a                	jmp    c0103e39 <init_fifo+0x79>
c0103e2f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e32:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103e35:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103e38:	90                   	nop
c0103e39:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e3c:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0103e3f:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0103e42:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e45:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0103e48:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103e4b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e4e:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [eax+0x3c],0x0
c0103e55:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e58:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
c0103e5f:	c9                   	leave  
c0103e60:	c3                   	ret    

c0103e61 <fifo_put>:
c0103e61:	55                   	push   ebp
c0103e62:	89 e5                	mov    ebp,esp
c0103e64:	83 ec 38             	sub    esp,0x38
c0103e67:	e8 8a d9 ff ff       	call   c01017f6 <intr_disable>
c0103e6c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103e6f:	eb 2d                	jmp    c0103e9e <fifo_put+0x3d>
c0103e71:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e74:	89 04 24             	mov    DWORD PTR [esp],eax
c0103e77:	e8 ea ee ff ff       	call   c0102d66 <lock_acquire>
c0103e7c:	e8 76 f1 ff ff       	call   c0102ff7 <running_thread>
c0103e81:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103e84:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
c0103e87:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0103e8e:	e8 0a f5 ff ff       	call   c010339d <thread_block>
c0103e93:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e96:	89 04 24             	mov    DWORD PTR [esp],eax
c0103e99:	e8 4c ef ff ff       	call   c0102dea <lock_release>
c0103e9e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ea1:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0103ea4:	85 c0                	test   eax,eax
c0103ea6:	74 c9                	je     c0103e71 <fifo_put+0x10>
c0103ea8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103eab:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0103eae:	8d 50 ff             	lea    edx,[eax-0x1]
c0103eb1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103eb4:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103eb7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103eba:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103ebd:	83 f8 08             	cmp    eax,0x8
c0103ec0:	74 4d                	je     c0103f0f <fifo_put+0xae>
c0103ec2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ec5:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103ec8:	83 f8 10             	cmp    eax,0x10
c0103ecb:	74 42                	je     c0103f0f <fifo_put+0xae>
c0103ecd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ed0:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103ed3:	83 f8 20             	cmp    eax,0x20
c0103ed6:	74 37                	je     c0103f0f <fifo_put+0xae>
c0103ed8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103edb:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103ede:	83 f8 40             	cmp    eax,0x40
c0103ee1:	74 2c                	je     c0103f0f <fifo_put+0xae>
c0103ee3:	c7 44 24 10 00 b8 10 	mov    DWORD PTR [esp+0x10],0xc010b800
c0103eea:	c0 
c0103eeb:	c7 44 24 0c 63 b8 10 	mov    DWORD PTR [esp+0xc],0xc010b863
c0103ef2:	c0 
c0103ef3:	c7 44 24 08 3b 00 00 	mov    DWORD PTR [esp+0x8],0x3b
c0103efa:	00 
c0103efb:	c7 44 24 04 4c b8 10 	mov    DWORD PTR [esp+0x4],0xc010b84c
c0103f02:	c0 
c0103f03:	c7 04 24 4c b8 10 c0 	mov    DWORD PTR [esp],0xc010b84c
c0103f0a:	e8 c5 ca ff ff       	call   c01009d4 <panic_spin>
c0103f0f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f12:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103f15:	83 f8 10             	cmp    eax,0x10
c0103f18:	74 30                	je     c0103f4a <fifo_put+0xe9>
c0103f1a:	83 f8 10             	cmp    eax,0x10
c0103f1d:	7f 07                	jg     c0103f26 <fifo_put+0xc5>
c0103f1f:	83 f8 08             	cmp    eax,0x8
c0103f22:	74 0e                	je     c0103f32 <fifo_put+0xd1>
c0103f24:	eb 79                	jmp    c0103f9f <fifo_put+0x13e>
c0103f26:	83 f8 20             	cmp    eax,0x20
c0103f29:	74 3a                	je     c0103f65 <fifo_put+0x104>
c0103f2b:	83 f8 40             	cmp    eax,0x40
c0103f2e:	74 4f                	je     c0103f7f <fifo_put+0x11e>
c0103f30:	eb 6d                	jmp    c0103f9f <fifo_put+0x13e>
c0103f32:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f35:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103f38:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f3b:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103f3e:	01 c2                	add    edx,eax
c0103f40:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103f43:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0103f46:	88 02                	mov    BYTE PTR [edx],al
c0103f48:	eb 55                	jmp    c0103f9f <fifo_put+0x13e>
c0103f4a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f4d:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103f50:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f53:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103f56:	01 c0                	add    eax,eax
c0103f58:	01 c2                	add    edx,eax
c0103f5a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103f5d:	0f b7 00             	movzx  eax,WORD PTR [eax]
c0103f60:	66 89 02             	mov    WORD PTR [edx],ax
c0103f63:	eb 3a                	jmp    c0103f9f <fifo_put+0x13e>
c0103f65:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f68:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103f6b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f6e:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103f71:	c1 e0 02             	shl    eax,0x2
c0103f74:	01 c2                	add    edx,eax
c0103f76:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103f79:	8b 00                	mov    eax,DWORD PTR [eax]
c0103f7b:	89 02                	mov    DWORD PTR [edx],eax
c0103f7d:	eb 20                	jmp    c0103f9f <fifo_put+0x13e>
c0103f7f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f82:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103f85:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f88:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103f8b:	c1 e0 03             	shl    eax,0x3
c0103f8e:	8d 0c 02             	lea    ecx,[edx+eax*1]
c0103f91:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103f94:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0103f97:	8b 00                	mov    eax,DWORD PTR [eax]
c0103f99:	89 01                	mov    DWORD PTR [ecx],eax
c0103f9b:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0103f9e:	90                   	nop
c0103f9f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fa2:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103fa5:	8d 50 01             	lea    edx,[eax+0x1]
c0103fa8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fab:	8b 48 34             	mov    ecx,DWORD PTR [eax+0x34]
c0103fae:	89 d0                	mov    eax,edx
c0103fb0:	89 c2                	mov    edx,eax
c0103fb2:	c1 fa 1f             	sar    edx,0x1f
c0103fb5:	f7 f9                	idiv   ecx
c0103fb7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fba:	89 50 40             	mov    DWORD PTR [eax+0x40],edx
c0103fbd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fc0:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c0103fc3:	85 c0                	test   eax,eax
c0103fc5:	74 18                	je     c0103fdf <fifo_put+0x17e>
c0103fc7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fca:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c0103fcd:	89 04 24             	mov    DWORD PTR [esp],eax
c0103fd0:	e8 68 f4 ff ff       	call   c010343d <thread_unblock>
c0103fd5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fd8:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0103fdf:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103fe2:	89 04 24             	mov    DWORD PTR [esp],eax
c0103fe5:	e8 39 d8 ff ff       	call   c0101823 <intr_set_status>
c0103fea:	b8 00 00 00 00       	mov    eax,0x0
c0103fef:	c9                   	leave  
c0103ff0:	c3                   	ret    

c0103ff1 <fifo_get>:
c0103ff1:	55                   	push   ebp
c0103ff2:	89 e5                	mov    ebp,esp
c0103ff4:	83 ec 38             	sub    esp,0x38
c0103ff7:	e8 fa d7 ff ff       	call   c01017f6 <intr_disable>
c0103ffc:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103fff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104002:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0104005:	83 f8 08             	cmp    eax,0x8
c0104008:	74 7e                	je     c0104088 <fifo_get+0x97>
c010400a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010400d:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0104010:	83 f8 10             	cmp    eax,0x10
c0104013:	74 73                	je     c0104088 <fifo_get+0x97>
c0104015:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104018:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c010401b:	83 f8 20             	cmp    eax,0x20
c010401e:	74 68                	je     c0104088 <fifo_get+0x97>
c0104020:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104023:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0104026:	83 f8 40             	cmp    eax,0x40
c0104029:	74 5d                	je     c0104088 <fifo_get+0x97>
c010402b:	c7 44 24 10 00 b8 10 	mov    DWORD PTR [esp+0x10],0xc010b800
c0104032:	c0 
c0104033:	c7 44 24 0c 5a b8 10 	mov    DWORD PTR [esp+0xc],0xc010b85a
c010403a:	c0 
c010403b:	c7 44 24 08 5a 00 00 	mov    DWORD PTR [esp+0x8],0x5a
c0104042:	00 
c0104043:	c7 44 24 04 4c b8 10 	mov    DWORD PTR [esp+0x4],0xc010b84c
c010404a:	c0 
c010404b:	c7 04 24 4c b8 10 c0 	mov    DWORD PTR [esp],0xc010b84c
c0104052:	e8 7d c9 ff ff       	call   c01009d4 <panic_spin>
c0104057:	eb 2f                	jmp    c0104088 <fifo_get+0x97>
c0104059:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010405c:	89 04 24             	mov    DWORD PTR [esp],eax
c010405f:	e8 02 ed ff ff       	call   c0102d66 <lock_acquire>
c0104064:	e8 8e ef ff ff       	call   c0102ff7 <running_thread>
c0104069:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010406c:	89 42 28             	mov    DWORD PTR [edx+0x28],eax
c010406f:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0104076:	e8 22 f3 ff ff       	call   c010339d <thread_block>
c010407b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010407e:	89 04 24             	mov    DWORD PTR [esp],eax
c0104081:	e8 64 ed ff ff       	call   c0102dea <lock_release>
c0104086:	eb 01                	jmp    c0104089 <fifo_get+0x98>
c0104088:	90                   	nop
c0104089:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010408c:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
c010408f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104092:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0104095:	39 c2                	cmp    edx,eax
c0104097:	74 c0                	je     c0104059 <fifo_get+0x68>
c0104099:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010409c:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010409f:	8d 50 01             	lea    edx,[eax+0x1]
c01040a2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01040a5:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c01040a8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01040ab:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c01040ae:	83 f8 10             	cmp    eax,0x10
c01040b1:	74 30                	je     c01040e3 <fifo_get+0xf2>
c01040b3:	83 f8 10             	cmp    eax,0x10
c01040b6:	7f 07                	jg     c01040bf <fifo_get+0xce>
c01040b8:	83 f8 08             	cmp    eax,0x8
c01040bb:	74 0e                	je     c01040cb <fifo_get+0xda>
c01040bd:	eb 78                	jmp    c0104137 <fifo_get+0x146>
c01040bf:	83 f8 20             	cmp    eax,0x20
c01040c2:	74 3a                	je     c01040fe <fifo_get+0x10d>
c01040c4:	83 f8 40             	cmp    eax,0x40
c01040c7:	74 4f                	je     c0104118 <fifo_get+0x127>
c01040c9:	eb 6c                	jmp    c0104137 <fifo_get+0x146>
c01040cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01040ce:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c01040d1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01040d4:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01040d7:	01 d0                	add    eax,edx
c01040d9:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01040dc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01040df:	88 10                	mov    BYTE PTR [eax],dl
c01040e1:	eb 54                	jmp    c0104137 <fifo_get+0x146>
c01040e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01040e6:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c01040e9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01040ec:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01040ef:	01 c0                	add    eax,eax
c01040f1:	01 d0                	add    eax,edx
c01040f3:	0f b7 10             	movzx  edx,WORD PTR [eax]
c01040f6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01040f9:	66 89 10             	mov    WORD PTR [eax],dx
c01040fc:	eb 39                	jmp    c0104137 <fifo_get+0x146>
c01040fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104101:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0104104:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104107:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c010410a:	c1 e0 02             	shl    eax,0x2
c010410d:	01 d0                	add    eax,edx
c010410f:	8b 10                	mov    edx,DWORD PTR [eax]
c0104111:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104114:	89 10                	mov    DWORD PTR [eax],edx
c0104116:	eb 1f                	jmp    c0104137 <fifo_get+0x146>
c0104118:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010411b:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c010411e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104121:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0104124:	c1 e0 03             	shl    eax,0x3
c0104127:	01 d0                	add    eax,edx
c0104129:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c010412c:	8b 00                	mov    eax,DWORD PTR [eax]
c010412e:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0104131:	89 01                	mov    DWORD PTR [ecx],eax
c0104133:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0104136:	90                   	nop
c0104137:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010413a:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c010413d:	8d 50 01             	lea    edx,[eax+0x1]
c0104140:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104143:	8b 48 34             	mov    ecx,DWORD PTR [eax+0x34]
c0104146:	89 d0                	mov    eax,edx
c0104148:	89 c2                	mov    edx,eax
c010414a:	c1 fa 1f             	sar    edx,0x1f
c010414d:	f7 f9                	idiv   ecx
c010414f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104152:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104155:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104158:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010415b:	85 c0                	test   eax,eax
c010415d:	74 18                	je     c0104177 <fifo_get+0x186>
c010415f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104162:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0104165:	89 04 24             	mov    DWORD PTR [esp],eax
c0104168:	e8 d0 f2 ff ff       	call   c010343d <thread_unblock>
c010416d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104170:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0104177:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010417a:	89 04 24             	mov    DWORD PTR [esp],eax
c010417d:	e8 a1 d6 ff ff       	call   c0101823 <intr_set_status>
c0104182:	b8 00 00 00 00       	mov    eax,0x0
c0104187:	c9                   	leave  
c0104188:	c3                   	ret    

c0104189 <fifo_empty>:
c0104189:	55                   	push   ebp
c010418a:	89 e5                	mov    ebp,esp
c010418c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010418f:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
c0104192:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104195:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0104198:	39 c2                	cmp    edx,eax
c010419a:	0f 94 c0             	sete   al
c010419d:	0f b6 c0             	movzx  eax,al
c01041a0:	5d                   	pop    ebp
c01041a1:	c3                   	ret    

c01041a2 <fifo_fill>:
c01041a2:	55                   	push   ebp
c01041a3:	89 e5                	mov    ebp,esp
c01041a5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01041a8:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01041ab:	85 c0                	test   eax,eax
c01041ad:	0f 94 c0             	sete   al
c01041b0:	0f b6 c0             	movzx  eax,al
c01041b3:	5d                   	pop    ebp
c01041b4:	c3                   	ret    
c01041b5:	00 00                	add    BYTE PTR [eax],al
	...

c01041b8 <io_in8>:
c01041b8:	55                   	push   ebp
c01041b9:	89 e5                	mov    ebp,esp
c01041bb:	53                   	push   ebx
c01041bc:	83 ec 14             	sub    esp,0x14
c01041bf:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01041c2:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c01041c5:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01041c8:	ec                   	in     al,dx
c01041c9:	89 c3                	mov    ebx,eax
c01041cb:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c01041ce:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01041d1:	83 c4 14             	add    esp,0x14
c01041d4:	5b                   	pop    ebx
c01041d5:	5d                   	pop    ebp
c01041d6:	c3                   	ret    

c01041d7 <io_out8>:
c01041d7:	55                   	push   ebp
c01041d8:	89 e5                	mov    ebp,esp
c01041da:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01041dd:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01041e0:	ee                   	out    dx,al
c01041e1:	5d                   	pop    ebp
c01041e2:	c3                   	ret    

c01041e3 <wait_keyboard_ready>:
c01041e3:	55                   	push   ebp
c01041e4:	89 e5                	mov    ebp,esp
c01041e6:	83 ec 04             	sub    esp,0x4
c01041e9:	eb 01                	jmp    c01041ec <wait_keyboard_ready+0x9>
c01041eb:	90                   	nop
c01041ec:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c01041f3:	e8 c0 ff ff ff       	call   c01041b8 <io_in8>
c01041f8:	83 e0 02             	and    eax,0x2
c01041fb:	85 c0                	test   eax,eax
c01041fd:	75 ec                	jne    c01041eb <wait_keyboard_ready+0x8>
c01041ff:	90                   	nop
c0104200:	c9                   	leave  
c0104201:	c3                   	ret    

c0104202 <init_keyboard>:
c0104202:	55                   	push   ebp
c0104203:	89 e5                	mov    ebp,esp
c0104205:	83 ec 18             	sub    esp,0x18
c0104208:	e8 d6 ff ff ff       	call   c01041e3 <wait_keyboard_ready>
c010420d:	c7 44 24 04 60 00 00 	mov    DWORD PTR [esp+0x4],0x60
c0104214:	00 
c0104215:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c010421c:	e8 b6 ff ff ff       	call   c01041d7 <io_out8>
c0104221:	e8 bd ff ff ff       	call   c01041e3 <wait_keyboard_ready>
c0104226:	c7 44 24 04 47 00 00 	mov    DWORD PTR [esp+0x4],0x47
c010422d:	00 
c010422e:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104235:	e8 9d ff ff ff       	call   c01041d7 <io_out8>
c010423a:	c7 44 24 0c 40 00 00 	mov    DWORD PTR [esp+0xc],0x40
c0104241:	00 
c0104242:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c0104249:	00 
c010424a:	c7 44 24 04 20 bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf20
c0104251:	c0 
c0104252:	c7 04 24 20 24 11 c0 	mov    DWORD PTR [esp],0xc0112420
c0104259:	e8 62 fb ff ff       	call   c0103dc0 <init_fifo>
c010425e:	c9                   	leave  
c010425f:	c3                   	ret    

c0104260 <intr0x21_handler>:
c0104260:	55                   	push   ebp
c0104261:	89 e5                	mov    ebp,esp
c0104263:	83 ec 38             	sub    esp,0x38
c0104266:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c010426d:	00 
c010426e:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0104275:	e8 5d ff ff ff       	call   c01041d7 <io_out8>
c010427a:	a1 64 bf 10 c0       	mov    eax,ds:0xc010bf64
c010427f:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0104282:	a1 6c bf 10 c0       	mov    eax,ds:0xc010bf6c
c0104287:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010428a:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104291:	e8 22 ff ff ff       	call   c01041b8 <io_in8>
c0104296:	66 89 45 f6          	mov    WORD PTR [ebp-0xa],ax
c010429a:	66 81 7d f6 e0 00    	cmp    WORD PTR [ebp-0xa],0xe0
c01042a0:	75 0f                	jne    c01042b1 <intr0x21_handler+0x51>
c01042a2:	c7 05 70 bf 10 c0 01 	mov    DWORD PTR ds:0xc010bf70,0x1
c01042a9:	00 00 00 
c01042ac:	e9 f6 01 00 00       	jmp    c01044a7 <intr0x21_handler+0x247>
c01042b1:	a1 70 bf 10 c0       	mov    eax,ds:0xc010bf70
c01042b6:	83 f8 01             	cmp    eax,0x1
c01042b9:	75 10                	jne    c01042cb <intr0x21_handler+0x6b>
c01042bb:	66 81 4d f6 00 e0    	or     WORD PTR [ebp-0xa],0xe000
c01042c1:	c7 05 70 bf 10 c0 00 	mov    DWORD PTR ds:0xc010bf70,0x0
c01042c8:	00 00 00 
c01042cb:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c01042cf:	25 80 00 00 00       	and    eax,0x80
c01042d4:	85 c0                	test   eax,eax
c01042d6:	0f 95 c0             	setne  al
c01042d9:	0f b6 c0             	movzx  eax,al
c01042dc:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01042df:	83 7d e4 01          	cmp    DWORD PTR [ebp-0x1c],0x1
c01042e3:	75 5d                	jne    c0104342 <intr0x21_handler+0xe2>
c01042e5:	66 81 65 f6 7f ff    	and    WORD PTR [ebp-0xa],0xff7f
c01042eb:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c01042ef:	83 f8 36             	cmp    eax,0x36
c01042f2:	74 32                	je     c0104326 <intr0x21_handler+0xc6>
c01042f4:	83 f8 36             	cmp    eax,0x36
c01042f7:	7f 0c                	jg     c0104305 <intr0x21_handler+0xa5>
c01042f9:	83 f8 1d             	cmp    eax,0x1d
c01042fc:	74 1c                	je     c010431a <intr0x21_handler+0xba>
c01042fe:	83 f8 2a             	cmp    eax,0x2a
c0104301:	74 23                	je     c0104326 <intr0x21_handler+0xc6>
c0104303:	eb 38                	jmp    c010433d <intr0x21_handler+0xdd>
c0104305:	3d 1d e0 00 00       	cmp    eax,0xe01d
c010430a:	74 0e                	je     c010431a <intr0x21_handler+0xba>
c010430c:	3d 38 e0 00 00       	cmp    eax,0xe038
c0104311:	74 1f                	je     c0104332 <intr0x21_handler+0xd2>
c0104313:	83 f8 38             	cmp    eax,0x38
c0104316:	74 1a                	je     c0104332 <intr0x21_handler+0xd2>
c0104318:	eb 23                	jmp    c010433d <intr0x21_handler+0xdd>
c010431a:	c7 05 60 bf 10 c0 00 	mov    DWORD PTR ds:0xc010bf60,0x0
c0104321:	00 00 00 
c0104324:	eb 17                	jmp    c010433d <intr0x21_handler+0xdd>
c0104326:	c7 05 64 bf 10 c0 00 	mov    DWORD PTR ds:0xc010bf64,0x0
c010432d:	00 00 00 
c0104330:	eb 0b                	jmp    c010433d <intr0x21_handler+0xdd>
c0104332:	c7 05 68 bf 10 c0 00 	mov    DWORD PTR ds:0xc010bf68,0x0
c0104339:	00 00 00 
c010433c:	90                   	nop
c010433d:	e9 65 01 00 00       	jmp    c01044a7 <intr0x21_handler+0x247>
c0104342:	66 83 7d f6 3a       	cmp    WORD PTR [ebp-0xa],0x3a
c0104347:	77 07                	ja     c0104350 <intr0x21_handler+0xf0>
c0104349:	66 83 7d f6 00       	cmp    WORD PTR [ebp-0xa],0x0
c010434e:	75 14                	jne    c0104364 <intr0x21_handler+0x104>
c0104350:	66 81 7d f6 38 e0    	cmp    WORD PTR [ebp-0xa],0xe038
c0104356:	74 0c                	je     c0104364 <intr0x21_handler+0x104>
c0104358:	66 81 7d f6 1d e0    	cmp    WORD PTR [ebp-0xa],0xe01d
c010435e:	0f 85 3f 01 00 00    	jne    c01044a3 <intr0x21_handler+0x243>
c0104364:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010436b:	66 83 7d f6 0d       	cmp    WORD PTR [ebp-0xa],0xd
c0104370:	76 38                	jbe    c01043aa <intr0x21_handler+0x14a>
c0104372:	66 83 7d f6 29       	cmp    WORD PTR [ebp-0xa],0x29
c0104377:	74 31                	je     c01043aa <intr0x21_handler+0x14a>
c0104379:	66 83 7d f6 1a       	cmp    WORD PTR [ebp-0xa],0x1a
c010437e:	74 2a                	je     c01043aa <intr0x21_handler+0x14a>
c0104380:	66 83 7d f6 1b       	cmp    WORD PTR [ebp-0xa],0x1b
c0104385:	74 23                	je     c01043aa <intr0x21_handler+0x14a>
c0104387:	66 83 7d f6 2b       	cmp    WORD PTR [ebp-0xa],0x2b
c010438c:	74 1c                	je     c01043aa <intr0x21_handler+0x14a>
c010438e:	66 83 7d f6 27       	cmp    WORD PTR [ebp-0xa],0x27
c0104393:	74 15                	je     c01043aa <intr0x21_handler+0x14a>
c0104395:	66 83 7d f6 28       	cmp    WORD PTR [ebp-0xa],0x28
c010439a:	74 0e                	je     c01043aa <intr0x21_handler+0x14a>
c010439c:	66 83 7d f6 32       	cmp    WORD PTR [ebp-0xa],0x32
c01043a1:	76 16                	jbe    c01043b9 <intr0x21_handler+0x159>
c01043a3:	66 83 7d f6 35       	cmp    WORD PTR [ebp-0xa],0x35
c01043a8:	77 0f                	ja     c01043b9 <intr0x21_handler+0x159>
c01043aa:	83 7d ec 01          	cmp    DWORD PTR [ebp-0x14],0x1
c01043ae:	75 3a                	jne    c01043ea <intr0x21_handler+0x18a>
c01043b0:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c01043b7:	eb 31                	jmp    c01043ea <intr0x21_handler+0x18a>
c01043b9:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c01043bd:	74 0f                	je     c01043ce <intr0x21_handler+0x16e>
c01043bf:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c01043c3:	74 09                	je     c01043ce <intr0x21_handler+0x16e>
c01043c5:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01043cc:	eb 1c                	jmp    c01043ea <intr0x21_handler+0x18a>
c01043ce:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c01043d2:	75 06                	jne    c01043da <intr0x21_handler+0x17a>
c01043d4:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c01043d8:	74 09                	je     c01043e3 <intr0x21_handler+0x183>
c01043da:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c01043e1:	eb 07                	jmp    c01043ea <intr0x21_handler+0x18a>
c01043e3:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01043ea:	66 81 65 f6 ff 00    	and    WORD PTR [ebp-0xa],0xff
c01043f0:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c01043f4:	01 c0                	add    eax,eax
c01043f6:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c01043f9:	05 e0 82 10 c0       	add    eax,0xc01082e0
c01043fe:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0104401:	88 45 e3             	mov    BYTE PTR [ebp-0x1d],al
c0104404:	0f b6 45 e3          	movzx  eax,BYTE PTR [ebp-0x1d]
c0104408:	84 c0                	test   al,al
c010440a:	74 29                	je     c0104435 <intr0x21_handler+0x1d5>
c010440c:	c7 04 24 20 24 11 c0 	mov    DWORD PTR [esp],0xc0112420
c0104413:	e8 8a fd ff ff       	call   c01041a2 <fifo_fill>
c0104418:	85 c0                	test   eax,eax
c010441a:	0f 85 86 00 00 00    	jne    c01044a6 <intr0x21_handler+0x246>
c0104420:	8d 45 e3             	lea    eax,[ebp-0x1d]
c0104423:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104427:	c7 04 24 20 24 11 c0 	mov    DWORD PTR [esp],0xc0112420
c010442e:	e8 2e fa ff ff       	call   c0103e61 <fifo_put>
c0104433:	eb 71                	jmp    c01044a6 <intr0x21_handler+0x246>
c0104435:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c0104439:	83 f8 38             	cmp    eax,0x38
c010443c:	74 43                	je     c0104481 <intr0x21_handler+0x221>
c010443e:	83 f8 38             	cmp    eax,0x38
c0104441:	7f 11                	jg     c0104454 <intr0x21_handler+0x1f4>
c0104443:	83 f8 2a             	cmp    eax,0x2a
c0104446:	74 2d                	je     c0104475 <intr0x21_handler+0x215>
c0104448:	83 f8 36             	cmp    eax,0x36
c010444b:	74 28                	je     c0104475 <intr0x21_handler+0x215>
c010444d:	83 f8 1d             	cmp    eax,0x1d
c0104450:	74 17                	je     c0104469 <intr0x21_handler+0x209>
c0104452:	eb 4d                	jmp    c01044a1 <intr0x21_handler+0x241>
c0104454:	3d 1d e0 00 00       	cmp    eax,0xe01d
c0104459:	74 0e                	je     c0104469 <intr0x21_handler+0x209>
c010445b:	3d 38 e0 00 00       	cmp    eax,0xe038
c0104460:	74 1f                	je     c0104481 <intr0x21_handler+0x221>
c0104462:	83 f8 3a             	cmp    eax,0x3a
c0104465:	74 26                	je     c010448d <intr0x21_handler+0x22d>
c0104467:	eb 38                	jmp    c01044a1 <intr0x21_handler+0x241>
c0104469:	c7 05 60 bf 10 c0 01 	mov    DWORD PTR ds:0xc010bf60,0x1
c0104470:	00 00 00 
c0104473:	eb 2d                	jmp    c01044a2 <intr0x21_handler+0x242>
c0104475:	c7 05 64 bf 10 c0 01 	mov    DWORD PTR ds:0xc010bf64,0x1
c010447c:	00 00 00 
c010447f:	eb 21                	jmp    c01044a2 <intr0x21_handler+0x242>
c0104481:	c7 05 68 bf 10 c0 01 	mov    DWORD PTR ds:0xc010bf68,0x1
c0104488:	00 00 00 
c010448b:	eb 15                	jmp    c01044a2 <intr0x21_handler+0x242>
c010448d:	a1 6c bf 10 c0       	mov    eax,ds:0xc010bf6c
c0104492:	85 c0                	test   eax,eax
c0104494:	0f 94 c0             	sete   al
c0104497:	0f b6 c0             	movzx  eax,al
c010449a:	a3 6c bf 10 c0       	mov    ds:0xc010bf6c,eax
c010449f:	eb 01                	jmp    c01044a2 <intr0x21_handler+0x242>
c01044a1:	90                   	nop
c01044a2:	90                   	nop
c01044a3:	90                   	nop
c01044a4:	eb 01                	jmp    c01044a7 <intr0x21_handler+0x247>
c01044a6:	90                   	nop
c01044a7:	c9                   	leave  
c01044a8:	c3                   	ret    
c01044a9:	00 00                	add    BYTE PTR [eax],al
	...

c01044ac <io_in8>:
c01044ac:	55                   	push   ebp
c01044ad:	89 e5                	mov    ebp,esp
c01044af:	53                   	push   ebx
c01044b0:	83 ec 14             	sub    esp,0x14
c01044b3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01044b6:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c01044b9:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01044bc:	ec                   	in     al,dx
c01044bd:	89 c3                	mov    ebx,eax
c01044bf:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c01044c2:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01044c5:	83 c4 14             	add    esp,0x14
c01044c8:	5b                   	pop    ebx
c01044c9:	5d                   	pop    ebp
c01044ca:	c3                   	ret    

c01044cb <io_out8>:
c01044cb:	55                   	push   ebp
c01044cc:	89 e5                	mov    ebp,esp
c01044ce:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01044d1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01044d4:	ee                   	out    dx,al
c01044d5:	5d                   	pop    ebp
c01044d6:	c3                   	ret    

c01044d7 <init_mouse>:
c01044d7:	55                   	push   ebp
c01044d8:	89 e5                	mov    ebp,esp
c01044da:	83 ec 18             	sub    esp,0x18
c01044dd:	e8 01 fd ff ff       	call   c01041e3 <wait_keyboard_ready>
c01044e2:	c7 44 24 04 d4 00 00 	mov    DWORD PTR [esp+0x4],0xd4
c01044e9:	00 
c01044ea:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c01044f1:	e8 d5 ff ff ff       	call   c01044cb <io_out8>
c01044f6:	e8 e8 fc ff ff       	call   c01041e3 <wait_keyboard_ready>
c01044fb:	c7 44 24 04 f4 00 00 	mov    DWORD PTR [esp+0x4],0xf4
c0104502:	00 
c0104503:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c010450a:	e8 bc ff ff ff       	call   c01044cb <io_out8>
c010450f:	c7 05 7c bf 10 c0 00 	mov    DWORD PTR ds:0xc010bf7c,0x0
c0104516:	00 00 00 
c0104519:	c9                   	leave  
c010451a:	c3                   	ret    

c010451b <intr0x2c_handler>:
c010451b:	55                   	push   ebp
c010451c:	89 e5                	mov    ebp,esp
c010451e:	83 ec 18             	sub    esp,0x18
c0104521:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0104528:	00 
c0104529:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
c0104530:	e8 96 ff ff ff       	call   c01044cb <io_out8>
c0104535:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c010453c:	00 
c010453d:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0104544:	e8 82 ff ff ff       	call   c01044cb <io_out8>
c0104549:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104550:	e8 57 ff ff ff       	call   c01044ac <io_in8>
c0104555:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
c0104558:	a1 7c bf 10 c0       	mov    eax,ds:0xc010bf7c
c010455d:	85 c0                	test   eax,eax
c010455f:	75 19                	jne    c010457a <intr0x2c_handler+0x5f>
c0104561:	80 7d ff fa          	cmp    BYTE PTR [ebp-0x1],0xfa
c0104565:	0f 85 04 01 00 00    	jne    c010466f <intr0x2c_handler+0x154>
c010456b:	c7 05 7c bf 10 c0 01 	mov    DWORD PTR ds:0xc010bf7c,0x1
c0104572:	00 00 00 
c0104575:	e9 f5 00 00 00       	jmp    c010466f <intr0x2c_handler+0x154>
c010457a:	a1 7c bf 10 c0       	mov    eax,ds:0xc010bf7c
c010457f:	83 f8 01             	cmp    eax,0x1
c0104582:	75 2a                	jne    c01045ae <intr0x2c_handler+0x93>
c0104584:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c0104588:	25 c8 00 00 00       	and    eax,0xc8
c010458d:	83 f8 08             	cmp    eax,0x8
c0104590:	0f 85 dc 00 00 00    	jne    c0104672 <intr0x2c_handler+0x157>
c0104596:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c010459a:	a2 78 bf 10 c0       	mov    ds:0xc010bf78,al
c010459f:	c7 05 7c bf 10 c0 02 	mov    DWORD PTR ds:0xc010bf7c,0x2
c01045a6:	00 00 00 
c01045a9:	e9 c4 00 00 00       	jmp    c0104672 <intr0x2c_handler+0x157>
c01045ae:	a1 7c bf 10 c0       	mov    eax,ds:0xc010bf7c
c01045b3:	83 f8 02             	cmp    eax,0x2
c01045b6:	75 18                	jne    c01045d0 <intr0x2c_handler+0xb5>
c01045b8:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c01045bc:	a2 79 bf 10 c0       	mov    ds:0xc010bf79,al
c01045c1:	c7 05 7c bf 10 c0 03 	mov    DWORD PTR ds:0xc010bf7c,0x3
c01045c8:	00 00 00 
c01045cb:	e9 a2 00 00 00       	jmp    c0104672 <intr0x2c_handler+0x157>
c01045d0:	a1 7c bf 10 c0       	mov    eax,ds:0xc010bf7c
c01045d5:	83 f8 03             	cmp    eax,0x3
c01045d8:	0f 85 94 00 00 00    	jne    c0104672 <intr0x2c_handler+0x157>
c01045de:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c01045e2:	a2 7a bf 10 c0       	mov    ds:0xc010bf7a,al
c01045e7:	c7 05 7c bf 10 c0 04 	mov    DWORD PTR ds:0xc010bf7c,0x4
c01045ee:	00 00 00 
c01045f1:	0f b6 05 78 bf 10 c0 	movzx  eax,BYTE PTR ds:0xc010bf78
c01045f8:	0f b6 c0             	movzx  eax,al
c01045fb:	83 e0 07             	and    eax,0x7
c01045fe:	a3 88 bf 10 c0       	mov    ds:0xc010bf88,eax
c0104603:	0f b6 05 79 bf 10 c0 	movzx  eax,BYTE PTR ds:0xc010bf79
c010460a:	0f b6 c0             	movzx  eax,al
c010460d:	a3 80 bf 10 c0       	mov    ds:0xc010bf80,eax
c0104612:	0f b6 05 7a bf 10 c0 	movzx  eax,BYTE PTR ds:0xc010bf7a
c0104619:	0f b6 c0             	movzx  eax,al
c010461c:	a3 84 bf 10 c0       	mov    ds:0xc010bf84,eax
c0104621:	0f b6 05 78 bf 10 c0 	movzx  eax,BYTE PTR ds:0xc010bf78
c0104628:	0f b6 c0             	movzx  eax,al
c010462b:	83 e0 10             	and    eax,0x10
c010462e:	85 c0                	test   eax,eax
c0104630:	74 0f                	je     c0104641 <intr0x2c_handler+0x126>
c0104632:	a1 80 bf 10 c0       	mov    eax,ds:0xc010bf80
c0104637:	0d 00 ff ff ff       	or     eax,0xffffff00
c010463c:	a3 80 bf 10 c0       	mov    ds:0xc010bf80,eax
c0104641:	0f b6 05 78 bf 10 c0 	movzx  eax,BYTE PTR ds:0xc010bf78
c0104648:	0f b6 c0             	movzx  eax,al
c010464b:	83 e0 20             	and    eax,0x20
c010464e:	85 c0                	test   eax,eax
c0104650:	74 0f                	je     c0104661 <intr0x2c_handler+0x146>
c0104652:	a1 84 bf 10 c0       	mov    eax,ds:0xc010bf84
c0104657:	0d 00 ff ff ff       	or     eax,0xffffff00
c010465c:	a3 84 bf 10 c0       	mov    ds:0xc010bf84,eax
c0104661:	a1 84 bf 10 c0       	mov    eax,ds:0xc010bf84
c0104666:	f7 d8                	neg    eax
c0104668:	a3 84 bf 10 c0       	mov    ds:0xc010bf84,eax
c010466d:	eb 03                	jmp    c0104672 <intr0x2c_handler+0x157>
c010466f:	90                   	nop
c0104670:	eb 01                	jmp    c0104673 <intr0x2c_handler+0x158>
c0104672:	90                   	nop
c0104673:	c9                   	leave  
c0104674:	c3                   	ret    

c0104675 <get_mouse>:
c0104675:	55                   	push   ebp
c0104676:	89 e5                	mov    ebp,esp
c0104678:	83 ec 20             	sub    esp,0x20
c010467b:	a1 7c bf 10 c0       	mov    eax,ds:0xc010bf7c
c0104680:	83 f8 04             	cmp    eax,0x4
c0104683:	74 29                	je     c01046ae <get_mouse+0x39>
c0104685:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010468c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010468f:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0104692:	89 10                	mov    DWORD PTR [eax],edx
c0104694:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0104697:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010469a:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010469d:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01046a0:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c01046a3:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01046a6:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c01046a9:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c01046ac:	eb 39                	jmp    c01046e7 <get_mouse+0x72>
c01046ae:	c7 05 7c bf 10 c0 01 	mov    DWORD PTR ds:0xc010bf7c,0x1
c01046b5:	00 00 00 
c01046b8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01046bb:	8b 15 78 bf 10 c0    	mov    edx,DWORD PTR ds:0xc010bf78
c01046c1:	89 10                	mov    DWORD PTR [eax],edx
c01046c3:	8b 15 7c bf 10 c0    	mov    edx,DWORD PTR ds:0xc010bf7c
c01046c9:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01046cc:	8b 15 80 bf 10 c0    	mov    edx,DWORD PTR ds:0xc010bf80
c01046d2:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01046d5:	8b 15 84 bf 10 c0    	mov    edx,DWORD PTR ds:0xc010bf84
c01046db:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01046de:	8b 15 88 bf 10 c0    	mov    edx,DWORD PTR ds:0xc010bf88
c01046e4:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c01046e7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01046ea:	c9                   	leave  
c01046eb:	c2 04 00             	ret    0x4
	...

c01046f0 <io_in8>:
c01046f0:	55                   	push   ebp
c01046f1:	89 e5                	mov    ebp,esp
c01046f3:	53                   	push   ebx
c01046f4:	83 ec 14             	sub    esp,0x14
c01046f7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01046fa:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c01046fd:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0104700:	ec                   	in     al,dx
c0104701:	89 c3                	mov    ebx,eax
c0104703:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0104706:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0104709:	83 c4 14             	add    esp,0x14
c010470c:	5b                   	pop    ebx
c010470d:	5d                   	pop    ebp
c010470e:	c3                   	ret    

c010470f <io_out8>:
c010470f:	55                   	push   ebp
c0104710:	89 e5                	mov    ebp,esp
c0104712:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104715:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104718:	ee                   	out    dx,al
c0104719:	5d                   	pop    ebp
c010471a:	c3                   	ret    

c010471b <get_time>:
c010471b:	55                   	push   ebp
c010471c:	89 e5                	mov    ebp,esp
c010471e:	53                   	push   ebx
c010471f:	83 ec 24             	sub    esp,0x24
c0104722:	e8 16 d1 ff ff       	call   c010183d <intr_get_status>
c0104727:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010472a:	c7 44 24 04 89 00 00 	mov    DWORD PTR [esp+0x4],0x89
c0104731:	00 
c0104732:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104739:	e8 d1 ff ff ff       	call   c010470f <io_out8>
c010473e:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104745:	e8 a6 ff ff ff       	call   c01046f0 <io_in8>
c010474a:	89 c3                	mov    ebx,eax
c010474c:	c7 44 24 04 b2 00 00 	mov    DWORD PTR [esp+0x4],0xb2
c0104753:	00 
c0104754:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c010475b:	e8 af ff ff ff       	call   c010470f <io_out8>
c0104760:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104767:	e8 84 ff ff ff       	call   c01046f0 <io_in8>
c010476c:	c1 e0 08             	shl    eax,0x8
c010476f:	8d 14 03             	lea    edx,[ebx+eax*1]
c0104772:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104775:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c0104778:	c7 44 24 04 88 00 00 	mov    DWORD PTR [esp+0x4],0x88
c010477f:	00 
c0104780:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104787:	e8 83 ff ff ff       	call   c010470f <io_out8>
c010478c:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104793:	e8 58 ff ff ff       	call   c01046f0 <io_in8>
c0104798:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010479b:	89 42 10             	mov    DWORD PTR [edx+0x10],eax
c010479e:	c7 44 24 04 87 00 00 	mov    DWORD PTR [esp+0x4],0x87
c01047a5:	00 
c01047a6:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c01047ad:	e8 5d ff ff ff       	call   c010470f <io_out8>
c01047b2:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c01047b9:	e8 32 ff ff ff       	call   c01046f0 <io_in8>
c01047be:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01047c1:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
c01047c4:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c01047cb:	00 
c01047cc:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c01047d3:	e8 37 ff ff ff       	call   c010470f <io_out8>
c01047d8:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c01047df:	e8 0c ff ff ff       	call   c01046f0 <io_in8>
c01047e4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01047e7:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
c01047ea:	c7 44 24 04 82 00 00 	mov    DWORD PTR [esp+0x4],0x82
c01047f1:	00 
c01047f2:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c01047f9:	e8 11 ff ff ff       	call   c010470f <io_out8>
c01047fe:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104805:	e8 e6 fe ff ff       	call   c01046f0 <io_in8>
c010480a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010480d:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0104810:	c7 44 24 04 80 00 00 	mov    DWORD PTR [esp+0x4],0x80
c0104817:	00 
c0104818:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c010481f:	e8 eb fe ff ff       	call   c010470f <io_out8>
c0104824:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c010482b:	e8 c0 fe ff ff       	call   c01046f0 <io_in8>
c0104830:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104833:	89 02                	mov    DWORD PTR [edx],eax
c0104835:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104838:	8b 18                	mov    ebx,DWORD PTR [eax]
c010483a:	c7 44 24 04 80 00 00 	mov    DWORD PTR [esp+0x4],0x80
c0104841:	00 
c0104842:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104849:	e8 c1 fe ff ff       	call   c010470f <io_out8>
c010484e:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104855:	e8 96 fe ff ff       	call   c01046f0 <io_in8>
c010485a:	39 c3                	cmp    ebx,eax
c010485c:	0f 85 c8 fe ff ff    	jne    c010472a <get_time+0xf>
c0104862:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0104869:	00 
c010486a:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104871:	e8 99 fe ff ff       	call   c010470f <io_out8>
c0104876:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104879:	89 04 24             	mov    DWORD PTR [esp],eax
c010487c:	e8 a2 cf ff ff       	call   c0101823 <intr_set_status>
c0104881:	83 c4 24             	add    esp,0x24
c0104884:	5b                   	pop    ebx
c0104885:	5d                   	pop    ebp
c0104886:	c3                   	ret    
	...

c0104888 <io_out8>:
c0104888:	55                   	push   ebp
c0104889:	89 e5                	mov    ebp,esp
c010488b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010488e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104891:	ee                   	out    dx,al
c0104892:	5d                   	pop    ebp
c0104893:	c3                   	ret    

c0104894 <init_pit>:
c0104894:	55                   	push   ebp
c0104895:	89 e5                	mov    ebp,esp
c0104897:	83 ec 08             	sub    esp,0x8
c010489a:	c7 44 24 04 34 00 00 	mov    DWORD PTR [esp+0x4],0x34
c01048a1:	00 
c01048a2:	c7 04 24 43 00 00 00 	mov    DWORD PTR [esp],0x43
c01048a9:	e8 da ff ff ff       	call   c0104888 <io_out8>
c01048ae:	c7 44 24 04 9c 00 00 	mov    DWORD PTR [esp+0x4],0x9c
c01048b5:	00 
c01048b6:	c7 04 24 40 00 00 00 	mov    DWORD PTR [esp],0x40
c01048bd:	e8 c6 ff ff ff       	call   c0104888 <io_out8>
c01048c2:	c7 44 24 04 2e 00 00 	mov    DWORD PTR [esp+0x4],0x2e
c01048c9:	00 
c01048ca:	c7 04 24 40 00 00 00 	mov    DWORD PTR [esp],0x40
c01048d1:	e8 b2 ff ff ff       	call   c0104888 <io_out8>
c01048d6:	c9                   	leave  
c01048d7:	c3                   	ret    

c01048d8 <intr0x20_handler>:
c01048d8:	55                   	push   ebp
c01048d9:	89 e5                	mov    ebp,esp
c01048db:	83 ec 28             	sub    esp,0x28
c01048de:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c01048e5:	00 
c01048e6:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c01048ed:	e8 96 ff ff ff       	call   c0104888 <io_out8>
c01048f2:	e8 00 e7 ff ff       	call   c0102ff7 <running_thread>
c01048f7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01048fa:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01048fd:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0104900:	8d 50 01             	lea    edx,[eax+0x1]
c0104903:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104906:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0104909:	a1 8c bf 10 c0       	mov    eax,ds:0xc010bf8c
c010490e:	83 c0 01             	add    eax,0x1
c0104911:	a3 8c bf 10 c0       	mov    ds:0xc010bf8c,eax
c0104916:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104919:	0f b6 40 1d          	movzx  eax,BYTE PTR [eax+0x1d]
c010491d:	84 c0                	test   al,al
c010491f:	75 07                	jne    c0104928 <intr0x20_handler+0x50>
c0104921:	e8 f3 e8 ff ff       	call   c0103219 <schedule>
c0104926:	eb 10                	jmp    c0104938 <intr0x20_handler+0x60>
c0104928:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010492b:	0f b6 40 1d          	movzx  eax,BYTE PTR [eax+0x1d]
c010492f:	8d 50 ff             	lea    edx,[eax-0x1]
c0104932:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104935:	88 50 1d             	mov    BYTE PTR [eax+0x1d],dl
c0104938:	c9                   	leave  
c0104939:	c3                   	ret    
	...

c010493c <send_recv>:
c010493c:	55                   	push   ebp
c010493d:	89 e5                	mov    ebp,esp
c010493f:	53                   	push   ebx
c0104940:	83 ec 18             	sub    esp,0x18
c0104943:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104946:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0104949:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010494c:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c010494f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0104952:	89 d3                	mov    ebx,edx
c0104954:	cd 4d                	int    0x4d
c0104956:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0104959:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010495c:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c010495f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0104962:	83 c4 18             	add    esp,0x18
c0104965:	5b                   	pop    ebx
c0104966:	5d                   	pop    ebp
c0104967:	c3                   	ret    

c0104968 <resetmsg>:
c0104968:	55                   	push   ebp
c0104969:	89 e5                	mov    ebp,esp
c010496b:	83 ec 18             	sub    esp,0x18
c010496e:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104975:	00 
c0104976:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c010497d:	00 
c010497e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104981:	89 04 24             	mov    DWORD PTR [esp],eax
c0104984:	e8 1b 2c 00 00       	call   c01075a4 <memset>
c0104989:	c9                   	leave  
c010498a:	c3                   	ret    

c010498b <deadlock>:
c010498b:	55                   	push   ebp
c010498c:	89 e5                	mov    ebp,esp
c010498e:	53                   	push   ebx
c010498f:	83 ec 54             	sub    esp,0x54
c0104992:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104995:	89 04 24             	mov    DWORD PTR [esp],eax
c0104998:	e8 8d eb ff ff       	call   c010352a <pid2thread>
c010499d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01049a0:	eb 01                	jmp    c01049a3 <deadlock+0x18>
c01049a2:	90                   	nop
c01049a3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01049a6:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01049a9:	83 f8 03             	cmp    eax,0x3
c01049ac:	0f 85 a7 00 00 00    	jne    c0104a59 <deadlock+0xce>
c01049b2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01049b5:	8b 80 6c 01 00 00    	mov    eax,DWORD PTR [eax+0x16c]
c01049bb:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
c01049be:	75 74                	jne    c0104a34 <deadlock+0xa9>
c01049c0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01049c3:	89 04 24             	mov    DWORD PTR [esp],eax
c01049c6:	e8 5f eb ff ff       	call   c010352a <pid2thread>
c01049cb:	8d 58 0c             	lea    ebx,[eax+0xc]
c01049ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01049d1:	89 04 24             	mov    DWORD PTR [esp],eax
c01049d4:	e8 51 eb ff ff       	call   c010352a <pid2thread>
c01049d9:	83 c0 0c             	add    eax,0xc
c01049dc:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01049e0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01049e4:	c7 44 24 04 2b b9 10 	mov    DWORD PTR [esp+0x4],0xc010b92b
c01049eb:	c0 
c01049ec:	8d 45 d6             	lea    eax,[ebp-0x2a]
c01049ef:	89 04 24             	mov    DWORD PTR [esp],eax
c01049f2:	e8 89 2d 00 00       	call   c0107780 <sprintf>
c01049f7:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01049fc:	8b 00                	mov    eax,DWORD PTR [eax]
c01049fe:	8d 55 d6             	lea    edx,[ebp-0x2a]
c0104a01:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0104a05:	c7 44 24 10 00 00 ff 	mov    DWORD PTR [esp+0x10],0xff0000
c0104a0c:	00 
c0104a0d:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0104a14:	00 
c0104a15:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0104a1c:	00 
c0104a1d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104a21:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0104a28:	e8 a4 33 00 00       	call   c0107dd1 <vput_str>
c0104a2d:	b8 01 00 00 00       	mov    eax,0x1
c0104a32:	eb 2b                	jmp    c0104a5f <deadlock+0xd4>
c0104a34:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104a37:	8b 80 6c 01 00 00    	mov    eax,DWORD PTR [eax+0x16c]
c0104a3d:	89 04 24             	mov    DWORD PTR [esp],eax
c0104a40:	e8 e5 ea ff ff       	call   c010352a <pid2thread>
c0104a45:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104a48:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0104a4c:	0f 85 50 ff ff ff    	jne    c01049a2 <deadlock+0x17>
c0104a52:	b8 00 00 00 00       	mov    eax,0x0
c0104a57:	eb 06                	jmp    c0104a5f <deadlock+0xd4>
c0104a59:	90                   	nop
c0104a5a:	b8 00 00 00 00       	mov    eax,0x0
c0104a5f:	83 c4 54             	add    esp,0x54
c0104a62:	5b                   	pop    ebx
c0104a63:	5d                   	pop    ebp
c0104a64:	c3                   	ret    

c0104a65 <msg_send>:
c0104a65:	55                   	push   ebp
c0104a66:	89 e5                	mov    ebp,esp
c0104a68:	83 ec 38             	sub    esp,0x38
c0104a6b:	e8 87 e5 ff ff       	call   c0102ff7 <running_thread>
c0104a70:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104a73:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104a76:	89 04 24             	mov    DWORD PTR [esp],eax
c0104a79:	e8 ac ea ff ff       	call   c010352a <pid2thread>
c0104a7e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104a81:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0104a85:	75 2c                	jne    c0104ab3 <msg_send+0x4e>
c0104a87:	c7 44 24 10 46 b9 10 	mov    DWORD PTR [esp+0x10],0xc010b946
c0104a8e:	c0 
c0104a8f:	c7 44 24 0c 43 ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba43
c0104a96:	c0 
c0104a97:	c7 44 24 08 44 00 00 	mov    DWORD PTR [esp+0x8],0x44
c0104a9e:	00 
c0104a9f:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104aa6:	c0 
c0104aa7:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104aae:	e8 21 bf ff ff       	call   c01009d4 <panic_spin>
c0104ab3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104ab6:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0104ab9:	75 2c                	jne    c0104ae7 <msg_send+0x82>
c0104abb:	c7 44 24 10 66 b9 10 	mov    DWORD PTR [esp+0x10],0xc010b966
c0104ac2:	c0 
c0104ac3:	c7 44 24 0c 43 ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba43
c0104aca:	c0 
c0104acb:	c7 44 24 08 45 00 00 	mov    DWORD PTR [esp+0x8],0x45
c0104ad2:	00 
c0104ad3:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104ada:	c0 
c0104adb:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104ae2:	e8 ed be ff ff       	call   c01009d4 <panic_spin>
c0104ae7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104aea:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c0104aed:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104af0:	89 10                	mov    DWORD PTR [eax],edx
c0104af2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104af5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104af8:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104afb:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104aff:	89 04 24             	mov    DWORD PTR [esp],eax
c0104b02:	e8 84 fe ff ff       	call   c010498b <deadlock>
c0104b07:	85 c0                	test   eax,eax
c0104b09:	74 0a                	je     c0104b15 <msg_send+0xb0>
c0104b0b:	b8 01 00 00 00       	mov    eax,0x1
c0104b10:	e9 bd 01 00 00       	jmp    c0104cd2 <msg_send+0x26d>
c0104b15:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104b18:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104b1b:	83 f8 04             	cmp    eax,0x4
c0104b1e:	0f 85 fd 00 00 00    	jne    c0104c21 <msg_send+0x1bc>
c0104b24:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104b27:	8b 80 70 01 00 00    	mov    eax,DWORD PTR [eax+0x170]
c0104b2d:	85 c0                	test   eax,eax
c0104b2f:	74 17                	je     c0104b48 <msg_send+0xe3>
c0104b31:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104b34:	8b 90 70 01 00 00    	mov    edx,DWORD PTR [eax+0x170]
c0104b3a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104b3d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104b40:	39 c2                	cmp    edx,eax
c0104b42:	0f 85 d9 00 00 00    	jne    c0104c21 <msg_send+0x1bc>
c0104b48:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104b4b:	8d 90 3c 01 00 00    	lea    edx,[eax+0x13c]
c0104b51:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104b58:	00 
c0104b59:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104b5c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104b60:	89 14 24             	mov    DWORD PTR [esp],edx
c0104b63:	e8 a4 2a 00 00       	call   c010760c <memcpy>
c0104b68:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104b6b:	8b 80 94 01 00 00    	mov    eax,DWORD PTR [eax+0x194]
c0104b71:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0104b74:	74 2c                	je     c0104ba2 <msg_send+0x13d>
c0104b76:	c7 44 24 10 78 b9 10 	mov    DWORD PTR [esp+0x10],0xc010b978
c0104b7d:	c0 
c0104b7e:	c7 44 24 0c 43 ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba43
c0104b85:	c0 
c0104b86:	c7 44 24 08 53 00 00 	mov    DWORD PTR [esp+0x8],0x53
c0104b8d:	00 
c0104b8e:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104b95:	c0 
c0104b96:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104b9d:	e8 32 be ff ff       	call   c01009d4 <panic_spin>
c0104ba2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104ba5:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c0104bab:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104bae:	05 78 01 00 00       	add    eax,0x178
c0104bb3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104bb7:	89 04 24             	mov    DWORD PTR [esp],eax
c0104bba:	e8 da 23 00 00       	call   c0106f99 <list_find>
c0104bbf:	85 c0                	test   eax,eax
c0104bc1:	74 2c                	je     c0104bef <msg_send+0x18a>
c0104bc3:	c7 44 24 10 98 b9 10 	mov    DWORD PTR [esp+0x10],0xc010b998
c0104bca:	c0 
c0104bcb:	c7 44 24 0c 43 ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba43
c0104bd2:	c0 
c0104bd3:	c7 44 24 08 54 00 00 	mov    DWORD PTR [esp+0x8],0x54
c0104bda:	00 
c0104bdb:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104be2:	c0 
c0104be3:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104bea:	e8 e5 bd ff ff       	call   c01009d4 <panic_spin>
c0104bef:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104bf2:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c0104bf8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104bfb:	05 78 01 00 00       	add    eax,0x178
c0104c00:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104c04:	89 04 24             	mov    DWORD PTR [esp],eax
c0104c07:	e8 1b 23 00 00       	call   c0106f27 <list_append>
c0104c0c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104c0f:	89 04 24             	mov    DWORD PTR [esp],eax
c0104c12:	e8 26 e8 ff ff       	call   c010343d <thread_unblock>
c0104c17:	b8 00 00 00 00       	mov    eax,0x0
c0104c1c:	e9 b1 00 00 00       	jmp    c0104cd2 <msg_send+0x26d>
c0104c21:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c24:	8d 90 3c 01 00 00    	lea    edx,[eax+0x13c]
c0104c2a:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104c31:	00 
c0104c32:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104c35:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104c39:	89 14 24             	mov    DWORD PTR [esp],edx
c0104c3c:	e8 cb 29 00 00       	call   c010760c <memcpy>
c0104c41:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c44:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104c47:	89 90 6c 01 00 00    	mov    DWORD PTR [eax+0x16c],edx
c0104c4d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c50:	8b 80 94 01 00 00    	mov    eax,DWORD PTR [eax+0x194]
c0104c56:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0104c59:	74 2c                	je     c0104c87 <msg_send+0x222>
c0104c5b:	c7 44 24 10 78 b9 10 	mov    DWORD PTR [esp+0x10],0xc010b978
c0104c62:	c0 
c0104c63:	c7 44 24 0c 43 ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba43
c0104c6a:	c0 
c0104c6b:	c7 44 24 08 61 00 00 	mov    DWORD PTR [esp+0x8],0x61
c0104c72:	00 
c0104c73:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104c7a:	c0 
c0104c7b:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104c82:	e8 4d bd ff ff       	call   c01009d4 <panic_spin>
c0104c87:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c8a:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c0104c90:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104c93:	05 78 01 00 00       	add    eax,0x178
c0104c98:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104c9c:	89 04 24             	mov    DWORD PTR [esp],eax
c0104c9f:	e8 83 22 00 00       	call   c0106f27 <list_append>
c0104ca4:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c0104cab:	e8 ed e6 ff ff       	call   c010339d <thread_block>
c0104cb0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104cb3:	c7 80 6c 01 00 00 01 	mov    DWORD PTR [eax+0x16c],0x1
c0104cba:	00 00 00 
c0104cbd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104cc0:	05 3c 01 00 00       	add    eax,0x13c
c0104cc5:	89 04 24             	mov    DWORD PTR [esp],eax
c0104cc8:	e8 9b fc ff ff       	call   c0104968 <resetmsg>
c0104ccd:	b8 00 00 00 00       	mov    eax,0x0
c0104cd2:	c9                   	leave  
c0104cd3:	c3                   	ret    

c0104cd4 <pid_check>:
c0104cd4:	55                   	push   ebp
c0104cd5:	89 e5                	mov    ebp,esp
c0104cd7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104cda:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104cdd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104ce0:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0104ce3:	0f 94 c0             	sete   al
c0104ce6:	0f b6 c0             	movzx  eax,al
c0104ce9:	5d                   	pop    ebp
c0104cea:	c3                   	ret    

c0104ceb <msg_recv>:
c0104ceb:	55                   	push   ebp
c0104cec:	89 e5                	mov    ebp,esp
c0104cee:	83 ec 38             	sub    esp,0x38
c0104cf1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104cf4:	89 04 24             	mov    DWORD PTR [esp],eax
c0104cf7:	e8 2e e8 ff ff       	call   c010352a <pid2thread>
c0104cfc:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104cff:	e8 f3 e2 ff ff       	call   c0102ff7 <running_thread>
c0104d04:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104d07:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104d0a:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0104d0d:	75 2c                	jne    c0104d3b <msg_recv+0x50>
c0104d0f:	c7 44 24 10 ce b9 10 	mov    DWORD PTR [esp+0x10],0xc010b9ce
c0104d16:	c0 
c0104d17:	c7 44 24 0c 3a ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba3a
c0104d1e:	c0 
c0104d1f:	c7 44 24 08 83 00 00 	mov    DWORD PTR [esp+0x8],0x83
c0104d26:	00 
c0104d27:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104d2e:	c0 
c0104d2f:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104d36:	e8 99 bc ff ff       	call   c01009d4 <panic_spin>
c0104d3b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104d3e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104d41:	89 90 70 01 00 00    	mov    DWORD PTR [eax+0x170],edx
c0104d47:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0104d4b:	75 38                	jne    c0104d85 <msg_recv+0x9a>
c0104d4d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104d50:	05 78 01 00 00       	add    eax,0x178
c0104d55:	89 04 24             	mov    DWORD PTR [esp],eax
c0104d58:	e8 f3 22 00 00       	call   c0107050 <list_empty>
c0104d5d:	85 c0                	test   eax,eax
c0104d5f:	74 0c                	je     c0104d6d <msg_recv+0x82>
c0104d61:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0104d68:	e8 30 e6 ff ff       	call   c010339d <thread_block>
c0104d6d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104d70:	05 78 01 00 00       	add    eax,0x178
c0104d75:	89 04 24             	mov    DWORD PTR [esp],eax
c0104d78:	e8 fd 21 00 00       	call   c0106f7a <list_pop>
c0104d7d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104d80:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104d83:	eb 4f                	jmp    c0104dd4 <msg_recv+0xe9>
c0104d85:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104d88:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0104d8b:	81 c2 78 01 00 00    	add    edx,0x178
c0104d91:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104d95:	c7 44 24 04 d4 4c 10 	mov    DWORD PTR [esp+0x4],0xc0104cd4
c0104d9c:	c0 
c0104d9d:	89 14 24             	mov    DWORD PTR [esp],edx
c0104da0:	e8 2f 22 00 00       	call   c0106fd4 <list_traversal>
c0104da5:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0104da8:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0104dac:	75 0c                	jne    c0104dba <msg_recv+0xcf>
c0104dae:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0104db5:	e8 e3 e5 ff ff       	call   c010339d <thread_block>
c0104dba:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0104dbe:	74 c5                	je     c0104d85 <msg_recv+0x9a>
c0104dc0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104dc3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104dc6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104dc9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104dcc:	89 04 24             	mov    DWORD PTR [esp],eax
c0104dcf:	e8 70 21 00 00       	call   c0106f44 <list_remove>
c0104dd4:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0104dd8:	75 2c                	jne    c0104e06 <msg_recv+0x11b>
c0104dda:	c7 44 24 10 df b9 10 	mov    DWORD PTR [esp+0x10],0xc010b9df
c0104de1:	c0 
c0104de2:	c7 44 24 0c 3a ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba3a
c0104de9:	c0 
c0104dea:	c7 44 24 08 9e 00 00 	mov    DWORD PTR [esp+0x8],0x9e
c0104df1:	00 
c0104df2:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104df9:	c0 
c0104dfa:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104e01:	e8 ce bb ff ff       	call   c01009d4 <panic_spin>
c0104e06:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e09:	05 3c 01 00 00       	add    eax,0x13c
c0104e0e:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104e15:	00 
c0104e16:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104e1a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104e1d:	89 04 24             	mov    DWORD PTR [esp],eax
c0104e20:	e8 e7 27 00 00       	call   c010760c <memcpy>
c0104e25:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e28:	c7 80 6c 01 00 00 01 	mov    DWORD PTR [eax+0x16c],0x1
c0104e2f:	00 00 00 
c0104e32:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e35:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104e38:	83 f8 03             	cmp    eax,0x3
c0104e3b:	75 0b                	jne    c0104e48 <msg_recv+0x15d>
c0104e3d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e40:	89 04 24             	mov    DWORD PTR [esp],eax
c0104e43:	e8 f5 e5 ff ff       	call   c010343d <thread_unblock>
c0104e48:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104e4b:	c7 80 70 01 00 00 01 	mov    DWORD PTR [eax+0x170],0x1
c0104e52:	00 00 00 
c0104e55:	b8 00 00 00 00       	mov    eax,0x0
c0104e5a:	c9                   	leave  
c0104e5b:	c3                   	ret    

c0104e5c <sys_sendrec>:
c0104e5c:	55                   	push   ebp
c0104e5d:	89 e5                	mov    ebp,esp
c0104e5f:	83 ec 38             	sub    esp,0x38
c0104e62:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0104e69:	83 7d 0c 04          	cmp    DWORD PTR [ebp+0xc],0x4
c0104e6d:	77 13                	ja     c0104e82 <sys_sendrec+0x26>
c0104e6f:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c0104e73:	76 0d                	jbe    c0104e82 <sys_sendrec+0x26>
c0104e75:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104e78:	8b 04 85 64 24 11 c0 	mov    eax,DWORD PTR [eax*4-0x3feedb9c]
c0104e7f:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
c0104e82:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104e85:	83 f8 02             	cmp    eax,0x2
c0104e88:	74 24                	je     c0104eae <sys_sendrec+0x52>
c0104e8a:	83 f8 03             	cmp    eax,0x3
c0104e8d:	74 36                	je     c0104ec5 <sys_sendrec+0x69>
c0104e8f:	83 f8 01             	cmp    eax,0x1
c0104e92:	75 63                	jne    c0104ef7 <sys_sendrec+0x9b>
c0104e94:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104e97:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104e9b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104e9e:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ea1:	e8 bf fb ff ff       	call   c0104a65 <msg_send>
c0104ea6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104ea9:	e9 8d 00 00 00       	jmp    c0104f3b <sys_sendrec+0xdf>
c0104eae:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104eb1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104eb5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104eb8:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ebb:	e8 2b fe ff ff       	call   c0104ceb <msg_recv>
c0104ec0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104ec3:	eb 76                	jmp    c0104f3b <sys_sendrec+0xdf>
c0104ec5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104ec8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104ecc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104ecf:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ed2:	e8 8e fb ff ff       	call   c0104a65 <msg_send>
c0104ed7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104eda:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0104ede:	75 57                	jne    c0104f37 <sys_sendrec+0xdb>
c0104ee0:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104ee3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104ee7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104eea:	89 04 24             	mov    DWORD PTR [esp],eax
c0104eed:	e8 f9 fd ff ff       	call   c0104ceb <msg_recv>
c0104ef2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104ef5:	eb 40                	jmp    c0104f37 <sys_sendrec+0xdb>
c0104ef7:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0104efb:	74 3d                	je     c0104f3a <sys_sendrec+0xde>
c0104efd:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
c0104f01:	74 37                	je     c0104f3a <sys_sendrec+0xde>
c0104f03:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
c0104f07:	74 31                	je     c0104f3a <sys_sendrec+0xde>
c0104f09:	c7 44 24 10 ec b9 10 	mov    DWORD PTR [esp+0x10],0xc010b9ec
c0104f10:	c0 
c0104f11:	c7 44 24 0c 2e ba 10 	mov    DWORD PTR [esp+0xc],0xc010ba2e
c0104f18:	c0 
c0104f19:	c7 44 24 08 c5 00 00 	mov    DWORD PTR [esp+0x8],0xc5
c0104f20:	00 
c0104f21:	c7 44 24 04 54 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b954
c0104f28:	c0 
c0104f29:	c7 04 24 54 b9 10 c0 	mov    DWORD PTR [esp],0xc010b954
c0104f30:	e8 9f ba ff ff       	call   c01009d4 <panic_spin>
c0104f35:	eb 03                	jmp    c0104f3a <sys_sendrec+0xde>
c0104f37:	90                   	nop
c0104f38:	eb 01                	jmp    c0104f3b <sys_sendrec+0xdf>
c0104f3a:	90                   	nop
c0104f3b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f3e:	c9                   	leave  
c0104f3f:	c3                   	ret    

c0104f40 <MM_task>:
c0104f40:	55                   	push   ebp
c0104f41:	89 e5                	mov    ebp,esp
c0104f43:	81 ec a8 00 00 00    	sub    esp,0xa8
c0104f49:	e8 a9 e0 ff ff       	call   c0102ff7 <running_thread>
c0104f4e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104f51:	a3 70 24 11 c0       	mov    ds:0xc0112470,eax
c0104f56:	e8 9c e0 ff ff       	call   c0102ff7 <running_thread>
c0104f5b:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104f5e:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0104f65:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0104f68:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f6b:	e8 f8 f9 ff ff       	call   c0104968 <resetmsg>
c0104f70:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
c0104f77:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0104f7a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104f7e:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0104f85:	00 
c0104f86:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0104f8d:	e8 aa f9 ff ff       	call   c010493c <send_recv>
c0104f92:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
c0104f95:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0104f98:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0104f9f:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
c0104fa2:	83 f8 02             	cmp    eax,0x2
c0104fa5:	0f 84 a8 00 00 00    	je     c0105053 <MM_task+0x113>
c0104fab:	83 f8 03             	cmp    eax,0x3
c0104fae:	0f 84 2c 01 00 00    	je     c01050e0 <MM_task+0x1a0>
c0104fb4:	83 f8 01             	cmp    eax,0x1
c0104fb7:	0f 85 3b 02 00 00    	jne    c01051f8 <MM_task+0x2b8>
c0104fbd:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c0104fc0:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
c0104fc3:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0104fc6:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
c0104fc9:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0104fcc:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
c0104fcf:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0104fd2:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
c0104fd5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104fd8:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0104fdb:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104fde:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104fe1:	89 04 24             	mov    DWORD PTR [esp],eax
c0104fe4:	e8 41 e5 ff ff       	call   c010352a <pid2thread>
c0104fe9:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0104fec:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104fef:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104ff2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104ff5:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ff8:	e8 ed e7 ff ff       	call   c01037ea <page_dir_activate>
c0104ffd:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105000:	89 04 24             	mov    DWORD PTR [esp],eax
c0105003:	e8 22 e5 ff ff       	call   c010352a <pid2thread>
c0105008:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c010500b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010500f:	89 14 24             	mov    DWORD PTR [esp],edx
c0105012:	e8 0d 02 00 00       	call   c0105224 <mm_malloc>
c0105017:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010501a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010501d:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0105020:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0105023:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105026:	89 04 24             	mov    DWORD PTR [esp],eax
c0105029:	e8 bc e7 ff ff       	call   c01037ea <page_dir_activate>
c010502e:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105031:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
c0105034:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0105037:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010503b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010503e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105042:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0105049:	e8 ee f8 ff ff       	call   c010493c <send_recv>
c010504e:	e9 a5 01 00 00       	jmp    c01051f8 <MM_task+0x2b8>
c0105053:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c0105056:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c0105059:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c010505c:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
c010505f:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0105062:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
c0105065:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0105068:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
c010506b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010506e:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105071:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105074:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105077:	89 04 24             	mov    DWORD PTR [esp],eax
c010507a:	e8 ab e4 ff ff       	call   c010352a <pid2thread>
c010507f:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0105082:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105085:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0105088:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010508b:	89 04 24             	mov    DWORD PTR [esp],eax
c010508e:	e8 57 e7 ff ff       	call   c01037ea <page_dir_activate>
c0105093:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
c0105096:	89 04 24             	mov    DWORD PTR [esp],eax
c0105099:	e8 8c e4 ff ff       	call   c010352a <pid2thread>
c010509e:	8b 55 94             	mov    edx,DWORD PTR [ebp-0x6c]
c01050a1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01050a5:	89 14 24             	mov    DWORD PTR [esp],edx
c01050a8:	e8 74 04 00 00       	call   c0105521 <mm_free>
c01050ad:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01050b0:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01050b3:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c01050b6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01050b9:	89 04 24             	mov    DWORD PTR [esp],eax
c01050bc:	e8 29 e7 ff ff       	call   c01037ea <page_dir_activate>
c01050c1:	8d 45 b4             	lea    eax,[ebp-0x4c]
c01050c4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01050c8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01050cb:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01050cf:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01050d6:	e8 61 f8 ff ff       	call   c010493c <send_recv>
c01050db:	e9 18 01 00 00       	jmp    c01051f8 <MM_task+0x2b8>
c01050e0:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c01050e3:	89 85 6c ff ff ff    	mov    DWORD PTR [ebp-0x94],eax
c01050e9:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c01050ec:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c01050f2:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c01050f5:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c01050fb:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c01050fe:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c0105104:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0105107:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c010510d:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0105110:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c0105113:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105116:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0105119:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010511c:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c010511f:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0105122:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c0105125:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105128:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c010512b:	8b 85 6c ff ff ff    	mov    eax,DWORD PTR [ebp-0x94]
c0105131:	89 04 24             	mov    DWORD PTR [esp],eax
c0105134:	e8 af c7 ff ff       	call   c01018e8 <kmalloc>
c0105139:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010513c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010513f:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105142:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105145:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c010514b:	89 04 24             	mov    DWORD PTR [esp],eax
c010514e:	e8 d7 e3 ff ff       	call   c010352a <pid2thread>
c0105153:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0105156:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105159:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c010515c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010515f:	89 04 24             	mov    DWORD PTR [esp],eax
c0105162:	e8 83 e6 ff ff       	call   c01037ea <page_dir_activate>
c0105167:	8b 95 6c ff ff ff    	mov    edx,DWORD PTR [ebp-0x94]
c010516d:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c0105170:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0105174:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105178:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010517b:	89 04 24             	mov    DWORD PTR [esp],eax
c010517e:	e8 89 24 00 00       	call   c010760c <memcpy>
c0105183:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105186:	89 04 24             	mov    DWORD PTR [esp],eax
c0105189:	e8 9c e3 ff ff       	call   c010352a <pid2thread>
c010518e:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0105191:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105194:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0105197:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010519a:	89 04 24             	mov    DWORD PTR [esp],eax
c010519d:	e8 48 e6 ff ff       	call   c01037ea <page_dir_activate>
c01051a2:	8b 95 6c ff ff ff    	mov    edx,DWORD PTR [ebp-0x94]
c01051a8:	8b 45 8c             	mov    eax,DWORD PTR [ebp-0x74]
c01051ab:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01051af:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01051b2:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01051b6:	89 04 24             	mov    DWORD PTR [esp],eax
c01051b9:	e8 4e 24 00 00       	call   c010760c <memcpy>
c01051be:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01051c1:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01051c4:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c01051c7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01051ca:	89 04 24             	mov    DWORD PTR [esp],eax
c01051cd:	e8 18 e6 ff ff       	call   c01037ea <page_dir_activate>
c01051d2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01051d5:	89 04 24             	mov    DWORD PTR [esp],eax
c01051d8:	e8 47 ca ff ff       	call   c0101c24 <kfree>
c01051dd:	8d 45 b4             	lea    eax,[ebp-0x4c]
c01051e0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01051e4:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01051e7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01051eb:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01051f2:	e8 45 f7 ff ff       	call   c010493c <send_recv>
c01051f7:	90                   	nop
c01051f8:	e9 68 fd ff ff       	jmp    c0104f65 <MM_task+0x25>

c01051fd <arena2block>:
c01051fd:	55                   	push   ebp
c01051fe:	89 e5                	mov    ebp,esp
c0105200:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105203:	8b 00                	mov    eax,DWORD PTR [eax]
c0105205:	8b 10                	mov    edx,DWORD PTR [eax]
c0105207:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010520a:	0f af d0             	imul   edx,eax
c010520d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105210:	01 d0                	add    eax,edx
c0105212:	83 c0 0c             	add    eax,0xc
c0105215:	5d                   	pop    ebp
c0105216:	c3                   	ret    

c0105217 <block2arena>:
c0105217:	55                   	push   ebp
c0105218:	89 e5                	mov    ebp,esp
c010521a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010521d:	25 00 f0 ff ff       	and    eax,0xfffff000
c0105222:	5d                   	pop    ebp
c0105223:	c3                   	ret    

c0105224 <mm_malloc>:
c0105224:	55                   	push   ebp
c0105225:	89 e5                	mov    ebp,esp
c0105227:	83 ec 58             	sub    esp,0x58
c010522a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010522d:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105230:	85 c0                	test   eax,eax
c0105232:	75 1b                	jne    c010524f <mm_malloc+0x2b>
c0105234:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c010523b:	a1 d4 23 11 c0       	mov    eax,ds:0xc01123d4
c0105240:	c1 e0 0c             	shl    eax,0xc
c0105243:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105246:	c7 45 ec e0 e3 10 c0 	mov    DWORD PTR [ebp-0x14],0xc010e3e0
c010524d:	eb 1b                	jmp    c010526a <mm_malloc+0x46>
c010524f:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0105256:	a1 d4 e4 10 c0       	mov    eax,ds:0xc010e4d4
c010525b:	c1 e0 0c             	shl    eax,0xc
c010525e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105261:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105264:	83 c0 7c             	add    eax,0x7c
c0105267:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010526a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010526d:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0105270:	7e 0a                	jle    c010527c <mm_malloc+0x58>
c0105272:	b8 00 00 00 00       	mov    eax,0x0
c0105277:	e9 a3 02 00 00       	jmp    c010551f <mm_malloc+0x2fb>
c010527c:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c0105283:	0f 8f d0 01 00 00    	jg     c0105459 <mm_malloc+0x235>
c0105289:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0105290:	eb 17                	jmp    c01052a9 <mm_malloc+0x85>
c0105292:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105295:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105298:	c1 e0 05             	shl    eax,0x5
c010529b:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c010529e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01052a1:	39 c2                	cmp    edx,eax
c01052a3:	76 0c                	jbe    c01052b1 <mm_malloc+0x8d>
c01052a5:	83 45 e8 01          	add    DWORD PTR [ebp-0x18],0x1
c01052a9:	83 7d e8 05          	cmp    DWORD PTR [ebp-0x18],0x5
c01052ad:	7e e3                	jle    c0105292 <mm_malloc+0x6e>
c01052af:	eb 01                	jmp    c01052b2 <mm_malloc+0x8e>
c01052b1:	90                   	nop
c01052b2:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01052b5:	c1 e0 05             	shl    eax,0x5
c01052b8:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c01052bb:	83 c0 08             	add    eax,0x8
c01052be:	89 04 24             	mov    DWORD PTR [esp],eax
c01052c1:	e8 8a 1d 00 00       	call   c0107050 <list_empty>
c01052c6:	85 c0                	test   eax,eax
c01052c8:	0f 84 2a 01 00 00    	je     c01053f8 <mm_malloc+0x1d4>
c01052ce:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01052d1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01052d5:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01052dc:	00 
c01052dd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01052e0:	89 04 24             	mov    DWORD PTR [esp],eax
c01052e3:	e8 8e 03 00 00       	call   c0105676 <mm_page_alloc>
c01052e8:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01052eb:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01052ef:	75 0a                	jne    c01052fb <mm_malloc+0xd7>
c01052f1:	b8 00 00 00 00       	mov    eax,0x0
c01052f6:	e9 24 02 00 00       	jmp    c010551f <mm_malloc+0x2fb>
c01052fb:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c0105302:	00 
c0105303:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c010530a:	00 
c010530b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010530e:	89 04 24             	mov    DWORD PTR [esp],eax
c0105311:	e8 8e 22 00 00       	call   c01075a4 <memset>
c0105316:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105319:	c1 e0 05             	shl    eax,0x5
c010531c:	89 c2                	mov    edx,eax
c010531e:	03 55 ec             	add    edx,DWORD PTR [ebp-0x14]
c0105321:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105324:	89 10                	mov    DWORD PTR [eax],edx
c0105326:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105329:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0105330:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105333:	c1 e0 05             	shl    eax,0x5
c0105336:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c0105339:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c010533c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010533f:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0105342:	e8 af c4 ff ff       	call   c01017f6 <intr_disable>
c0105347:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c010534a:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0105351:	e9 80 00 00 00       	jmp    c01053d6 <mm_malloc+0x1b2>
c0105356:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105359:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010535d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105360:	89 04 24             	mov    DWORD PTR [esp],eax
c0105363:	e8 95 fe ff ff       	call   c01051fd <arena2block>
c0105368:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010536b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010536e:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0105371:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0105374:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105377:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c010537a:	8b 12                	mov    edx,DWORD PTR [edx]
c010537c:	83 c2 08             	add    edx,0x8
c010537f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105383:	89 14 24             	mov    DWORD PTR [esp],edx
c0105386:	e8 0e 1c 00 00       	call   c0106f99 <list_find>
c010538b:	85 c0                	test   eax,eax
c010538d:	74 2c                	je     c01053bb <mm_malloc+0x197>
c010538f:	c7 44 24 10 6c ba 10 	mov    DWORD PTR [esp+0x10],0xc010ba6c
c0105396:	c0 
c0105397:	c7 44 24 0c 5d bb 10 	mov    DWORD PTR [esp+0xc],0xc010bb5d
c010539e:	c0 
c010539f:	c7 44 24 08 9c 00 00 	mov    DWORD PTR [esp+0x8],0x9c
c01053a6:	00 
c01053a7:	c7 44 24 04 9b ba 10 	mov    DWORD PTR [esp+0x4],0xc010ba9b
c01053ae:	c0 
c01053af:	c7 04 24 9b ba 10 c0 	mov    DWORD PTR [esp],0xc010ba9b
c01053b6:	e8 19 b6 ff ff       	call   c01009d4 <panic_spin>
c01053bb:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01053be:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01053c1:	8b 12                	mov    edx,DWORD PTR [edx]
c01053c3:	83 c2 08             	add    edx,0x8
c01053c6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01053ca:	89 14 24             	mov    DWORD PTR [esp],edx
c01053cd:	e8 55 1b 00 00       	call   c0106f27 <list_append>
c01053d2:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c01053d6:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01053d9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01053dc:	c1 e0 05             	shl    eax,0x5
c01053df:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c01053e2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01053e5:	39 c2                	cmp    edx,eax
c01053e7:	0f 82 69 ff ff ff    	jb     c0105356 <mm_malloc+0x132>
c01053ed:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01053f0:	89 04 24             	mov    DWORD PTR [esp],eax
c01053f3:	e8 2b c4 ff ff       	call   c0101823 <intr_set_status>
c01053f8:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01053fb:	c1 e0 05             	shl    eax,0x5
c01053fe:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c0105401:	83 c0 08             	add    eax,0x8
c0105404:	89 04 24             	mov    DWORD PTR [esp],eax
c0105407:	e8 6e 1b 00 00       	call   c0106f7a <list_pop>
c010540c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010540f:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0105412:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105415:	c1 e0 05             	shl    eax,0x5
c0105418:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c010541b:	8b 00                	mov    eax,DWORD PTR [eax]
c010541d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105421:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105428:	00 
c0105429:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010542c:	89 04 24             	mov    DWORD PTR [esp],eax
c010542f:	e8 70 21 00 00       	call   c01075a4 <memset>
c0105434:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105437:	89 04 24             	mov    DWORD PTR [esp],eax
c010543a:	e8 d8 fd ff ff       	call   c0105217 <block2arena>
c010543f:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0105442:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105445:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105448:	8d 50 ff             	lea    edx,[eax-0x1]
c010544b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010544e:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0105451:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105454:	e9 c6 00 00 00       	jmp    c010551f <mm_malloc+0x2fb>
c0105459:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010545c:	05 0b 10 00 00       	add    eax,0x100b
c0105461:	c1 e8 0c             	shr    eax,0xc
c0105464:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0105467:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010546a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010546e:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105471:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105475:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105478:	89 04 24             	mov    DWORD PTR [esp],eax
c010547b:	e8 f6 01 00 00       	call   c0105676 <mm_page_alloc>
c0105480:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0105483:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c0105487:	75 0a                	jne    c0105493 <mm_malloc+0x26f>
c0105489:	b8 00 00 00 00       	mov    eax,0x0
c010548e:	e9 8c 00 00 00       	jmp    c010551f <mm_malloc+0x2fb>
c0105493:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105496:	c1 e0 0c             	shl    eax,0xc
c0105499:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010549d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01054a4:	00 
c01054a5:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01054a8:	89 04 24             	mov    DWORD PTR [esp],eax
c01054ab:	e8 f4 20 00 00       	call   c01075a4 <memset>
c01054b0:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01054b3:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01054b9:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c01054bc:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01054bf:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01054c2:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01054c5:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
c01054cc:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01054cf:	8b 00                	mov    eax,DWORD PTR [eax]
c01054d1:	85 c0                	test   eax,eax
c01054d3:	75 18                	jne    c01054ed <mm_malloc+0x2c9>
c01054d5:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01054d8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01054db:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01054de:	39 c2                	cmp    edx,eax
c01054e0:	75 0b                	jne    c01054ed <mm_malloc+0x2c9>
c01054e2:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01054e5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01054e8:	83 f8 01             	cmp    eax,0x1
c01054eb:	74 2c                	je     c0105519 <mm_malloc+0x2f5>
c01054ed:	c7 44 24 10 a8 ba 10 	mov    DWORD PTR [esp+0x10],0xc010baa8
c01054f4:	c0 
c01054f5:	c7 44 24 0c 5d bb 10 	mov    DWORD PTR [esp+0xc],0xc010bb5d
c01054fc:	c0 
c01054fd:	c7 44 24 08 b7 00 00 	mov    DWORD PTR [esp+0x8],0xb7
c0105504:	00 
c0105505:	c7 44 24 04 9b ba 10 	mov    DWORD PTR [esp+0x4],0xc010ba9b
c010550c:	c0 
c010550d:	c7 04 24 9b ba 10 c0 	mov    DWORD PTR [esp],0xc010ba9b
c0105514:	e8 bb b4 ff ff       	call   c01009d4 <panic_spin>
c0105519:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010551c:	83 c0 0c             	add    eax,0xc
c010551f:	c9                   	leave  
c0105520:	c3                   	ret    

c0105521 <mm_free>:
c0105521:	55                   	push   ebp
c0105522:	89 e5                	mov    ebp,esp
c0105524:	83 ec 48             	sub    esp,0x48
c0105527:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c010552b:	0f 84 3f 01 00 00    	je     c0105670 <mm_free+0x14f>
c0105531:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105534:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105537:	85 c0                	test   eax,eax
c0105539:	75 09                	jne    c0105544 <mm_free+0x23>
c010553b:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0105542:	eb 07                	jmp    c010554b <mm_free+0x2a>
c0105544:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c010554b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010554e:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0105551:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105554:	89 04 24             	mov    DWORD PTR [esp],eax
c0105557:	e8 bb fc ff ff       	call   c0105217 <block2arena>
c010555c:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010555f:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105562:	8b 00                	mov    eax,DWORD PTR [eax]
c0105564:	85 c0                	test   eax,eax
c0105566:	75 2d                	jne    c0105595 <mm_free+0x74>
c0105568:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010556b:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010556e:	83 f8 01             	cmp    eax,0x1
c0105571:	75 22                	jne    c0105595 <mm_free+0x74>
c0105573:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105576:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105579:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010557d:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105580:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105584:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105587:	89 04 24             	mov    DWORD PTR [esp],eax
c010558a:	e8 bc d3 ff ff       	call   c010294b <page_free>
c010558f:	90                   	nop
c0105590:	e9 de 00 00 00       	jmp    c0105673 <mm_free+0x152>
c0105595:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105598:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c010559b:	8b 12                	mov    edx,DWORD PTR [edx]
c010559d:	83 c2 08             	add    edx,0x8
c01055a0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01055a4:	89 14 24             	mov    DWORD PTR [esp],edx
c01055a7:	e8 7b 19 00 00       	call   c0106f27 <list_append>
c01055ac:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01055af:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01055b2:	8d 50 01             	lea    edx,[eax+0x1]
c01055b5:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01055b8:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01055bb:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01055be:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01055c1:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01055c4:	8b 00                	mov    eax,DWORD PTR [eax]
c01055c6:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01055c9:	39 c2                	cmp    edx,eax
c01055cb:	0f 85 a2 00 00 00    	jne    c0105673 <mm_free+0x152>
c01055d1:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01055d8:	eb 6b                	jmp    c0105645 <mm_free+0x124>
c01055da:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01055dd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01055e1:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01055e4:	89 04 24             	mov    DWORD PTR [esp],eax
c01055e7:	e8 11 fc ff ff       	call   c01051fd <arena2block>
c01055ec:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01055ef:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01055f2:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01055f5:	8b 12                	mov    edx,DWORD PTR [edx]
c01055f7:	83 c2 08             	add    edx,0x8
c01055fa:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01055fe:	89 14 24             	mov    DWORD PTR [esp],edx
c0105601:	e8 93 19 00 00       	call   c0106f99 <list_find>
c0105606:	85 c0                	test   eax,eax
c0105608:	75 2c                	jne    c0105636 <mm_free+0x115>
c010560a:	c7 44 24 10 e0 ba 10 	mov    DWORD PTR [esp+0x10],0xc010bae0
c0105611:	c0 
c0105612:	c7 44 24 0c 55 bb 10 	mov    DWORD PTR [esp+0xc],0xc010bb55
c0105619:	c0 
c010561a:	c7 44 24 08 e3 00 00 	mov    DWORD PTR [esp+0x8],0xe3
c0105621:	00 
c0105622:	c7 44 24 04 9b ba 10 	mov    DWORD PTR [esp+0x4],0xc010ba9b
c0105629:	c0 
c010562a:	c7 04 24 9b ba 10 c0 	mov    DWORD PTR [esp],0xc010ba9b
c0105631:	e8 9e b3 ff ff       	call   c01009d4 <panic_spin>
c0105636:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105639:	89 04 24             	mov    DWORD PTR [esp],eax
c010563c:	e8 03 19 00 00       	call   c0106f44 <list_remove>
c0105641:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0105645:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0105648:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010564b:	8b 00                	mov    eax,DWORD PTR [eax]
c010564d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105650:	39 c2                	cmp    edx,eax
c0105652:	72 86                	jb     c01055da <mm_free+0xb9>
c0105654:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c010565b:	00 
c010565c:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010565f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105663:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105666:	89 04 24             	mov    DWORD PTR [esp],eax
c0105669:	e8 dd d2 ff ff       	call   c010294b <page_free>
c010566e:	eb 03                	jmp    c0105673 <mm_free+0x152>
c0105670:	90                   	nop
c0105671:	eb 01                	jmp    c0105674 <mm_free+0x153>
c0105673:	90                   	nop
c0105674:	c9                   	leave  
c0105675:	c3                   	ret    

c0105676 <mm_page_alloc>:
c0105676:	55                   	push   ebp
c0105677:	89 e5                	mov    ebp,esp
c0105679:	83 ec 38             	sub    esp,0x38
c010567c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010567f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105682:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0105686:	75 07                	jne    c010568f <mm_page_alloc+0x19>
c0105688:	b8 a0 23 11 c0       	mov    eax,0xc01123a0
c010568d:	eb 05                	jmp    c0105694 <mm_page_alloc+0x1e>
c010568f:	b8 a0 e4 10 c0       	mov    eax,0xc010e4a0
c0105694:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0105697:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c010569b:	74 08                	je     c01056a5 <mm_page_alloc+0x2f>
c010569d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01056a0:	83 c0 40             	add    eax,0x40
c01056a3:	eb 05                	jmp    c01056aa <mm_page_alloc+0x34>
c01056a5:	b8 e0 e4 10 c0       	mov    eax,0xc010e4e0
c01056aa:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01056ad:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01056b0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01056b4:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01056b7:	89 04 24             	mov    DWORD PTR [esp],eax
c01056ba:	e8 85 ca ff ff       	call   c0102144 <pgman_alloc>
c01056bf:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01056c2:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c01056c6:	75 07                	jne    c01056cf <mm_page_alloc+0x59>
c01056c8:	b8 00 00 00 00       	mov    eax,0x0
c01056cd:	eb 58                	jmp    c0105727 <mm_page_alloc+0xb1>
c01056cf:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01056d2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01056d5:	eb 47                	jmp    c010571e <mm_page_alloc+0xa8>
c01056d7:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01056db:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01056e2:	00 
c01056e3:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01056e6:	89 04 24             	mov    DWORD PTR [esp],eax
c01056e9:	e8 56 ca ff ff       	call   c0102144 <pgman_alloc>
c01056ee:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01056f1:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01056f5:	75 07                	jne    c01056fe <mm_page_alloc+0x88>
c01056f7:	b8 00 00 00 00       	mov    eax,0x0
c01056fc:	eb 29                	jmp    c0105727 <mm_page_alloc+0xb1>
c01056fe:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105701:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0105704:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0105708:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c010570b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010570f:	89 04 24             	mov    DWORD PTR [esp],eax
c0105712:	e8 12 00 00 00       	call   c0105729 <mm_page_table_add>
c0105717:	81 45 f4 00 10 00 00 	add    DWORD PTR [ebp-0xc],0x1000
c010571e:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0105722:	75 b3                	jne    c01056d7 <mm_page_alloc+0x61>
c0105724:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105727:	c9                   	leave  
c0105728:	c3                   	ret    

c0105729 <mm_page_table_add>:
c0105729:	55                   	push   ebp
c010572a:	89 e5                	mov    ebp,esp
c010572c:	83 ec 58             	sub    esp,0x58
c010572f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105732:	89 04 24             	mov    DWORD PTR [esp],eax
c0105735:	e8 a3 c9 ff ff       	call   c01020dd <pde_ptr>
c010573a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010573d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105740:	89 04 24             	mov    DWORD PTR [esp],eax
c0105743:	e8 a8 c9 ff ff       	call   c01020f0 <pte_ptr>
c0105748:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010574b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010574e:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0105751:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105754:	8b 00                	mov    eax,DWORD PTR [eax]
c0105756:	83 e0 01             	and    eax,0x1
c0105759:	84 c0                	test   al,al
c010575b:	74 51                	je     c01057ae <mm_page_table_add+0x85>
c010575d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105760:	8b 00                	mov    eax,DWORD PTR [eax]
c0105762:	83 e0 01             	and    eax,0x1
c0105765:	85 c0                	test   eax,eax
c0105767:	75 12                	jne    c010577b <mm_page_table_add+0x52>
c0105769:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010576c:	89 c2                	mov    edx,eax
c010576e:	83 ca 07             	or     edx,0x7
c0105771:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105774:	89 10                	mov    DWORD PTR [eax],edx
c0105776:	e9 bc 00 00 00       	jmp    c0105837 <mm_page_table_add+0x10e>
c010577b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010577e:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0105782:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105785:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105789:	c7 44 24 04 0c bb 10 	mov    DWORD PTR [esp+0x4],0xc010bb0c
c0105790:	c0 
c0105791:	8d 45 c9             	lea    eax,[ebp-0x37]
c0105794:	89 04 24             	mov    DWORD PTR [esp],eax
c0105797:	e8 e4 1f 00 00       	call   c0107780 <sprintf>
c010579c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010579f:	89 c2                	mov    edx,eax
c01057a1:	83 ca 07             	or     edx,0x7
c01057a4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01057a7:	89 10                	mov    DWORD PTR [eax],edx
c01057a9:	e9 89 00 00 00       	jmp    c0105837 <mm_page_table_add+0x10e>
c01057ae:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01057b5:	00 
c01057b6:	c7 04 24 a0 23 11 c0 	mov    DWORD PTR [esp],0xc01123a0
c01057bd:	e8 82 c9 ff ff       	call   c0102144 <pgman_alloc>
c01057c2:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01057c5:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01057c8:	89 c2                	mov    edx,eax
c01057ca:	83 ca 07             	or     edx,0x7
c01057cd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01057d0:	89 10                	mov    DWORD PTR [eax],edx
c01057d2:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01057d5:	25 00 f0 ff ff       	and    eax,0xfffff000
c01057da:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c01057e1:	00 
c01057e2:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01057e9:	00 
c01057ea:	89 04 24             	mov    DWORD PTR [esp],eax
c01057ed:	e8 b2 1d 00 00       	call   c01075a4 <memset>
c01057f2:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01057f5:	8b 00                	mov    eax,DWORD PTR [eax]
c01057f7:	83 e0 01             	and    eax,0x1
c01057fa:	85 c0                	test   eax,eax
c01057fc:	74 2c                	je     c010582a <mm_page_table_add+0x101>
c01057fe:	c7 44 24 10 2e bb 10 	mov    DWORD PTR [esp+0x10],0xc010bb2e
c0105805:	c0 
c0105806:	c7 44 24 0c 43 bb 10 	mov    DWORD PTR [esp+0xc],0xc010bb43
c010580d:	c0 
c010580e:	c7 44 24 08 23 01 00 	mov    DWORD PTR [esp+0x8],0x123
c0105815:	00 
c0105816:	c7 44 24 04 9b ba 10 	mov    DWORD PTR [esp+0x4],0xc010ba9b
c010581d:	c0 
c010581e:	c7 04 24 9b ba 10 c0 	mov    DWORD PTR [esp],0xc010ba9b
c0105825:	e8 aa b1 ff ff       	call   c01009d4 <panic_spin>
c010582a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010582d:	89 c2                	mov    edx,eax
c010582f:	83 ca 07             	or     edx,0x7
c0105832:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105835:	89 10                	mov    DWORD PTR [eax],edx
c0105837:	c9                   	leave  
c0105838:	c3                   	ret    
c0105839:	00 00                	add    BYTE PTR [eax],al
	...

c010583c <VIEW_task>:
c010583c:	55                   	push   ebp
c010583d:	89 e5                	mov    ebp,esp
c010583f:	56                   	push   esi
c0105840:	53                   	push   ebx
c0105841:	81 ec f0 00 00 00    	sub    esp,0xf0
c0105847:	e8 aa bf ff ff       	call   c01017f6 <intr_disable>
c010584c:	e8 a6 d7 ff ff       	call   c0102ff7 <running_thread>
c0105851:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105854:	a3 74 24 11 c0       	mov    ds:0xc0112474,eax
c0105859:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c010585e:	8b 00                	mov    eax,DWORD PTR [eax]
c0105860:	89 c2                	mov    edx,eax
c0105862:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105867:	8b 00                	mov    eax,DWORD PTR [eax]
c0105869:	c7 44 24 10 00 04 00 	mov    DWORD PTR [esp+0x10],0x400
c0105870:	00 
c0105871:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0105875:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105879:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0xe0000000
c0105880:	e0 
c0105881:	8d 85 30 ff ff ff    	lea    eax,[ebp-0xd0]
c0105887:	89 04 24             	mov    DWORD PTR [esp],eax
c010588a:	e8 ae 03 00 00       	call   c0105c3d <VIEWctl_init>
c010588f:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105894:	8b 10                	mov    edx,DWORD PTR [eax]
c0105896:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c010589b:	8b 00                	mov    eax,DWORD PTR [eax]
c010589d:	0f af c2             	imul   eax,edx
c01058a0:	c1 e0 02             	shl    eax,0x2
c01058a3:	89 04 24             	mov    DWORD PTR [esp],eax
c01058a6:	e8 3d c0 ff ff       	call   c01018e8 <kmalloc>
c01058ab:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01058ae:	e8 44 d7 ff ff       	call   c0102ff7 <running_thread>
c01058b3:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
c01058b6:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01058bb:	8b 00                	mov    eax,DWORD PTR [eax]
c01058bd:	89 c2                	mov    edx,eax
c01058bf:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01058c4:	8b 00                	mov    eax,DWORD PTR [eax]
c01058c6:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c01058ca:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01058cd:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c01058d1:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01058d5:	89 04 24             	mov    DWORD PTR [esp],eax
c01058d8:	e8 c4 03 00 00       	call   c0105ca1 <VIEWblock_init>
c01058dd:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01058e0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01058e3:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01058e6:	83 e8 01             	sub    eax,0x1
c01058e9:	89 c6                	mov    esi,eax
c01058eb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01058ee:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01058f1:	83 e8 01             	sub    eax,0x1
c01058f4:	89 c3                	mov    ebx,eax
c01058f6:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c01058fd:	00 
c01058fe:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0105905:	00 
c0105906:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c010590d:	e8 72 21 00 00       	call   c0107a84 <rgb>
c0105912:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0105915:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c0105918:	89 d1                	mov    ecx,edx
c010591a:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010591d:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0105920:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c0105924:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0105928:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c010592f:	00 
c0105930:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0105937:	00 
c0105938:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010593c:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0105940:	89 14 24             	mov    DWORD PTR [esp],edx
c0105943:	e8 04 23 00 00       	call   c0107c4c <viewFill>
c0105948:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010594b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010594f:	8d 85 30 ff ff ff    	lea    eax,[ebp-0xd0]
c0105955:	89 04 24             	mov    DWORD PTR [esp],eax
c0105958:	e8 07 04 00 00       	call   c0105d64 <VIEWInsert>
c010595d:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0105964:	00 
c0105965:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c010596c:	00 
c010596d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105970:	89 04 24             	mov    DWORD PTR [esp],eax
c0105973:	e8 2b 08 00 00       	call   c01061a3 <VIEWSlide>
c0105978:	8d 45 b8             	lea    eax,[ebp-0x48]
c010597b:	89 04 24             	mov    DWORD PTR [esp],eax
c010597e:	e8 e5 ef ff ff       	call   c0104968 <resetmsg>
c0105983:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
c010598a:	8d 45 b8             	lea    eax,[ebp-0x48]
c010598d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105991:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105998:	00 
c0105999:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01059a0:	e8 97 ef ff ff       	call   c010493c <send_recv>
c01059a5:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
c01059a8:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01059ab:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c01059ae:	83 f8 03             	cmp    eax,0x3
c01059b1:	0f 84 dc 00 00 00    	je     c0105a93 <VIEW_task+0x257>
c01059b7:	83 f8 03             	cmp    eax,0x3
c01059ba:	77 0a                	ja     c01059c6 <VIEW_task+0x18a>
c01059bc:	83 f8 01             	cmp    eax,0x1
c01059bf:	74 1c                	je     c01059dd <VIEW_task+0x1a1>
c01059c1:	e9 71 02 00 00       	jmp    c0105c37 <VIEW_task+0x3fb>
c01059c6:	83 f8 04             	cmp    eax,0x4
c01059c9:	0f 84 66 01 00 00    	je     c0105b35 <VIEW_task+0x2f9>
c01059cf:	83 f8 05             	cmp    eax,0x5
c01059d2:	0f 84 e4 01 00 00    	je     c0105bbc <VIEW_task+0x380>
c01059d8:	e9 5a 02 00 00       	jmp    c0105c37 <VIEW_task+0x3fb>
c01059dd:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c01059e0:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c01059e6:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c01059e9:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c01059ef:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c01059f2:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c01059f8:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c01059fb:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0105a01:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0105a04:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c0105a07:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105a0a:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0105a0d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105a10:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0105a13:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0105a16:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c0105a19:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105a1c:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0105a1f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105a22:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c0105a25:	8b 4d 90             	mov    ecx,DWORD PTR [ebp-0x70]
c0105a28:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
c0105a2e:	89 c2                	mov    edx,eax
c0105a30:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c0105a36:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
c0105a39:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0105a3d:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0105a41:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105a45:	89 04 24             	mov    DWORD PTR [esp],eax
c0105a48:	e8 54 02 00 00       	call   c0105ca1 <VIEWblock_init>
c0105a4d:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0105a50:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105a53:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0105a56:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0105a59:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105a5c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105a60:	8d 85 30 ff ff ff    	lea    eax,[ebp-0xd0]
c0105a66:	89 04 24             	mov    DWORD PTR [esp],eax
c0105a69:	e8 f6 02 00 00       	call   c0105d64 <VIEWInsert>
c0105a6e:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105a71:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
c0105a74:	8d 45 b8             	lea    eax,[ebp-0x48]
c0105a77:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105a7b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105a7e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105a82:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0105a89:	e8 ae ee ff ff       	call   c010493c <send_recv>
c0105a8e:	e9 a5 01 00 00       	jmp    c0105c38 <VIEW_task+0x3fc>
c0105a93:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0105a96:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c0105a9c:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0105a9f:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c0105aa5:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0105aa8:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c0105aae:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0105ab1:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0105ab7:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0105aba:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c0105abd:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105ac0:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0105ac3:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105ac6:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0105ac9:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0105acc:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c0105acf:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105ad2:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0105ad5:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105ad8:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c0105adb:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
c0105ae1:	89 c6                	mov    esi,eax
c0105ae3:	8b 85 78 ff ff ff    	mov    eax,DWORD PTR [ebp-0x88]
c0105ae9:	89 c3                	mov    ebx,eax
c0105aeb:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
c0105af1:	89 c1                	mov    ecx,eax
c0105af3:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c0105af9:	89 c2                	mov    edx,eax
c0105afb:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c0105afe:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0105b02:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0105b06:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0105b0a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105b0e:	89 04 24             	mov    DWORD PTR [esp],eax
c0105b11:	e8 1d 08 00 00       	call   c0106333 <VIEW_reflush>
c0105b16:	8d 45 b8             	lea    eax,[ebp-0x48]
c0105b19:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105b1d:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105b20:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105b24:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0105b2b:	e8 0c ee ff ff       	call   c010493c <send_recv>
c0105b30:	e9 03 01 00 00       	jmp    c0105c38 <VIEW_task+0x3fc>
c0105b35:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0105b38:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c0105b3e:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0105b41:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c0105b47:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0105b4a:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c0105b50:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0105b53:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0105b59:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0105b5c:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c0105b5f:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105b62:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0105b65:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105b68:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0105b6b:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0105b6e:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c0105b71:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105b74:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0105b77:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105b7a:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c0105b7d:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
c0105b83:	89 c1                	mov    ecx,eax
c0105b85:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c0105b8b:	89 c2                	mov    edx,eax
c0105b8d:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c0105b90:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0105b94:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105b98:	89 04 24             	mov    DWORD PTR [esp],eax
c0105b9b:	e8 03 06 00 00       	call   c01061a3 <VIEWSlide>
c0105ba0:	8d 45 b8             	lea    eax,[ebp-0x48]
c0105ba3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105ba7:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105baa:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105bae:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0105bb5:	e8 82 ed ff ff       	call   c010493c <send_recv>
c0105bba:	eb 7c                	jmp    c0105c38 <VIEW_task+0x3fc>
c0105bbc:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0105bbf:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c0105bc5:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0105bc8:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c0105bce:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0105bd1:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c0105bd7:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0105bda:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0105be0:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0105be3:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c0105be6:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105be9:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0105bec:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105bef:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0105bf2:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0105bf5:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c0105bf8:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105bfb:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0105bfe:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105c01:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c0105c04:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c0105c0a:	89 c2                	mov    edx,eax
c0105c0c:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c0105c0f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105c13:	89 04 24             	mov    DWORD PTR [esp],eax
c0105c16:	e8 de 02 00 00       	call   c0105ef9 <VIEWUpdown>
c0105c1b:	8d 45 b8             	lea    eax,[ebp-0x48]
c0105c1e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105c22:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105c25:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105c29:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0105c30:	e8 07 ed ff ff       	call   c010493c <send_recv>
c0105c35:	eb 00                	jmp    c0105c37 <VIEW_task+0x3fb>
c0105c37:	90                   	nop
c0105c38:	e9 3b fd ff ff       	jmp    c0105978 <VIEW_task+0x13c>

c0105c3d <VIEWctl_init>:
c0105c3d:	55                   	push   ebp
c0105c3e:	89 e5                	mov    ebp,esp
c0105c40:	83 ec 18             	sub    esp,0x18
c0105c43:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0105c46:	c1 e0 02             	shl    eax,0x2
c0105c49:	89 04 24             	mov    DWORD PTR [esp],eax
c0105c4c:	e8 97 bc ff ff       	call   c01018e8 <kmalloc>
c0105c51:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105c54:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
c0105c57:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c5a:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0105c5d:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c0105c60:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c63:	c7 40 2c 00 00 00 00 	mov    DWORD PTR [eax+0x2c],0x0
c0105c6a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c6d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0105c70:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c0105c73:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c76:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0105c79:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0105c7c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c7f:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0105c82:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0105c85:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0105c88:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0105c8b:	0f af c2             	imul   eax,edx
c0105c8e:	c1 e0 02             	shl    eax,0x2
c0105c91:	89 04 24             	mov    DWORD PTR [esp],eax
c0105c94:	e8 4f bc ff ff       	call   c01018e8 <kmalloc>
c0105c99:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105c9c:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
c0105c9f:	c9                   	leave  
c0105ca0:	c3                   	ret    

c0105ca1 <VIEWblock_init>:
c0105ca1:	55                   	push   ebp
c0105ca2:	89 e5                	mov    ebp,esp
c0105ca4:	83 ec 28             	sub    esp,0x28
c0105ca7:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0105cae:	e8 35 bc ff ff       	call   c01018e8 <kmalloc>
c0105cb3:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105cb6:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0105cba:	75 07                	jne    c0105cc3 <VIEWblock_init+0x22>
c0105cbc:	b8 00 00 00 00       	mov    eax,0x0
c0105cc1:	eb 6a                	jmp    c0105d2d <VIEWblock_init+0x8c>
c0105cc3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105cc6:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0105cc9:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0105ccc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105ccf:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105cd2:	85 c0                	test   eax,eax
c0105cd4:	75 12                	jne    c0105ce8 <VIEWblock_init+0x47>
c0105cd6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105cd9:	89 04 24             	mov    DWORD PTR [esp],eax
c0105cdc:	e8 43 bf ff ff       	call   c0101c24 <kfree>
c0105ce1:	b8 00 00 00 00       	mov    eax,0x0
c0105ce6:	eb 45                	jmp    c0105d2d <VIEWblock_init+0x8c>
c0105ce8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105ceb:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0105cf1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105cf4:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0105cfb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105cfe:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c0105d05:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105d08:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0105d0f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105d12:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105d15:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c0105d18:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0105d1b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105d1e:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c0105d21:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105d24:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0105d27:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0105d2a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105d2d:	c9                   	leave  
c0105d2e:	c3                   	ret    

c0105d2f <VIEW_free>:
c0105d2f:	55                   	push   ebp
c0105d30:	89 e5                	mov    ebp,esp
c0105d32:	83 ec 18             	sub    esp,0x18
c0105d35:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d38:	8b 00                	mov    eax,DWORD PTR [eax]
c0105d3a:	85 c0                	test   eax,eax
c0105d3c:	74 0b                	je     c0105d49 <VIEW_free+0x1a>
c0105d3e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d41:	89 04 24             	mov    DWORD PTR [esp],eax
c0105d44:	e8 6c 00 00 00       	call   c0105db5 <VIEWRemove>
c0105d49:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d4c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105d4f:	89 04 24             	mov    DWORD PTR [esp],eax
c0105d52:	e8 cd be ff ff       	call   c0101c24 <kfree>
c0105d57:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d5a:	89 04 24             	mov    DWORD PTR [esp],eax
c0105d5d:	e8 c2 be ff ff       	call   c0101c24 <kfree>
c0105d62:	c9                   	leave  
c0105d63:	c3                   	ret    

c0105d64 <VIEWInsert>:
c0105d64:	55                   	push   ebp
c0105d65:	89 e5                	mov    ebp,esp
c0105d67:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d6a:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105d6d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d70:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c0105d73:	83 e8 01             	sub    eax,0x1
c0105d76:	39 c2                	cmp    edx,eax
c0105d78:	7f 39                	jg     c0105db3 <VIEWInsert+0x4f>
c0105d7a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105d7d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105d80:	89 10                	mov    DWORD PTR [eax],edx
c0105d82:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d85:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
c0105d88:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d8b:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0105d8e:	c1 e0 02             	shl    eax,0x2
c0105d91:	01 c2                	add    edx,eax
c0105d93:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105d96:	89 02                	mov    DWORD PTR [edx],eax
c0105d98:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105d9b:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105d9e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105da1:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0105da4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105da7:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0105daa:	8d 50 01             	lea    edx,[eax+0x1]
c0105dad:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105db0:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0105db3:	5d                   	pop    ebp
c0105db4:	c3                   	ret    

c0105db5 <VIEWRemove>:
c0105db5:	55                   	push   ebp
c0105db6:	89 e5                	mov    ebp,esp
c0105db8:	57                   	push   edi
c0105db9:	56                   	push   esi
c0105dba:	53                   	push   ebx
c0105dbb:	83 ec 3c             	sub    esp,0x3c
c0105dbe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105dc1:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0105dc4:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0105dc7:	eb 43                	jmp    c0105e0c <VIEWRemove+0x57>
c0105dc9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105dcc:	8b 00                	mov    eax,DWORD PTR [eax]
c0105dce:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105dd1:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0105dd4:	c1 e2 02             	shl    edx,0x2
c0105dd7:	01 c2                	add    edx,eax
c0105dd9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ddc:	8b 00                	mov    eax,DWORD PTR [eax]
c0105dde:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105de1:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c0105de4:	83 e9 01             	sub    ecx,0x1
c0105de7:	c1 e1 02             	shl    ecx,0x2
c0105dea:	01 c8                	add    eax,ecx
c0105dec:	8b 00                	mov    eax,DWORD PTR [eax]
c0105dee:	89 02                	mov    DWORD PTR [edx],eax
c0105df0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105df3:	8b 00                	mov    eax,DWORD PTR [eax]
c0105df5:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105df8:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0105dfb:	c1 e2 02             	shl    edx,0x2
c0105dfe:	01 d0                	add    eax,edx
c0105e00:	8b 00                	mov    eax,DWORD PTR [eax]
c0105e02:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0105e05:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0105e08:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0105e0c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e0f:	8b 00                	mov    eax,DWORD PTR [eax]
c0105e11:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0105e14:	83 e8 01             	sub    eax,0x1
c0105e17:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c0105e1a:	7f ad                	jg     c0105dc9 <VIEWRemove+0x14>
c0105e1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e1f:	8b 00                	mov    eax,DWORD PTR [eax]
c0105e21:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105e24:	83 ea 01             	sub    edx,0x1
c0105e27:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0105e2a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e2d:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0105e30:	89 c2                	mov    edx,eax
c0105e32:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e35:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0105e38:	01 d0                	add    eax,edx
c0105e3a:	89 c6                	mov    esi,eax
c0105e3c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e3f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0105e42:	89 c2                	mov    edx,eax
c0105e44:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e47:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0105e4a:	01 d0                	add    eax,edx
c0105e4c:	89 c3                	mov    ebx,eax
c0105e4e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e51:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c0105e54:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e57:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0105e5a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e5d:	8b 00                	mov    eax,DWORD PTR [eax]
c0105e5f:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0105e66:	00 
c0105e67:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0105e6b:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0105e6f:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0105e73:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105e77:	89 04 24             	mov    DWORD PTR [esp],eax
c0105e7a:	e8 03 07 00 00       	call   c0106582 <VIEW_reflushmap>
c0105e7f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e82:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c0105e85:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e88:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0105e8b:	89 c2                	mov    edx,eax
c0105e8d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e90:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0105e93:	01 d0                	add    eax,edx
c0105e95:	89 c6                	mov    esi,eax
c0105e97:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e9a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0105e9d:	89 c2                	mov    edx,eax
c0105e9f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ea2:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0105ea5:	01 d0                	add    eax,edx
c0105ea7:	89 c3                	mov    ebx,eax
c0105ea9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105eac:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c0105eaf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105eb2:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0105eb5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105eb8:	8b 00                	mov    eax,DWORD PTR [eax]
c0105eba:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0105ebe:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0105ec5:	00 
c0105ec6:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0105eca:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0105ece:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0105ed2:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105ed6:	89 04 24             	mov    DWORD PTR [esp],eax
c0105ed9:	e8 cf 04 00 00       	call   c01063ad <VIEW_reflushsub>
c0105ede:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ee1:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0105ee8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105eeb:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0105ef1:	83 c4 3c             	add    esp,0x3c
c0105ef4:	5b                   	pop    ebx
c0105ef5:	5e                   	pop    esi
c0105ef6:	5f                   	pop    edi
c0105ef7:	5d                   	pop    ebp
c0105ef8:	c3                   	ret    

c0105ef9 <VIEWUpdown>:
c0105ef9:	55                   	push   ebp
c0105efa:	89 e5                	mov    ebp,esp
c0105efc:	57                   	push   edi
c0105efd:	56                   	push   esi
c0105efe:	53                   	push   ebx
c0105eff:	83 ec 3c             	sub    esp,0x3c
c0105f02:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105f05:	8b 00                	mov    eax,DWORD PTR [eax]
c0105f07:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0105f0a:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c0105f0e:	0f 84 83 02 00 00    	je     c0106197 <VIEWUpdown+0x29e>
c0105f14:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105f17:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0105f1a:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0105f1d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105f20:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0105f23:	83 e8 01             	sub    eax,0x1
c0105f26:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0105f29:	7d 0c                	jge    c0105f37 <VIEWUpdown+0x3e>
c0105f2b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105f2e:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0105f31:	83 e8 01             	sub    eax,0x1
c0105f34:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
c0105f37:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0105f3b:	79 07                	jns    c0105f44 <VIEWUpdown+0x4b>
c0105f3d:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c0105f44:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105f47:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0105f4a:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0105f4d:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0105f50:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0105f53:	0f 8e 1c 01 00 00    	jle    c0106075 <VIEWUpdown+0x17c>
c0105f59:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0105f5c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0105f5f:	eb 3d                	jmp    c0105f9e <VIEWUpdown+0xa5>
c0105f61:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105f64:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105f67:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0105f6a:	c1 e2 02             	shl    edx,0x2
c0105f6d:	01 c2                	add    edx,eax
c0105f6f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105f72:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105f75:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c0105f78:	83 e9 01             	sub    ecx,0x1
c0105f7b:	c1 e1 02             	shl    ecx,0x2
c0105f7e:	01 c8                	add    eax,ecx
c0105f80:	8b 00                	mov    eax,DWORD PTR [eax]
c0105f82:	89 02                	mov    DWORD PTR [edx],eax
c0105f84:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105f87:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105f8a:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0105f8d:	c1 e2 02             	shl    edx,0x2
c0105f90:	01 d0                	add    eax,edx
c0105f92:	8b 00                	mov    eax,DWORD PTR [eax]
c0105f94:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0105f97:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0105f9a:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c0105f9e:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105fa1:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0105fa4:	7f bb                	jg     c0105f61 <VIEWUpdown+0x68>
c0105fa6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105fa9:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105fac:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0105faf:	c1 e2 02             	shl    edx,0x2
c0105fb2:	01 c2                	add    edx,eax
c0105fb4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fb7:	89 02                	mov    DWORD PTR [edx],eax
c0105fb9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fbc:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0105fbf:	8d 70 01             	lea    esi,[eax+0x1]
c0105fc2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fc5:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0105fc8:	89 c2                	mov    edx,eax
c0105fca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fcd:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0105fd0:	01 d0                	add    eax,edx
c0105fd2:	89 c3                	mov    ebx,eax
c0105fd4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fd7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0105fda:	89 c2                	mov    edx,eax
c0105fdc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fdf:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0105fe2:	01 d0                	add    eax,edx
c0105fe4:	89 c1                	mov    ecx,eax
c0105fe6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fe9:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0105fec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fef:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0105ff2:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0105ff6:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0105ffa:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0105ffe:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106002:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106006:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106009:	89 04 24             	mov    DWORD PTR [esp],eax
c010600c:	e8 71 05 00 00       	call   c0106582 <VIEW_reflushmap>
c0106011:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106014:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106017:	8d 78 01             	lea    edi,[eax+0x1]
c010601a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010601d:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106020:	89 c2                	mov    edx,eax
c0106022:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106025:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106028:	01 d0                	add    eax,edx
c010602a:	89 c3                	mov    ebx,eax
c010602c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010602f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106032:	89 c2                	mov    edx,eax
c0106034:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106037:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010603a:	01 d0                	add    eax,edx
c010603c:	89 c1                	mov    ecx,eax
c010603e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106041:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0106044:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106047:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c010604a:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
c010604d:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c0106051:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106055:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106059:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c010605d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106061:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106065:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106068:	89 04 24             	mov    DWORD PTR [esp],eax
c010606b:	e8 3d 03 00 00       	call   c01063ad <VIEW_reflushsub>
c0106070:	e9 25 01 00 00       	jmp    c010619a <VIEWUpdown+0x2a1>
c0106075:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106078:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c010607b:	0f 8d 19 01 00 00    	jge    c010619a <VIEWUpdown+0x2a1>
c0106081:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106084:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106087:	eb 3d                	jmp    c01060c6 <VIEWUpdown+0x1cd>
c0106089:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010608c:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010608f:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106092:	c1 e2 02             	shl    edx,0x2
c0106095:	01 c2                	add    edx,eax
c0106097:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010609a:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010609d:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c01060a0:	83 c1 01             	add    ecx,0x1
c01060a3:	c1 e1 02             	shl    ecx,0x2
c01060a6:	01 c8                	add    eax,ecx
c01060a8:	8b 00                	mov    eax,DWORD PTR [eax]
c01060aa:	89 02                	mov    DWORD PTR [edx],eax
c01060ac:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01060af:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01060b2:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01060b5:	c1 e2 02             	shl    edx,0x2
c01060b8:	01 d0                	add    eax,edx
c01060ba:	8b 00                	mov    eax,DWORD PTR [eax]
c01060bc:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01060bf:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01060c2:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c01060c6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01060c9:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c01060cc:	7c bb                	jl     c0106089 <VIEWUpdown+0x190>
c01060ce:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01060d1:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01060d4:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01060d7:	c1 e2 02             	shl    edx,0x2
c01060da:	01 c2                	add    edx,eax
c01060dc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01060df:	89 02                	mov    DWORD PTR [edx],eax
c01060e1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01060e4:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c01060e7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01060ea:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01060ed:	89 c2                	mov    edx,eax
c01060ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01060f2:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01060f5:	01 d0                	add    eax,edx
c01060f7:	89 c3                	mov    ebx,eax
c01060f9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01060fc:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01060ff:	89 c2                	mov    edx,eax
c0106101:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106104:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106107:	01 d0                	add    eax,edx
c0106109:	89 c1                	mov    ecx,eax
c010610b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010610e:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0106111:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106114:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106117:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c010611b:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c010611f:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106123:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106127:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010612b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010612e:	89 04 24             	mov    DWORD PTR [esp],eax
c0106131:	e8 4c 04 00 00       	call   c0106582 <VIEW_reflushmap>
c0106136:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106139:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c010613c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010613f:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c0106142:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106145:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106148:	89 c2                	mov    edx,eax
c010614a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010614d:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106150:	01 d0                	add    eax,edx
c0106152:	89 c3                	mov    ebx,eax
c0106154:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106157:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c010615a:	89 c2                	mov    edx,eax
c010615c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010615f:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106162:	01 d0                	add    eax,edx
c0106164:	89 c1                	mov    ecx,eax
c0106166:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106169:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c010616c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010616f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106172:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0106176:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c010617a:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c010617e:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106182:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106186:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010618a:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010618d:	89 04 24             	mov    DWORD PTR [esp],eax
c0106190:	e8 18 02 00 00       	call   c01063ad <VIEW_reflushsub>
c0106195:	eb 03                	jmp    c010619a <VIEWUpdown+0x2a1>
c0106197:	90                   	nop
c0106198:	eb 01                	jmp    c010619b <VIEWUpdown+0x2a2>
c010619a:	90                   	nop
c010619b:	83 c4 3c             	add    esp,0x3c
c010619e:	5b                   	pop    ebx
c010619f:	5e                   	pop    esi
c01061a0:	5f                   	pop    edi
c01061a1:	5d                   	pop    ebp
c01061a2:	c3                   	ret    

c01061a3 <VIEWSlide>:
c01061a3:	55                   	push   ebp
c01061a4:	89 e5                	mov    ebp,esp
c01061a6:	57                   	push   edi
c01061a7:	56                   	push   esi
c01061a8:	53                   	push   ebx
c01061a9:	83 ec 4c             	sub    esp,0x4c
c01061ac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061af:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01061b2:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01061b5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061b8:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01061bb:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01061be:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061c1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01061c4:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c01061c7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061ca:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01061cd:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c01061d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061d3:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
c01061d6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01061d9:	01 d0                	add    eax,edx
c01061db:	89 c1                	mov    ecx,eax
c01061dd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061e0:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c01061e3:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01061e6:	01 d0                	add    eax,edx
c01061e8:	89 c2                	mov    edx,eax
c01061ea:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061ed:	8b 00                	mov    eax,DWORD PTR [eax]
c01061ef:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c01061f6:	00 
c01061f7:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c01061fb:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01061ff:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106202:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106206:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106209:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010620d:	89 04 24             	mov    DWORD PTR [esp],eax
c0106210:	e8 6d 03 00 00       	call   c0106582 <VIEW_reflushmap>
c0106215:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106218:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c010621b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010621e:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106221:	89 c2                	mov    edx,eax
c0106223:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106226:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106229:	01 d0                	add    eax,edx
c010622b:	89 c6                	mov    esi,eax
c010622d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106230:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106233:	89 c2                	mov    edx,eax
c0106235:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106238:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010623b:	01 d0                	add    eax,edx
c010623d:	89 c3                	mov    ebx,eax
c010623f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106242:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c0106245:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106248:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c010624b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010624e:	8b 00                	mov    eax,DWORD PTR [eax]
c0106250:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106254:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106258:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c010625c:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106260:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106264:	89 04 24             	mov    DWORD PTR [esp],eax
c0106267:	e8 16 03 00 00       	call   c0106582 <VIEW_reflushmap>
c010626c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010626f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106272:	8d 58 ff             	lea    ebx,[eax-0x1]
c0106275:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106278:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
c010627b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010627e:	01 d0                	add    eax,edx
c0106280:	89 c1                	mov    ecx,eax
c0106282:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106285:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c0106288:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010628b:	01 d0                	add    eax,edx
c010628d:	89 c2                	mov    edx,eax
c010628f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106292:	8b 00                	mov    eax,DWORD PTR [eax]
c0106294:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
c0106298:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c010629f:	00 
c01062a0:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c01062a4:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01062a8:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01062ab:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01062af:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01062b2:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01062b6:	89 04 24             	mov    DWORD PTR [esp],eax
c01062b9:	e8 ef 00 00 00       	call   c01063ad <VIEW_reflushsub>
c01062be:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062c1:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c01062c4:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c01062c7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062ca:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c01062cd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062d0:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01062d3:	89 c2                	mov    edx,eax
c01062d5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062d8:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01062db:	01 d0                	add    eax,edx
c01062dd:	89 c6                	mov    esi,eax
c01062df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062e2:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01062e5:	89 c2                	mov    edx,eax
c01062e7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062ea:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01062ed:	01 d0                	add    eax,edx
c01062ef:	89 c3                	mov    ebx,eax
c01062f1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062f4:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c01062f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062fa:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c01062fd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106300:	8b 00                	mov    eax,DWORD PTR [eax]
c0106302:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0106305:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0106308:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c010630c:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106310:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106314:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106318:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010631c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106320:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0106323:	89 04 24             	mov    DWORD PTR [esp],eax
c0106326:	e8 82 00 00 00       	call   c01063ad <VIEW_reflushsub>
c010632b:	83 c4 4c             	add    esp,0x4c
c010632e:	5b                   	pop    ebx
c010632f:	5e                   	pop    esi
c0106330:	5f                   	pop    edi
c0106331:	5d                   	pop    ebp
c0106332:	c3                   	ret    

c0106333 <VIEW_reflush>:
c0106333:	55                   	push   ebp
c0106334:	89 e5                	mov    ebp,esp
c0106336:	57                   	push   edi
c0106337:	56                   	push   esi
c0106338:	53                   	push   ebx
c0106339:	83 ec 3c             	sub    esp,0x3c
c010633c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010633f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106342:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106345:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106348:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c010634b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010634e:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106351:	89 c6                	mov    esi,eax
c0106353:	03 75 18             	add    esi,DWORD PTR [ebp+0x18]
c0106356:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106359:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c010635c:	89 c3                	mov    ebx,eax
c010635e:	03 5d 14             	add    ebx,DWORD PTR [ebp+0x14]
c0106361:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106364:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106367:	89 c1                	mov    ecx,eax
c0106369:	03 4d 10             	add    ecx,DWORD PTR [ebp+0x10]
c010636c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010636f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106372:	89 c2                	mov    edx,eax
c0106374:	03 55 0c             	add    edx,DWORD PTR [ebp+0xc]
c0106377:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010637a:	8b 00                	mov    eax,DWORD PTR [eax]
c010637c:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c010637f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106382:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0106386:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c010638a:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c010638e:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106392:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106396:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010639a:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010639d:	89 04 24             	mov    DWORD PTR [esp],eax
c01063a0:	e8 08 00 00 00       	call   c01063ad <VIEW_reflushsub>
c01063a5:	83 c4 3c             	add    esp,0x3c
c01063a8:	5b                   	pop    ebx
c01063a9:	5e                   	pop    esi
c01063aa:	5f                   	pop    edi
c01063ab:	5d                   	pop    ebp
c01063ac:	c3                   	ret    

c01063ad <VIEW_reflushsub>:
c01063ad:	55                   	push   ebp
c01063ae:	89 e5                	mov    ebp,esp
c01063b0:	53                   	push   ebx
c01063b1:	83 ec 44             	sub    esp,0x44
c01063b4:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c01063b8:	79 07                	jns    c01063c1 <VIEW_reflushsub+0x14>
c01063ba:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c01063c1:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c01063c5:	79 07                	jns    c01063ce <VIEW_reflushsub+0x21>
c01063c7:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
c01063ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01063d1:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01063d4:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
c01063d7:	7d 09                	jge    c01063e2 <VIEW_reflushsub+0x35>
c01063d9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01063dc:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01063df:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
c01063e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01063e5:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01063e8:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
c01063eb:	7d 09                	jge    c01063f6 <VIEW_reflushsub+0x49>
c01063ed:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01063f0:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01063f3:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
c01063f6:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01063f9:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01063fc:	e9 6f 01 00 00       	jmp    c0106570 <VIEW_reflushsub+0x1c3>
c0106401:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106404:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106407:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c010640a:	c1 e2 02             	shl    edx,0x2
c010640d:	01 d0                	add    eax,edx
c010640f:	8b 00                	mov    eax,DWORD PTR [eax]
c0106411:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0106414:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106417:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c010641a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010641d:	89 d1                	mov    ecx,edx
c010641f:	29 c1                	sub    ecx,eax
c0106421:	89 c8                	mov    eax,ecx
c0106423:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0106426:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106429:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010642c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010642f:	89 d1                	mov    ecx,edx
c0106431:	29 c1                	sub    ecx,eax
c0106433:	89 c8                	mov    eax,ecx
c0106435:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0106438:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010643b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c010643e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0106441:	89 d1                	mov    ecx,edx
c0106443:	29 c1                	sub    ecx,eax
c0106445:	89 c8                	mov    eax,ecx
c0106447:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010644a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010644d:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106450:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0106453:	89 d1                	mov    ecx,edx
c0106455:	29 c1                	sub    ecx,eax
c0106457:	89 c8                	mov    eax,ecx
c0106459:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c010645c:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0106460:	79 07                	jns    c0106469 <VIEW_reflushsub+0xbc>
c0106462:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0106469:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c010646d:	79 07                	jns    c0106476 <VIEW_reflushsub+0xc9>
c010646f:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0106476:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106479:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010647c:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010647f:	39 c2                	cmp    edx,eax
c0106481:	76 09                	jbe    c010648c <VIEW_reflushsub+0xdf>
c0106483:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106486:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106489:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010648c:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c010648f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106492:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106495:	39 c2                	cmp    edx,eax
c0106497:	76 09                	jbe    c01064a2 <VIEW_reflushsub+0xf5>
c0106499:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010649c:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c010649f:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01064a2:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01064a5:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01064a8:	e9 b3 00 00 00       	jmp    c0106560 <VIEW_reflushsub+0x1b3>
c01064ad:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01064b0:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01064b3:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c01064b6:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c01064b9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01064bc:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01064bf:	e9 8c 00 00 00       	jmp    c0106550 <VIEW_reflushsub+0x1a3>
c01064c4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01064c7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01064ca:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01064cd:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01064d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01064d3:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c01064d6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01064d9:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01064dc:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c01064e0:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c01064e3:	c1 e0 02             	shl    eax,0x2
c01064e6:	01 d0                	add    eax,edx
c01064e8:	8b 10                	mov    edx,DWORD PTR [eax]
c01064ea:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01064ed:	39 c2                	cmp    edx,eax
c01064ef:	75 5b                	jne    c010654c <VIEW_reflushsub+0x19f>
c01064f1:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01064f4:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01064f7:	89 04 24             	mov    DWORD PTR [esp],eax
c01064fa:	e8 2b d0 ff ff       	call   c010352a <pid2thread>
c01064ff:	89 04 24             	mov    DWORD PTR [esp],eax
c0106502:	e8 e3 d2 ff ff       	call   c01037ea <page_dir_activate>
c0106507:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010650a:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
c010650d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106510:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0106513:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c0106517:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c010651a:	c1 e0 02             	shl    eax,0x2
c010651d:	01 c2                	add    edx,eax
c010651f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106522:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
c0106525:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106528:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
c010652b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010652e:	0f af d8             	imul   ebx,eax
c0106531:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106534:	01 d8                	add    eax,ebx
c0106536:	c1 e0 02             	shl    eax,0x2
c0106539:	01 c8                	add    eax,ecx
c010653b:	8b 00                	mov    eax,DWORD PTR [eax]
c010653d:	89 02                	mov    DWORD PTR [edx],eax
c010653f:	e8 b3 ca ff ff       	call   c0102ff7 <running_thread>
c0106544:	89 04 24             	mov    DWORD PTR [esp],eax
c0106547:	e8 9e d2 ff ff       	call   c01037ea <page_dir_activate>
c010654c:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0106550:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106553:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c0106556:	0f 8c 68 ff ff ff    	jl     c01064c4 <VIEW_reflushsub+0x117>
c010655c:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0106560:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106563:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
c0106566:	0f 8c 41 ff ff ff    	jl     c01064ad <VIEW_reflushsub+0x100>
c010656c:	83 45 dc 01          	add    DWORD PTR [ebp-0x24],0x1
c0106570:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106573:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
c0106576:	0f 8e 85 fe ff ff    	jle    c0106401 <VIEW_reflushsub+0x54>
c010657c:	83 c4 44             	add    esp,0x44
c010657f:	5b                   	pop    ebx
c0106580:	5d                   	pop    ebp
c0106581:	c3                   	ret    

c0106582 <VIEW_reflushmap>:
c0106582:	55                   	push   ebp
c0106583:	89 e5                	mov    ebp,esp
c0106585:	83 ec 30             	sub    esp,0x30
c0106588:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c010658c:	79 07                	jns    c0106595 <VIEW_reflushmap+0x13>
c010658e:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c0106595:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0106599:	79 07                	jns    c01065a2 <VIEW_reflushmap+0x20>
c010659b:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
c01065a2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01065a5:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01065a8:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
c01065ab:	7d 09                	jge    c01065b6 <VIEW_reflushmap+0x34>
c01065ad:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01065b0:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01065b3:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
c01065b6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01065b9:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01065bc:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
c01065bf:	7d 09                	jge    c01065ca <VIEW_reflushmap+0x48>
c01065c1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01065c4:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01065c7:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
c01065ca:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01065cd:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01065d0:	e9 2c 01 00 00       	jmp    c0106701 <VIEW_reflushmap+0x17f>
c01065d5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01065d8:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01065db:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01065de:	c1 e2 02             	shl    edx,0x2
c01065e1:	01 d0                	add    eax,edx
c01065e3:	8b 00                	mov    eax,DWORD PTR [eax]
c01065e5:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01065e8:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01065eb:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01065ee:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01065f1:	89 d1                	mov    ecx,edx
c01065f3:	29 c1                	sub    ecx,eax
c01065f5:	89 c8                	mov    eax,ecx
c01065f7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01065fa:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01065fd:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106600:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0106603:	89 d1                	mov    ecx,edx
c0106605:	29 c1                	sub    ecx,eax
c0106607:	89 c8                	mov    eax,ecx
c0106609:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010660c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010660f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106612:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0106615:	89 d1                	mov    ecx,edx
c0106617:	29 c1                	sub    ecx,eax
c0106619:	89 c8                	mov    eax,ecx
c010661b:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010661e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106621:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106624:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0106627:	89 d1                	mov    ecx,edx
c0106629:	29 c1                	sub    ecx,eax
c010662b:	89 c8                	mov    eax,ecx
c010662d:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0106630:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0106634:	79 07                	jns    c010663d <VIEW_reflushmap+0xbb>
c0106636:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010663d:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0106641:	79 07                	jns    c010664a <VIEW_reflushmap+0xc8>
c0106643:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010664a:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c010664d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106650:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106653:	39 c2                	cmp    edx,eax
c0106655:	76 09                	jbe    c0106660 <VIEW_reflushmap+0xde>
c0106657:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010665a:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010665d:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0106660:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0106663:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106666:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106669:	39 c2                	cmp    edx,eax
c010666b:	76 09                	jbe    c0106676 <VIEW_reflushmap+0xf4>
c010666d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106670:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106673:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0106676:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106679:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c010667c:	eb 77                	jmp    c01066f5 <VIEW_reflushmap+0x173>
c010667e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106681:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106684:	03 45 f8             	add    eax,DWORD PTR [ebp-0x8]
c0106687:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c010668a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010668d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0106690:	eb 57                	jmp    c01066e9 <VIEW_reflushmap+0x167>
c0106692:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106695:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106698:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
c010669b:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010669e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01066a1:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c01066a4:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01066a7:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
c01066aa:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01066ad:	0f af c8             	imul   ecx,eax
c01066b0:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01066b3:	01 c8                	add    eax,ecx
c01066b5:	c1 e0 02             	shl    eax,0x2
c01066b8:	01 d0                	add    eax,edx
c01066ba:	8b 00                	mov    eax,DWORD PTR [eax]
c01066bc:	25 00 00 00 ff       	and    eax,0xff000000
c01066c1:	3d 00 00 00 ff       	cmp    eax,0xff000000
c01066c6:	74 1d                	je     c01066e5 <VIEW_reflushmap+0x163>
c01066c8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066cb:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c01066ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066d1:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01066d4:	0f af 45 dc          	imul   eax,DWORD PTR [ebp-0x24]
c01066d8:	03 45 d8             	add    eax,DWORD PTR [ebp-0x28]
c01066db:	c1 e0 02             	shl    eax,0x2
c01066de:	01 c2                	add    edx,eax
c01066e0:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01066e3:	89 02                	mov    DWORD PTR [edx],eax
c01066e5:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c01066e9:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01066ec:	3b 45 ec             	cmp    eax,DWORD PTR [ebp-0x14]
c01066ef:	7c a1                	jl     c0106692 <VIEW_reflushmap+0x110>
c01066f1:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c01066f5:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01066f8:	3b 45 e8             	cmp    eax,DWORD PTR [ebp-0x18]
c01066fb:	7c 81                	jl     c010667e <VIEW_reflushmap+0xfc>
c01066fd:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0106701:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106704:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0106707:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c010670a:	0f 8f c5 fe ff ff    	jg     c01065d5 <VIEW_reflushmap+0x53>
c0106710:	c9                   	leave  
c0106711:	c3                   	ret    
	...

c0106714 <api_malloc>:
c0106714:	55                   	push   ebp
c0106715:	89 e5                	mov    ebp,esp
c0106717:	83 ec 48             	sub    esp,0x48
c010671a:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
c0106721:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106724:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0106727:	90                   	nop
c0106728:	8d 45 c8             	lea    eax,[ebp-0x38]
c010672b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010672f:	c7 44 24 04 03 00 00 	mov    DWORD PTR [esp+0x4],0x3
c0106736:	00 
c0106737:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c010673e:	e8 f9 e1 ff ff       	call   c010493c <send_recv>
c0106743:	83 f8 01             	cmp    eax,0x1
c0106746:	74 e0                	je     c0106728 <api_malloc+0x14>
c0106748:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010674b:	c9                   	leave  
c010674c:	c3                   	ret    

c010674d <api_free>:
c010674d:	55                   	push   ebp
c010674e:	89 e5                	mov    ebp,esp
c0106750:	83 ec 48             	sub    esp,0x48
c0106753:	c7 45 cc 02 00 00 00 	mov    DWORD PTR [ebp-0x34],0x2
c010675a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010675d:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0106760:	8d 45 c8             	lea    eax,[ebp-0x38]
c0106763:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106767:	c7 44 24 04 03 00 00 	mov    DWORD PTR [esp+0x4],0x3
c010676e:	00 
c010676f:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c0106776:	e8 c1 e1 ff ff       	call   c010493c <send_recv>
c010677b:	c9                   	leave  
c010677c:	c3                   	ret    

c010677d <api_mmcopy>:
c010677d:	55                   	push   ebp
c010677e:	89 e5                	mov    ebp,esp
c0106780:	83 ec 48             	sub    esp,0x48
c0106783:	c7 45 cc 03 00 00 00 	mov    DWORD PTR [ebp-0x34],0x3
c010678a:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c010678d:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0106790:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0106793:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0106796:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106799:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010679c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010679f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01067a2:	90                   	nop
c01067a3:	8d 45 c8             	lea    eax,[ebp-0x38]
c01067a6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01067aa:	c7 44 24 04 03 00 00 	mov    DWORD PTR [esp+0x4],0x3
c01067b1:	00 
c01067b2:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c01067b9:	e8 7e e1 ff ff       	call   c010493c <send_recv>
c01067be:	83 f8 01             	cmp    eax,0x1
c01067c1:	74 e0                	je     c01067a3 <api_mmcopy+0x26>
c01067c3:	c9                   	leave  
c01067c4:	c3                   	ret    

c01067c5 <api_viewinit>:
c01067c5:	55                   	push   ebp
c01067c6:	89 e5                	mov    ebp,esp
c01067c8:	83 ec 48             	sub    esp,0x48
c01067cb:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
c01067d2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01067d5:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01067d8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01067db:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c01067de:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01067e1:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01067e4:	90                   	nop
c01067e5:	8d 45 c8             	lea    eax,[ebp-0x38]
c01067e8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01067ec:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
c01067f3:	00 
c01067f4:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c01067fb:	e8 3c e1 ff ff       	call   c010493c <send_recv>
c0106800:	83 f8 01             	cmp    eax,0x1
c0106803:	74 e0                	je     c01067e5 <api_viewinit+0x20>
c0106805:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0106808:	c9                   	leave  
c0106809:	c3                   	ret    

c010680a <api_viewflush>:
c010680a:	55                   	push   ebp
c010680b:	89 e5                	mov    ebp,esp
c010680d:	83 ec 48             	sub    esp,0x48
c0106810:	c7 45 cc 03 00 00 00 	mov    DWORD PTR [ebp-0x34],0x3
c0106817:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010681a:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c010681d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0106820:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0106823:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0106826:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0106829:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010682c:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c010682f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106832:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0106835:	90                   	nop
c0106836:	8d 45 c8             	lea    eax,[ebp-0x38]
c0106839:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010683d:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
c0106844:	00 
c0106845:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c010684c:	e8 eb e0 ff ff       	call   c010493c <send_recv>
c0106851:	83 f8 01             	cmp    eax,0x1
c0106854:	74 e0                	je     c0106836 <api_viewflush+0x2c>
c0106856:	c9                   	leave  
c0106857:	c3                   	ret    

c0106858 <api_viewslide>:
c0106858:	55                   	push   ebp
c0106859:	89 e5                	mov    ebp,esp
c010685b:	83 ec 48             	sub    esp,0x48
c010685e:	c7 45 cc 04 00 00 00 	mov    DWORD PTR [ebp-0x34],0x4
c0106865:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106868:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c010686b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010686e:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0106871:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106874:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0106877:	90                   	nop
c0106878:	8d 45 c8             	lea    eax,[ebp-0x38]
c010687b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010687f:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
c0106886:	00 
c0106887:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c010688e:	e8 a9 e0 ff ff       	call   c010493c <send_recv>
c0106893:	83 f8 01             	cmp    eax,0x1
c0106896:	74 e0                	je     c0106878 <api_viewslide+0x20>
c0106898:	c9                   	leave  
c0106899:	c3                   	ret    

c010689a <api_viewupdown>:
c010689a:	55                   	push   ebp
c010689b:	89 e5                	mov    ebp,esp
c010689d:	83 ec 48             	sub    esp,0x48
c01068a0:	c7 45 cc 05 00 00 00 	mov    DWORD PTR [ebp-0x34],0x5
c01068a7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01068aa:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01068ad:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068b0:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01068b3:	90                   	nop
c01068b4:	8d 45 c8             	lea    eax,[ebp-0x38]
c01068b7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01068bb:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
c01068c2:	00 
c01068c3:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c01068ca:	e8 6d e0 ff ff       	call   c010493c <send_recv>
c01068cf:	83 f8 01             	cmp    eax,0x1
c01068d2:	74 e0                	je     c01068b4 <api_viewupdown+0x1a>
c01068d4:	c9                   	leave  
c01068d5:	c3                   	ret    

c01068d6 <api_makeWindow>:
c01068d6:	55                   	push   ebp
c01068d7:	89 e5                	mov    ebp,esp
c01068d9:	57                   	push   edi
c01068da:	56                   	push   esi
c01068db:	53                   	push   ebx
c01068dc:	83 ec 2c             	sub    esp,0x2c
c01068df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068e2:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01068e5:	83 e8 01             	sub    eax,0x1
c01068e8:	89 c3                	mov    ebx,eax
c01068ea:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c01068f1:	00 
c01068f2:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c01068f9:	00 
c01068fa:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c0106901:	e8 7e 11 00 00       	call   c0107a84 <rgb>
c0106906:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106909:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c010690c:	89 d1                	mov    ecx,edx
c010690e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106911:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106914:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
c010691b:	00 
c010691c:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0106920:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c0106927:	00 
c0106928:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010692f:	00 
c0106930:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106934:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106938:	89 14 24             	mov    DWORD PTR [esp],edx
c010693b:	e8 0c 13 00 00       	call   c0107c4c <viewFill>
c0106940:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106943:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106946:	83 e8 01             	sub    eax,0x1
c0106949:	89 c7                	mov    edi,eax
c010694b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010694e:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106951:	83 e8 01             	sub    eax,0x1
c0106954:	89 c6                	mov    esi,eax
c0106956:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106959:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010695c:	83 e8 01             	sub    eax,0x1
c010695f:	89 c3                	mov    ebx,eax
c0106961:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c0106968:	00 
c0106969:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0106970:	00 
c0106971:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c0106978:	e8 07 11 00 00       	call   c0107a84 <rgb>
c010697d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106980:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c0106983:	89 d1                	mov    ecx,edx
c0106985:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106988:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c010698b:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c010698f:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106993:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c010699a:	00 
c010699b:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c010699f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01069a3:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c01069a7:	89 14 24             	mov    DWORD PTR [esp],edx
c01069aa:	e8 9d 12 00 00       	call   c0107c4c <viewFill>
c01069af:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069b2:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01069b5:	83 e8 01             	sub    eax,0x1
c01069b8:	89 c7                	mov    edi,eax
c01069ba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069bd:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01069c0:	83 e8 01             	sub    eax,0x1
c01069c3:	89 c6                	mov    esi,eax
c01069c5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069c8:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01069cb:	83 e8 01             	sub    eax,0x1
c01069ce:	89 c3                	mov    ebx,eax
c01069d0:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c01069d7:	00 
c01069d8:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c01069df:	00 
c01069e0:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c01069e7:	e8 98 10 00 00       	call   c0107a84 <rgb>
c01069ec:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01069ef:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c01069f2:	89 d1                	mov    ecx,edx
c01069f4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01069f7:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c01069fa:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c01069fe:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106a02:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106a06:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0106a0d:	00 
c0106a0e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106a12:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106a16:	89 14 24             	mov    DWORD PTR [esp],edx
c0106a19:	e8 2e 12 00 00       	call   c0107c4c <viewFill>
c0106a1e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a21:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106a24:	83 e8 01             	sub    eax,0x1
c0106a27:	89 c3                	mov    ebx,eax
c0106a29:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c0106a30:	00 
c0106a31:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0106a38:	00 
c0106a39:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c0106a40:	e8 3f 10 00 00       	call   c0107a84 <rgb>
c0106a45:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106a48:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c0106a4b:	89 d1                	mov    ecx,edx
c0106a4d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106a50:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106a53:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
c0106a57:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0106a5e:	00 
c0106a5f:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c0106a66:	00 
c0106a67:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0106a6e:	00 
c0106a6f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106a73:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106a77:	89 14 24             	mov    DWORD PTR [esp],edx
c0106a7a:	e8 cd 11 00 00       	call   c0107c4c <viewFill>
c0106a7f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a82:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106a85:	83 e8 17             	sub    eax,0x17
c0106a88:	89 c3                	mov    ebx,eax
c0106a8a:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0106a91:	00 
c0106a92:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0106a99:	00 
c0106a9a:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0106aa1:	e8 de 0f 00 00       	call   c0107a84 <rgb>
c0106aa6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106aa9:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c0106aac:	89 d1                	mov    ecx,edx
c0106aae:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106ab1:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106ab4:	c7 44 24 18 15 00 00 	mov    DWORD PTR [esp+0x18],0x15
c0106abb:	00 
c0106abc:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0106ac0:	c7 44 24 10 01 00 00 	mov    DWORD PTR [esp+0x10],0x1
c0106ac7:	00 
c0106ac8:	c7 44 24 0c 01 00 00 	mov    DWORD PTR [esp+0xc],0x1
c0106acf:	00 
c0106ad0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106ad4:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106ad8:	89 14 24             	mov    DWORD PTR [esp],edx
c0106adb:	e8 6c 11 00 00       	call   c0107c4c <viewFill>
c0106ae0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ae3:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106ae6:	83 e8 16             	sub    eax,0x16
c0106ae9:	89 c6                	mov    esi,eax
c0106aeb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106aee:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106af1:	83 e8 16             	sub    eax,0x16
c0106af4:	89 c3                	mov    ebx,eax
c0106af6:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c0106afd:	00 
c0106afe:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0106b05:	00 
c0106b06:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c0106b0d:	e8 72 0f 00 00       	call   c0107a84 <rgb>
c0106b12:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106b15:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c0106b18:	89 d1                	mov    ecx,edx
c0106b1a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106b1d:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106b20:	c7 44 24 18 15 00 00 	mov    DWORD PTR [esp+0x18],0x15
c0106b27:	00 
c0106b28:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106b2c:	c7 44 24 10 01 00 00 	mov    DWORD PTR [esp+0x10],0x1
c0106b33:	00 
c0106b34:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106b38:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106b3c:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106b40:	89 14 24             	mov    DWORD PTR [esp],edx
c0106b43:	e8 04 11 00 00       	call   c0107c4c <viewFill>
c0106b48:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b4b:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106b4e:	83 e8 02             	sub    eax,0x2
c0106b51:	89 c3                	mov    ebx,eax
c0106b53:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c0106b5a:	00 
c0106b5b:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0106b62:	00 
c0106b63:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c0106b6a:	e8 15 0f 00 00       	call   c0107a84 <rgb>
c0106b6f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106b72:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c0106b75:	89 d1                	mov    ecx,edx
c0106b77:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106b7a:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106b7d:	c7 44 24 18 16 00 00 	mov    DWORD PTR [esp+0x18],0x16
c0106b84:	00 
c0106b85:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0106b89:	c7 44 24 10 16 00 00 	mov    DWORD PTR [esp+0x10],0x16
c0106b90:	00 
c0106b91:	c7 44 24 0c 01 00 00 	mov    DWORD PTR [esp+0xc],0x1
c0106b98:	00 
c0106b99:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106b9d:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106ba1:	89 14 24             	mov    DWORD PTR [esp],edx
c0106ba4:	e8 a3 10 00 00       	call   c0107c4c <viewFill>
c0106ba9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106bac:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106baf:	83 e8 02             	sub    eax,0x2
c0106bb2:	89 c6                	mov    esi,eax
c0106bb4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106bb7:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106bba:	83 e8 15             	sub    eax,0x15
c0106bbd:	89 c3                	mov    ebx,eax
c0106bbf:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0106bc6:	00 
c0106bc7:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0106bce:	00 
c0106bcf:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0106bd6:	e8 a9 0e 00 00       	call   c0107a84 <rgb>
c0106bdb:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106bde:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c0106be1:	89 d1                	mov    ecx,edx
c0106be3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106be6:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106be9:	c7 44 24 18 15 00 00 	mov    DWORD PTR [esp+0x18],0x15
c0106bf0:	00 
c0106bf1:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106bf5:	c7 44 24 10 01 00 00 	mov    DWORD PTR [esp+0x10],0x1
c0106bfc:	00 
c0106bfd:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106c01:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106c05:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106c09:	89 14 24             	mov    DWORD PTR [esp],edx
c0106c0c:	e8 3b 10 00 00       	call   c0107c4c <viewFill>
c0106c11:	83 c4 2c             	add    esp,0x2c
c0106c14:	5b                   	pop    ebx
c0106c15:	5e                   	pop    esi
c0106c16:	5f                   	pop    edi
c0106c17:	5d                   	pop    ebp
c0106c18:	c3                   	ret    
c0106c19:	00 00                	add    BYTE PTR [eax],al
	...

c0106c1c <bitmap_init>:
c0106c1c:	55                   	push   ebp
c0106c1d:	89 e5                	mov    ebp,esp
c0106c1f:	83 ec 18             	sub    esp,0x18
c0106c22:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c25:	8b 10                	mov    edx,DWORD PTR [eax]
c0106c27:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c2a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106c2d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106c31:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0106c38:	00 
c0106c39:	89 04 24             	mov    DWORD PTR [esp],eax
c0106c3c:	e8 63 09 00 00       	call   c01075a4 <memset>
c0106c41:	c9                   	leave  
c0106c42:	c3                   	ret    

c0106c43 <bitmap_scan_test>:
c0106c43:	55                   	push   ebp
c0106c44:	89 e5                	mov    ebp,esp
c0106c46:	56                   	push   esi
c0106c47:	53                   	push   ebx
c0106c48:	83 ec 10             	sub    esp,0x10
c0106c4b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106c4e:	c1 e8 03             	shr    eax,0x3
c0106c51:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106c54:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106c57:	83 e0 07             	and    eax,0x7
c0106c5a:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0106c5d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c60:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106c63:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0106c66:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106c69:	0f b6 d0             	movzx  edx,al
c0106c6c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106c6f:	bb 01 00 00 00       	mov    ebx,0x1
c0106c74:	89 de                	mov    esi,ebx
c0106c76:	89 c1                	mov    ecx,eax
c0106c78:	d3 e6                	shl    esi,cl
c0106c7a:	89 f0                	mov    eax,esi
c0106c7c:	21 d0                	and    eax,edx
c0106c7e:	83 c4 10             	add    esp,0x10
c0106c81:	5b                   	pop    ebx
c0106c82:	5e                   	pop    esi
c0106c83:	5d                   	pop    ebp
c0106c84:	c3                   	ret    

c0106c85 <bitmap_alloc>:
c0106c85:	55                   	push   ebp
c0106c86:	89 e5                	mov    ebp,esp
c0106c88:	53                   	push   ebx
c0106c89:	83 ec 44             	sub    esp,0x44
c0106c8c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0106c93:	eb 04                	jmp    c0106c99 <bitmap_alloc+0x14>
c0106c95:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0106c99:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c9c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106c9f:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0106ca2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106ca5:	3c ff                	cmp    al,0xff
c0106ca7:	75 0a                	jne    c0106cb3 <bitmap_alloc+0x2e>
c0106ca9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cac:	8b 00                	mov    eax,DWORD PTR [eax]
c0106cae:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0106cb1:	77 e2                	ja     c0106c95 <bitmap_alloc+0x10>
c0106cb3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cb6:	8b 00                	mov    eax,DWORD PTR [eax]
c0106cb8:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0106cbb:	77 2c                	ja     c0106ce9 <bitmap_alloc+0x64>
c0106cbd:	c7 44 24 10 e8 bb 10 	mov    DWORD PTR [esp+0x10],0xc010bbe8
c0106cc4:	c0 
c0106cc5:	c7 44 24 0c 3d bc 10 	mov    DWORD PTR [esp+0xc],0xc010bc3d
c0106ccc:	c0 
c0106ccd:	c7 44 24 08 2e 00 00 	mov    DWORD PTR [esp+0x8],0x2e
c0106cd4:	00 
c0106cd5:	c7 44 24 04 0c bc 10 	mov    DWORD PTR [esp+0x4],0xc010bc0c
c0106cdc:	c0 
c0106cdd:	c7 04 24 0c bc 10 c0 	mov    DWORD PTR [esp],0xc010bc0c
c0106ce4:	e8 eb 9c ff ff       	call   c01009d4 <panic_spin>
c0106ce9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cec:	8b 00                	mov    eax,DWORD PTR [eax]
c0106cee:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0106cf1:	75 0a                	jne    c0106cfd <bitmap_alloc+0x78>
c0106cf3:	b8 ff ff ff ff       	mov    eax,0xffffffff
c0106cf8:	e9 cc 00 00 00       	jmp    c0106dc9 <bitmap_alloc+0x144>
c0106cfd:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0106d04:	eb 04                	jmp    c0106d0a <bitmap_alloc+0x85>
c0106d06:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0106d0a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106d0d:	ba 01 00 00 00       	mov    edx,0x1
c0106d12:	89 d3                	mov    ebx,edx
c0106d14:	89 c1                	mov    ecx,eax
c0106d16:	d3 e3                	shl    ebx,cl
c0106d18:	89 d8                	mov    eax,ebx
c0106d1a:	89 c2                	mov    edx,eax
c0106d1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d1f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106d22:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0106d25:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106d28:	21 d0                	and    eax,edx
c0106d2a:	84 c0                	test   al,al
c0106d2c:	75 d8                	jne    c0106d06 <bitmap_alloc+0x81>
c0106d2e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106d31:	c1 e0 03             	shl    eax,0x3
c0106d34:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c0106d37:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0106d3a:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c0106d3e:	75 08                	jne    c0106d48 <bitmap_alloc+0xc3>
c0106d40:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106d43:	e9 81 00 00 00       	jmp    c0106dc9 <bitmap_alloc+0x144>
c0106d48:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d4b:	8b 00                	mov    eax,DWORD PTR [eax]
c0106d4d:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
c0106d54:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106d57:	89 d1                	mov    ecx,edx
c0106d59:	29 c1                	sub    ecx,eax
c0106d5b:	89 c8                	mov    eax,ecx
c0106d5d:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0106d60:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106d63:	83 c0 01             	add    eax,0x1
c0106d66:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106d69:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [ebp-0x20],0x1
c0106d70:	c7 45 ec ff ff ff ff 	mov    DWORD PTR [ebp-0x14],0xffffffff
c0106d77:	eb 47                	jmp    c0106dc0 <bitmap_alloc+0x13b>
c0106d79:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106d7c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106d80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d83:	89 04 24             	mov    DWORD PTR [esp],eax
c0106d86:	e8 b8 fe ff ff       	call   c0106c43 <bitmap_scan_test>
c0106d8b:	85 c0                	test   eax,eax
c0106d8d:	75 06                	jne    c0106d95 <bitmap_alloc+0x110>
c0106d8f:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0106d93:	eb 07                	jmp    c0106d9c <bitmap_alloc+0x117>
c0106d95:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0106d9c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106d9f:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106da2:	75 14                	jne    c0106db8 <bitmap_alloc+0x133>
c0106da4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106da7:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106daa:	89 d3                	mov    ebx,edx
c0106dac:	29 c3                	sub    ebx,eax
c0106dae:	89 d8                	mov    eax,ebx
c0106db0:	83 c0 01             	add    eax,0x1
c0106db3:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0106db6:	eb 0e                	jmp    c0106dc6 <bitmap_alloc+0x141>
c0106db8:	83 6d e8 01          	sub    DWORD PTR [ebp-0x18],0x1
c0106dbc:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0106dc0:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0106dc4:	75 b3                	jne    c0106d79 <bitmap_alloc+0xf4>
c0106dc6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106dc9:	83 c4 44             	add    esp,0x44
c0106dcc:	5b                   	pop    ebx
c0106dcd:	5d                   	pop    ebp
c0106dce:	c3                   	ret    

c0106dcf <bitmap_set>:
c0106dcf:	55                   	push   ebp
c0106dd0:	89 e5                	mov    ebp,esp
c0106dd2:	57                   	push   edi
c0106dd3:	56                   	push   esi
c0106dd4:	53                   	push   ebx
c0106dd5:	83 ec 4c             	sub    esp,0x4c
c0106dd8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0106ddb:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
c0106dde:	80 7d d4 00          	cmp    BYTE PTR [ebp-0x2c],0x0
c0106de2:	74 32                	je     c0106e16 <bitmap_set+0x47>
c0106de4:	80 7d d4 01          	cmp    BYTE PTR [ebp-0x2c],0x1
c0106de8:	74 2c                	je     c0106e16 <bitmap_set+0x47>
c0106dea:	c7 44 24 10 19 bc 10 	mov    DWORD PTR [esp+0x10],0xc010bc19
c0106df1:	c0 
c0106df2:	c7 44 24 0c 32 bc 10 	mov    DWORD PTR [esp+0xc],0xc010bc32
c0106df9:	c0 
c0106dfa:	c7 44 24 08 65 00 00 	mov    DWORD PTR [esp+0x8],0x65
c0106e01:	00 
c0106e02:	c7 44 24 04 0c bc 10 	mov    DWORD PTR [esp+0x4],0xc010bc0c
c0106e09:	c0 
c0106e0a:	c7 04 24 0c bc 10 c0 	mov    DWORD PTR [esp],0xc010bc0c
c0106e11:	e8 be 9b ff ff       	call   c01009d4 <panic_spin>
c0106e16:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106e19:	c1 e8 03             	shr    eax,0x3
c0106e1c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106e1f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106e22:	83 e0 07             	and    eax,0x7
c0106e25:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106e28:	0f b6 45 d4          	movzx  eax,BYTE PTR [ebp-0x2c]
c0106e2c:	85 c0                	test   eax,eax
c0106e2e:	74 07                	je     c0106e37 <bitmap_set+0x68>
c0106e30:	83 f8 01             	cmp    eax,0x1
c0106e33:	74 31                	je     c0106e66 <bitmap_set+0x97>
c0106e35:	eb 5b                	jmp    c0106e92 <bitmap_set+0xc3>
c0106e37:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e3a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106e3d:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0106e40:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106e43:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0106e46:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c0106e49:	0f b6 12             	movzx  edx,BYTE PTR [edx]
c0106e4c:	89 d3                	mov    ebx,edx
c0106e4e:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106e51:	be 01 00 00 00       	mov    esi,0x1
c0106e56:	89 f7                	mov    edi,esi
c0106e58:	89 d1                	mov    ecx,edx
c0106e5a:	d3 e7                	shl    edi,cl
c0106e5c:	89 fa                	mov    edx,edi
c0106e5e:	f7 d2                	not    edx
c0106e60:	21 da                	and    edx,ebx
c0106e62:	88 10                	mov    BYTE PTR [eax],dl
c0106e64:	eb 2c                	jmp    c0106e92 <bitmap_set+0xc3>
c0106e66:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e69:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106e6c:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0106e6f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106e72:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0106e75:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c0106e78:	0f b6 12             	movzx  edx,BYTE PTR [edx]
c0106e7b:	89 d3                	mov    ebx,edx
c0106e7d:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106e80:	be 01 00 00 00       	mov    esi,0x1
c0106e85:	89 f7                	mov    edi,esi
c0106e87:	89 d1                	mov    ecx,edx
c0106e89:	d3 e7                	shl    edi,cl
c0106e8b:	89 fa                	mov    edx,edi
c0106e8d:	09 da                	or     edx,ebx
c0106e8f:	88 10                	mov    BYTE PTR [eax],dl
c0106e91:	90                   	nop
c0106e92:	83 c4 4c             	add    esp,0x4c
c0106e95:	5b                   	pop    ebx
c0106e96:	5e                   	pop    esi
c0106e97:	5f                   	pop    edi
c0106e98:	5d                   	pop    ebp
c0106e99:	c3                   	ret    
	...

c0106e9c <list_init>:
c0106e9c:	55                   	push   ebp
c0106e9d:	89 e5                	mov    ebp,esp
c0106e9f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ea2:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0106ea8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106eab:	8d 50 0c             	lea    edx,[eax+0xc]
c0106eae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106eb1:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106eb4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106eb7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106eba:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0106ebd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ec0:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0106ec7:	5d                   	pop    ebp
c0106ec8:	c3                   	ret    

c0106ec9 <list_in>:
c0106ec9:	55                   	push   ebp
c0106eca:	89 e5                	mov    ebp,esp
c0106ecc:	83 ec 28             	sub    esp,0x28
c0106ecf:	e8 22 a9 ff ff       	call   c01017f6 <intr_disable>
c0106ed4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106ed7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106eda:	8b 00                	mov    eax,DWORD PTR [eax]
c0106edc:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106edf:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106ee2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106ee5:	8b 10                	mov    edx,DWORD PTR [eax]
c0106ee7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106eea:	89 10                	mov    DWORD PTR [eax],edx
c0106eec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106eef:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106ef2:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106ef5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106ef8:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106efb:	89 10                	mov    DWORD PTR [eax],edx
c0106efd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106f00:	89 04 24             	mov    DWORD PTR [esp],eax
c0106f03:	e8 1b a9 ff ff       	call   c0101823 <intr_set_status>
c0106f08:	c9                   	leave  
c0106f09:	c3                   	ret    

c0106f0a <list_push>:
c0106f0a:	55                   	push   ebp
c0106f0b:	89 e5                	mov    ebp,esp
c0106f0d:	83 ec 18             	sub    esp,0x18
c0106f10:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f13:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106f16:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106f1a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106f1d:	89 04 24             	mov    DWORD PTR [esp],eax
c0106f20:	e8 a4 ff ff ff       	call   c0106ec9 <list_in>
c0106f25:	c9                   	leave  
c0106f26:	c3                   	ret    

c0106f27 <list_append>:
c0106f27:	55                   	push   ebp
c0106f28:	89 e5                	mov    ebp,esp
c0106f2a:	83 ec 18             	sub    esp,0x18
c0106f2d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f30:	83 c0 0c             	add    eax,0xc
c0106f33:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106f37:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106f3a:	89 04 24             	mov    DWORD PTR [esp],eax
c0106f3d:	e8 87 ff ff ff       	call   c0106ec9 <list_in>
c0106f42:	c9                   	leave  
c0106f43:	c3                   	ret    

c0106f44 <list_remove>:
c0106f44:	55                   	push   ebp
c0106f45:	89 e5                	mov    ebp,esp
c0106f47:	83 ec 28             	sub    esp,0x28
c0106f4a:	e8 a7 a8 ff ff       	call   c01017f6 <intr_disable>
c0106f4f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106f52:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f55:	8b 00                	mov    eax,DWORD PTR [eax]
c0106f57:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106f5a:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106f5d:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106f60:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f63:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106f66:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106f69:	8b 12                	mov    edx,DWORD PTR [edx]
c0106f6b:	89 10                	mov    DWORD PTR [eax],edx
c0106f6d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106f70:	89 04 24             	mov    DWORD PTR [esp],eax
c0106f73:	e8 ab a8 ff ff       	call   c0101823 <intr_set_status>
c0106f78:	c9                   	leave  
c0106f79:	c3                   	ret    

c0106f7a <list_pop>:
c0106f7a:	55                   	push   ebp
c0106f7b:	89 e5                	mov    ebp,esp
c0106f7d:	83 ec 28             	sub    esp,0x28
c0106f80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f83:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106f86:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106f89:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106f8c:	89 04 24             	mov    DWORD PTR [esp],eax
c0106f8f:	e8 b0 ff ff ff       	call   c0106f44 <list_remove>
c0106f94:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106f97:	c9                   	leave  
c0106f98:	c3                   	ret    

c0106f99 <list_find>:
c0106f99:	55                   	push   ebp
c0106f9a:	89 e5                	mov    ebp,esp
c0106f9c:	83 ec 10             	sub    esp,0x10
c0106f9f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fa2:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106fa5:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0106fa8:	eb 18                	jmp    c0106fc2 <list_find+0x29>
c0106faa:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0106fad:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106fb0:	75 07                	jne    c0106fb9 <list_find+0x20>
c0106fb2:	b8 01 00 00 00       	mov    eax,0x1
c0106fb7:	eb 19                	jmp    c0106fd2 <list_find+0x39>
c0106fb9:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0106fbc:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106fbf:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0106fc2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fc5:	83 c0 0c             	add    eax,0xc
c0106fc8:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
c0106fcb:	75 dd                	jne    c0106faa <list_find+0x11>
c0106fcd:	b8 00 00 00 00       	mov    eax,0x0
c0106fd2:	c9                   	leave  
c0106fd3:	c3                   	ret    

c0106fd4 <list_traversal>:
c0106fd4:	55                   	push   ebp
c0106fd5:	89 e5                	mov    ebp,esp
c0106fd7:	83 ec 28             	sub    esp,0x28
c0106fda:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fdd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106fe0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106fe3:	eb 24                	jmp    c0107009 <list_traversal+0x35>
c0106fe5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0106fe8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106fec:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106fef:	89 04 24             	mov    DWORD PTR [esp],eax
c0106ff2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106ff5:	ff d0                	call   eax
c0106ff7:	85 c0                	test   eax,eax
c0106ff9:	74 05                	je     c0107000 <list_traversal+0x2c>
c0106ffb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106ffe:	eb 19                	jmp    c0107019 <list_traversal+0x45>
c0107000:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107003:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107006:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107009:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010700c:	83 c0 0c             	add    eax,0xc
c010700f:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0107012:	75 d1                	jne    c0106fe5 <list_traversal+0x11>
c0107014:	b8 00 00 00 00       	mov    eax,0x0
c0107019:	c9                   	leave  
c010701a:	c3                   	ret    

c010701b <list_len>:
c010701b:	55                   	push   ebp
c010701c:	89 e5                	mov    ebp,esp
c010701e:	83 ec 10             	sub    esp,0x10
c0107021:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107024:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107027:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010702a:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c0107031:	eb 0d                	jmp    c0107040 <list_len+0x25>
c0107033:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0107037:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010703a:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010703d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107040:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107043:	83 c0 0c             	add    eax,0xc
c0107046:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
c0107049:	75 e8                	jne    c0107033 <list_len+0x18>
c010704b:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c010704e:	c9                   	leave  
c010704f:	c3                   	ret    

c0107050 <list_empty>:
c0107050:	55                   	push   ebp
c0107051:	89 e5                	mov    ebp,esp
c0107053:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107056:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107059:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010705c:	83 c2 0c             	add    edx,0xc
c010705f:	39 d0                	cmp    eax,edx
c0107061:	0f 94 c0             	sete   al
c0107064:	0f b6 c0             	movzx  eax,al
c0107067:	5d                   	pop    ebp
c0107068:	c3                   	ret    
c0107069:	00 00                	add    BYTE PTR [eax],al
	...

c010706c <io_in8>:
c010706c:	55                   	push   ebp
c010706d:	89 e5                	mov    ebp,esp
c010706f:	53                   	push   ebx
c0107070:	83 ec 14             	sub    esp,0x14
c0107073:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107076:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0107079:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c010707c:	ec                   	in     al,dx
c010707d:	89 c3                	mov    ebx,eax
c010707f:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0107082:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107085:	83 c4 14             	add    esp,0x14
c0107088:	5b                   	pop    ebx
c0107089:	5d                   	pop    ebp
c010708a:	c3                   	ret    

c010708b <io_out8>:
c010708b:	55                   	push   ebp
c010708c:	89 e5                	mov    ebp,esp
c010708e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107091:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107094:	ee                   	out    dx,al
c0107095:	5d                   	pop    ebp
c0107096:	c3                   	ret    

c0107097 <put_char>:
c0107097:	55                   	push   ebp
c0107098:	89 e5                	mov    ebp,esp
c010709a:	53                   	push   ebx
c010709b:	83 ec 34             	sub    esp,0x34
c010709e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01070a1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01070a4:	88 55 e4             	mov    BYTE PTR [ebp-0x1c],dl
c01070a7:	88 45 e0             	mov    BYTE PTR [ebp-0x20],al
c01070aa:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c01070af:	8b 00                	mov    eax,DWORD PTR [eax]
c01070b1:	85 c0                	test   eax,eax
c01070b3:	0f 85 fc 00 00 00    	jne    c01071b5 <put_char+0x11e>
c01070b9:	0f b6 45 e4          	movzx  eax,BYTE PTR [ebp-0x1c]
c01070bd:	66 89 45 f2          	mov    WORD PTR [ebp-0xe],ax
c01070c1:	e8 14 04 00 00       	call   c01074da <get_cursor>
c01070c6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01070c9:	0f b6 45 e0          	movzx  eax,BYTE PTR [ebp-0x20]
c01070cd:	83 f8 0d             	cmp    eax,0xd
c01070d0:	77 61                	ja     c0107133 <put_char+0x9c>
c01070d2:	8b 04 85 8c bc 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef4374]
c01070d9:	ff e0                	jmp    eax
c01070db:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c01070df:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c01070e4:	8b 10                	mov    edx,DWORD PTR [eax]
c01070e6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01070e9:	01 c0                	add    eax,eax
c01070eb:	01 d0                	add    eax,edx
c01070ed:	c6 00 20             	mov    BYTE PTR [eax],0x20
c01070f0:	e9 81 00 00 00       	jmp    c0107176 <put_char+0xdf>
c01070f5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01070f8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01070fb:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0107100:	8b 1a                	mov    ebx,DWORD PTR [edx]
c0107102:	ba 00 00 00 00       	mov    edx,0x0
c0107107:	f7 f3                	div    ebx
c0107109:	89 d0                	mov    eax,edx
c010710b:	89 ca                	mov    edx,ecx
c010710d:	29 c2                	sub    edx,eax
c010710f:	89 d0                	mov    eax,edx
c0107111:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107114:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0107119:	8b 10                	mov    edx,DWORD PTR [eax]
c010711b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010711e:	01 d0                	add    eax,edx
c0107120:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107123:	eb 51                	jmp    c0107176 <put_char+0xdf>
c0107125:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107128:	83 c0 04             	add    eax,0x4
c010712b:	83 e0 fc             	and    eax,0xfffffffc
c010712e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107131:	eb 43                	jmp    c0107176 <put_char+0xdf>
c0107133:	0f b6 45 e0          	movzx  eax,BYTE PTR [ebp-0x20]
c0107137:	c1 e0 08             	shl    eax,0x8
c010713a:	89 c2                	mov    edx,eax
c010713c:	0f b7 45 f2          	movzx  eax,WORD PTR [ebp-0xe]
c0107140:	09 d0                	or     eax,edx
c0107142:	66 89 45 f2          	mov    WORD PTR [ebp-0xe],ax
c0107146:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c010714b:	8b 10                	mov    edx,DWORD PTR [eax]
c010714d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107150:	01 c0                	add    eax,eax
c0107152:	01 d0                	add    eax,edx
c0107154:	0f b6 55 e0          	movzx  edx,BYTE PTR [ebp-0x20]
c0107158:	88 10                	mov    BYTE PTR [eax],dl
c010715a:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c010715f:	8b 10                	mov    edx,DWORD PTR [eax]
c0107161:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107164:	01 c0                	add    eax,eax
c0107166:	01 d0                	add    eax,edx
c0107168:	83 c0 01             	add    eax,0x1
c010716b:	0f b6 55 e4          	movzx  edx,BYTE PTR [ebp-0x1c]
c010716f:	88 10                	mov    BYTE PTR [eax],dl
c0107171:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107175:	90                   	nop
c0107176:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0107179:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010717e:	8b 08                	mov    ecx,DWORD PTR [eax]
c0107180:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107185:	8b 00                	mov    eax,DWORD PTR [eax]
c0107187:	0f af c1             	imul   eax,ecx
c010718a:	39 c2                	cmp    edx,eax
c010718c:	72 1c                	jb     c01071aa <put_char+0x113>
c010718e:	e8 dc 02 00 00       	call   c010746f <roll_screen>
c0107193:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107198:	8b 00                	mov    eax,DWORD PTR [eax]
c010719a:	8d 50 ff             	lea    edx,[eax-0x1]
c010719d:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01071a2:	8b 00                	mov    eax,DWORD PTR [eax]
c01071a4:	0f af c2             	imul   eax,edx
c01071a7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01071aa:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01071ad:	89 04 24             	mov    DWORD PTR [esp],eax
c01071b0:	e8 8c 03 00 00       	call   c0107541 <set_cursor>
c01071b5:	90                   	nop
c01071b6:	eb 01                	jmp    c01071b9 <put_char+0x122>
c01071b8:	90                   	nop
c01071b9:	83 c4 34             	add    esp,0x34
c01071bc:	5b                   	pop    ebx
c01071bd:	5d                   	pop    ebp
c01071be:	c3                   	ret    

c01071bf <put_str>:
c01071bf:	55                   	push   ebp
c01071c0:	89 e5                	mov    ebp,esp
c01071c2:	83 ec 28             	sub    esp,0x28
c01071c5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01071c8:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c01071cb:	eb 1d                	jmp    c01071ea <put_str+0x2b>
c01071cd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01071d0:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01071d3:	0f b6 d0             	movzx  edx,al
c01071d6:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c01071da:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01071de:	89 04 24             	mov    DWORD PTR [esp],eax
c01071e1:	e8 b1 fe ff ff       	call   c0107097 <put_char>
c01071e6:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c01071ea:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01071ed:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01071f0:	84 c0                	test   al,al
c01071f2:	75 d9                	jne    c01071cd <put_str+0xe>
c01071f4:	c9                   	leave  
c01071f5:	c3                   	ret    

c01071f6 <put_int>:
c01071f6:	55                   	push   ebp
c01071f7:	89 e5                	mov    ebp,esp
c01071f9:	57                   	push   edi
c01071fa:	53                   	push   ebx
c01071fb:	83 ec 70             	sub    esp,0x70
c01071fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107201:	88 45 a4             	mov    BYTE PTR [ebp-0x5c],al
c0107204:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0107207:	bb 42 00 00 00       	mov    ebx,0x42
c010720c:	b8 00 00 00 00       	mov    eax,0x0
c0107211:	89 d1                	mov    ecx,edx
c0107213:	83 e1 02             	and    ecx,0x2
c0107216:	85 c9                	test   ecx,ecx
c0107218:	74 09                	je     c0107223 <put_int+0x2d>
c010721a:	66 89 02             	mov    WORD PTR [edx],ax
c010721d:	83 c2 02             	add    edx,0x2
c0107220:	83 eb 02             	sub    ebx,0x2
c0107223:	89 d9                	mov    ecx,ebx
c0107225:	c1 e9 02             	shr    ecx,0x2
c0107228:	89 d7                	mov    edi,edx
c010722a:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c010722c:	89 fa                	mov    edx,edi
c010722e:	89 d9                	mov    ecx,ebx
c0107230:	83 e1 02             	and    ecx,0x2
c0107233:	85 c9                	test   ecx,ecx
c0107235:	74 06                	je     c010723d <put_int+0x47>
c0107237:	66 89 02             	mov    WORD PTR [edx],ax
c010723a:	83 c2 02             	add    edx,0x2
c010723d:	89 d9                	mov    ecx,ebx
c010723f:	83 e1 01             	and    ecx,0x1
c0107242:	85 c9                	test   ecx,ecx
c0107244:	74 05                	je     c010724b <put_int+0x55>
c0107246:	88 02                	mov    BYTE PTR [edx],al
c0107248:	83 c2 01             	add    edx,0x1
c010724b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010724e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107252:	8d 45 b6             	lea    eax,[ebp-0x4a]
c0107255:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107259:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010725c:	89 04 24             	mov    DWORD PTR [esp],eax
c010725f:	e8 a2 00 00 00       	call   c0107306 <itoa>
c0107264:	0f b6 45 a4          	movzx  eax,BYTE PTR [ebp-0x5c]
c0107268:	8d 55 b6             	lea    edx,[ebp-0x4a]
c010726b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010726f:	89 04 24             	mov    DWORD PTR [esp],eax
c0107272:	e8 48 ff ff ff       	call   c01071bf <put_str>
c0107277:	83 c4 70             	add    esp,0x70
c010727a:	5b                   	pop    ebx
c010727b:	5f                   	pop    edi
c010727c:	5d                   	pop    ebp
c010727d:	c3                   	ret    

c010727e <put_uint>:
c010727e:	55                   	push   ebp
c010727f:	89 e5                	mov    ebp,esp
c0107281:	57                   	push   edi
c0107282:	53                   	push   ebx
c0107283:	83 ec 70             	sub    esp,0x70
c0107286:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107289:	88 45 a4             	mov    BYTE PTR [ebp-0x5c],al
c010728c:	8d 55 b6             	lea    edx,[ebp-0x4a]
c010728f:	bb 42 00 00 00       	mov    ebx,0x42
c0107294:	b8 00 00 00 00       	mov    eax,0x0
c0107299:	89 d1                	mov    ecx,edx
c010729b:	83 e1 02             	and    ecx,0x2
c010729e:	85 c9                	test   ecx,ecx
c01072a0:	74 09                	je     c01072ab <put_uint+0x2d>
c01072a2:	66 89 02             	mov    WORD PTR [edx],ax
c01072a5:	83 c2 02             	add    edx,0x2
c01072a8:	83 eb 02             	sub    ebx,0x2
c01072ab:	89 d9                	mov    ecx,ebx
c01072ad:	c1 e9 02             	shr    ecx,0x2
c01072b0:	89 d7                	mov    edi,edx
c01072b2:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c01072b4:	89 fa                	mov    edx,edi
c01072b6:	89 d9                	mov    ecx,ebx
c01072b8:	83 e1 02             	and    ecx,0x2
c01072bb:	85 c9                	test   ecx,ecx
c01072bd:	74 06                	je     c01072c5 <put_uint+0x47>
c01072bf:	66 89 02             	mov    WORD PTR [edx],ax
c01072c2:	83 c2 02             	add    edx,0x2
c01072c5:	89 d9                	mov    ecx,ebx
c01072c7:	83 e1 01             	and    ecx,0x1
c01072ca:	85 c9                	test   ecx,ecx
c01072cc:	74 05                	je     c01072d3 <put_uint+0x55>
c01072ce:	88 02                	mov    BYTE PTR [edx],al
c01072d0:	83 c2 01             	add    edx,0x1
c01072d3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01072d6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01072da:	8d 45 b6             	lea    eax,[ebp-0x4a]
c01072dd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01072e1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01072e4:	89 04 24             	mov    DWORD PTR [esp],eax
c01072e7:	e8 d9 00 00 00       	call   c01073c5 <utoa>
c01072ec:	0f b6 45 a4          	movzx  eax,BYTE PTR [ebp-0x5c]
c01072f0:	8d 55 b6             	lea    edx,[ebp-0x4a]
c01072f3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01072f7:	89 04 24             	mov    DWORD PTR [esp],eax
c01072fa:	e8 c0 fe ff ff       	call   c01071bf <put_str>
c01072ff:	83 c4 70             	add    esp,0x70
c0107302:	5b                   	pop    ebx
c0107303:	5f                   	pop    edi
c0107304:	5d                   	pop    ebp
c0107305:	c3                   	ret    

c0107306 <itoa>:
c0107306:	55                   	push   ebp
c0107307:	89 e5                	mov    ebp,esp
c0107309:	83 ec 20             	sub    esp,0x20
c010730c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010730f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107312:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0107316:	79 03                	jns    c010731b <itoa+0x15>
c0107318:	f7 5d 08             	neg    DWORD PTR [ebp+0x8]
c010731b:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0107322:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107325:	89 c1                	mov    ecx,eax
c0107327:	03 4d 0c             	add    ecx,DWORD PTR [ebp+0xc]
c010732a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010732d:	89 c2                	mov    edx,eax
c010732f:	c1 fa 1f             	sar    edx,0x1f
c0107332:	f7 7d 10             	idiv   DWORD PTR [ebp+0x10]
c0107335:	89 d0                	mov    eax,edx
c0107337:	0f b6 80 a0 93 10 c0 	movzx  eax,BYTE PTR [eax-0x3fef6c60]
c010733e:	88 01                	mov    BYTE PTR [ecx],al
c0107340:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0107344:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107347:	89 c2                	mov    edx,eax
c0107349:	c1 fa 1f             	sar    edx,0x1f
c010734c:	f7 7d 10             	idiv   DWORD PTR [ebp+0x10]
c010734f:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0107352:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0107356:	7f ca                	jg     c0107322 <itoa+0x1c>
c0107358:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c010735c:	79 0d                	jns    c010736b <itoa+0x65>
c010735e:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107361:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0107364:	c6 00 2d             	mov    BYTE PTR [eax],0x2d
c0107367:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c010736b:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010736e:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0107371:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0107374:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107377:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c010737a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010737d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107380:	eb 04                	jmp    c0107386 <itoa+0x80>
c0107382:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107386:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107389:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010738c:	84 c0                	test   al,al
c010738e:	75 f2                	jne    c0107382 <itoa+0x7c>
c0107390:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c0107394:	eb 25                	jmp    c01073bb <itoa+0xb5>
c0107396:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107399:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010739c:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c010739f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01073a2:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01073a5:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01073a8:	88 10                	mov    BYTE PTR [eax],dl
c01073aa:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c01073ae:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01073b1:	0f b6 55 ef          	movzx  edx,BYTE PTR [ebp-0x11]
c01073b5:	88 10                	mov    BYTE PTR [eax],dl
c01073b7:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c01073bb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01073be:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
c01073c1:	77 d3                	ja     c0107396 <itoa+0x90>
c01073c3:	c9                   	leave  
c01073c4:	c3                   	ret    

c01073c5 <utoa>:
c01073c5:	55                   	push   ebp
c01073c6:	89 e5                	mov    ebp,esp
c01073c8:	53                   	push   ebx
c01073c9:	83 ec 14             	sub    esp,0x14
c01073cc:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c01073d3:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01073d6:	89 c1                	mov    ecx,eax
c01073d8:	03 4d 0c             	add    ecx,DWORD PTR [ebp+0xc]
c01073db:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c01073de:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01073e1:	ba 00 00 00 00       	mov    edx,0x0
c01073e6:	f7 f3                	div    ebx
c01073e8:	89 d0                	mov    eax,edx
c01073ea:	0f b6 80 60 93 10 c0 	movzx  eax,BYTE PTR [eax-0x3fef6ca0]
c01073f1:	88 01                	mov    BYTE PTR [ecx],al
c01073f3:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c01073f7:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01073fa:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c01073fd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107400:	ba 00 00 00 00       	mov    edx,0x0
c0107405:	f7 75 e8             	div    DWORD PTR [ebp-0x18]
c0107408:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c010740b:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c010740f:	75 c2                	jne    c01073d3 <utoa+0xe>
c0107411:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107414:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0107417:	c6 00 00             	mov    BYTE PTR [eax],0x0
c010741a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010741d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107420:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107423:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107426:	eb 04                	jmp    c010742c <utoa+0x67>
c0107428:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c010742c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010742f:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107432:	84 c0                	test   al,al
c0107434:	75 f2                	jne    c0107428 <utoa+0x63>
c0107436:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c010743a:	eb 25                	jmp    c0107461 <utoa+0x9c>
c010743c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010743f:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107442:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c0107445:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107448:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c010744b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010744e:	88 10                	mov    BYTE PTR [eax],dl
c0107450:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107454:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107457:	0f b6 55 ef          	movzx  edx,BYTE PTR [ebp-0x11]
c010745b:	88 10                	mov    BYTE PTR [eax],dl
c010745d:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c0107461:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107464:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0107467:	77 d3                	ja     c010743c <utoa+0x77>
c0107469:	83 c4 14             	add    esp,0x14
c010746c:	5b                   	pop    ebx
c010746d:	5d                   	pop    ebp
c010746e:	c3                   	ret    

c010746f <roll_screen>:
c010746f:	55                   	push   ebp
c0107470:	89 e5                	mov    ebp,esp
c0107472:	83 ec 10             	sub    esp,0x10
c0107475:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c010747a:	8b 00                	mov    eax,DWORD PTR [eax]
c010747c:	85 c0                	test   eax,eax
c010747e:	75 58                	jne    c01074d8 <roll_screen+0x69>
c0107480:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0107485:	8b 10                	mov    edx,DWORD PTR [eax]
c0107487:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010748c:	8b 00                	mov    eax,DWORD PTR [eax]
c010748e:	01 c0                	add    eax,eax
c0107490:	01 d0                	add    eax,edx
c0107492:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107495:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c010749a:	8b 00                	mov    eax,DWORD PTR [eax]
c010749c:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c010749f:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01074a6:	eb 18                	jmp    c01074c0 <roll_screen+0x51>
c01074a8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01074ab:	0f b7 10             	movzx  edx,WORD PTR [eax]
c01074ae:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01074b1:	66 89 10             	mov    WORD PTR [eax],dx
c01074b4:	83 45 f8 02          	add    DWORD PTR [ebp-0x8],0x2
c01074b8:	83 45 fc 02          	add    DWORD PTR [ebp-0x4],0x2
c01074bc:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01074c0:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01074c3:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01074c8:	8b 08                	mov    ecx,DWORD PTR [eax]
c01074ca:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01074cf:	8b 00                	mov    eax,DWORD PTR [eax]
c01074d1:	0f af c1             	imul   eax,ecx
c01074d4:	39 c2                	cmp    edx,eax
c01074d6:	72 d0                	jb     c01074a8 <roll_screen+0x39>
c01074d8:	c9                   	leave  
c01074d9:	c3                   	ret    

c01074da <get_cursor>:
c01074da:	55                   	push   ebp
c01074db:	89 e5                	mov    ebp,esp
c01074dd:	83 ec 18             	sub    esp,0x18
c01074e0:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c01074e7:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
c01074ee:	00 
c01074ef:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c01074f6:	e8 90 fb ff ff       	call   c010708b <io_out8>
c01074fb:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c0107502:	e8 65 fb ff ff       	call   c010706c <io_in8>
c0107507:	89 c2                	mov    edx,eax
c0107509:	c1 e2 08             	shl    edx,0x8
c010750c:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010750f:	09 d0                	or     eax,edx
c0107511:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107514:	c7 44 24 04 0f 00 00 	mov    DWORD PTR [esp+0x4],0xf
c010751b:	00 
c010751c:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0107523:	e8 63 fb ff ff       	call   c010708b <io_out8>
c0107528:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c010752f:	e8 38 fb ff ff       	call   c010706c <io_in8>
c0107534:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c0107537:	09 d0                	or     eax,edx
c0107539:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010753c:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010753f:	c9                   	leave  
c0107540:	c3                   	ret    

c0107541 <set_cursor>:
c0107541:	55                   	push   ebp
c0107542:	89 e5                	mov    ebp,esp
c0107544:	83 ec 08             	sub    esp,0x8
c0107547:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
c010754e:	00 
c010754f:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0107556:	e8 30 fb ff ff       	call   c010708b <io_out8>
c010755b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010755e:	25 00 ff 00 00       	and    eax,0xff00
c0107563:	c1 e8 08             	shr    eax,0x8
c0107566:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010756a:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c0107571:	e8 15 fb ff ff       	call   c010708b <io_out8>
c0107576:	c7 44 24 04 0f 00 00 	mov    DWORD PTR [esp+0x4],0xf
c010757d:	00 
c010757e:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0107585:	e8 01 fb ff ff       	call   c010708b <io_out8>
c010758a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010758d:	25 ff 00 00 00       	and    eax,0xff
c0107592:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107596:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c010759d:	e8 e9 fa ff ff       	call   c010708b <io_out8>
c01075a2:	c9                   	leave  
c01075a3:	c3                   	ret    

c01075a4 <memset>:
c01075a4:	55                   	push   ebp
c01075a5:	89 e5                	mov    ebp,esp
c01075a7:	83 ec 48             	sub    esp,0x48
c01075aa:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01075ad:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
c01075b0:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c01075b4:	75 2c                	jne    c01075e2 <memset+0x3e>
c01075b6:	c7 44 24 10 e3 bc 10 	mov    DWORD PTR [esp+0x10],0xc010bce3
c01075bd:	c0 
c01075be:	c7 44 24 0c 4a bd 10 	mov    DWORD PTR [esp+0xc],0xc010bd4a
c01075c5:	c0 
c01075c6:	c7 44 24 08 0f 00 00 	mov    DWORD PTR [esp+0x8],0xf
c01075cd:	00 
c01075ce:	c7 44 24 04 f1 bc 10 	mov    DWORD PTR [esp+0x4],0xc010bcf1
c01075d5:	c0 
c01075d6:	c7 04 24 f1 bc 10 c0 	mov    DWORD PTR [esp],0xc010bcf1
c01075dd:	e8 f2 93 ff ff       	call   c01009d4 <panic_spin>
c01075e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01075e5:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01075e8:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01075ef:	eb 11                	jmp    c0107602 <memset+0x5e>
c01075f1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01075f4:	0f b6 55 e4          	movzx  edx,BYTE PTR [ebp-0x1c]
c01075f8:	88 10                	mov    BYTE PTR [eax],dl
c01075fa:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01075fe:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0107602:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107605:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c0107608:	72 e7                	jb     c01075f1 <memset+0x4d>
c010760a:	c9                   	leave  
c010760b:	c3                   	ret    

c010760c <memcpy>:
c010760c:	55                   	push   ebp
c010760d:	89 e5                	mov    ebp,esp
c010760f:	83 ec 38             	sub    esp,0x38
c0107612:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0107616:	74 06                	je     c010761e <memcpy+0x12>
c0107618:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c010761c:	75 2c                	jne    c010764a <memcpy+0x3e>
c010761e:	c7 44 24 10 00 bd 10 	mov    DWORD PTR [esp+0x10],0xc010bd00
c0107625:	c0 
c0107626:	c7 44 24 0c 43 bd 10 	mov    DWORD PTR [esp+0xc],0xc010bd43
c010762d:	c0 
c010762e:	c7 44 24 08 22 00 00 	mov    DWORD PTR [esp+0x8],0x22
c0107635:	00 
c0107636:	c7 44 24 04 f1 bc 10 	mov    DWORD PTR [esp+0x4],0xc010bcf1
c010763d:	c0 
c010763e:	c7 04 24 f1 bc 10 c0 	mov    DWORD PTR [esp],0xc010bcf1
c0107645:	e8 8a 93 ff ff       	call   c01009d4 <panic_spin>
c010764a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010764d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107650:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107653:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107656:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c010765d:	eb 17                	jmp    c0107676 <memcpy+0x6a>
c010765f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107662:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0107665:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107668:	88 10                	mov    BYTE PTR [eax],dl
c010766a:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010766e:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0107672:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0107676:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0107679:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c010767c:	72 e1                	jb     c010765f <memcpy+0x53>
c010767e:	c9                   	leave  
c010767f:	c3                   	ret    

c0107680 <memcmp>:
c0107680:	55                   	push   ebp
c0107681:	89 e5                	mov    ebp,esp
c0107683:	83 ec 38             	sub    esp,0x38
c0107686:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c010768a:	74 06                	je     c0107692 <memcmp+0x12>
c010768c:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0107690:	75 2c                	jne    c01076be <memcmp+0x3e>
c0107692:	c7 44 24 10 1f bd 10 	mov    DWORD PTR [esp+0x10],0xc010bd1f
c0107699:	c0 
c010769a:	c7 44 24 0c 3c bd 10 	mov    DWORD PTR [esp+0xc],0xc010bd3c
c01076a1:	c0 
c01076a2:	c7 44 24 08 3b 00 00 	mov    DWORD PTR [esp+0x8],0x3b
c01076a9:	00 
c01076aa:	c7 44 24 04 f1 bc 10 	mov    DWORD PTR [esp+0x4],0xc010bcf1
c01076b1:	c0 
c01076b2:	c7 04 24 f1 bc 10 c0 	mov    DWORD PTR [esp],0xc010bcf1
c01076b9:	e8 16 93 ff ff       	call   c01009d4 <panic_spin>
c01076be:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01076c1:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01076c4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01076c7:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01076ca:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01076d1:	eb 14                	jmp    c01076e7 <memcmp+0x67>
c01076d3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01076d6:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01076d9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01076dc:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01076df:	38 c2                	cmp    dl,al
c01076e1:	75 0e                	jne    c01076f1 <memcmp+0x71>
c01076e3:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01076e7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01076ea:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c01076ed:	72 e4                	jb     c01076d3 <memcmp+0x53>
c01076ef:	eb 01                	jmp    c01076f2 <memcmp+0x72>
c01076f1:	90                   	nop
c01076f2:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01076f5:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01076f8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01076fb:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01076fe:	38 c2                	cmp    dl,al
c0107700:	72 16                	jb     c0107718 <memcmp+0x98>
c0107702:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107705:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0107708:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010770b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010770e:	38 c2                	cmp    dl,al
c0107710:	0f 97 c0             	seta   al
c0107713:	0f b6 c0             	movzx  eax,al
c0107716:	eb 05                	jmp    c010771d <memcmp+0x9d>
c0107718:	b8 ff ff ff ff       	mov    eax,0xffffffff
c010771d:	c9                   	leave  
c010771e:	c3                   	ret    

c010771f <strcpy>:
c010771f:	55                   	push   ebp
c0107720:	89 e5                	mov    ebp,esp
c0107722:	83 ec 10             	sub    esp,0x10
c0107725:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107728:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010772b:	90                   	nop
c010772c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010772f:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0107732:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107735:	88 10                	mov    BYTE PTR [eax],dl
c0107737:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010773a:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010773d:	84 c0                	test   al,al
c010773f:	0f 95 c0             	setne  al
c0107742:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c0107746:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c010774a:	84 c0                	test   al,al
c010774c:	75 de                	jne    c010772c <strcpy+0xd>
c010774e:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107751:	c9                   	leave  
c0107752:	c3                   	ret    

c0107753 <strlen>:
c0107753:	55                   	push   ebp
c0107754:	89 e5                	mov    ebp,esp
c0107756:	83 ec 10             	sub    esp,0x10
c0107759:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0107760:	eb 04                	jmp    c0107766 <strlen+0x13>
c0107762:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0107766:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107769:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010776c:	84 c0                	test   al,al
c010776e:	0f 95 c0             	setne  al
c0107771:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c0107775:	84 c0                	test   al,al
c0107777:	75 e9                	jne    c0107762 <strlen+0xf>
c0107779:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010777c:	c9                   	leave  
c010777d:	c3                   	ret    
	...

c0107780 <sprintf>:
c0107780:	55                   	push   ebp
c0107781:	89 e5                	mov    ebp,esp
c0107783:	83 ec 28             	sub    esp,0x28
c0107786:	8d 55 10             	lea    edx,[ebp+0x10]
c0107789:	8d 45 f0             	lea    eax,[ebp-0x10]
c010778c:	89 10                	mov    DWORD PTR [eax],edx
c010778e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107791:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107795:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107798:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010779c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010779f:	89 04 24             	mov    DWORD PTR [esp],eax
c01077a2:	e8 08 00 00 00       	call   c01077af <vsprintf>
c01077a7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01077aa:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01077ad:	c9                   	leave  
c01077ae:	c3                   	ret    

c01077af <vsprintf>:
c01077af:	55                   	push   ebp
c01077b0:	89 e5                	mov    ebp,esp
c01077b2:	53                   	push   ebx
c01077b3:	83 ec 54             	sub    esp,0x54
c01077b6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01077b9:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01077bc:	e9 9d 02 00 00       	jmp    c0107a5e <vsprintf+0x2af>
c01077c1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01077c4:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01077c7:	3c 25                	cmp    al,0x25
c01077c9:	74 14                	je     c01077df <vsprintf+0x30>
c01077cb:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01077ce:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01077d1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01077d4:	88 10                	mov    BYTE PTR [eax],dl
c01077d6:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01077da:	e9 7b 02 00 00       	jmp    c0107a5a <vsprintf+0x2ab>
c01077df:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c01077e3:	c6 45 bb 00          	mov    BYTE PTR [ebp-0x45],0x0
c01077e7:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c01077ee:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [ebp-0x18],0x1
c01077f5:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c01077fc:	eb 44                	jmp    c0107842 <vsprintf+0x93>
c01077fe:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107801:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107804:	0f be c0             	movsx  eax,al
c0107807:	83 e8 20             	sub    eax,0x20
c010780a:	83 f8 10             	cmp    eax,0x10
c010780d:	77 21                	ja     c0107830 <vsprintf+0x81>
c010780f:	8b 04 85 74 bd 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef428c]
c0107816:	ff e0                	jmp    eax
c0107818:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [ebp-0x18],0x1
c010781f:	eb 1d                	jmp    c010783e <vsprintf+0x8f>
c0107821:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0107828:	eb 14                	jmp    c010783e <vsprintf+0x8f>
c010782a:	83 4d ec 01          	or     DWORD PTR [ebp-0x14],0x1
c010782e:	eb 0d                	jmp    c010783d <vsprintf+0x8e>
c0107830:	83 6d 0c 01          	sub    DWORD PTR [ebp+0xc],0x1
c0107834:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010783b:	eb 01                	jmp    c010783e <vsprintf+0x8f>
c010783d:	90                   	nop
c010783e:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0107842:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0107846:	75 b6                	jne    c01077fe <vsprintf+0x4f>
c0107848:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c010784f:	eb 23                	jmp    c0107874 <vsprintf+0xc5>
c0107851:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0107854:	89 d0                	mov    eax,edx
c0107856:	c1 e0 02             	shl    eax,0x2
c0107859:	01 d0                	add    eax,edx
c010785b:	01 c0                	add    eax,eax
c010785d:	89 c2                	mov    edx,eax
c010785f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107862:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107865:	0f be c0             	movsx  eax,al
c0107868:	83 e8 30             	sub    eax,0x30
c010786b:	01 d0                	add    eax,edx
c010786d:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0107870:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0107874:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107877:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010787a:	3c 2f                	cmp    al,0x2f
c010787c:	7e 0a                	jle    c0107888 <vsprintf+0xd9>
c010787e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107881:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107884:	3c 39                	cmp    al,0x39
c0107886:	7e c9                	jle    c0107851 <vsprintf+0xa2>
c0107888:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c010788c:	75 07                	jne    c0107895 <vsprintf+0xe6>
c010788e:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0107895:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107898:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010789b:	0f be c0             	movsx  eax,al
c010789e:	83 f8 6f             	cmp    eax,0x6f
c01078a1:	0f 84 86 00 00 00    	je     c010792d <vsprintf+0x17e>
c01078a7:	83 f8 6f             	cmp    eax,0x6f
c01078aa:	7f 14                	jg     c01078c0 <vsprintf+0x111>
c01078ac:	83 f8 63             	cmp    eax,0x63
c01078af:	74 3a                	je     c01078eb <vsprintf+0x13c>
c01078b1:	83 f8 64             	cmp    eax,0x64
c01078b4:	74 50                	je     c0107906 <vsprintf+0x157>
c01078b6:	83 f8 25             	cmp    eax,0x25
c01078b9:	74 21                	je     c01078dc <vsprintf+0x12d>
c01078bb:	e9 16 01 00 00       	jmp    c01079d6 <vsprintf+0x227>
c01078c0:	83 f8 73             	cmp    eax,0x73
c01078c3:	0f 84 ba 00 00 00    	je     c0107983 <vsprintf+0x1d4>
c01078c9:	83 f8 78             	cmp    eax,0x78
c01078cc:	0f 84 e1 00 00 00    	je     c01079b3 <vsprintf+0x204>
c01078d2:	83 f8 70             	cmp    eax,0x70
c01078d5:	74 7d                	je     c0107954 <vsprintf+0x1a5>
c01078d7:	e9 fa 00 00 00       	jmp    c01079d6 <vsprintf+0x227>
c01078dc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01078df:	c6 00 25             	mov    BYTE PTR [eax],0x25
c01078e2:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01078e6:	e9 eb 00 00 00       	jmp    c01079d6 <vsprintf+0x227>
c01078eb:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01078ee:	8d 50 04             	lea    edx,[eax+0x4]
c01078f1:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c01078f4:	8b 00                	mov    eax,DWORD PTR [eax]
c01078f6:	89 c2                	mov    edx,eax
c01078f8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01078fb:	88 10                	mov    BYTE PTR [eax],dl
c01078fd:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107901:	e9 d0 00 00 00       	jmp    c01079d6 <vsprintf+0x227>
c0107906:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107909:	8d 50 04             	lea    edx,[eax+0x4]
c010790c:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c010790f:	8b 00                	mov    eax,DWORD PTR [eax]
c0107911:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c0107918:	00 
c0107919:	8d 55 bb             	lea    edx,[ebp-0x45]
c010791c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107920:	89 04 24             	mov    DWORD PTR [esp],eax
c0107923:	e8 de f9 ff ff       	call   c0107306 <itoa>
c0107928:	e9 a9 00 00 00       	jmp    c01079d6 <vsprintf+0x227>
c010792d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107930:	8d 50 04             	lea    edx,[eax+0x4]
c0107933:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0107936:	8b 00                	mov    eax,DWORD PTR [eax]
c0107938:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c010793f:	00 
c0107940:	8d 55 bb             	lea    edx,[ebp-0x45]
c0107943:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107947:	89 04 24             	mov    DWORD PTR [esp],eax
c010794a:	e8 b7 f9 ff ff       	call   c0107306 <itoa>
c010794f:	e9 82 00 00 00       	jmp    c01079d6 <vsprintf+0x227>
c0107954:	c6 45 bb 30          	mov    BYTE PTR [ebp-0x45],0x30
c0107958:	c6 45 bc 78          	mov    BYTE PTR [ebp-0x44],0x78
c010795c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010795f:	8d 50 04             	lea    edx,[eax+0x4]
c0107962:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0107965:	8b 00                	mov    eax,DWORD PTR [eax]
c0107967:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
c010796e:	00 
c010796f:	8d 55 bb             	lea    edx,[ebp-0x45]
c0107972:	83 c2 02             	add    edx,0x2
c0107975:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107979:	89 04 24             	mov    DWORD PTR [esp],eax
c010797c:	e8 44 fa ff ff       	call   c01073c5 <utoa>
c0107981:	eb 53                	jmp    c01079d6 <vsprintf+0x227>
c0107983:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107986:	8d 50 04             	lea    edx,[eax+0x4]
c0107989:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c010798c:	8b 00                	mov    eax,DWORD PTR [eax]
c010798e:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0107991:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0107994:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107998:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010799b:	89 04 24             	mov    DWORD PTR [esp],eax
c010799e:	e8 7c fd ff ff       	call   c010771f <strcpy>
c01079a3:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01079a6:	89 04 24             	mov    DWORD PTR [esp],eax
c01079a9:	e8 a5 fd ff ff       	call   c0107753 <strlen>
c01079ae:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
c01079b1:	eb 23                	jmp    c01079d6 <vsprintf+0x227>
c01079b3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01079b6:	8d 50 04             	lea    edx,[eax+0x4]
c01079b9:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c01079bc:	8b 00                	mov    eax,DWORD PTR [eax]
c01079be:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
c01079c5:	00 
c01079c6:	8d 55 bb             	lea    edx,[ebp-0x45]
c01079c9:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01079cd:	89 04 24             	mov    DWORD PTR [esp],eax
c01079d0:	e8 31 f9 ff ff       	call   c0107306 <itoa>
c01079d5:	90                   	nop
c01079d6:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c01079d9:	8d 45 bb             	lea    eax,[ebp-0x45]
c01079dc:	89 04 24             	mov    DWORD PTR [esp],eax
c01079df:	e8 6f fd ff ff       	call   c0107753 <strlen>
c01079e4:	89 da                	mov    edx,ebx
c01079e6:	29 c2                	sub    edx,eax
c01079e8:	89 d0                	mov    eax,edx
c01079ea:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01079ed:	eb 23                	jmp    c0107a12 <vsprintf+0x263>
c01079ef:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01079f2:	83 e0 01             	and    eax,0x1
c01079f5:	84 c0                	test   al,al
c01079f7:	74 07                	je     c0107a00 <vsprintf+0x251>
c01079f9:	b8 30 00 00 00       	mov    eax,0x30
c01079fe:	eb 05                	jmp    c0107a05 <vsprintf+0x256>
c0107a00:	b8 20 00 00 00       	mov    eax,0x20
c0107a05:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0107a08:	88 02                	mov    BYTE PTR [edx],al
c0107a0a:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107a0e:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c0107a12:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c0107a16:	7e 06                	jle    c0107a1e <vsprintf+0x26f>
c0107a18:	83 7d e8 01          	cmp    DWORD PTR [ebp-0x18],0x1
c0107a1c:	74 d1                	je     c01079ef <vsprintf+0x240>
c0107a1e:	8d 45 bb             	lea    eax,[ebp-0x45]
c0107a21:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107a25:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107a28:	89 04 24             	mov    DWORD PTR [esp],eax
c0107a2b:	e8 ef fc ff ff       	call   c010771f <strcpy>
c0107a30:	8d 45 bb             	lea    eax,[ebp-0x45]
c0107a33:	89 04 24             	mov    DWORD PTR [esp],eax
c0107a36:	e8 18 fd ff ff       	call   c0107753 <strlen>
c0107a3b:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
c0107a3e:	eb 0e                	jmp    c0107a4e <vsprintf+0x29f>
c0107a40:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107a43:	c6 00 20             	mov    BYTE PTR [eax],0x20
c0107a46:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107a4a:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c0107a4e:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c0107a52:	7e 06                	jle    c0107a5a <vsprintf+0x2ab>
c0107a54:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0107a58:	74 e6                	je     c0107a40 <vsprintf+0x291>
c0107a5a:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0107a5e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107a61:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107a64:	84 c0                	test   al,al
c0107a66:	0f 85 55 fd ff ff    	jne    c01077c1 <vsprintf+0x12>
c0107a6c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107a6f:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0107a72:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107a75:	89 04 24             	mov    DWORD PTR [esp],eax
c0107a78:	e8 d6 fc ff ff       	call   c0107753 <strlen>
c0107a7d:	83 c4 54             	add    esp,0x54
c0107a80:	5b                   	pop    ebx
c0107a81:	5d                   	pop    ebp
c0107a82:	c3                   	ret    
	...

c0107a84 <rgb>:
c0107a84:	55                   	push   ebp
c0107a85:	89 e5                	mov    ebp,esp
c0107a87:	56                   	push   esi
c0107a88:	53                   	push   ebx
c0107a89:	83 ec 10             	sub    esp,0x10
c0107a8c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0107a93:	c6 45 ef 00          	mov    BYTE PTR [ebp-0x11],0x0
c0107a97:	c6 45 ee 00          	mov    BYTE PTR [ebp-0x12],0x0
c0107a9b:	c6 45 ed 00          	mov    BYTE PTR [ebp-0x13],0x0
c0107a9f:	c6 45 ec 00          	mov    BYTE PTR [ebp-0x14],0x0
c0107aa3:	c6 45 eb 00          	mov    BYTE PTR [ebp-0x15],0x0
c0107aa7:	c6 45 ea 00          	mov    BYTE PTR [ebp-0x16],0x0
c0107aab:	b8 2c 7c 00 c0       	mov    eax,0xc0007c2c
c0107ab0:	8b 00                	mov    eax,DWORD PTR [eax]
c0107ab2:	3d ff 02 00 00       	cmp    eax,0x2ff
c0107ab7:	77 1d                	ja     c0107ad6 <rgb+0x52>
c0107ab9:	c6 45 ef 08          	mov    BYTE PTR [ebp-0x11],0x8
c0107abd:	c6 45 ee 10          	mov    BYTE PTR [ebp-0x12],0x10
c0107ac1:	c6 45 ed 08          	mov    BYTE PTR [ebp-0x13],0x8
c0107ac5:	c6 45 ec 08          	mov    BYTE PTR [ebp-0x14],0x8
c0107ac9:	c6 45 eb 08          	mov    BYTE PTR [ebp-0x15],0x8
c0107acd:	c6 45 ea 00          	mov    BYTE PTR [ebp-0x16],0x0
c0107ad1:	e9 d2 00 00 00       	jmp    c0107ba8 <rgb+0x124>
c0107ad6:	b8 2c 7c 00 c0       	mov    eax,0xc0007c2c
c0107adb:	8b 00                	mov    eax,DWORD PTR [eax]
c0107add:	3d ff 02 00 00       	cmp    eax,0x2ff
c0107ae2:	0f 86 c0 00 00 00    	jbe    c0107ba8 <rgb+0x124>
c0107ae8:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c0107aed:	8b 00                	mov    eax,DWORD PTR [eax]
c0107aef:	89 c2                	mov    edx,eax
c0107af1:	c1 e2 04             	shl    edx,0x4
c0107af4:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0107af9:	8b 00                	mov    eax,DWORD PTR [eax]
c0107afb:	01 d0                	add    eax,edx
c0107afd:	2d ca ff ff 3f       	sub    eax,0x3fffffca
c0107b02:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107b05:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c0107b08:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c0107b0d:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b0f:	89 c2                	mov    edx,eax
c0107b11:	c1 e2 04             	shl    edx,0x4
c0107b14:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0107b19:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b1b:	01 d0                	add    eax,edx
c0107b1d:	2d c9 ff ff 3f       	sub    eax,0x3fffffc9
c0107b22:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107b25:	88 45 ee             	mov    BYTE PTR [ebp-0x12],al
c0107b28:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c0107b2d:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b2f:	89 c2                	mov    edx,eax
c0107b31:	c1 e2 04             	shl    edx,0x4
c0107b34:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0107b39:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b3b:	01 d0                	add    eax,edx
c0107b3d:	2d c8 ff ff 3f       	sub    eax,0x3fffffc8
c0107b42:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107b45:	88 45 ed             	mov    BYTE PTR [ebp-0x13],al
c0107b48:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c0107b4d:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b4f:	89 c2                	mov    edx,eax
c0107b51:	c1 e2 04             	shl    edx,0x4
c0107b54:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0107b59:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b5b:	01 d0                	add    eax,edx
c0107b5d:	2d c7 ff ff 3f       	sub    eax,0x3fffffc7
c0107b62:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107b65:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
c0107b68:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c0107b6d:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b6f:	89 c2                	mov    edx,eax
c0107b71:	c1 e2 04             	shl    edx,0x4
c0107b74:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0107b79:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b7b:	01 d0                	add    eax,edx
c0107b7d:	2d c6 ff ff 3f       	sub    eax,0x3fffffc6
c0107b82:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107b85:	88 45 eb             	mov    BYTE PTR [ebp-0x15],al
c0107b88:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c0107b8d:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b8f:	89 c2                	mov    edx,eax
c0107b91:	c1 e2 04             	shl    edx,0x4
c0107b94:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0107b99:	8b 00                	mov    eax,DWORD PTR [eax]
c0107b9b:	01 d0                	add    eax,edx
c0107b9d:	2d c5 ff ff 3f       	sub    eax,0x3fffffc5
c0107ba2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107ba5:	88 45 ea             	mov    BYTE PTR [ebp-0x16],al
c0107ba8:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107bac:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107baf:	eb 0b                	jmp    c0107bbc <rgb+0x138>
c0107bb1:	d1 65 f4             	shl    DWORD PTR [ebp-0xc],1
c0107bb4:	83 4d f4 01          	or     DWORD PTR [ebp-0xc],0x1
c0107bb8:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c0107bbc:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0107bc0:	7f ef                	jg     c0107bb1 <rgb+0x12d>
c0107bc2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107bc5:	21 45 08             	and    DWORD PTR [ebp+0x8],eax
c0107bc8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0107bcf:	0f b6 45 ed          	movzx  eax,BYTE PTR [ebp-0x13]
c0107bd3:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107bd6:	eb 0b                	jmp    c0107be3 <rgb+0x15f>
c0107bd8:	d1 65 f4             	shl    DWORD PTR [ebp-0xc],1
c0107bdb:	83 4d f4 01          	or     DWORD PTR [ebp-0xc],0x1
c0107bdf:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c0107be3:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0107be7:	7f ef                	jg     c0107bd8 <rgb+0x154>
c0107be9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107bec:	21 45 0c             	and    DWORD PTR [ebp+0xc],eax
c0107bef:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0107bf6:	0f b6 45 eb          	movzx  eax,BYTE PTR [ebp-0x15]
c0107bfa:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107bfd:	eb 0b                	jmp    c0107c0a <rgb+0x186>
c0107bff:	d1 65 f4             	shl    DWORD PTR [ebp-0xc],1
c0107c02:	83 4d f4 01          	or     DWORD PTR [ebp-0xc],0x1
c0107c06:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c0107c0a:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0107c0e:	7f ef                	jg     c0107bff <rgb+0x17b>
c0107c10:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107c13:	21 45 10             	and    DWORD PTR [ebp+0x10],eax
c0107c16:	0f b6 45 ee          	movzx  eax,BYTE PTR [ebp-0x12]
c0107c1a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107c1d:	89 d3                	mov    ebx,edx
c0107c1f:	89 c1                	mov    ecx,eax
c0107c21:	d3 e3                	shl    ebx,cl
c0107c23:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
c0107c27:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0107c2a:	89 d6                	mov    esi,edx
c0107c2c:	89 c1                	mov    ecx,eax
c0107c2e:	d3 e6                	shl    esi,cl
c0107c30:	89 f0                	mov    eax,esi
c0107c32:	09 c3                	or     ebx,eax
c0107c34:	0f b6 45 ea          	movzx  eax,BYTE PTR [ebp-0x16]
c0107c38:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0107c3b:	89 d6                	mov    esi,edx
c0107c3d:	89 c1                	mov    ecx,eax
c0107c3f:	d3 e6                	shl    esi,cl
c0107c41:	89 f0                	mov    eax,esi
c0107c43:	09 d8                	or     eax,ebx
c0107c45:	83 c4 10             	add    esp,0x10
c0107c48:	5b                   	pop    ebx
c0107c49:	5e                   	pop    esi
c0107c4a:	5d                   	pop    ebp
c0107c4b:	c3                   	ret    

c0107c4c <viewFill>:
c0107c4c:	55                   	push   ebp
c0107c4d:	89 e5                	mov    ebp,esp
c0107c4f:	83 ec 10             	sub    esp,0x10
c0107c52:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c0107c57:	8b 00                	mov    eax,DWORD PTR [eax]
c0107c59:	83 f8 01             	cmp    eax,0x1
c0107c5c:	75 52                	jne    c0107cb0 <viewFill+0x64>
c0107c5e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107c61:	25 00 00 00 ff       	and    eax,0xff000000
c0107c66:	3d 00 00 00 ff       	cmp    eax,0xff000000
c0107c6b:	74 46                	je     c0107cb3 <viewFill+0x67>
c0107c6d:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107c70:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0107c73:	eb 31                	jmp    c0107ca6 <viewFill+0x5a>
c0107c75:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0107c78:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107c7b:	eb 1d                	jmp    c0107c9a <viewFill+0x4e>
c0107c7d:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107c80:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
c0107c84:	89 c2                	mov    edx,eax
c0107c86:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107c89:	01 d0                	add    eax,edx
c0107c8b:	c1 e0 02             	shl    eax,0x2
c0107c8e:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0107c91:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0107c94:	89 10                	mov    DWORD PTR [eax],edx
c0107c96:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0107c9a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107c9d:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c0107ca0:	7e db                	jle    c0107c7d <viewFill+0x31>
c0107ca2:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0107ca6:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107ca9:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
c0107cac:	7e c7                	jle    c0107c75 <viewFill+0x29>
c0107cae:	eb 03                	jmp    c0107cb3 <viewFill+0x67>
c0107cb0:	90                   	nop
c0107cb1:	eb 01                	jmp    c0107cb4 <viewFill+0x68>
c0107cb3:	90                   	nop
c0107cb4:	c9                   	leave  
c0107cb5:	c3                   	ret    

c0107cb6 <vput_char>:
c0107cb6:	55                   	push   ebp
c0107cb7:	89 e5                	mov    ebp,esp
c0107cb9:	83 ec 24             	sub    esp,0x24
c0107cbc:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0107cbf:	88 45 dc             	mov    BYTE PTR [ebp-0x24],al
c0107cc2:	0f be 45 dc          	movsx  eax,BYTE PTR [ebp-0x24]
c0107cc6:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0107cc9:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107ccc:	c1 e0 04             	shl    eax,0x4
c0107ccf:	05 60 83 10 c0       	add    eax,0xc0108360
c0107cd4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107cd7:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c0107cdc:	8b 00                	mov    eax,DWORD PTR [eax]
c0107cde:	83 f8 01             	cmp    eax,0x1
c0107ce1:	0f 85 e8 00 00 00    	jne    c0107dcf <vput_char+0x119>
c0107ce7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0107cee:	e9 d2 00 00 00       	jmp    c0107dc5 <vput_char+0x10f>
c0107cf3:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107cf6:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0107cf9:	01 d0                	add    eax,edx
c0107cfb:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
c0107cff:	03 45 10             	add    eax,DWORD PTR [ebp+0x10]
c0107d02:	c1 e0 02             	shl    eax,0x2
c0107d05:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0107d08:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107d0b:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107d0e:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0107d11:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107d14:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c0107d17:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107d1b:	84 c0                	test   al,al
c0107d1d:	79 08                	jns    c0107d27 <vput_char+0x71>
c0107d1f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107d22:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0107d25:	89 10                	mov    DWORD PTR [eax],edx
c0107d27:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107d2b:	83 e0 40             	and    eax,0x40
c0107d2e:	85 c0                	test   eax,eax
c0107d30:	74 0b                	je     c0107d3d <vput_char+0x87>
c0107d32:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107d35:	8d 50 04             	lea    edx,[eax+0x4]
c0107d38:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107d3b:	89 02                	mov    DWORD PTR [edx],eax
c0107d3d:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107d41:	83 e0 20             	and    eax,0x20
c0107d44:	85 c0                	test   eax,eax
c0107d46:	74 0b                	je     c0107d53 <vput_char+0x9d>
c0107d48:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107d4b:	8d 50 08             	lea    edx,[eax+0x8]
c0107d4e:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107d51:	89 02                	mov    DWORD PTR [edx],eax
c0107d53:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107d57:	83 e0 10             	and    eax,0x10
c0107d5a:	85 c0                	test   eax,eax
c0107d5c:	74 0b                	je     c0107d69 <vput_char+0xb3>
c0107d5e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107d61:	8d 50 0c             	lea    edx,[eax+0xc]
c0107d64:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107d67:	89 02                	mov    DWORD PTR [edx],eax
c0107d69:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107d6d:	83 e0 08             	and    eax,0x8
c0107d70:	85 c0                	test   eax,eax
c0107d72:	74 0b                	je     c0107d7f <vput_char+0xc9>
c0107d74:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107d77:	8d 50 10             	lea    edx,[eax+0x10]
c0107d7a:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107d7d:	89 02                	mov    DWORD PTR [edx],eax
c0107d7f:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107d83:	83 e0 04             	and    eax,0x4
c0107d86:	85 c0                	test   eax,eax
c0107d88:	74 0b                	je     c0107d95 <vput_char+0xdf>
c0107d8a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107d8d:	8d 50 14             	lea    edx,[eax+0x14]
c0107d90:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107d93:	89 02                	mov    DWORD PTR [edx],eax
c0107d95:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107d99:	83 e0 02             	and    eax,0x2
c0107d9c:	85 c0                	test   eax,eax
c0107d9e:	74 0b                	je     c0107dab <vput_char+0xf5>
c0107da0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107da3:	8d 50 18             	lea    edx,[eax+0x18]
c0107da6:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107da9:	89 02                	mov    DWORD PTR [edx],eax
c0107dab:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107daf:	83 e0 01             	and    eax,0x1
c0107db2:	84 c0                	test   al,al
c0107db4:	74 0b                	je     c0107dc1 <vput_char+0x10b>
c0107db6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107db9:	8d 50 1c             	lea    edx,[eax+0x1c]
c0107dbc:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107dbf:	89 02                	mov    DWORD PTR [edx],eax
c0107dc1:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0107dc5:	83 7d fc 0f          	cmp    DWORD PTR [ebp-0x4],0xf
c0107dc9:	0f 8e 24 ff ff ff    	jle    c0107cf3 <vput_char+0x3d>
c0107dcf:	c9                   	leave  
c0107dd0:	c3                   	ret    

c0107dd1 <vput_str>:
c0107dd1:	55                   	push   ebp
c0107dd2:	89 e5                	mov    ebp,esp
c0107dd4:	83 ec 28             	sub    esp,0x28
c0107dd7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107dda:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107ddd:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0107de0:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0107de3:	eb 5c                	jmp    c0107e41 <vput_str+0x70>
c0107de5:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0107de8:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107deb:	0f be c0             	movsx  eax,al
c0107dee:	83 f8 0a             	cmp    eax,0xa
c0107df1:	74 05                	je     c0107df8 <vput_str+0x27>
c0107df3:	83 f8 0d             	cmp    eax,0xd
c0107df6:	75 0c                	jne    c0107e04 <vput_str+0x33>
c0107df8:	83 45 f8 10          	add    DWORD PTR [ebp-0x8],0x10
c0107dfc:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107dff:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107e02:	eb 39                	jmp    c0107e3d <vput_str+0x6c>
c0107e04:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0107e07:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107e0a:	0f be c0             	movsx  eax,al
c0107e0d:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
c0107e11:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107e14:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0107e18:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107e1b:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0107e1f:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107e22:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107e26:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107e29:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107e2d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107e30:	89 04 24             	mov    DWORD PTR [esp],eax
c0107e33:	e8 7e fe ff ff       	call   c0107cb6 <vput_char>
c0107e38:	83 45 fc 08          	add    DWORD PTR [ebp-0x4],0x8
c0107e3c:	90                   	nop
c0107e3d:	83 45 1c 01          	add    DWORD PTR [ebp+0x1c],0x1
c0107e41:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0107e44:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107e47:	84 c0                	test   al,al
c0107e49:	75 9a                	jne    c0107de5 <vput_str+0x14>
c0107e4b:	c9                   	leave  
c0107e4c:	c3                   	ret    

c0107e4d <init_screen>:
c0107e4d:	55                   	push   ebp
c0107e4e:	89 e5                	mov    ebp,esp
c0107e50:	57                   	push   edi
c0107e51:	56                   	push   esi
c0107e52:	53                   	push   ebx
c0107e53:	83 ec 34             	sub    esp,0x34
c0107e56:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0107e5b:	8b 00                	mov    eax,DWORD PTR [eax]
c0107e5d:	d1 e8                	shr    eax,1
c0107e5f:	2d 96 00 00 00       	sub    eax,0x96
c0107e64:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0107e67:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107e6c:	8b 00                	mov    eax,DWORD PTR [eax]
c0107e6e:	d1 e8                	shr    eax,1
c0107e70:	2d 96 00 00 00       	sub    eax,0x96
c0107e75:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0107e78:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0107e7f:	e9 76 01 00 00       	jmp    c0107ffa <init_screen+0x1ad>
c0107e84:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0107e8b:	e9 5c 01 00 00       	jmp    c0107fec <init_screen+0x19f>
c0107e90:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0107e93:	89 d0                	mov    eax,edx
c0107e95:	c1 e0 04             	shl    eax,0x4
c0107e98:	29 d0                	sub    eax,edx
c0107e9a:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c0107e9d:	05 20 80 10 c0       	add    eax,0xc0108020
c0107ea2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107ea5:	3c 23                	cmp    al,0x23
c0107ea7:	0f 85 a0 00 00 00    	jne    c0107f4d <init_screen+0x100>
c0107ead:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107eb0:	8d 50 01             	lea    edx,[eax+0x1]
c0107eb3:	89 d0                	mov    eax,edx
c0107eb5:	c1 e0 02             	shl    eax,0x2
c0107eb8:	01 d0                	add    eax,edx
c0107eba:	c1 e0 02             	shl    eax,0x2
c0107ebd:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0107ec0:	01 c2                	add    edx,eax
c0107ec2:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c0107ec5:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0107ec8:	8d 50 01             	lea    edx,[eax+0x1]
c0107ecb:	89 d0                	mov    eax,edx
c0107ecd:	c1 e0 02             	shl    eax,0x2
c0107ed0:	01 d0                	add    eax,edx
c0107ed2:	c1 e0 02             	shl    eax,0x2
c0107ed5:	89 c7                	mov    edi,eax
c0107ed7:	03 7d e8             	add    edi,DWORD PTR [ebp-0x18]
c0107eda:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0107edd:	89 d0                	mov    eax,edx
c0107edf:	c1 e0 02             	shl    eax,0x2
c0107ee2:	01 d0                	add    eax,edx
c0107ee4:	c1 e0 02             	shl    eax,0x2
c0107ee7:	89 c6                	mov    esi,eax
c0107ee9:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
c0107eec:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0107eef:	89 d0                	mov    eax,edx
c0107ef1:	c1 e0 02             	shl    eax,0x2
c0107ef4:	01 d0                	add    eax,edx
c0107ef6:	c1 e0 02             	shl    eax,0x2
c0107ef9:	89 c3                	mov    ebx,eax
c0107efb:	03 5d e8             	add    ebx,DWORD PTR [ebp-0x18]
c0107efe:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0107f05:	00 
c0107f06:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0107f0d:	00 
c0107f0e:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0107f15:	e8 6a fb ff ff       	call   c0107a84 <rgb>
c0107f1a:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0107f1f:	8b 12                	mov    edx,DWORD PTR [edx]
c0107f21:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
c0107f24:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c0107f28:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0107f2c:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0107f30:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0107f34:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107f38:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107f3c:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0107f43:	e8 04 fd ff ff       	call   c0107c4c <viewFill>
c0107f48:	e9 9b 00 00 00       	jmp    c0107fe8 <init_screen+0x19b>
c0107f4d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107f50:	8d 50 01             	lea    edx,[eax+0x1]
c0107f53:	89 d0                	mov    eax,edx
c0107f55:	c1 e0 02             	shl    eax,0x2
c0107f58:	01 d0                	add    eax,edx
c0107f5a:	c1 e0 02             	shl    eax,0x2
c0107f5d:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0107f60:	01 c2                	add    edx,eax
c0107f62:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0107f65:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0107f68:	8d 50 01             	lea    edx,[eax+0x1]
c0107f6b:	89 d0                	mov    eax,edx
c0107f6d:	c1 e0 02             	shl    eax,0x2
c0107f70:	01 d0                	add    eax,edx
c0107f72:	c1 e0 02             	shl    eax,0x2
c0107f75:	89 c7                	mov    edi,eax
c0107f77:	03 7d e8             	add    edi,DWORD PTR [ebp-0x18]
c0107f7a:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0107f7d:	89 d0                	mov    eax,edx
c0107f7f:	c1 e0 02             	shl    eax,0x2
c0107f82:	01 d0                	add    eax,edx
c0107f84:	c1 e0 02             	shl    eax,0x2
c0107f87:	89 c6                	mov    esi,eax
c0107f89:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
c0107f8c:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0107f8f:	89 d0                	mov    eax,edx
c0107f91:	c1 e0 02             	shl    eax,0x2
c0107f94:	01 d0                	add    eax,edx
c0107f96:	c1 e0 02             	shl    eax,0x2
c0107f99:	89 c3                	mov    ebx,eax
c0107f9b:	03 5d e8             	add    ebx,DWORD PTR [ebp-0x18]
c0107f9e:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0107fa5:	00 
c0107fa6:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0107fad:	00 
c0107fae:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0107fb5:	e8 ca fa ff ff       	call   c0107a84 <rgb>
c0107fba:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0107fbf:	8b 12                	mov    edx,DWORD PTR [edx]
c0107fc1:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
c0107fc4:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c0107fc8:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0107fcc:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0107fd0:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0107fd4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107fd8:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107fdc:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0107fe3:	e8 64 fc ff ff       	call   c0107c4c <viewFill>
c0107fe8:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0107fec:	83 7d ec 0e          	cmp    DWORD PTR [ebp-0x14],0xe
c0107ff0:	0f 8e 9a fe ff ff    	jle    c0107e90 <init_screen+0x43>
c0107ff6:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0107ffa:	83 7d f0 0e          	cmp    DWORD PTR [ebp-0x10],0xe
c0107ffe:	0f 8e 80 fe ff ff    	jle    c0107e84 <init_screen+0x37>
c0108004:	83 c4 34             	add    esp,0x34
c0108007:	5b                   	pop    ebx
c0108008:	5e                   	pop    esi
c0108009:	5f                   	pop    edi
c010800a:	5d                   	pop    ebp
c010800b:	c3                   	ret    

Disassembly of section .data:

c0108020 <PencilLogo>:
c0108020:	20 20                	and    BYTE PTR [eax],ah
c0108022:	20 20                	and    BYTE PTR [eax],ah
c0108024:	20 20                	and    BYTE PTR [eax],ah
c0108026:	20 20                	and    BYTE PTR [eax],ah
c0108028:	20 20                	and    BYTE PTR [eax],ah
c010802a:	20 20                	and    BYTE PTR [eax],ah
c010802c:	20 20                	and    BYTE PTR [eax],ah
c010802e:	20 20                	and    BYTE PTR [eax],ah
c0108030:	23 23                	and    esp,DWORD PTR [ebx]
c0108032:	23 23                	and    esp,DWORD PTR [ebx]
c0108034:	23 23                	and    esp,DWORD PTR [ebx]
c0108036:	23 23                	and    esp,DWORD PTR [ebx]
c0108038:	23 23                	and    esp,DWORD PTR [ebx]
c010803a:	23 23                	and    esp,DWORD PTR [ebx]
c010803c:	23 20                	and    esp,DWORD PTR [eax]
c010803e:	20 23                	and    BYTE PTR [ebx],ah
c0108040:	20 20                	and    BYTE PTR [eax],ah
c0108042:	20 20                	and    BYTE PTR [eax],ah
c0108044:	20 20                	and    BYTE PTR [eax],ah
c0108046:	20 20                	and    BYTE PTR [eax],ah
c0108048:	20 20                	and    BYTE PTR [eax],ah
c010804a:	20 23                	and    BYTE PTR [ebx],ah
c010804c:	20 20                	and    BYTE PTR [eax],ah
c010804e:	23 20                	and    esp,DWORD PTR [eax]
c0108050:	20 20                	and    BYTE PTR [eax],ah
c0108052:	20 20                	and    BYTE PTR [eax],ah
c0108054:	20 20                	and    BYTE PTR [eax],ah
c0108056:	20 20                	and    BYTE PTR [eax],ah
c0108058:	20 20                	and    BYTE PTR [eax],ah
c010805a:	23 20                	and    esp,DWORD PTR [eax]
c010805c:	20 23                	and    BYTE PTR [ebx],ah
c010805e:	20 20                	and    BYTE PTR [eax],ah
c0108060:	20 20                	and    BYTE PTR [eax],ah
c0108062:	20 20                	and    BYTE PTR [eax],ah
c0108064:	20 20                	and    BYTE PTR [eax],ah
c0108066:	20 20                	and    BYTE PTR [eax],ah
c0108068:	20 23                	and    BYTE PTR [ebx],ah
c010806a:	20 20                	and    BYTE PTR [eax],ah
c010806c:	23 20                	and    esp,DWORD PTR [eax]
c010806e:	20 20                	and    BYTE PTR [eax],ah
c0108070:	23 23                	and    esp,DWORD PTR [ebx]
c0108072:	23 23                	and    esp,DWORD PTR [ebx]
c0108074:	23 20                	and    esp,DWORD PTR [eax]
c0108076:	20 20                	and    BYTE PTR [eax],ah
c0108078:	23 20                	and    esp,DWORD PTR [eax]
c010807a:	20 23                	and    BYTE PTR [ebx],ah
c010807c:	20 20                	and    BYTE PTR [eax],ah
c010807e:	20 23                	and    BYTE PTR [ebx],ah
c0108080:	20 20                	and    BYTE PTR [eax],ah
c0108082:	20 23                	and    BYTE PTR [ebx],ah
c0108084:	20 20                	and    BYTE PTR [eax],ah
c0108086:	20 23                	and    BYTE PTR [ebx],ah
c0108088:	20 20                	and    BYTE PTR [eax],ah
c010808a:	23 20                	and    esp,DWORD PTR [eax]
c010808c:	20 20                	and    BYTE PTR [eax],ah
c010808e:	23 20                	and    esp,DWORD PTR [eax]
c0108090:	20 20                	and    BYTE PTR [eax],ah
c0108092:	23 20                	and    esp,DWORD PTR [eax]
c0108094:	20 20                	and    BYTE PTR [eax],ah
c0108096:	23 20                	and    esp,DWORD PTR [eax]
c0108098:	20 23                	and    BYTE PTR [ebx],ah
c010809a:	20 20                	and    BYTE PTR [eax],ah
c010809c:	20 23                	and    BYTE PTR [ebx],ah
c010809e:	20 20                	and    BYTE PTR [eax],ah
c01080a0:	20 23                	and    BYTE PTR [ebx],ah
c01080a2:	20 20                	and    BYTE PTR [eax],ah
c01080a4:	20 23                	and    BYTE PTR [ebx],ah
c01080a6:	20 20                	and    BYTE PTR [eax],ah
c01080a8:	23 23                	and    esp,DWORD PTR [ebx]
c01080aa:	23 23                	and    esp,DWORD PTR [ebx]
c01080ac:	23 23                	and    esp,DWORD PTR [ebx]
c01080ae:	23 23                	and    esp,DWORD PTR [ebx]
c01080b0:	23 20                	and    esp,DWORD PTR [eax]
c01080b2:	20 20                	and    BYTE PTR [eax],ah
c01080b4:	23 20                	and    esp,DWORD PTR [eax]
c01080b6:	20 23                	and    BYTE PTR [ebx],ah
c01080b8:	23 20                	and    esp,DWORD PTR [eax]
c01080ba:	20 23                	and    BYTE PTR [ebx],ah
c01080bc:	20 20                	and    BYTE PTR [eax],ah
c01080be:	20 20                	and    BYTE PTR [eax],ah
c01080c0:	20 20                	and    BYTE PTR [eax],ah
c01080c2:	20 23                	and    BYTE PTR [ebx],ah
c01080c4:	20 20                	and    BYTE PTR [eax],ah
c01080c6:	23 20                	and    esp,DWORD PTR [eax]
c01080c8:	23 20                	and    esp,DWORD PTR [eax]
c01080ca:	23 20                	and    esp,DWORD PTR [eax]
c01080cc:	20 20                	and    BYTE PTR [eax],ah
c01080ce:	20 20                	and    BYTE PTR [eax],ah
c01080d0:	20 20                	and    BYTE PTR [eax],ah
c01080d2:	23 20                	and    esp,DWORD PTR [eax]
c01080d4:	20 23                	and    BYTE PTR [ebx],ah
c01080d6:	20 20                	and    BYTE PTR [eax],ah
c01080d8:	23 23                	and    esp,DWORD PTR [ebx]
c01080da:	20 20                	and    BYTE PTR [eax],ah
c01080dc:	20 20                	and    BYTE PTR [eax],ah
c01080de:	20 20                	and    BYTE PTR [eax],ah
c01080e0:	20 23                	and    BYTE PTR [ebx],ah
c01080e2:	20 20                	and    BYTE PTR [eax],ah
c01080e4:	23 23                	and    esp,DWORD PTR [ebx]
c01080e6:	23 23                	and    esp,DWORD PTR [ebx]
c01080e8:	23 23                	and    esp,DWORD PTR [ebx]
c01080ea:	23 23                	and    esp,DWORD PTR [ebx]
c01080ec:	23 23                	and    esp,DWORD PTR [ebx]
c01080ee:	23 23                	and    esp,DWORD PTR [ebx]
c01080f0:	23 20                	and    esp,DWORD PTR [eax]
c01080f2:	20 20                	and    BYTE PTR [eax],ah
c01080f4:	20 20                	and    BYTE PTR [eax],ah
c01080f6:	20 20                	and    BYTE PTR [eax],ah
c01080f8:	20 20                	and    BYTE PTR [eax],ah
c01080fa:	20 20                	and    BYTE PTR [eax],ah
c01080fc:	20 20                	and    BYTE PTR [eax],ah
c01080fe:	20 20                	and    BYTE PTR [eax],ah
c0108100:	20 00                	and    BYTE PTR [eax],al
	...

c0108120 <cursor.1576>:
c0108120:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0108126:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010812b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108130:	2a 2a                	sub    ch,BYTE PTR [edx]
c0108132:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108137:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010813c:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108141:	23 2a                	and    ebp,DWORD PTR [edx]
c0108143:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108148:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010814d:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0108152:	23 2a                	and    ebp,DWORD PTR [edx]
c0108154:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108159:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010815e:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c0108163:	23 2a                	and    ebp,DWORD PTR [edx]
c0108165:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010816a:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010816f:	2d 2a 23 23 23       	sub    eax,0x2323232a
c0108174:	23 2a                	and    ebp,DWORD PTR [edx]
c0108176:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010817b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108180:	2a 23                	sub    ah,BYTE PTR [ebx]
c0108182:	23 23                	and    esp,DWORD PTR [ebx]
c0108184:	23 23                	and    esp,DWORD PTR [ebx]
c0108186:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c010818c:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108191:	23 23                	and    esp,DWORD PTR [ebx]
c0108193:	23 23                	and    esp,DWORD PTR [ebx]
c0108195:	23 23                	and    esp,DWORD PTR [ebx]
c0108197:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c010819d:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c01081a2:	23 23                	and    esp,DWORD PTR [ebx]
c01081a4:	23 23                	and    esp,DWORD PTR [ebx]
c01081a6:	23 23                	and    esp,DWORD PTR [ebx]
c01081a8:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01081ae:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c01081b3:	23 23                	and    esp,DWORD PTR [ebx]
c01081b5:	2a 2a                	sub    ch,BYTE PTR [edx]
c01081b7:	2a 2a                	sub    ch,BYTE PTR [edx]
c01081b9:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01081bf:	2d 2a 23 23 2a       	sub    eax,0x2a23232a
c01081c4:	23 2a                	and    ebp,DWORD PTR [edx]
c01081c6:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01081cb:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01081d0:	2a 23                	sub    ah,BYTE PTR [ebx]
c01081d2:	2a 2d 2a 23 2a 2d    	sub    ch,BYTE PTR ds:0x2d2a232a
c01081d8:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01081dd:	2d 2d 2d 2a 2a       	sub    eax,0x2a2a2d2d
c01081e2:	2d 2d 2a 23 2a       	sub    eax,0x2a232a2d
c01081e7:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01081ec:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c01081f1:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c01081f6:	23 2a                	and    ebp,DWORD PTR [edx]
c01081f8:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01081fd:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108202:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0108207:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c010820d:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108212:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108217:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010821c:	2d 2d 2d 2d 44       	sub    eax,0x442d2d2d

c0108220 <intr_entry_table>:
c0108220:	44                   	inc    esp
c0108221:	0b 10                	or     edx,DWORD PTR [eax]
c0108223:	c0 67 0b 10          	shl    BYTE PTR [edi+0xb],0x10
c0108227:	c0 8a 0b 10 c0 ad 0b 	ror    BYTE PTR [edx-0x523feff5],0xb
c010822e:	10 c0                	adc    al,al
c0108230:	d0 0b                	ror    BYTE PTR [ebx],1
c0108232:	10 c0                	adc    al,al
c0108234:	f3 0b 10             	repz or edx,DWORD PTR [eax]
c0108237:	c0 16 0c             	rcl    BYTE PTR [esi],0xc
c010823a:	10 c0                	adc    al,al
c010823c:	39 0c 10             	cmp    DWORD PTR [eax+edx*1],ecx
c010823f:	c0 5c 0c 10 c0       	rcr    BYTE PTR [esp+ecx*1+0x10],0xc0
c0108244:	7b 0c                	jnp    c0108252 <intr_entry_table+0x32>
c0108246:	10 c0                	adc    al,al
c0108248:	9e                   	sahf   
c0108249:	0c 10                	or     al,0x10
c010824b:	c0 bd 0c 10 c0 dc 0c 	sar    BYTE PTR [ebp-0x233feff4],0xc
c0108252:	10 c0                	adc    al,al
c0108254:	ff 0c 10             	dec    DWORD PTR [eax+edx*1]
c0108257:	c0 1e 0d             	rcr    BYTE PTR [esi],0xd
c010825a:	10 c0                	adc    al,al
c010825c:	3d 0d 10 c0 60       	cmp    eax,0x60c0100d
c0108261:	0d 10 c0 83 0d       	or     eax,0xd83c010
c0108266:	10 c0                	adc    al,al
c0108268:	a2 0d 10 c0 c5       	mov    ds:0xc5c0100d,al
c010826d:	0d 10 c0 e8 0d       	or     eax,0xde8c010
c0108272:	10 c0                	adc    al,al
c0108274:	0b 0e                	or     ecx,DWORD PTR [esi]
c0108276:	10 c0                	adc    al,al
c0108278:	2e 0e                	cs push cs
c010827a:	10 c0                	adc    al,al
c010827c:	51                   	push   ecx
c010827d:	0e                   	push   cs
c010827e:	10 c0                	adc    al,al
c0108280:	74 0e                	je     c0108290 <intr_entry_table+0x70>
c0108282:	10 c0                	adc    al,al
c0108284:	93                   	xchg   ebx,eax
c0108285:	0e                   	push   cs
c0108286:	10 c0                	adc    al,al
c0108288:	b6 0e                	mov    dh,0xe
c010828a:	10 c0                	adc    al,al
c010828c:	d5 0e                	aad    0xe
c010828e:	10 c0                	adc    al,al
c0108290:	f4                   	hlt    
c0108291:	0e                   	push   cs
c0108292:	10 c0                	adc    al,al
c0108294:	17                   	pop    ss
c0108295:	0f 10 c0             	movups xmm0,xmm0
c0108298:	36 0f 10 c0          	ss movups xmm0,xmm0
c010829c:	55                   	push   ebp
c010829d:	0f 10 c0             	movups xmm0,xmm0
c01082a0:	78 0f                	js     c01082b1 <intr_entry_table+0x91>
c01082a2:	10 c0                	adc    al,al
c01082a4:	9b                   	fwait
c01082a5:	0f 10 c0             	movups xmm0,xmm0
c01082a8:	be 0f 10 c0 e1       	mov    esi,0xe1c0100f
c01082ad:	0f 10 c0             	movups xmm0,xmm0
c01082b0:	04 10                	add    al,0x10
c01082b2:	10 c0                	adc    al,al
c01082b4:	27                   	daa    
c01082b5:	10 10                	adc    BYTE PTR [eax],dl
c01082b7:	c0 4a 10 10          	ror    BYTE PTR [edx+0x10],0x10
c01082bb:	c0 6d 10 10          	shr    BYTE PTR [ebp+0x10],0x10
c01082bf:	c0 90 10 10 c0 b3 10 	rcl    BYTE PTR [eax-0x4c3feff0],0x10
c01082c6:	10 c0                	adc    al,al
c01082c8:	d6                   	(bad)  
c01082c9:	10 10                	adc    BYTE PTR [eax],dl
c01082cb:	c0 f9 10             	sar    cl,0x10
c01082ce:	10 c0                	adc    al,al
c01082d0:	1c 11                	sbb    al,0x11
c01082d2:	10 c0                	adc    al,al
c01082d4:	3f                   	aas    
c01082d5:	11 10                	adc    DWORD PTR [eax],edx
c01082d7:	c0 62 11 10          	shl    BYTE PTR [edx+0x11],0x10
c01082db:	c0 85 11 10 c0 00 00 	rol    BYTE PTR [ebp+0xc01011],0x0

c01082e0 <keymap>:
c01082e0:	00 00                	add    BYTE PTR [eax],al
c01082e2:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c01082e4:	31 21                	xor    DWORD PTR [ecx],esp
c01082e6:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c01082e9:	23 34 24             	and    esi,DWORD PTR [esp]
c01082ec:	35 25 36 5e 37       	xor    eax,0x375e3625
c01082f1:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c01082f4:	39 28                	cmp    DWORD PTR [eax],ebp
c01082f6:	30 29                	xor    BYTE PTR [ecx],ch
c01082f8:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c01082fd:	08 09                	or     BYTE PTR [ecx],cl
c01082ff:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c0108302:	77 57                	ja     c010835b <keymap+0x7b>
c0108304:	65 45                	gs inc ebp
c0108306:	72 52                	jb     c010835a <keymap+0x7a>
c0108308:	74 54                	je     c010835e <keymap+0x7e>
c010830a:	79 59                	jns    c0108365 <PKnFont+0x5>
c010830c:	75 55                	jne    c0108363 <PKnFont+0x3>
c010830e:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c0108315:	7b 5d                	jnp    c0108374 <PKnFont+0x14>
c0108317:	7d 0d                	jge    c0108326 <keymap+0x46>
c0108319:	0d 00 00 61 41       	or     eax,0x41610000
c010831e:	73 53                	jae    c0108373 <PKnFont+0x13>
c0108320:	64 44                	fs inc esp
c0108322:	66 46                	inc    si
c0108324:	67 47                	addr16 inc edi
c0108326:	68 48 6a 4a 6b       	push   0x6b4a6a48
c010832b:	4b                   	dec    ebx
c010832c:	6c                   	ins    BYTE PTR es:[edi],dx
c010832d:	4c                   	dec    esp
c010832e:	3b 3a                	cmp    edi,DWORD PTR [edx]
c0108330:	27                   	daa    
c0108331:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c0108334:	00 00                	add    BYTE PTR [eax],al
c0108336:	5c                   	pop    esp
c0108337:	7c 7a                	jl     c01083b3 <PKnFont+0x53>
c0108339:	5a                   	pop    edx
c010833a:	78 58                	js     c0108394 <PKnFont+0x34>
c010833c:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c010833f:	56                   	push   esi
c0108340:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c0108343:	4e                   	dec    esi
c0108344:	6d                   	ins    DWORD PTR es:[edi],dx
c0108345:	4d                   	dec    ebp
c0108346:	2c 3c                	sub    al,0x3c
c0108348:	2e 3e 2f             	cs ds das 
c010834b:	3f                   	aas    
c010834c:	00 00                	add    BYTE PTR [eax],al
c010834e:	2a 2a                	sub    ch,BYTE PTR [edx]
c0108350:	00 00                	add    BYTE PTR [eax],al
c0108352:	20 20                	and    BYTE PTR [eax],ah
	...

c0108360 <PKnFont>:
	...
c0108570:	00 10                	add    BYTE PTR [eax],dl
c0108572:	10 10                	adc    BYTE PTR [eax],dl
c0108574:	10 10                	adc    BYTE PTR [eax],dl
c0108576:	10 10                	adc    BYTE PTR [eax],dl
c0108578:	10 10                	adc    BYTE PTR [eax],dl
c010857a:	00 00                	add    BYTE PTR [eax],al
c010857c:	10 10                	adc    BYTE PTR [eax],dl
c010857e:	00 00                	add    BYTE PTR [eax],al
c0108580:	28 28                	sub    BYTE PTR [eax],ch
c0108582:	28 00                	sub    BYTE PTR [eax],al
	...
c0108590:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c0108594:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0108598:	44                   	inc    esp
c0108599:	44                   	inc    esp
c010859a:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c010859e:	00 00                	add    BYTE PTR [eax],al
c01085a0:	10 3a                	adc    BYTE PTR [edx],bh
c01085a2:	56                   	push   esi
c01085a3:	92                   	xchg   edx,eax
c01085a4:	92                   	xchg   edx,eax
c01085a5:	90                   	nop
c01085a6:	50                   	push   eax
c01085a7:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c01085aa:	92                   	xchg   edx,eax
c01085ab:	92                   	xchg   edx,eax
c01085ac:	d4 b8                	aam    0xb8
c01085ae:	10 10                	adc    BYTE PTR [eax],dl
c01085b0:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c01085b6:	10 10                	adc    BYTE PTR [eax],dl
c01085b8:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c01085bb:	52                   	push   edx
c01085bc:	92                   	xchg   edx,eax
c01085bd:	8c 00                	mov    WORD PTR [eax],es
c01085bf:	00 00                	add    BYTE PTR [eax],al
c01085c1:	70 88                	jo     c010854b <PKnFont+0x1eb>
c01085c3:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c01085c9:	92                   	xchg   edx,eax
c01085ca:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c01085d1:	08 10                	or     BYTE PTR [eax],dl
	...
c01085df:	00 02                	add    BYTE PTR [edx],al
c01085e1:	04 08                	add    al,0x8
c01085e3:	08 10                	or     BYTE PTR [eax],dl
c01085e5:	10 10                	adc    BYTE PTR [eax],dl
c01085e7:	10 10                	adc    BYTE PTR [eax],dl
c01085e9:	10 10                	adc    BYTE PTR [eax],dl
c01085eb:	08 08                	or     BYTE PTR [eax],cl
c01085ed:	04 02                	add    al,0x2
c01085ef:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c01085f5:	10 10                	adc    BYTE PTR [eax],dl
c01085f7:	10 10                	adc    BYTE PTR [eax],dl
c01085f9:	10 10                	adc    BYTE PTR [eax],dl
c01085fb:	20 20                	and    BYTE PTR [eax],ah
c01085fd:	40                   	inc    eax
c01085fe:	80 00 00             	add    BYTE PTR [eax],0x0
c0108601:	00 00                	add    BYTE PTR [eax],al
c0108603:	00 00                	add    BYTE PTR [eax],al
c0108605:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c010860b:	10 00                	adc    BYTE PTR [eax],al
	...
c0108615:	10 10                	adc    BYTE PTR [eax],dl
c0108617:	10 fe                	adc    dh,bh
c0108619:	10 10                	adc    BYTE PTR [eax],dl
c010861b:	10 00                	adc    BYTE PTR [eax],al
	...
c0108629:	00 00                	add    BYTE PTR [eax],al
c010862b:	18 18                	sbb    BYTE PTR [eax],bl
c010862d:	08 08                	or     BYTE PTR [eax],cl
c010862f:	10 00                	adc    BYTE PTR [eax],al
c0108631:	00 00                	add    BYTE PTR [eax],al
c0108633:	00 00                	add    BYTE PTR [eax],al
c0108635:	00 00                	add    BYTE PTR [eax],al
c0108637:	00 fe                	add    dh,bh
	...
c0108649:	00 00                	add    BYTE PTR [eax],al
c010864b:	00 18                	add    BYTE PTR [eax],bl
c010864d:	18 00                	sbb    BYTE PTR [eax],al
c010864f:	00 02                	add    BYTE PTR [edx],al
c0108651:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c0108654:	08 08                	or     BYTE PTR [eax],cl
c0108656:	08 10                	or     BYTE PTR [eax],dl
c0108658:	10 20                	adc    BYTE PTR [eax],ah
c010865a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c010865d:	40                   	inc    eax
c010865e:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c0108665:	42                   	inc    edx
c0108666:	42                   	inc    edx
c0108667:	42                   	inc    edx
c0108668:	42                   	inc    edx
c0108669:	42                   	inc    edx
c010866a:	42                   	inc    edx
c010866b:	24 24                	and    al,0x24
c010866d:	18 00                	sbb    BYTE PTR [eax],al
c010866f:	00 00                	add    BYTE PTR [eax],al
c0108671:	08 18                	or     BYTE PTR [eax],bl
c0108673:	28 08                	sub    BYTE PTR [eax],cl
c0108675:	08 08                	or     BYTE PTR [eax],cl
c0108677:	08 08                	or     BYTE PTR [eax],cl
c0108679:	08 08                	or     BYTE PTR [eax],cl
c010867b:	08 08                	or     BYTE PTR [eax],cl
c010867d:	3e 00 00             	add    BYTE PTR ds:[eax],al
c0108680:	00 18                	add    BYTE PTR [eax],bl
c0108682:	24 42                	and    al,0x42
c0108684:	42                   	inc    edx
c0108685:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c0108688:	10 20                	adc    BYTE PTR [eax],ah
c010868a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c010868d:	7e 00                	jle    c010868f <PKnFont+0x32f>
c010868f:	00 00                	add    BYTE PTR [eax],al
c0108691:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c0108694:	02 02                	add    al,BYTE PTR [edx]
c0108696:	04 18                	add    al,0x18
c0108698:	04 02                	add    al,0x2
c010869a:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c010869d:	18 00                	sbb    BYTE PTR [eax],al
c010869f:	00 00                	add    BYTE PTR [eax],al
c01086a1:	0c 0c                	or     al,0xc
c01086a3:	0c 14                	or     al,0x14
c01086a5:	14 14                	adc    al,0x14
c01086a7:	24 24                	and    al,0x24
c01086a9:	44                   	inc    esp
c01086aa:	7e 04                	jle    c01086b0 <PKnFont+0x350>
c01086ac:	04 1e                	add    al,0x1e
c01086ae:	00 00                	add    BYTE PTR [eax],al
c01086b0:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c01086b4:	40                   	inc    eax
c01086b5:	58                   	pop    eax
c01086b6:	64 02 02             	add    al,BYTE PTR fs:[edx]
c01086b9:	02 02                	add    al,BYTE PTR [edx]
c01086bb:	42                   	inc    edx
c01086bc:	24 18                	and    al,0x18
c01086be:	00 00                	add    BYTE PTR [eax],al
c01086c0:	00 18                	add    BYTE PTR [eax],bl
c01086c2:	24 42                	and    al,0x42
c01086c4:	40                   	inc    eax
c01086c5:	58                   	pop    eax
c01086c6:	64 42                	fs inc edx
c01086c8:	42                   	inc    edx
c01086c9:	42                   	inc    edx
c01086ca:	42                   	inc    edx
c01086cb:	42                   	inc    edx
c01086cc:	24 18                	and    al,0x18
c01086ce:	00 00                	add    BYTE PTR [eax],al
c01086d0:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c01086d3:	42                   	inc    edx
c01086d4:	04 04                	add    al,0x4
c01086d6:	08 08                	or     BYTE PTR [eax],cl
c01086d8:	08 10                	or     BYTE PTR [eax],dl
c01086da:	10 10                	adc    BYTE PTR [eax],dl
c01086dc:	10 38                	adc    BYTE PTR [eax],bh
c01086de:	00 00                	add    BYTE PTR [eax],al
c01086e0:	00 18                	add    BYTE PTR [eax],bl
c01086e2:	24 42                	and    al,0x42
c01086e4:	42                   	inc    edx
c01086e5:	42                   	inc    edx
c01086e6:	24 18                	and    al,0x18
c01086e8:	24 42                	and    al,0x42
c01086ea:	42                   	inc    edx
c01086eb:	42                   	inc    edx
c01086ec:	24 18                	and    al,0x18
c01086ee:	00 00                	add    BYTE PTR [eax],al
c01086f0:	00 18                	add    BYTE PTR [eax],bl
c01086f2:	24 42                	and    al,0x42
c01086f4:	42                   	inc    edx
c01086f5:	42                   	inc    edx
c01086f6:	42                   	inc    edx
c01086f7:	42                   	inc    edx
c01086f8:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c01086fb:	42                   	inc    edx
c01086fc:	24 18                	and    al,0x18
c01086fe:	00 00                	add    BYTE PTR [eax],al
c0108700:	00 00                	add    BYTE PTR [eax],al
c0108702:	00 00                	add    BYTE PTR [eax],al
c0108704:	00 18                	add    BYTE PTR [eax],bl
c0108706:	18 00                	sbb    BYTE PTR [eax],al
c0108708:	00 00                	add    BYTE PTR [eax],al
c010870a:	00 00                	add    BYTE PTR [eax],al
c010870c:	18 18                	sbb    BYTE PTR [eax],bl
c010870e:	00 00                	add    BYTE PTR [eax],al
c0108710:	00 00                	add    BYTE PTR [eax],al
c0108712:	00 00                	add    BYTE PTR [eax],al
c0108714:	00 18                	add    BYTE PTR [eax],bl
c0108716:	18 00                	sbb    BYTE PTR [eax],al
c0108718:	00 00                	add    BYTE PTR [eax],al
c010871a:	00 18                	add    BYTE PTR [eax],bl
c010871c:	18 08                	sbb    BYTE PTR [eax],cl
c010871e:	08 10                	or     BYTE PTR [eax],dl
c0108720:	00 02                	add    BYTE PTR [edx],al
c0108722:	04 08                	add    al,0x8
c0108724:	10 20                	adc    BYTE PTR [eax],ah
c0108726:	40                   	inc    eax
c0108727:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c010872e:	02 00                	add    al,BYTE PTR [eax]
c0108730:	00 00                	add    BYTE PTR [eax],al
c0108732:	00 00                	add    BYTE PTR [eax],al
c0108734:	00 00                	add    BYTE PTR [eax],al
c0108736:	fe 00                	inc    BYTE PTR [eax]
c0108738:	00 fe                	add    dh,bh
c010873a:	00 00                	add    BYTE PTR [eax],al
c010873c:	00 00                	add    BYTE PTR [eax],al
c010873e:	00 00                	add    BYTE PTR [eax],al
c0108740:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c0108746:	04 02                	add    al,0x2
c0108748:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c010874b:	10 20                	adc    BYTE PTR [eax],ah
c010874d:	40                   	inc    eax
c010874e:	80 00 00             	add    BYTE PTR [eax],0x0
c0108751:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0108755:	82                   	(bad)  
c0108756:	04 08                	add    al,0x8
c0108758:	10 10                	adc    BYTE PTR [eax],dl
c010875a:	00 00                	add    BYTE PTR [eax],al
c010875c:	18 18                	sbb    BYTE PTR [eax],bl
c010875e:	00 00                	add    BYTE PTR [eax],al
c0108760:	00 38                	add    BYTE PTR [eax],bh
c0108762:	44                   	inc    esp
c0108763:	82                   	(bad)  
c0108764:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c010876b:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c010876f:	00 00                	add    BYTE PTR [eax],al
c0108771:	18 18                	sbb    BYTE PTR [eax],bl
c0108773:	18 18                	sbb    BYTE PTR [eax],bl
c0108775:	24 24                	and    al,0x24
c0108777:	24 24                	and    al,0x24
c0108779:	7e 42                	jle    c01087bd <PKnFont+0x45d>
c010877b:	42                   	inc    edx
c010877c:	42                   	inc    edx
c010877d:	e7 00                	out    0x0,eax
c010877f:	00 00                	add    BYTE PTR [eax],al
c0108781:	f0 48                	lock dec eax
c0108783:	44                   	inc    esp
c0108784:	44                   	inc    esp
c0108785:	44                   	inc    esp
c0108786:	48                   	dec    eax
c0108787:	78 44                	js     c01087cd <PKnFont+0x46d>
c0108789:	42                   	inc    edx
c010878a:	42                   	inc    edx
c010878b:	42                   	inc    edx
c010878c:	44                   	inc    esp
c010878d:	f8                   	clc    
c010878e:	00 00                	add    BYTE PTR [eax],al
c0108790:	00 3a                	add    BYTE PTR [edx],bh
c0108792:	46                   	inc    esi
c0108793:	42                   	inc    edx
c0108794:	82                   	(bad)  
c0108795:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c010879c:	44                   	inc    esp
c010879d:	38 00                	cmp    BYTE PTR [eax],al
c010879f:	00 00                	add    BYTE PTR [eax],al
c01087a1:	f8                   	clc    
c01087a2:	44                   	inc    esp
c01087a3:	44                   	inc    esp
c01087a4:	42                   	inc    edx
c01087a5:	42                   	inc    edx
c01087a6:	42                   	inc    edx
c01087a7:	42                   	inc    edx
c01087a8:	42                   	inc    edx
c01087a9:	42                   	inc    edx
c01087aa:	42                   	inc    edx
c01087ab:	44                   	inc    esp
c01087ac:	44                   	inc    esp
c01087ad:	f8                   	clc    
c01087ae:	00 00                	add    BYTE PTR [eax],al
c01087b0:	00 fe                	add    dh,bh
c01087b2:	42                   	inc    edx
c01087b3:	42                   	inc    edx
c01087b4:	40                   	inc    eax
c01087b5:	40                   	inc    eax
c01087b6:	44                   	inc    esp
c01087b7:	7c 44                	jl     c01087fd <PKnFont+0x49d>
c01087b9:	40                   	inc    eax
c01087ba:	40                   	inc    eax
c01087bb:	42                   	inc    edx
c01087bc:	42                   	inc    edx
c01087bd:	fe 00                	inc    BYTE PTR [eax]
c01087bf:	00 00                	add    BYTE PTR [eax],al
c01087c1:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c01087c4:	40                   	inc    eax
c01087c5:	40                   	inc    eax
c01087c6:	44                   	inc    esp
c01087c7:	7c 44                	jl     c010880d <PKnFont+0x4ad>
c01087c9:	44                   	inc    esp
c01087ca:	40                   	inc    eax
c01087cb:	40                   	inc    eax
c01087cc:	40                   	inc    eax
c01087cd:	f0 00 00             	lock add BYTE PTR [eax],al
c01087d0:	00 3a                	add    BYTE PTR [edx],bh
c01087d2:	46                   	inc    esi
c01087d3:	42                   	inc    edx
c01087d4:	82                   	(bad)  
c01087d5:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c01087dc:	46                   	inc    esi
c01087dd:	38 00                	cmp    BYTE PTR [eax],al
c01087df:	00 00                	add    BYTE PTR [eax],al
c01087e1:	e7 42                	out    0x42,eax
c01087e3:	42                   	inc    edx
c01087e4:	42                   	inc    edx
c01087e5:	42                   	inc    edx
c01087e6:	42                   	inc    edx
c01087e7:	7e 42                	jle    c010882b <PKnFont+0x4cb>
c01087e9:	42                   	inc    edx
c01087ea:	42                   	inc    edx
c01087eb:	42                   	inc    edx
c01087ec:	42                   	inc    edx
c01087ed:	e7 00                	out    0x0,eax
c01087ef:	00 00                	add    BYTE PTR [eax],al
c01087f1:	7c 10                	jl     c0108803 <PKnFont+0x4a3>
c01087f3:	10 10                	adc    BYTE PTR [eax],dl
c01087f5:	10 10                	adc    BYTE PTR [eax],dl
c01087f7:	10 10                	adc    BYTE PTR [eax],dl
c01087f9:	10 10                	adc    BYTE PTR [eax],dl
c01087fb:	10 10                	adc    BYTE PTR [eax],dl
c01087fd:	7c 00                	jl     c01087ff <PKnFont+0x49f>
c01087ff:	00 00                	add    BYTE PTR [eax],al
c0108801:	1f                   	pop    ds
c0108802:	04 04                	add    al,0x4
c0108804:	04 04                	add    al,0x4
c0108806:	04 04                	add    al,0x4
c0108808:	04 04                	add    al,0x4
c010880a:	04 04                	add    al,0x4
c010880c:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c010880f:	00 00                	add    BYTE PTR [eax],al
c0108811:	e7 42                	out    0x42,eax
c0108813:	44                   	inc    esp
c0108814:	48                   	dec    eax
c0108815:	50                   	push   eax
c0108816:	50                   	push   eax
c0108817:	60                   	pusha  
c0108818:	50                   	push   eax
c0108819:	50                   	push   eax
c010881a:	48                   	dec    eax
c010881b:	44                   	inc    esp
c010881c:	42                   	inc    edx
c010881d:	e7 00                	out    0x0,eax
c010881f:	00 00                	add    BYTE PTR [eax],al
c0108821:	f0 40                	lock inc eax
c0108823:	40                   	inc    eax
c0108824:	40                   	inc    eax
c0108825:	40                   	inc    eax
c0108826:	40                   	inc    eax
c0108827:	40                   	inc    eax
c0108828:	40                   	inc    eax
c0108829:	40                   	inc    eax
c010882a:	40                   	inc    eax
c010882b:	42                   	inc    edx
c010882c:	42                   	inc    edx
c010882d:	fe 00                	inc    BYTE PTR [eax]
c010882f:	00 00                	add    BYTE PTR [eax],al
c0108831:	c3                   	ret    
c0108832:	42                   	inc    edx
c0108833:	66 66 66 5a          	data16 data16 pop dx
c0108837:	5a                   	pop    edx
c0108838:	5a                   	pop    edx
c0108839:	42                   	inc    edx
c010883a:	42                   	inc    edx
c010883b:	42                   	inc    edx
c010883c:	42                   	inc    edx
c010883d:	e7 00                	out    0x0,eax
c010883f:	00 00                	add    BYTE PTR [eax],al
c0108841:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c0108848:	4a                   	dec    edx
c0108849:	4a                   	dec    edx
c010884a:	4a                   	dec    edx
c010884b:	46                   	inc    esi
c010884c:	46                   	inc    esi
c010884d:	e2 00                	loop   c010884f <PKnFont+0x4ef>
c010884f:	00 00                	add    BYTE PTR [eax],al
c0108851:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0108855:	82                   	(bad)  
c0108856:	82                   	(bad)  
c0108857:	82                   	(bad)  
c0108858:	82                   	(bad)  
c0108859:	82                   	(bad)  
c010885a:	82                   	(bad)  
c010885b:	82                   	(bad)  
c010885c:	44                   	inc    esp
c010885d:	38 00                	cmp    BYTE PTR [eax],al
c010885f:	00 00                	add    BYTE PTR [eax],al
c0108861:	f8                   	clc    
c0108862:	44                   	inc    esp
c0108863:	42                   	inc    edx
c0108864:	42                   	inc    edx
c0108865:	42                   	inc    edx
c0108866:	44                   	inc    esp
c0108867:	78 40                	js     c01088a9 <PKnFont+0x549>
c0108869:	40                   	inc    eax
c010886a:	40                   	inc    eax
c010886b:	40                   	inc    eax
c010886c:	40                   	inc    eax
c010886d:	f0 00 00             	lock add BYTE PTR [eax],al
c0108870:	00 38                	add    BYTE PTR [eax],bh
c0108872:	44                   	inc    esp
c0108873:	82                   	(bad)  
c0108874:	82                   	(bad)  
c0108875:	82                   	(bad)  
c0108876:	82                   	(bad)  
c0108877:	82                   	(bad)  
c0108878:	82                   	(bad)  
c0108879:	82                   	(bad)  
c010887a:	92                   	xchg   edx,eax
c010887b:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c010887f:	00 00                	add    BYTE PTR [eax],al
c0108881:	fc                   	cld    
c0108882:	42                   	inc    edx
c0108883:	42                   	inc    edx
c0108884:	42                   	inc    edx
c0108885:	42                   	inc    edx
c0108886:	7c 44                	jl     c01088cc <PKnFont+0x56c>
c0108888:	42                   	inc    edx
c0108889:	42                   	inc    edx
c010888a:	42                   	inc    edx
c010888b:	42                   	inc    edx
c010888c:	42                   	inc    edx
c010888d:	e7 00                	out    0x0,eax
c010888f:	00 00                	add    BYTE PTR [eax],al
c0108891:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c0108894:	82                   	(bad)  
c0108895:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c0108899:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c010889f:	00 00                	add    BYTE PTR [eax],al
c01088a1:	fe                   	(bad)  
c01088a2:	92                   	xchg   edx,eax
c01088a3:	92                   	xchg   edx,eax
c01088a4:	10 10                	adc    BYTE PTR [eax],dl
c01088a6:	10 10                	adc    BYTE PTR [eax],dl
c01088a8:	10 10                	adc    BYTE PTR [eax],dl
c01088aa:	10 10                	adc    BYTE PTR [eax],dl
c01088ac:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c01088b0:	00 e7                	add    bh,ah
c01088b2:	42                   	inc    edx
c01088b3:	42                   	inc    edx
c01088b4:	42                   	inc    edx
c01088b5:	42                   	inc    edx
c01088b6:	42                   	inc    edx
c01088b7:	42                   	inc    edx
c01088b8:	42                   	inc    edx
c01088b9:	42                   	inc    edx
c01088ba:	42                   	inc    edx
c01088bb:	42                   	inc    edx
c01088bc:	24 3c                	and    al,0x3c
c01088be:	00 00                	add    BYTE PTR [eax],al
c01088c0:	00 e7                	add    bh,ah
c01088c2:	42                   	inc    edx
c01088c3:	42                   	inc    edx
c01088c4:	42                   	inc    edx
c01088c5:	42                   	inc    edx
c01088c6:	24 24                	and    al,0x24
c01088c8:	24 24                	and    al,0x24
c01088ca:	18 18                	sbb    BYTE PTR [eax],bl
c01088cc:	18 18                	sbb    BYTE PTR [eax],bl
c01088ce:	00 00                	add    BYTE PTR [eax],al
c01088d0:	00 e7                	add    bh,ah
c01088d2:	42                   	inc    edx
c01088d3:	42                   	inc    edx
c01088d4:	42                   	inc    edx
c01088d5:	5a                   	pop    edx
c01088d6:	5a                   	pop    edx
c01088d7:	5a                   	pop    edx
c01088d8:	5a                   	pop    edx
c01088d9:	24 24                	and    al,0x24
c01088db:	24 24                	and    al,0x24
c01088dd:	24 00                	and    al,0x0
c01088df:	00 00                	add    BYTE PTR [eax],al
c01088e1:	e7 42                	out    0x42,eax
c01088e3:	42                   	inc    edx
c01088e4:	24 24                	and    al,0x24
c01088e6:	24 18                	and    al,0x18
c01088e8:	24 24                	and    al,0x24
c01088ea:	24 42                	and    al,0x42
c01088ec:	42                   	inc    edx
c01088ed:	e7 00                	out    0x0,eax
c01088ef:	00 00                	add    BYTE PTR [eax],al
c01088f1:	ee                   	out    dx,al
c01088f2:	44                   	inc    esp
c01088f3:	44                   	inc    esp
c01088f4:	44                   	inc    esp
c01088f5:	28 28                	sub    BYTE PTR [eax],ch
c01088f7:	28 10                	sub    BYTE PTR [eax],dl
c01088f9:	10 10                	adc    BYTE PTR [eax],dl
c01088fb:	10 10                	adc    BYTE PTR [eax],dl
c01088fd:	7c 00                	jl     c01088ff <PKnFont+0x59f>
c01088ff:	00 00                	add    BYTE PTR [eax],al
c0108901:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c0108908:	20 20                	and    BYTE PTR [eax],ah
c010890a:	40                   	inc    eax
c010890b:	42                   	inc    edx
c010890c:	82                   	(bad)  
c010890d:	fe 00                	inc    BYTE PTR [eax]
c010890f:	00 00                	add    BYTE PTR [eax],al
c0108911:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c0108914:	20 20                	and    BYTE PTR [eax],ah
c0108916:	20 20                	and    BYTE PTR [eax],ah
c0108918:	20 20                	and    BYTE PTR [eax],ah
c010891a:	20 20                	and    BYTE PTR [eax],ah
c010891c:	20 20                	and    BYTE PTR [eax],ah
c010891e:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c0108925:	20 20                	and    BYTE PTR [eax],ah
c0108927:	10 10                	adc    BYTE PTR [eax],dl
c0108929:	08 08                	or     BYTE PTR [eax],cl
c010892b:	04 04                	add    al,0x4
c010892d:	04 02                	add    al,0x2
c010892f:	02 00                	add    al,BYTE PTR [eax]
c0108931:	7c 04                	jl     c0108937 <PKnFont+0x5d7>
c0108933:	04 04                	add    al,0x4
c0108935:	04 04                	add    al,0x4
c0108937:	04 04                	add    al,0x4
c0108939:	04 04                	add    al,0x4
c010893b:	04 04                	add    al,0x4
c010893d:	04 7c                	add    al,0x7c
c010893f:	00 00                	add    BYTE PTR [eax],al
c0108941:	10 28                	adc    BYTE PTR [eax],ch
c0108943:	44                   	inc    esp
c0108944:	82                   	(bad)  
	...
c010895d:	00 fe                	add    dh,bh
c010895f:	00 10                	add    BYTE PTR [eax],dl
c0108961:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c0108974:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c0108977:	04 3c                	add    al,0x3c
c0108979:	44                   	inc    esp
c010897a:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c0108981:	40                   	inc    eax
c0108982:	40                   	inc    eax
c0108983:	40                   	inc    eax
c0108984:	40                   	inc    eax
c0108985:	58                   	pop    eax
c0108986:	64 42                	fs inc edx
c0108988:	42                   	inc    edx
c0108989:	42                   	inc    edx
c010898a:	42                   	inc    edx
c010898b:	42                   	inc    edx
c010898c:	64 58                	fs pop eax
c010898e:	00 00                	add    BYTE PTR [eax],al
c0108990:	00 00                	add    BYTE PTR [eax],al
c0108992:	00 00                	add    BYTE PTR [eax],al
c0108994:	00 30                	add    BYTE PTR [eax],dh
c0108996:	4c                   	dec    esp
c0108997:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c010899e:	00 00                	add    BYTE PTR [eax],al
c01089a0:	0c 04                	or     al,0x4
c01089a2:	04 04                	add    al,0x4
c01089a4:	04 34                	add    al,0x34
c01089a6:	4c                   	dec    esp
c01089a7:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c01089ae:	00 00                	add    BYTE PTR [eax],al
c01089b0:	00 00                	add    BYTE PTR [eax],al
c01089b2:	00 00                	add    BYTE PTR [eax],al
c01089b4:	00 38                	add    BYTE PTR [eax],bh
c01089b6:	44                   	inc    esp
c01089b7:	82                   	(bad)  
c01089b8:	82                   	(bad)  
c01089b9:	fc                   	cld    
c01089ba:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c01089c1:	10 10                	adc    BYTE PTR [eax],dl
c01089c3:	10 10                	adc    BYTE PTR [eax],dl
c01089c5:	7c 10                	jl     c01089d7 <PKnFont+0x677>
c01089c7:	10 10                	adc    BYTE PTR [eax],dl
c01089c9:	10 10                	adc    BYTE PTR [eax],dl
c01089cb:	10 10                	adc    BYTE PTR [eax],dl
c01089cd:	7c 00                	jl     c01089cf <PKnFont+0x66f>
c01089cf:	00 00                	add    BYTE PTR [eax],al
c01089d1:	00 00                	add    BYTE PTR [eax],al
c01089d3:	00 00                	add    BYTE PTR [eax],al
c01089d5:	36 4c                	ss dec esp
c01089d7:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c01089de:	04 38                	add    al,0x38
c01089e0:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c01089e4:	40                   	inc    eax
c01089e5:	58                   	pop    eax
c01089e6:	64 42                	fs inc edx
c01089e8:	42                   	inc    edx
c01089e9:	42                   	inc    edx
c01089ea:	42                   	inc    edx
c01089eb:	42                   	inc    edx
c01089ec:	42                   	inc    edx
c01089ed:	e3 00                	jecxz  c01089ef <PKnFont+0x68f>
c01089ef:	00 00                	add    BYTE PTR [eax],al
c01089f1:	10 10                	adc    BYTE PTR [eax],dl
c01089f3:	00 00                	add    BYTE PTR [eax],al
c01089f5:	30 10                	xor    BYTE PTR [eax],dl
c01089f7:	10 10                	adc    BYTE PTR [eax],dl
c01089f9:	10 10                	adc    BYTE PTR [eax],dl
c01089fb:	10 10                	adc    BYTE PTR [eax],dl
c01089fd:	38 00                	cmp    BYTE PTR [eax],al
c01089ff:	00 00                	add    BYTE PTR [eax],al
c0108a01:	04 04                	add    al,0x4
c0108a03:	00 00                	add    BYTE PTR [eax],al
c0108a05:	0c 04                	or     al,0x4
c0108a07:	04 04                	add    al,0x4
c0108a09:	04 04                	add    al,0x4
c0108a0b:	04 04                	add    al,0x4
c0108a0d:	08 08                	or     BYTE PTR [eax],cl
c0108a0f:	30 c0                	xor    al,al
c0108a11:	40                   	inc    eax
c0108a12:	40                   	inc    eax
c0108a13:	40                   	inc    eax
c0108a14:	40                   	inc    eax
c0108a15:	4e                   	dec    esi
c0108a16:	44                   	inc    esp
c0108a17:	48                   	dec    eax
c0108a18:	50                   	push   eax
c0108a19:	60                   	pusha  
c0108a1a:	50                   	push   eax
c0108a1b:	48                   	dec    eax
c0108a1c:	44                   	inc    esp
c0108a1d:	e6 00                	out    0x0,al
c0108a1f:	00 30                	add    BYTE PTR [eax],dh
c0108a21:	10 10                	adc    BYTE PTR [eax],dl
c0108a23:	10 10                	adc    BYTE PTR [eax],dl
c0108a25:	10 10                	adc    BYTE PTR [eax],dl
c0108a27:	10 10                	adc    BYTE PTR [eax],dl
c0108a29:	10 10                	adc    BYTE PTR [eax],dl
c0108a2b:	10 10                	adc    BYTE PTR [eax],dl
c0108a2d:	38 00                	cmp    BYTE PTR [eax],al
c0108a2f:	00 00                	add    BYTE PTR [eax],al
c0108a31:	00 00                	add    BYTE PTR [eax],al
c0108a33:	00 00                	add    BYTE PTR [eax],al
c0108a35:	f6                   	(bad)  
c0108a36:	49                   	dec    ecx
c0108a37:	49                   	dec    ecx
c0108a38:	49                   	dec    ecx
c0108a39:	49                   	dec    ecx
c0108a3a:	49                   	dec    ecx
c0108a3b:	49                   	dec    ecx
c0108a3c:	49                   	dec    ecx
c0108a3d:	db 00                	fild   DWORD PTR [eax]
c0108a3f:	00 00                	add    BYTE PTR [eax],al
c0108a41:	00 00                	add    BYTE PTR [eax],al
c0108a43:	00 00                	add    BYTE PTR [eax],al
c0108a45:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c0108a49:	42                   	inc    edx
c0108a4a:	42                   	inc    edx
c0108a4b:	42                   	inc    edx
c0108a4c:	42                   	inc    edx
c0108a4d:	e3 00                	jecxz  c0108a4f <PKnFont+0x6ef>
c0108a4f:	00 00                	add    BYTE PTR [eax],al
c0108a51:	00 00                	add    BYTE PTR [eax],al
c0108a53:	00 00                	add    BYTE PTR [eax],al
c0108a55:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0108a59:	82                   	(bad)  
c0108a5a:	82                   	(bad)  
c0108a5b:	82                   	(bad)  
c0108a5c:	44                   	inc    esp
c0108a5d:	38 00                	cmp    BYTE PTR [eax],al
c0108a5f:	00 00                	add    BYTE PTR [eax],al
c0108a61:	00 00                	add    BYTE PTR [eax],al
c0108a63:	00 d8                	add    al,bl
c0108a65:	64 42                	fs inc edx
c0108a67:	42                   	inc    edx
c0108a68:	42                   	inc    edx
c0108a69:	42                   	inc    edx
c0108a6a:	42                   	inc    edx
c0108a6b:	64 58                	fs pop eax
c0108a6d:	40                   	inc    eax
c0108a6e:	40                   	inc    eax
c0108a6f:	e0 00                	loopne c0108a71 <PKnFont+0x711>
c0108a71:	00 00                	add    BYTE PTR [eax],al
c0108a73:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c0108a76:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c0108a7d:	04 04                	add    al,0x4
c0108a7f:	0e                   	push   cs
c0108a80:	00 00                	add    BYTE PTR [eax],al
c0108a82:	00 00                	add    BYTE PTR [eax],al
c0108a84:	00 dc                	add    ah,bl
c0108a86:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c0108a89:	40                   	inc    eax
c0108a8a:	40                   	inc    eax
c0108a8b:	40                   	inc    eax
c0108a8c:	40                   	inc    eax
c0108a8d:	e0 00                	loopne c0108a8f <PKnFont+0x72f>
c0108a8f:	00 00                	add    BYTE PTR [eax],al
c0108a91:	00 00                	add    BYTE PTR [eax],al
c0108a93:	00 00                	add    BYTE PTR [eax],al
c0108a95:	7a 86                	jp     c0108a1d <PKnFont+0x6bd>
c0108a97:	82                   	(bad)  
c0108a98:	c0 38 06             	sar    BYTE PTR [eax],0x6
c0108a9b:	82                   	(bad)  
c0108a9c:	c2 bc 00             	ret    0xbc
c0108a9f:	00 00                	add    BYTE PTR [eax],al
c0108aa1:	00 10                	add    BYTE PTR [eax],dl
c0108aa3:	10 10                	adc    BYTE PTR [eax],dl
c0108aa5:	7c 10                	jl     c0108ab7 <PKnFont+0x757>
c0108aa7:	10 10                	adc    BYTE PTR [eax],dl
c0108aa9:	10 10                	adc    BYTE PTR [eax],dl
c0108aab:	10 10                	adc    BYTE PTR [eax],dl
c0108aad:	0e                   	push   cs
c0108aae:	00 00                	add    BYTE PTR [eax],al
c0108ab0:	00 00                	add    BYTE PTR [eax],al
c0108ab2:	00 00                	add    BYTE PTR [eax],al
c0108ab4:	00 c6                	add    dh,al
c0108ab6:	42                   	inc    edx
c0108ab7:	42                   	inc    edx
c0108ab8:	42                   	inc    edx
c0108ab9:	42                   	inc    edx
c0108aba:	42                   	inc    edx
c0108abb:	42                   	inc    edx
c0108abc:	46                   	inc    esi
c0108abd:	3b 00                	cmp    eax,DWORD PTR [eax]
c0108abf:	00 00                	add    BYTE PTR [eax],al
c0108ac1:	00 00                	add    BYTE PTR [eax],al
c0108ac3:	00 00                	add    BYTE PTR [eax],al
c0108ac5:	e7 42                	out    0x42,eax
c0108ac7:	42                   	inc    edx
c0108ac8:	42                   	inc    edx
c0108ac9:	24 24                	and    al,0x24
c0108acb:	24 18                	and    al,0x18
c0108acd:	18 00                	sbb    BYTE PTR [eax],al
c0108acf:	00 00                	add    BYTE PTR [eax],al
c0108ad1:	00 00                	add    BYTE PTR [eax],al
c0108ad3:	00 00                	add    BYTE PTR [eax],al
c0108ad5:	e7 42                	out    0x42,eax
c0108ad7:	42                   	inc    edx
c0108ad8:	5a                   	pop    edx
c0108ad9:	5a                   	pop    edx
c0108ada:	5a                   	pop    edx
c0108adb:	24 24                	and    al,0x24
c0108add:	24 00                	and    al,0x0
c0108adf:	00 00                	add    BYTE PTR [eax],al
c0108ae1:	00 00                	add    BYTE PTR [eax],al
c0108ae3:	00 00                	add    BYTE PTR [eax],al
c0108ae5:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c0108aea:	28 28                	sub    BYTE PTR [eax],ch
c0108aec:	44                   	inc    esp
c0108aed:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0108af0:	00 00                	add    BYTE PTR [eax],al
c0108af2:	00 00                	add    BYTE PTR [eax],al
c0108af4:	00 e7                	add    bh,ah
c0108af6:	42                   	inc    edx
c0108af7:	42                   	inc    edx
c0108af8:	24 24                	and    al,0x24
c0108afa:	24 18                	and    al,0x18
c0108afc:	18 10                	sbb    BYTE PTR [eax],dl
c0108afe:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0108b01:	00 00                	add    BYTE PTR [eax],al
c0108b03:	00 00                	add    BYTE PTR [eax],al
c0108b05:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c0108b0b:	42                   	inc    edx
c0108b0c:	82                   	(bad)  
c0108b0d:	fe 00                	inc    BYTE PTR [eax]
c0108b0f:	00 00                	add    BYTE PTR [eax],al
c0108b11:	06                   	push   es
c0108b12:	08 10                	or     BYTE PTR [eax],dl
c0108b14:	10 10                	adc    BYTE PTR [eax],dl
c0108b16:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c0108b19:	10 10                	adc    BYTE PTR [eax],dl
c0108b1b:	10 08                	adc    BYTE PTR [eax],cl
c0108b1d:	06                   	push   es
c0108b1e:	00 00                	add    BYTE PTR [eax],al
c0108b20:	10 10                	adc    BYTE PTR [eax],dl
c0108b22:	10 10                	adc    BYTE PTR [eax],dl
c0108b24:	10 10                	adc    BYTE PTR [eax],dl
c0108b26:	10 10                	adc    BYTE PTR [eax],dl
c0108b28:	10 10                	adc    BYTE PTR [eax],dl
c0108b2a:	10 10                	adc    BYTE PTR [eax],dl
c0108b2c:	10 10                	adc    BYTE PTR [eax],dl
c0108b2e:	10 10                	adc    BYTE PTR [eax],dl
c0108b30:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c0108b33:	08 08                	or     BYTE PTR [eax],cl
c0108b35:	08 08                	or     BYTE PTR [eax],cl
c0108b37:	06                   	push   es
c0108b38:	08 08                	or     BYTE PTR [eax],cl
c0108b3a:	08 08                	or     BYTE PTR [eax],cl
c0108b3c:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0108b3f:	00 00                	add    BYTE PTR [eax],al
c0108b41:	72 8c                	jb     c0108acf <PKnFont+0x76f>
	...

c0109360 <digits.1071>:
c0109360:	30 31                	xor    BYTE PTR [ecx],dh
c0109362:	32 33                	xor    dh,BYTE PTR [ebx]
c0109364:	34 35                	xor    al,0x35
c0109366:	36 37                	ss aaa 
c0109368:	38 39                	cmp    BYTE PTR [ecx],bh
c010936a:	41                   	inc    ecx
c010936b:	42                   	inc    edx
c010936c:	43                   	inc    ebx
c010936d:	44                   	inc    esp
c010936e:	45                   	inc    ebp
c010936f:	46                   	inc    esi
c0109370:	47                   	inc    edi
c0109371:	48                   	dec    eax
c0109372:	49                   	dec    ecx
c0109373:	4a                   	dec    edx
c0109374:	4b                   	dec    ebx
c0109375:	4c                   	dec    esp
c0109376:	4d                   	dec    ebp
c0109377:	4e                   	dec    esi
c0109378:	4f                   	dec    edi
c0109379:	50                   	push   eax
c010937a:	51                   	push   ecx
c010937b:	52                   	push   edx
c010937c:	53                   	push   ebx
c010937d:	54                   	push   esp
c010937e:	55                   	push   ebp
c010937f:	56                   	push   esi
c0109380:	57                   	push   edi
c0109381:	58                   	pop    eax
c0109382:	59                   	pop    ecx
c0109383:	5a                   	pop    edx
	...

c01093a0 <digits.1052>:
c01093a0:	30 31                	xor    BYTE PTR [ecx],dh
c01093a2:	32 33                	xor    dh,BYTE PTR [ebx]
c01093a4:	34 35                	xor    al,0x35
c01093a6:	36 37                	ss aaa 
c01093a8:	38 39                	cmp    BYTE PTR [ecx],bh
c01093aa:	41                   	inc    ecx
c01093ab:	42                   	inc    edx
c01093ac:	43                   	inc    ebx
c01093ad:	44                   	inc    esp
c01093ae:	45                   	inc    ebp
c01093af:	46                   	inc    esi
c01093b0:	47                   	inc    edi
c01093b1:	48                   	dec    eax
c01093b2:	49                   	dec    ecx
c01093b3:	4a                   	dec    edx
c01093b4:	4b                   	dec    ebx
c01093b5:	4c                   	dec    esp
c01093b6:	4d                   	dec    ebp
c01093b7:	4e                   	dec    esi
c01093b8:	4f                   	dec    edi
c01093b9:	50                   	push   eax
c01093ba:	51                   	push   ecx
c01093bb:	52                   	push   edx
c01093bc:	53                   	push   ebx
c01093bd:	54                   	push   esp
c01093be:	55                   	push   ebp
c01093bf:	56                   	push   esi
c01093c0:	57                   	push   edi
c01093c1:	58                   	pop    eax
c01093c2:	59                   	pop    ecx
c01093c3:	5a                   	pop    edx
	...
c01093e0:	20 20                	and    BYTE PTR [eax],ah
c01093e2:	20 20                	and    BYTE PTR [eax],ah
c01093e4:	20 20                	and    BYTE PTR [eax],ah
c01093e6:	20 20                	and    BYTE PTR [eax],ah
c01093e8:	20 20                	and    BYTE PTR [eax],ah
c01093ea:	20 20                	and    BYTE PTR [eax],ah
c01093ec:	20 20                	and    BYTE PTR [eax],ah
c01093ee:	20 20                	and    BYTE PTR [eax],ah
c01093f0:	23 23                	and    esp,DWORD PTR [ebx]
c01093f2:	23 23                	and    esp,DWORD PTR [ebx]
c01093f4:	23 23                	and    esp,DWORD PTR [ebx]
c01093f6:	23 23                	and    esp,DWORD PTR [ebx]
c01093f8:	23 23                	and    esp,DWORD PTR [ebx]
c01093fa:	23 23                	and    esp,DWORD PTR [ebx]
c01093fc:	23 20                	and    esp,DWORD PTR [eax]
c01093fe:	20 23                	and    BYTE PTR [ebx],ah
c0109400:	20 20                	and    BYTE PTR [eax],ah
c0109402:	20 20                	and    BYTE PTR [eax],ah
c0109404:	20 20                	and    BYTE PTR [eax],ah
c0109406:	20 20                	and    BYTE PTR [eax],ah
c0109408:	20 20                	and    BYTE PTR [eax],ah
c010940a:	20 23                	and    BYTE PTR [ebx],ah
c010940c:	20 20                	and    BYTE PTR [eax],ah
c010940e:	23 20                	and    esp,DWORD PTR [eax]
c0109410:	20 20                	and    BYTE PTR [eax],ah
c0109412:	20 20                	and    BYTE PTR [eax],ah
c0109414:	20 20                	and    BYTE PTR [eax],ah
c0109416:	20 20                	and    BYTE PTR [eax],ah
c0109418:	20 20                	and    BYTE PTR [eax],ah
c010941a:	23 20                	and    esp,DWORD PTR [eax]
c010941c:	20 23                	and    BYTE PTR [ebx],ah
c010941e:	20 20                	and    BYTE PTR [eax],ah
c0109420:	20 20                	and    BYTE PTR [eax],ah
c0109422:	20 20                	and    BYTE PTR [eax],ah
c0109424:	20 20                	and    BYTE PTR [eax],ah
c0109426:	20 20                	and    BYTE PTR [eax],ah
c0109428:	20 23                	and    BYTE PTR [ebx],ah
c010942a:	20 20                	and    BYTE PTR [eax],ah
c010942c:	23 20                	and    esp,DWORD PTR [eax]
c010942e:	20 20                	and    BYTE PTR [eax],ah
c0109430:	23 23                	and    esp,DWORD PTR [ebx]
c0109432:	23 23                	and    esp,DWORD PTR [ebx]
c0109434:	23 20                	and    esp,DWORD PTR [eax]
c0109436:	20 20                	and    BYTE PTR [eax],ah
c0109438:	23 20                	and    esp,DWORD PTR [eax]
c010943a:	20 23                	and    BYTE PTR [ebx],ah
c010943c:	20 20                	and    BYTE PTR [eax],ah
c010943e:	20 23                	and    BYTE PTR [ebx],ah
c0109440:	20 20                	and    BYTE PTR [eax],ah
c0109442:	20 23                	and    BYTE PTR [ebx],ah
c0109444:	20 20                	and    BYTE PTR [eax],ah
c0109446:	20 23                	and    BYTE PTR [ebx],ah
c0109448:	20 20                	and    BYTE PTR [eax],ah
c010944a:	23 20                	and    esp,DWORD PTR [eax]
c010944c:	20 20                	and    BYTE PTR [eax],ah
c010944e:	23 20                	and    esp,DWORD PTR [eax]
c0109450:	20 20                	and    BYTE PTR [eax],ah
c0109452:	23 20                	and    esp,DWORD PTR [eax]
c0109454:	20 20                	and    BYTE PTR [eax],ah
c0109456:	23 20                	and    esp,DWORD PTR [eax]
c0109458:	20 23                	and    BYTE PTR [ebx],ah
c010945a:	20 20                	and    BYTE PTR [eax],ah
c010945c:	20 23                	and    BYTE PTR [ebx],ah
c010945e:	20 20                	and    BYTE PTR [eax],ah
c0109460:	20 23                	and    BYTE PTR [ebx],ah
c0109462:	20 20                	and    BYTE PTR [eax],ah
c0109464:	20 23                	and    BYTE PTR [ebx],ah
c0109466:	20 20                	and    BYTE PTR [eax],ah
c0109468:	23 23                	and    esp,DWORD PTR [ebx]
c010946a:	23 23                	and    esp,DWORD PTR [ebx]
c010946c:	23 23                	and    esp,DWORD PTR [ebx]
c010946e:	23 23                	and    esp,DWORD PTR [ebx]
c0109470:	23 20                	and    esp,DWORD PTR [eax]
c0109472:	20 20                	and    BYTE PTR [eax],ah
c0109474:	23 20                	and    esp,DWORD PTR [eax]
c0109476:	20 23                	and    BYTE PTR [ebx],ah
c0109478:	23 20                	and    esp,DWORD PTR [eax]
c010947a:	20 23                	and    BYTE PTR [ebx],ah
c010947c:	20 20                	and    BYTE PTR [eax],ah
c010947e:	20 20                	and    BYTE PTR [eax],ah
c0109480:	20 20                	and    BYTE PTR [eax],ah
c0109482:	20 23                	and    BYTE PTR [ebx],ah
c0109484:	20 20                	and    BYTE PTR [eax],ah
c0109486:	23 20                	and    esp,DWORD PTR [eax]
c0109488:	23 20                	and    esp,DWORD PTR [eax]
c010948a:	23 20                	and    esp,DWORD PTR [eax]
c010948c:	20 20                	and    BYTE PTR [eax],ah
c010948e:	20 20                	and    BYTE PTR [eax],ah
c0109490:	20 20                	and    BYTE PTR [eax],ah
c0109492:	23 20                	and    esp,DWORD PTR [eax]
c0109494:	20 23                	and    BYTE PTR [ebx],ah
c0109496:	20 20                	and    BYTE PTR [eax],ah
c0109498:	23 23                	and    esp,DWORD PTR [ebx]
c010949a:	20 20                	and    BYTE PTR [eax],ah
c010949c:	20 20                	and    BYTE PTR [eax],ah
c010949e:	20 20                	and    BYTE PTR [eax],ah
c01094a0:	20 23                	and    BYTE PTR [ebx],ah
c01094a2:	20 20                	and    BYTE PTR [eax],ah
c01094a4:	23 23                	and    esp,DWORD PTR [ebx]
c01094a6:	23 23                	and    esp,DWORD PTR [ebx]
c01094a8:	23 23                	and    esp,DWORD PTR [ebx]
c01094aa:	23 23                	and    esp,DWORD PTR [ebx]
c01094ac:	23 23                	and    esp,DWORD PTR [ebx]
c01094ae:	23 23                	and    esp,DWORD PTR [ebx]
c01094b0:	23 20                	and    esp,DWORD PTR [eax]
c01094b2:	20 20                	and    BYTE PTR [eax],ah
c01094b4:	20 20                	and    BYTE PTR [eax],ah
c01094b6:	20 20                	and    BYTE PTR [eax],ah
c01094b8:	20 20                	and    BYTE PTR [eax],ah
c01094ba:	20 20                	and    BYTE PTR [eax],ah
c01094bc:	20 20                	and    BYTE PTR [eax],ah
c01094be:	20 20                	and    BYTE PTR [eax],ah
c01094c0:	20                   	.byte 0x20

Disassembly of section .eh_frame:

c01094c4 <.eh_frame>:
c01094c4:	10 00                	adc    BYTE PTR [eax],al
c01094c6:	00 00                	add    BYTE PTR [eax],al
c01094c8:	00 00                	add    BYTE PTR [eax],al
c01094ca:	00 00                	add    BYTE PTR [eax],al
c01094cc:	01 00                	add    DWORD PTR [eax],eax
c01094ce:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c01094d2:	04 04                	add    al,0x4
c01094d4:	88 01                	mov    BYTE PTR [ecx],al
c01094d6:	00 00                	add    BYTE PTR [eax],al
c01094d8:	14 00                	adc    al,0x0
c01094da:	00 00                	add    BYTE PTR [eax],al
c01094dc:	18 00                	sbb    BYTE PTR [eax],al
c01094de:	00 00                	add    BYTE PTR [eax],al
c01094e0:	20 00                	and    BYTE PTR [eax],al
c01094e2:	10 c0                	adc    al,al
c01094e4:	2f                   	das    
c01094e5:	01 00                	add    DWORD PTR [eax],eax
c01094e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01094ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01094f0:	1c 00                	sbb    al,0x0
c01094f2:	00 00                	add    BYTE PTR [eax],al
c01094f4:	30 00                	xor    BYTE PTR [eax],al
c01094f6:	00 00                	add    BYTE PTR [eax],al
c01094f8:	4f                   	dec    edi
c01094f9:	01 10                	add    DWORD PTR [eax],edx
c01094fb:	c0                   	(bad)  
c01094fc:	70 05                	jo     c0109503 <_edata+0x42>
c01094fe:	00 00                	add    BYTE PTR [eax],al
c0109500:	41                   	inc    ecx
c0109501:	0e                   	push   cs
c0109502:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109508:	49                   	dec    ecx
c0109509:	83 05 86 04 87 03 00 	add    DWORD PTR ds:0x3870486,0x0
c0109510:	18 00                	sbb    BYTE PTR [eax],al
c0109512:	00 00                	add    BYTE PTR [eax],al
c0109514:	50                   	push   eax
c0109515:	00 00                	add    BYTE PTR [eax],al
c0109517:	00 bf 06 10 c0 ea    	add    BYTE PTR [edi-0x153feffa],bh
c010951d:	00 00                	add    BYTE PTR [eax],al
c010951f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109522:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109528:	44                   	inc    esp
c0109529:	83 03 00             	add    DWORD PTR [ebx],0x0
c010952c:	18 00                	sbb    BYTE PTR [eax],al
c010952e:	00 00                	add    BYTE PTR [eax],al
c0109530:	6c                   	ins    BYTE PTR es:[edi],dx
c0109531:	00 00                	add    BYTE PTR [eax],al
c0109533:	00 a9 07 10 c0 f6    	add    BYTE PTR [ecx-0x93feff9],ch
c0109539:	01 00                	add    DWORD PTR [eax],eax
c010953b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010953e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109544:	44                   	inc    esp
c0109545:	83 03 00             	add    DWORD PTR [ebx],0x0
c0109548:	14 00                	adc    al,0x0
c010954a:	00 00                	add    BYTE PTR [eax],al
c010954c:	88 00                	mov    BYTE PTR [eax],al
c010954e:	00 00                	add    BYTE PTR [eax],al
c0109550:	9f                   	lahf   
c0109551:	09 10                	or     DWORD PTR [eax],edx
c0109553:	c0                   	(bad)  
c0109554:	35 00 00 00 41       	xor    eax,0x41000000
c0109559:	0e                   	push   cs
c010955a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109560:	14 00                	adc    al,0x0
c0109562:	00 00                	add    BYTE PTR [eax],al
c0109564:	a0 00 00 00 d4       	mov    al,ds:0xd4000000
c0109569:	09 10                	or     DWORD PTR [eax],edx
c010956b:	c0 c8 00             	ror    al,0x0
c010956e:	00 00                	add    BYTE PTR [eax],al
c0109570:	41                   	inc    ecx
c0109571:	0e                   	push   cs
c0109572:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109578:	1c 00                	sbb    al,0x0
c010957a:	00 00                	add    BYTE PTR [eax],al
c010957c:	b8 00 00 00 9c       	mov    eax,0x9c000000
c0109581:	0a 10                	or     dl,BYTE PTR [eax]
c0109583:	c0 43 00 00          	rol    BYTE PTR [ebx+0x0],0x0
c0109587:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010958a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109590:	7f c5                	jg     c0109557 <_edata+0x96>
c0109592:	0c 04                	or     al,0x4
c0109594:	04 00                	add    al,0x0
c0109596:	00 00                	add    BYTE PTR [eax],al
c0109598:	1c 00                	sbb    al,0x0
c010959a:	00 00                	add    BYTE PTR [eax],al
c010959c:	d8 00                	fadd   DWORD PTR [eax]
c010959e:	00 00                	add    BYTE PTR [eax],al
c01095a0:	e0 0a                	loopne c01095ac <_edata+0xeb>
c01095a2:	10 c0                	adc    al,al
c01095a4:	48                   	dec    eax
c01095a5:	00 00                	add    BYTE PTR [eax],al
c01095a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01095aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01095b0:	02 44 c5 0c          	add    al,BYTE PTR [ebp+eax*8+0xc]
c01095b4:	04 04                	add    al,0x4
c01095b6:	00 00                	add    BYTE PTR [eax],al
c01095b8:	1c 00                	sbb    al,0x0
c01095ba:	00 00                	add    BYTE PTR [eax],al
c01095bc:	f8                   	clc    
c01095bd:	00 00                	add    BYTE PTR [eax],al
c01095bf:	00 d0                	add    al,dl
c01095c1:	11 10                	adc    DWORD PTR [eax],edx
c01095c3:	c0 06 00             	rol    BYTE PTR [esi],0x0
c01095c6:	00 00                	add    BYTE PTR [eax],al
c01095c8:	41                   	inc    ecx
c01095c9:	0e                   	push   cs
c01095ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01095d0:	42                   	inc    edx
c01095d1:	0c 04                	or     al,0x4
c01095d3:	04 c5                	add    al,0xc5
c01095d5:	00 00                	add    BYTE PTR [eax],al
c01095d7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01095da:	00 00                	add    BYTE PTR [eax],al
c01095dc:	18 01                	sbb    BYTE PTR [ecx],al
c01095de:	00 00                	add    BYTE PTR [eax],al
c01095e0:	d6                   	(bad)  
c01095e1:	11 10                	adc    DWORD PTR [eax],edx
c01095e3:	c0 06 00             	rol    BYTE PTR [esi],0x0
c01095e6:	00 00                	add    BYTE PTR [eax],al
c01095e8:	41                   	inc    ecx
c01095e9:	0e                   	push   cs
c01095ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01095f0:	42                   	inc    edx
c01095f1:	0c 04                	or     al,0x4
c01095f3:	04 c5                	add    al,0xc5
c01095f5:	00 00                	add    BYTE PTR [eax],al
c01095f7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01095fa:	00 00                	add    BYTE PTR [eax],al
c01095fc:	38 01                	cmp    BYTE PTR [ecx],al
c01095fe:	00 00                	add    BYTE PTR [eax],al
c0109600:	dc 11                	fcom   QWORD PTR [ecx]
c0109602:	10 c0                	adc    al,al
c0109604:	0c 00                	or     al,0x0
c0109606:	00 00                	add    BYTE PTR [eax],al
c0109608:	41                   	inc    ecx
c0109609:	0e                   	push   cs
c010960a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109610:	48                   	dec    eax
c0109611:	0c 04                	or     al,0x4
c0109613:	04 c5                	add    al,0xc5
c0109615:	00 00                	add    BYTE PTR [eax],al
c0109617:	00 20                	add    BYTE PTR [eax],ah
c0109619:	00 00                	add    BYTE PTR [eax],al
c010961b:	00 58 01             	add    BYTE PTR [eax+0x1],bl
c010961e:	00 00                	add    BYTE PTR [eax],al
c0109620:	e8 11 10 c0 17       	call   d7d0a636 <_kernel_end+0x17bf8156>
c0109625:	00 00                	add    BYTE PTR [eax],al
c0109627:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010962a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109630:	44                   	inc    esp
c0109631:	83 03 4e             	add    DWORD PTR [ebx],0x4e
c0109634:	c3                   	ret    
c0109635:	41                   	inc    ecx
c0109636:	0c 04                	or     al,0x4
c0109638:	04 c5                	add    al,0xc5
c010963a:	00 00                	add    BYTE PTR [eax],al
c010963c:	1c 00                	sbb    al,0x0
c010963e:	00 00                	add    BYTE PTR [eax],al
c0109640:	7c 01                	jl     c0109643 <_edata+0x182>
c0109642:	00 00                	add    BYTE PTR [eax],al
c0109644:	ff 11                	call   DWORD PTR [ecx]
c0109646:	10 c0                	adc    al,al
c0109648:	f8                   	clc    
c0109649:	00 00                	add    BYTE PTR [eax],al
c010964b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010964e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109654:	02 f4                	add    dh,ah
c0109656:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109659:	04 00                	add    al,0x0
c010965b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010965e:	00 00                	add    BYTE PTR [eax],al
c0109660:	9c                   	pushf  
c0109661:	01 00                	add    DWORD PTR [eax],eax
c0109663:	00 f7                	add    bh,dh
c0109665:	12 10                	adc    dl,BYTE PTR [eax]
c0109667:	c0 1c 00 00          	rcr    BYTE PTR [eax+eax*1],0x0
c010966b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010966e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109674:	58                   	pop    eax
c0109675:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109678:	04 00                	add    al,0x0
c010967a:	00 00                	add    BYTE PTR [eax],al
c010967c:	1c 00                	sbb    al,0x0
c010967e:	00 00                	add    BYTE PTR [eax],al
c0109680:	bc 01 00 00 13       	mov    esp,0x13000001
c0109685:	13 10                	adc    edx,DWORD PTR [eax]
c0109687:	c0 ba 00 00 00 41 0e 	sar    BYTE PTR [edx+0x41000000],0xe
c010968e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109694:	02 b6 c5 0c 04 04    	add    dh,BYTE PTR [esi+0x4040cc5]
c010969a:	00 00                	add    BYTE PTR [eax],al
c010969c:	1c 00                	sbb    al,0x0
c010969e:	00 00                	add    BYTE PTR [eax],al
c01096a0:	dc 01                	fadd   QWORD PTR [ecx]
c01096a2:	00 00                	add    BYTE PTR [eax],al
c01096a4:	cd 13                	int    0x13
c01096a6:	10 c0                	adc    al,al
c01096a8:	44                   	inc    esp
c01096a9:	00 00                	add    BYTE PTR [eax],al
c01096ab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01096ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01096b4:	02 40 0c             	add    al,BYTE PTR [eax+0xc]
c01096b7:	04 04                	add    al,0x4
c01096b9:	c5 00                	lds    eax,FWORD PTR [eax]
c01096bb:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c01096be:	00 00                	add    BYTE PTR [eax],al
c01096c0:	fc                   	cld    
c01096c1:	01 00                	add    DWORD PTR [eax],eax
c01096c3:	00 11                	add    BYTE PTR [ecx],dl
c01096c5:	14 10                	adc    al,0x10
c01096c7:	c0 46 00 00          	rol    BYTE PTR [esi+0x0],0x0
c01096cb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01096ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01096d4:	45                   	inc    ebp
c01096d5:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01096d9:	7b c3                	jnp    c010969e <_edata+0x1dd>
c01096db:	41                   	inc    ecx
c01096dc:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01096e0:	04 c5                	add    al,0xc5
c01096e2:	00 00                	add    BYTE PTR [eax],al
c01096e4:	1c 00                	sbb    al,0x0
c01096e6:	00 00                	add    BYTE PTR [eax],al
c01096e8:	24 02                	and    al,0x2
c01096ea:	00 00                	add    BYTE PTR [eax],al
c01096ec:	57                   	push   edi
c01096ed:	14 10                	adc    al,0x10
c01096ef:	c0 a5 02 00 00 41 0e 	shl    BYTE PTR [ebp+0x41000002],0xe
c01096f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01096fc:	48                   	dec    eax
c01096fd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0109701:	00 00                	add    BYTE PTR [eax],al
c0109703:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109706:	00 00                	add    BYTE PTR [eax],al
c0109708:	44                   	inc    esp
c0109709:	02 00                	add    al,BYTE PTR [eax]
c010970b:	00 fc                	add    ah,bh
c010970d:	16                   	push   ss
c010970e:	10 c0                	adc    al,al
c0109710:	cd 00                	int    0x0
c0109712:	00 00                	add    BYTE PTR [eax],al
c0109714:	41                   	inc    ecx
c0109715:	0e                   	push   cs
c0109716:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010971c:	02 c9                	add    cl,cl
c010971e:	0c 04                	or     al,0x4
c0109720:	04 c5                	add    al,0xc5
c0109722:	00 00                	add    BYTE PTR [eax],al
c0109724:	1c 00                	sbb    al,0x0
c0109726:	00 00                	add    BYTE PTR [eax],al
c0109728:	64 02 00             	add    al,BYTE PTR fs:[eax]
c010972b:	00 c9                	add    cl,cl
c010972d:	17                   	pop    ss
c010972e:	10 c0                	adc    al,al
c0109730:	2d 00 00 00 41       	sub    eax,0x41000000
c0109735:	0e                   	push   cs
c0109736:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010973c:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c0109742:	00 00                	add    BYTE PTR [eax],al
c0109744:	1c 00                	sbb    al,0x0
c0109746:	00 00                	add    BYTE PTR [eax],al
c0109748:	84 02                	test   BYTE PTR [edx],al
c010974a:	00 00                	add    BYTE PTR [eax],al
c010974c:	f6 17                	not    BYTE PTR [edi]
c010974e:	10 c0                	adc    al,al
c0109750:	2d 00 00 00 41       	sub    eax,0x41000000
c0109755:	0e                   	push   cs
c0109756:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010975c:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c0109762:	00 00                	add    BYTE PTR [eax],al
c0109764:	1c 00                	sbb    al,0x0
c0109766:	00 00                	add    BYTE PTR [eax],al
c0109768:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0109769:	02 00                	add    al,BYTE PTR [eax]
c010976b:	00 23                	add    BYTE PTR [ebx],ah
c010976d:	18 10                	sbb    BYTE PTR [eax],dl
c010976f:	c0 1a 00             	rcr    BYTE PTR [edx],0x0
c0109772:	00 00                	add    BYTE PTR [eax],al
c0109774:	41                   	inc    ecx
c0109775:	0e                   	push   cs
c0109776:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010977c:	56                   	push   esi
c010977d:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109780:	04 00                	add    al,0x0
c0109782:	00 00                	add    BYTE PTR [eax],al
c0109784:	1c 00                	sbb    al,0x0
c0109786:	00 00                	add    BYTE PTR [eax],al
c0109788:	c4 02                	les    eax,FWORD PTR [edx]
c010978a:	00 00                	add    BYTE PTR [eax],al
c010978c:	3d 18 10 c0 17       	cmp    eax,0x17c01018
c0109791:	00 00                	add    BYTE PTR [eax],al
c0109793:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109796:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010979c:	53                   	push   ebx
c010979d:	0c 04                	or     al,0x4
c010979f:	04 c5                	add    al,0xc5
c01097a1:	00 00                	add    BYTE PTR [eax],al
c01097a3:	00 20                	add    BYTE PTR [eax],ah
c01097a5:	00 00                	add    BYTE PTR [eax],al
c01097a7:	00 e4                	add    ah,ah
c01097a9:	02 00                	add    al,BYTE PTR [eax]
c01097ab:	00 54 18 10          	add    BYTE PTR [eax+ebx*1+0x10],dl
c01097af:	c0 6d 00 00          	shr    BYTE PTR [ebp+0x0],0x0
c01097b3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01097b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01097bc:	44                   	inc    esp
c01097bd:	83 03 02             	add    DWORD PTR [ebx],0x2
c01097c0:	64 c3                	fs ret 
c01097c2:	41                   	inc    ecx
c01097c3:	0c 04                	or     al,0x4
c01097c5:	04 c5                	add    al,0xc5
c01097c7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01097ca:	00 00                	add    BYTE PTR [eax],al
c01097cc:	08 03                	or     BYTE PTR [ebx],al
c01097ce:	00 00                	add    BYTE PTR [eax],al
c01097d0:	c1 18 10             	rcr    DWORD PTR [eax],0x10
c01097d3:	c0 1a 00             	rcr    BYTE PTR [edx],0x0
c01097d6:	00 00                	add    BYTE PTR [eax],al
c01097d8:	41                   	inc    ecx
c01097d9:	0e                   	push   cs
c01097da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01097e0:	56                   	push   esi
c01097e1:	0c 04                	or     al,0x4
c01097e3:	04 c5                	add    al,0xc5
c01097e5:	00 00                	add    BYTE PTR [eax],al
c01097e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01097ea:	00 00                	add    BYTE PTR [eax],al
c01097ec:	28 03                	sub    BYTE PTR [ebx],al
c01097ee:	00 00                	add    BYTE PTR [eax],al
c01097f0:	db 18                	fistp  DWORD PTR [eax]
c01097f2:	10 c0                	adc    al,al
c01097f4:	0d 00 00 00 41       	or     eax,0x41000000
c01097f9:	0e                   	push   cs
c01097fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109800:	49                   	dec    ecx
c0109801:	0c 04                	or     al,0x4
c0109803:	04 c5                	add    al,0xc5
c0109805:	00 00                	add    BYTE PTR [eax],al
c0109807:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010980a:	00 00                	add    BYTE PTR [eax],al
c010980c:	48                   	dec    eax
c010980d:	03 00                	add    eax,DWORD PTR [eax]
c010980f:	00 e8                	add    al,ch
c0109811:	18 10                	sbb    BYTE PTR [eax],dl
c0109813:	c0 3c 03 00          	sar    BYTE PTR [ebx+eax*1],0x0
c0109817:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010981a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109820:	03 38                	add    edi,DWORD PTR [eax]
c0109822:	03 c5                	add    eax,ebp
c0109824:	0c 04                	or     al,0x4
c0109826:	04 00                	add    al,0x0
c0109828:	1c 00                	sbb    al,0x0
c010982a:	00 00                	add    BYTE PTR [eax],al
c010982c:	68 03 00 00 24       	push   0x24000003
c0109831:	1c 10                	sbb    al,0x10
c0109833:	c0 78 01 00          	sar    BYTE PTR [eax+0x1],0x0
c0109837:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010983a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109840:	03 74 01 c5          	add    esi,DWORD PTR [ecx+eax*1-0x3b]
c0109844:	0c 04                	or     al,0x4
c0109846:	04 00                	add    al,0x0
c0109848:	28 00                	sub    BYTE PTR [eax],al
c010984a:	00 00                	add    BYTE PTR [eax],al
c010984c:	88 03                	mov    BYTE PTR [ebx],al
c010984e:	00 00                	add    BYTE PTR [eax],al
c0109850:	9c                   	pushf  
c0109851:	1d 10 c0 50 02       	sbb    eax,0x250c010
c0109856:	00 00                	add    BYTE PTR [eax],al
c0109858:	41                   	inc    ecx
c0109859:	0e                   	push   cs
c010985a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109860:	46                   	inc    esi
c0109861:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c0109868:	43                   	inc    ebx
c0109869:	02 c3                	add    al,bl
c010986b:	41                   	inc    ecx
c010986c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0109870:	0c 04                	or     al,0x4
c0109872:	04 c5                	add    al,0xc5
c0109874:	1c 00                	sbb    al,0x0
c0109876:	00 00                	add    BYTE PTR [eax],al
c0109878:	b4 03                	mov    ah,0x3
c010987a:	00 00                	add    BYTE PTR [eax],al
c010987c:	ec                   	in     al,dx
c010987d:	1f                   	pop    ds
c010987e:	10 c0                	adc    al,al
c0109880:	b1 00                	mov    cl,0x0
c0109882:	00 00                	add    BYTE PTR [eax],al
c0109884:	41                   	inc    ecx
c0109885:	0e                   	push   cs
c0109886:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010988c:	02 ad c5 0c 04 04    	add    ch,BYTE PTR [ebp+0x4040cc5]
c0109892:	00 00                	add    BYTE PTR [eax],al
c0109894:	1c 00                	sbb    al,0x0
c0109896:	00 00                	add    BYTE PTR [eax],al
c0109898:	d4 03                	aam    0x3
c010989a:	00 00                	add    BYTE PTR [eax],al
c010989c:	9d                   	popf   
c010989d:	20 10                	and    BYTE PTR [eax],dl
c010989f:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c01098a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01098a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01098ac:	7c c5                	jl     c0109873 <_edata+0x3b2>
c01098ae:	0c 04                	or     al,0x4
c01098b0:	04 00                	add    al,0x0
c01098b2:	00 00                	add    BYTE PTR [eax],al
c01098b4:	1c 00                	sbb    al,0x0
c01098b6:	00 00                	add    BYTE PTR [eax],al
c01098b8:	f4                   	hlt    
c01098b9:	03 00                	add    eax,DWORD PTR [eax]
c01098bb:	00 dd                	add    ch,bl
c01098bd:	20 10                	and    BYTE PTR [eax],dl
c01098bf:	c0 13 00             	rcl    BYTE PTR [ebx],0x0
c01098c2:	00 00                	add    BYTE PTR [eax],al
c01098c4:	41                   	inc    ecx
c01098c5:	0e                   	push   cs
c01098c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01098cc:	4f                   	dec    edi
c01098cd:	0c 04                	or     al,0x4
c01098cf:	04 c5                	add    al,0xc5
c01098d1:	00 00                	add    BYTE PTR [eax],al
c01098d3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01098d6:	00 00                	add    BYTE PTR [eax],al
c01098d8:	14 04                	adc    al,0x4
c01098da:	00 00                	add    BYTE PTR [eax],al
c01098dc:	f0 20 10             	lock and BYTE PTR [eax],dl
c01098df:	c0 27 00             	shl    BYTE PTR [edi],0x0
c01098e2:	00 00                	add    BYTE PTR [eax],al
c01098e4:	41                   	inc    ecx
c01098e5:	0e                   	push   cs
c01098e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01098ec:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c01098ef:	04 c5                	add    al,0xc5
c01098f1:	00 00                	add    BYTE PTR [eax],al
c01098f3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01098f6:	00 00                	add    BYTE PTR [eax],al
c01098f8:	34 04                	xor    al,0x4
c01098fa:	00 00                	add    BYTE PTR [eax],al
c01098fc:	17                   	pop    ss
c01098fd:	21 10                	and    DWORD PTR [eax],edx
c01098ff:	c0 2d 00 00 00 41 0e 	shr    BYTE PTR ds:0x41000000,0xe
c0109906:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010990c:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c0109912:	00 00                	add    BYTE PTR [eax],al
c0109914:	20 00                	and    BYTE PTR [eax],al
c0109916:	00 00                	add    BYTE PTR [eax],al
c0109918:	54                   	push   esp
c0109919:	04 00                	add    al,0x0
c010991b:	00 44 21 10          	add    BYTE PTR [ecx+eiz*1+0x10],al
c010991f:	c0 40 01 00          	rol    BYTE PTR [eax+0x1],0x0
c0109923:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109926:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010992c:	44                   	inc    esp
c010992d:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109930:	37                   	aaa    
c0109931:	01 c3                	add    ebx,eax
c0109933:	41                   	inc    ecx
c0109934:	0c 04                	or     al,0x4
c0109936:	04 c5                	add    al,0xc5
c0109938:	1c 00                	sbb    al,0x0
c010993a:	00 00                	add    BYTE PTR [eax],al
c010993c:	78 04                	js     c0109942 <_edata+0x481>
c010993e:	00 00                	add    BYTE PTR [eax],al
c0109940:	84 22                	test   BYTE PTR [edx],ah
c0109942:	10 c0                	adc    al,al
c0109944:	ef                   	out    dx,eax
c0109945:	00 00                	add    BYTE PTR [eax],al
c0109947:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010994a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109950:	02 eb                	add    ch,bl
c0109952:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109955:	04 00                	add    al,0x0
c0109957:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010995a:	00 00                	add    BYTE PTR [eax],al
c010995c:	98                   	cwde   
c010995d:	04 00                	add    al,0x0
c010995f:	00 73 23             	add    BYTE PTR [ebx+0x23],dh
c0109962:	10 c0                	adc    al,al
c0109964:	ae                   	scas   al,BYTE PTR es:[edi]
c0109965:	00 00                	add    BYTE PTR [eax],al
c0109967:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010996a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109970:	02 aa c5 0c 04 04    	add    ch,BYTE PTR [edx+0x4040cc5]
c0109976:	00 00                	add    BYTE PTR [eax],al
c0109978:	1c 00                	sbb    al,0x0
c010997a:	00 00                	add    BYTE PTR [eax],al
c010997c:	b8 04 00 00 21       	mov    eax,0x21000004
c0109981:	24 10                	and    al,0x10
c0109983:	c0 44 00 00 00       	rol    BYTE PTR [eax+eax*1+0x0],0x0
c0109988:	41                   	inc    ecx
c0109989:	0e                   	push   cs
c010998a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109990:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c0109993:	0c 04                	or     al,0x4
c0109995:	04 00                	add    al,0x0
c0109997:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010999a:	00 00                	add    BYTE PTR [eax],al
c010999c:	d8 04 00             	fadd   DWORD PTR [eax+eax*1]
c010999f:	00 65 24             	add    BYTE PTR [ebp+0x24],ah
c01099a2:	10 c0                	adc    al,al
c01099a4:	44                   	inc    esp
c01099a5:	00 00                	add    BYTE PTR [eax],al
c01099a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01099aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01099b0:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c01099b3:	0c 04                	or     al,0x4
c01099b5:	04 00                	add    al,0x0
c01099b7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01099ba:	00 00                	add    BYTE PTR [eax],al
c01099bc:	f8                   	clc    
c01099bd:	04 00                	add    al,0x0
c01099bf:	00 a9 24 10 c0 ce    	add    BYTE PTR [ecx-0x313fefdc],ch
c01099c5:	00 00                	add    BYTE PTR [eax],al
c01099c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01099ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01099d0:	02 ca                	add    cl,dl
c01099d2:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01099d5:	04 00                	add    al,0x0
c01099d7:	00 20                	add    BYTE PTR [eax],ah
c01099d9:	00 00                	add    BYTE PTR [eax],al
c01099db:	00 18                	add    BYTE PTR [eax],bl
c01099dd:	05 00 00 77 25       	add    eax,0x25770000
c01099e2:	10 c0                	adc    al,al
c01099e4:	1f                   	pop    ds
c01099e5:	03 00                	add    eax,DWORD PTR [eax]
c01099e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01099ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01099f0:	44                   	inc    esp
c01099f1:	83 03 03             	add    DWORD PTR [ebx],0x3
c01099f4:	16                   	push   ss
c01099f5:	03 c3                	add    eax,ebx
c01099f7:	41                   	inc    ecx
c01099f8:	0c 04                	or     al,0x4
c01099fa:	04 c5                	add    al,0xc5
c01099fc:	1c 00                	sbb    al,0x0
c01099fe:	00 00                	add    BYTE PTR [eax],al
c0109a00:	3c 05                	cmp    al,0x5
c0109a02:	00 00                	add    BYTE PTR [eax],al
c0109a04:	96                   	xchg   esi,eax
c0109a05:	28 10                	sub    BYTE PTR [eax],dl
c0109a07:	c0 29 00             	shr    BYTE PTR [ecx],0x0
c0109a0a:	00 00                	add    BYTE PTR [eax],al
c0109a0c:	41                   	inc    ecx
c0109a0d:	0e                   	push   cs
c0109a0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a14:	65 c5 0c 04          	lds    ecx,FWORD PTR gs:[esp+eax*1]
c0109a18:	04 00                	add    al,0x0
c0109a1a:	00 00                	add    BYTE PTR [eax],al
c0109a1c:	1c 00                	sbb    al,0x0
c0109a1e:	00 00                	add    BYTE PTR [eax],al
c0109a20:	5c                   	pop    esp
c0109a21:	05 00 00 bf 28       	add    eax,0x28bf0000
c0109a26:	10 c0                	adc    al,al
c0109a28:	3e 00 00             	add    BYTE PTR ds:[eax],al
c0109a2b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109a2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a34:	7a c5                	jp     c01099fb <_edata+0x53a>
c0109a36:	0c 04                	or     al,0x4
c0109a38:	04 00                	add    al,0x0
c0109a3a:	00 00                	add    BYTE PTR [eax],al
c0109a3c:	1c 00                	sbb    al,0x0
c0109a3e:	00 00                	add    BYTE PTR [eax],al
c0109a40:	7c 05                	jl     c0109a47 <_edata+0x586>
c0109a42:	00 00                	add    BYTE PTR [eax],al
c0109a44:	fd                   	std    
c0109a45:	28 10                	sub    BYTE PTR [eax],dl
c0109a47:	c0 4e 00 00          	ror    BYTE PTR [esi+0x0],0x0
c0109a4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109a4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a54:	02 4a c5             	add    cl,BYTE PTR [edx-0x3b]
c0109a57:	0c 04                	or     al,0x4
c0109a59:	04 00                	add    al,0x0
c0109a5b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109a5e:	00 00                	add    BYTE PTR [eax],al
c0109a60:	9c                   	pushf  
c0109a61:	05 00 00 4b 29       	add    eax,0x294b0000
c0109a66:	10 c0                	adc    al,al
c0109a68:	5c                   	pop    esp
c0109a69:	01 00                	add    DWORD PTR [eax],eax
c0109a6b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109a6e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a74:	03 58 01             	add    ebx,DWORD PTR [eax+0x1]
c0109a77:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109a7a:	04 00                	add    al,0x0
c0109a7c:	1c 00                	sbb    al,0x0
c0109a7e:	00 00                	add    BYTE PTR [eax],al
c0109a80:	bc 05 00 00 a8       	mov    esp,0xa8000005
c0109a85:	2a 10                	sub    dl,BYTE PTR [eax]
c0109a87:	c0 5e 00 00          	rcr    BYTE PTR [esi+0x0],0x0
c0109a8b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109a8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a94:	02 5a c5             	add    bl,BYTE PTR [edx-0x3b]
c0109a97:	0c 04                	or     al,0x4
c0109a99:	04 00                	add    al,0x0
c0109a9b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109a9e:	00 00                	add    BYTE PTR [eax],al
c0109aa0:	dc 05 00 00 06 2b    	fadd   QWORD PTR ds:0x2b060000
c0109aa6:	10 c0                	adc    al,al
c0109aa8:	31 00                	xor    DWORD PTR [eax],eax
c0109aaa:	00 00                	add    BYTE PTR [eax],al
c0109aac:	41                   	inc    ecx
c0109aad:	0e                   	push   cs
c0109aae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ab4:	6d                   	ins    DWORD PTR es:[edi],dx
c0109ab5:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109ab8:	04 00                	add    al,0x0
c0109aba:	00 00                	add    BYTE PTR [eax],al
c0109abc:	20 00                	and    BYTE PTR [eax],al
c0109abe:	00 00                	add    BYTE PTR [eax],al
c0109ac0:	fc                   	cld    
c0109ac1:	05 00 00 37 2b       	add    eax,0x2b370000
c0109ac6:	10 c0                	adc    al,al
c0109ac8:	6b 01 00             	imul   eax,DWORD PTR [ecx],0x0
c0109acb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109ace:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ad4:	44                   	inc    esp
c0109ad5:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109ad8:	62 01                	bound  eax,QWORD PTR [ecx]
c0109ada:	c3                   	ret    
c0109adb:	41                   	inc    ecx
c0109adc:	0c 04                	or     al,0x4
c0109ade:	04 c5                	add    al,0xc5
c0109ae0:	1c 00                	sbb    al,0x0
c0109ae2:	00 00                	add    BYTE PTR [eax],al
c0109ae4:	20 06                	and    BYTE PTR [esi],al
c0109ae6:	00 00                	add    BYTE PTR [eax],al
c0109ae8:	a2 2c 10 c0 c4       	mov    ds:0xc4c0102c,al
c0109aed:	00 00                	add    BYTE PTR [eax],al
c0109aef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109af2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109af8:	02 c0                	add    al,al
c0109afa:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109afd:	04 00                	add    al,0x0
c0109aff:	00 20                	add    BYTE PTR [eax],ah
c0109b01:	00 00                	add    BYTE PTR [eax],al
c0109b03:	00 40 06             	add    BYTE PTR [eax+0x6],al
c0109b06:	00 00                	add    BYTE PTR [eax],al
c0109b08:	66 2d 10 c0          	sub    ax,0xc010
c0109b0c:	84 00                	test   BYTE PTR [eax],al
c0109b0e:	00 00                	add    BYTE PTR [eax],al
c0109b10:	41                   	inc    ecx
c0109b11:	0e                   	push   cs
c0109b12:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b18:	44                   	inc    esp
c0109b19:	83 03 02             	add    DWORD PTR [ebx],0x2
c0109b1c:	7b c3                	jnp    c0109ae1 <_edata+0x620>
c0109b1e:	41                   	inc    ecx
c0109b1f:	0c 04                	or     al,0x4
c0109b21:	04 c5                	add    al,0xc5
c0109b23:	00 20                	add    BYTE PTR [eax],ah
c0109b25:	00 00                	add    BYTE PTR [eax],al
c0109b27:	00 64 06 00          	add    BYTE PTR [esi+eax*1+0x0],ah
c0109b2b:	00 ea                	add    dl,ch
c0109b2d:	2d 10 c0 bc 00       	sub    eax,0xbcc010
c0109b32:	00 00                	add    BYTE PTR [eax],al
c0109b34:	41                   	inc    ecx
c0109b35:	0e                   	push   cs
c0109b36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b3c:	44                   	inc    esp
c0109b3d:	83 03 02             	add    DWORD PTR [ebx],0x2
c0109b40:	b3 c3                	mov    bl,0xc3
c0109b42:	41                   	inc    ecx
c0109b43:	0c 04                	or     al,0x4
c0109b45:	04 c5                	add    al,0xc5
c0109b47:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109b4a:	00 00                	add    BYTE PTR [eax],al
c0109b4c:	88 06                	mov    BYTE PTR [esi],al
c0109b4e:	00 00                	add    BYTE PTR [eax],al
c0109b50:	a8 2e                	test   al,0x2e
c0109b52:	10 c0                	adc    al,al
c0109b54:	3b 00                	cmp    eax,DWORD PTR [eax]
c0109b56:	00 00                	add    BYTE PTR [eax],al
c0109b58:	41                   	inc    ecx
c0109b59:	0e                   	push   cs
c0109b5a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b60:	77 c5                	ja     c0109b27 <_edata+0x666>
c0109b62:	0c 04                	or     al,0x4
c0109b64:	04 00                	add    al,0x0
c0109b66:	00 00                	add    BYTE PTR [eax],al
c0109b68:	1c 00                	sbb    al,0x0
c0109b6a:	00 00                	add    BYTE PTR [eax],al
c0109b6c:	a8 06                	test   al,0x6
c0109b6e:	00 00                	add    BYTE PTR [eax],al
c0109b70:	e3 2e                	jecxz  c0109ba0 <_edata+0x6df>
c0109b72:	10 c0                	adc    al,al
c0109b74:	38 00                	cmp    BYTE PTR [eax],al
c0109b76:	00 00                	add    BYTE PTR [eax],al
c0109b78:	41                   	inc    ecx
c0109b79:	0e                   	push   cs
c0109b7a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b80:	74 c5                	je     c0109b47 <_edata+0x686>
c0109b82:	0c 04                	or     al,0x4
c0109b84:	04 00                	add    al,0x0
c0109b86:	00 00                	add    BYTE PTR [eax],al
c0109b88:	1c 00                	sbb    al,0x0
c0109b8a:	00 00                	add    BYTE PTR [eax],al
c0109b8c:	c8 06 00 00          	enter  0x6,0x0
c0109b90:	1b 2f                	sbb    ebp,DWORD PTR [edi]
c0109b92:	10 c0                	adc    al,al
c0109b94:	dc 00                	fadd   QWORD PTR [eax]
c0109b96:	00 00                	add    BYTE PTR [eax],al
c0109b98:	41                   	inc    ecx
c0109b99:	0e                   	push   cs
c0109b9a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ba0:	02 d8                	add    bl,al
c0109ba2:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109ba5:	04 00                	add    al,0x0
c0109ba7:	00 20                	add    BYTE PTR [eax],ah
c0109ba9:	00 00                	add    BYTE PTR [eax],al
c0109bab:	00 e8                	add    al,ch
c0109bad:	06                   	push   es
c0109bae:	00 00                	add    BYTE PTR [eax],al
c0109bb0:	f7 2f                	imul   DWORD PTR [edi]
c0109bb2:	10 c0                	adc    al,al
c0109bb4:	1a 00                	sbb    al,BYTE PTR [eax]
c0109bb6:	00 00                	add    BYTE PTR [eax],al
c0109bb8:	41                   	inc    ecx
c0109bb9:	0e                   	push   cs
c0109bba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109bc0:	44                   	inc    esp
c0109bc1:	83 03 51             	add    DWORD PTR [ebx],0x51
c0109bc4:	c3                   	ret    
c0109bc5:	41                   	inc    ecx
c0109bc6:	0c 04                	or     al,0x4
c0109bc8:	04 c5                	add    al,0xc5
c0109bca:	00 00                	add    BYTE PTR [eax],al
c0109bcc:	1c 00                	sbb    al,0x0
c0109bce:	00 00                	add    BYTE PTR [eax],al
c0109bd0:	0c 07                	or     al,0x7
c0109bd2:	00 00                	add    BYTE PTR [eax],al
c0109bd4:	11 30                	adc    DWORD PTR [eax],esi
c0109bd6:	10 c0                	adc    al,al
c0109bd8:	18 00                	sbb    BYTE PTR [eax],al
c0109bda:	00 00                	add    BYTE PTR [eax],al
c0109bdc:	41                   	inc    ecx
c0109bdd:	0e                   	push   cs
c0109bde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109be4:	54                   	push   esp
c0109be5:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109be8:	04 00                	add    al,0x0
c0109bea:	00 00                	add    BYTE PTR [eax],al
c0109bec:	1c 00                	sbb    al,0x0
c0109bee:	00 00                	add    BYTE PTR [eax],al
c0109bf0:	2c 07                	sub    al,0x7
c0109bf2:	00 00                	add    BYTE PTR [eax],al
c0109bf4:	29 30                	sub    DWORD PTR [eax],esi
c0109bf6:	10 c0                	adc    al,al
c0109bf8:	70 00                	jo     c0109bfa <_edata+0x739>
c0109bfa:	00 00                	add    BYTE PTR [eax],al
c0109bfc:	41                   	inc    ecx
c0109bfd:	0e                   	push   cs
c0109bfe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c04:	02 6c c5 0c          	add    ch,BYTE PTR [ebp+eax*8+0xc]
c0109c08:	04 04                	add    al,0x4
c0109c0a:	00 00                	add    BYTE PTR [eax],al
c0109c0c:	1c 00                	sbb    al,0x0
c0109c0e:	00 00                	add    BYTE PTR [eax],al
c0109c10:	4c                   	dec    esp
c0109c11:	07                   	pop    es
c0109c12:	00 00                	add    BYTE PTR [eax],al
c0109c14:	99                   	cdq    
c0109c15:	30 10                	xor    BYTE PTR [eax],dl
c0109c17:	c0 1d 01 00 00 41 0e 	rcr    BYTE PTR ds:0x41000001,0xe
c0109c1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c24:	03 19                	add    ebx,DWORD PTR [ecx]
c0109c26:	01 c5                	add    ebp,eax
c0109c28:	0c 04                	or     al,0x4
c0109c2a:	04 00                	add    al,0x0
c0109c2c:	1c 00                	sbb    al,0x0
c0109c2e:	00 00                	add    BYTE PTR [eax],al
c0109c30:	6c                   	ins    BYTE PTR es:[edi],dx
c0109c31:	07                   	pop    es
c0109c32:	00 00                	add    BYTE PTR [eax],al
c0109c34:	b6 31                	mov    dh,0x31
c0109c36:	10 c0                	adc    al,al
c0109c38:	63 00                	arpl   WORD PTR [eax],ax
c0109c3a:	00 00                	add    BYTE PTR [eax],al
c0109c3c:	41                   	inc    ecx
c0109c3d:	0e                   	push   cs
c0109c3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c44:	02 5f c5             	add    bl,BYTE PTR [edi-0x3b]
c0109c47:	0c 04                	or     al,0x4
c0109c49:	04 00                	add    al,0x0
c0109c4b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109c4e:	00 00                	add    BYTE PTR [eax],al
c0109c50:	8c 07                	mov    WORD PTR [edi],es
c0109c52:	00 00                	add    BYTE PTR [eax],al
c0109c54:	19 32                	sbb    DWORD PTR [edx],esi
c0109c56:	10 c0                	adc    al,al
c0109c58:	84 01                	test   BYTE PTR [ecx],al
c0109c5a:	00 00                	add    BYTE PTR [eax],al
c0109c5c:	41                   	inc    ecx
c0109c5d:	0e                   	push   cs
c0109c5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c64:	03 80 01 c5 0c 04    	add    eax,DWORD PTR [eax+0x40cc501]
c0109c6a:	04 00                	add    al,0x0
c0109c6c:	1c 00                	sbb    al,0x0
c0109c6e:	00 00                	add    BYTE PTR [eax],al
c0109c70:	ac                   	lods   al,BYTE PTR ds:[esi]
c0109c71:	07                   	pop    es
c0109c72:	00 00                	add    BYTE PTR [eax],al
c0109c74:	9d                   	popf   
c0109c75:	33 10                	xor    edx,DWORD PTR [eax]
c0109c77:	c0 a0 00 00 00 41 0e 	shl    BYTE PTR [eax+0x41000000],0xe
c0109c7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c84:	02 9c c5 0c 04 04 00 	add    bl,BYTE PTR [ebp+eax*8+0x4040c]
c0109c8b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109c8e:	00 00                	add    BYTE PTR [eax],al
c0109c90:	cc                   	int3   
c0109c91:	07                   	pop    es
c0109c92:	00 00                	add    BYTE PTR [eax],al
c0109c94:	3d 34 10 c0 d6       	cmp    eax,0xd6c01034
c0109c99:	00 00                	add    BYTE PTR [eax],al
c0109c9b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109c9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ca4:	02 d2                	add    dl,dl
c0109ca6:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109ca9:	04 00                	add    al,0x0
c0109cab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109cae:	00 00                	add    BYTE PTR [eax],al
c0109cb0:	ec                   	in     al,dx
c0109cb1:	07                   	pop    es
c0109cb2:	00 00                	add    BYTE PTR [eax],al
c0109cb4:	13 35 10 c0 17 00    	adc    esi,DWORD PTR ds:0x17c010
c0109cba:	00 00                	add    BYTE PTR [eax],al
c0109cbc:	41                   	inc    ecx
c0109cbd:	0e                   	push   cs
c0109cbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109cc4:	53                   	push   ebx
c0109cc5:	0c 04                	or     al,0x4
c0109cc7:	04 c5                	add    al,0xc5
c0109cc9:	00 00                	add    BYTE PTR [eax],al
c0109ccb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109cce:	00 00                	add    BYTE PTR [eax],al
c0109cd0:	0c 08                	or     al,0x8
c0109cd2:	00 00                	add    BYTE PTR [eax],al
c0109cd4:	2a 35 10 c0 39 00    	sub    dh,BYTE PTR ds:0x39c010
c0109cda:	00 00                	add    BYTE PTR [eax],al
c0109cdc:	41                   	inc    ecx
c0109cdd:	0e                   	push   cs
c0109cde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ce4:	75 c5                	jne    c0109cab <_edata+0x7ea>
c0109ce6:	0c 04                	or     al,0x4
c0109ce8:	04 00                	add    al,0x0
c0109cea:	00 00                	add    BYTE PTR [eax],al
c0109cec:	1c 00                	sbb    al,0x0
c0109cee:	00 00                	add    BYTE PTR [eax],al
c0109cf0:	2c 08                	sub    al,0x8
c0109cf2:	00 00                	add    BYTE PTR [eax],al
c0109cf4:	78 35                	js     c0109d2b <_edata+0x86a>
c0109cf6:	10 c0                	adc    al,al
c0109cf8:	69 00 00 00 41 0e    	imul   eax,DWORD PTR [eax],0xe410000
c0109cfe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d04:	02 63 c5             	add    ah,BYTE PTR [ebx-0x3b]
c0109d07:	0c 04                	or     al,0x4
c0109d09:	04 00                	add    al,0x0
c0109d0b:	00 20                	add    BYTE PTR [eax],ah
c0109d0d:	00 00                	add    BYTE PTR [eax],al
c0109d0f:	00 4c 08 00          	add    BYTE PTR [eax+ecx*1+0x0],cl
c0109d13:	00 e1                	add    cl,ah
c0109d15:	35 10 c0 ff 00       	xor    eax,0xffc010
c0109d1a:	00 00                	add    BYTE PTR [eax],al
c0109d1c:	41                   	inc    ecx
c0109d1d:	0e                   	push   cs
c0109d1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d24:	44                   	inc    esp
c0109d25:	83 03 02             	add    DWORD PTR [ebx],0x2
c0109d28:	f7 c5 0c 04 04 c3    	test   ebp,0xc304040c
c0109d2e:	00 00                	add    BYTE PTR [eax],al
c0109d30:	1c 00                	sbb    al,0x0
c0109d32:	00 00                	add    BYTE PTR [eax],al
c0109d34:	70 08                	jo     c0109d3e <_edata+0x87d>
c0109d36:	00 00                	add    BYTE PTR [eax],al
c0109d38:	e0 36                	loopne c0109d70 <_edata+0x8af>
c0109d3a:	10 c0                	adc    al,al
c0109d3c:	12 00                	adc    al,BYTE PTR [eax]
c0109d3e:	00 00                	add    BYTE PTR [eax],al
c0109d40:	41                   	inc    ecx
c0109d41:	0e                   	push   cs
c0109d42:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d48:	4e                   	dec    esi
c0109d49:	0c 04                	or     al,0x4
c0109d4b:	04 c5                	add    al,0xc5
c0109d4d:	00 00                	add    BYTE PTR [eax],al
c0109d4f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109d52:	00 00                	add    BYTE PTR [eax],al
c0109d54:	90                   	nop
c0109d55:	08 00                	or     BYTE PTR [eax],al
c0109d57:	00 f4                	add    ah,dh
c0109d59:	36 10 c0             	ss adc al,al
c0109d5c:	f6 00 00             	test   BYTE PTR [eax],0x0
c0109d5f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109d62:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d68:	02 f2                	add    dh,dl
c0109d6a:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109d6d:	04 00                	add    al,0x0
c0109d6f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109d72:	00 00                	add    BYTE PTR [eax],al
c0109d74:	b0 08                	mov    al,0x8
c0109d76:	00 00                	add    BYTE PTR [eax],al
c0109d78:	ea 37 10 c0 62 00 00 	jmp    0x0:0x62c01037
c0109d7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109d82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d88:	02 5e c5             	add    bl,BYTE PTR [esi-0x3b]
c0109d8b:	0c 04                	or     al,0x4
c0109d8d:	04 00                	add    al,0x0
c0109d8f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109d92:	00 00                	add    BYTE PTR [eax],al
c0109d94:	d0 08                	ror    BYTE PTR [eax],1
c0109d96:	00 00                	add    BYTE PTR [eax],al
c0109d98:	4c                   	dec    esp
c0109d99:	38 10                	cmp    BYTE PTR [eax],dl
c0109d9b:	c0 5a 00 00          	rcr    BYTE PTR [edx+0x0],0x0
c0109d9f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109da2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109da8:	02 56 c5             	add    dl,BYTE PTR [esi-0x3b]
c0109dab:	0c 04                	or     al,0x4
c0109dad:	04 00                	add    al,0x0
c0109daf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109db2:	00 00                	add    BYTE PTR [eax],al
c0109db4:	f0 08 00             	lock or BYTE PTR [eax],al
c0109db7:	00 a6 38 10 c0 79    	add    BYTE PTR [esi+0x79c01038],ah
c0109dbd:	00 00                	add    BYTE PTR [eax],al
c0109dbf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109dc2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109dc8:	02 75 c5             	add    dh,BYTE PTR [ebp-0x3b]
c0109dcb:	0c 04                	or     al,0x4
c0109dcd:	04 00                	add    al,0x0
c0109dcf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109dd2:	00 00                	add    BYTE PTR [eax],al
c0109dd4:	10 09                	adc    BYTE PTR [ecx],cl
c0109dd6:	00 00                	add    BYTE PTR [eax],al
c0109dd8:	1f                   	pop    ds
c0109dd9:	39 10                	cmp    DWORD PTR [eax],edx
c0109ddb:	c0 4c 00 00 00       	ror    BYTE PTR [eax+eax*1+0x0],0x0
c0109de0:	41                   	inc    ecx
c0109de1:	0e                   	push   cs
c0109de2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109de8:	02 48 c5             	add    cl,BYTE PTR [eax-0x3b]
c0109deb:	0c 04                	or     al,0x4
c0109ded:	04 00                	add    al,0x0
c0109def:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109df2:	00 00                	add    BYTE PTR [eax],al
c0109df4:	30 09                	xor    BYTE PTR [ecx],cl
c0109df6:	00 00                	add    BYTE PTR [eax],al
c0109df8:	6b 39 10             	imul   edi,DWORD PTR [ecx],0x10
c0109dfb:	c0 4c 01 00 00       	ror    BYTE PTR [ecx+eax*1+0x0],0x0
c0109e00:	41                   	inc    ecx
c0109e01:	0e                   	push   cs
c0109e02:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e08:	03 48 01             	add    ecx,DWORD PTR [eax+0x1]
c0109e0b:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109e0e:	04 00                	add    al,0x0
c0109e10:	1c 00                	sbb    al,0x0
c0109e12:	00 00                	add    BYTE PTR [eax],al
c0109e14:	50                   	push   eax
c0109e15:	09 00                	or     DWORD PTR [eax],eax
c0109e17:	00 b8 3a 10 c0 14    	add    BYTE PTR [eax+0x14c0103a],bh
c0109e1d:	00 00                	add    BYTE PTR [eax],al
c0109e1f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109e22:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e28:	50                   	push   eax
c0109e29:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109e2c:	04 00                	add    al,0x0
c0109e2e:	00 00                	add    BYTE PTR [eax],al
c0109e30:	1c 00                	sbb    al,0x0
c0109e32:	00 00                	add    BYTE PTR [eax],al
c0109e34:	70 09                	jo     c0109e3f <_edata+0x97e>
c0109e36:	00 00                	add    BYTE PTR [eax],al
c0109e38:	cc                   	int3   
c0109e39:	3a 10                	cmp    dl,BYTE PTR [eax]
c0109e3b:	c0 43 00 00          	rol    BYTE PTR [ebx+0x0],0x0
c0109e3f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109e42:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e48:	7f c5                	jg     c0109e0f <_edata+0x94e>
c0109e4a:	0c 04                	or     al,0x4
c0109e4c:	04 00                	add    al,0x0
c0109e4e:	00 00                	add    BYTE PTR [eax],al
c0109e50:	1c 00                	sbb    al,0x0
c0109e52:	00 00                	add    BYTE PTR [eax],al
c0109e54:	90                   	nop
c0109e55:	09 00                	or     DWORD PTR [eax],eax
c0109e57:	00 0f                	add    BYTE PTR [edi],cl
c0109e59:	3b 10                	cmp    edx,DWORD PTR [eax]
c0109e5b:	c0 39 00             	sar    BYTE PTR [ecx],0x0
c0109e5e:	00 00                	add    BYTE PTR [eax],al
c0109e60:	41                   	inc    ecx
c0109e61:	0e                   	push   cs
c0109e62:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e68:	75 c5                	jne    c0109e2f <_edata+0x96e>
c0109e6a:	0c 04                	or     al,0x4
c0109e6c:	04 00                	add    al,0x0
c0109e6e:	00 00                	add    BYTE PTR [eax],al
c0109e70:	1c 00                	sbb    al,0x0
c0109e72:	00 00                	add    BYTE PTR [eax],al
c0109e74:	b0 09                	mov    al,0x9
c0109e76:	00 00                	add    BYTE PTR [eax],al
c0109e78:	48                   	dec    eax
c0109e79:	3b 10                	cmp    edx,DWORD PTR [eax]
c0109e7b:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c0109e7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109e82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e88:	7c c5                	jl     c0109e4f <_edata+0x98e>
c0109e8a:	0c 04                	or     al,0x4
c0109e8c:	04 00                	add    al,0x0
c0109e8e:	00 00                	add    BYTE PTR [eax],al
c0109e90:	1c 00                	sbb    al,0x0
c0109e92:	00 00                	add    BYTE PTR [eax],al
c0109e94:	d0 09                	ror    BYTE PTR [ecx],1
c0109e96:	00 00                	add    BYTE PTR [eax],al
c0109e98:	88 3b                	mov    BYTE PTR [ebx],bh
c0109e9a:	10 c0                	adc    al,al
c0109e9c:	40                   	inc    eax
c0109e9d:	00 00                	add    BYTE PTR [eax],al
c0109e9f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109ea2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ea8:	7c c5                	jl     c0109e6f <_edata+0x9ae>
c0109eaa:	0c 04                	or     al,0x4
c0109eac:	04 00                	add    al,0x0
c0109eae:	00 00                	add    BYTE PTR [eax],al
c0109eb0:	24 00                	and    al,0x0
c0109eb2:	00 00                	add    BYTE PTR [eax],al
c0109eb4:	f0 09 00             	lock or DWORD PTR [eax],eax
c0109eb7:	00 c8                	add    al,cl
c0109eb9:	3b 10                	cmp    edx,DWORD PTR [eax]
c0109ebb:	c0 49 00 00          	ror    BYTE PTR [ecx+0x0],0x0
c0109ebf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109ec2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ec8:	45                   	inc    ebp
c0109ec9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0109ecd:	7e c3                	jle    c0109e92 <_edata+0x9d1>
c0109ecf:	41                   	inc    ecx
c0109ed0:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0109ed4:	04 c5                	add    al,0xc5
c0109ed6:	00 00                	add    BYTE PTR [eax],al
c0109ed8:	1c 00                	sbb    al,0x0
c0109eda:	00 00                	add    BYTE PTR [eax],al
c0109edc:	18 0a                	sbb    BYTE PTR [edx],cl
c0109ede:	00 00                	add    BYTE PTR [eax],al
c0109ee0:	11 3c 10             	adc    DWORD PTR [eax+edx*1],edi
c0109ee3:	c0 d7 00             	rcl    bh,0x0
c0109ee6:	00 00                	add    BYTE PTR [eax],al
c0109ee8:	41                   	inc    ecx
c0109ee9:	0e                   	push   cs
c0109eea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ef0:	02 d3                	add    dl,bl
c0109ef2:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109ef5:	04 00                	add    al,0x0
c0109ef7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109efa:	00 00                	add    BYTE PTR [eax],al
c0109efc:	38 0a                	cmp    BYTE PTR [edx],cl
c0109efe:	00 00                	add    BYTE PTR [eax],al
c0109f00:	e8 3c 10 c0 d7       	call   97d0af41 <AR_CODE32+0x97cfeea9>
c0109f05:	00 00                	add    BYTE PTR [eax],al
c0109f07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109f0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f10:	02 d3                	add    dl,bl
c0109f12:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109f15:	04 00                	add    al,0x0
c0109f17:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109f1a:	00 00                	add    BYTE PTR [eax],al
c0109f1c:	58                   	pop    eax
c0109f1d:	0a 00                	or     al,BYTE PTR [eax]
c0109f1f:	00 c0                	add    al,al
c0109f21:	3d 10 c0 a1 00       	cmp    eax,0xa1c010
c0109f26:	00 00                	add    BYTE PTR [eax],al
c0109f28:	41                   	inc    ecx
c0109f29:	0e                   	push   cs
c0109f2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f30:	02 9d c5 0c 04 04    	add    bl,BYTE PTR [ebp+0x4040cc5]
c0109f36:	00 00                	add    BYTE PTR [eax],al
c0109f38:	1c 00                	sbb    al,0x0
c0109f3a:	00 00                	add    BYTE PTR [eax],al
c0109f3c:	78 0a                	js     c0109f48 <_edata+0xa87>
c0109f3e:	00 00                	add    BYTE PTR [eax],al
c0109f40:	61                   	popa   
c0109f41:	3e 10 c0             	ds adc al,al
c0109f44:	90                   	nop
c0109f45:	01 00                	add    DWORD PTR [eax],eax
c0109f47:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109f4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f50:	03 8c 01 c5 0c 04 04 	add    ecx,DWORD PTR [ecx+eax*1+0x4040cc5]
c0109f57:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109f5a:	00 00                	add    BYTE PTR [eax],al
c0109f5c:	98                   	cwde   
c0109f5d:	0a 00                	or     al,BYTE PTR [eax]
c0109f5f:	00 f1                	add    cl,dh
c0109f61:	3f                   	aas    
c0109f62:	10 c0                	adc    al,al
c0109f64:	98                   	cwde   
c0109f65:	01 00                	add    DWORD PTR [eax],eax
c0109f67:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109f6a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f70:	03 94 01 c5 0c 04 04 	add    edx,DWORD PTR [ecx+eax*1+0x4040cc5]
c0109f77:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109f7a:	00 00                	add    BYTE PTR [eax],al
c0109f7c:	b8 0a 00 00 89       	mov    eax,0x8900000a
c0109f81:	41                   	inc    ecx
c0109f82:	10 c0                	adc    al,al
c0109f84:	19 00                	sbb    DWORD PTR [eax],eax
c0109f86:	00 00                	add    BYTE PTR [eax],al
c0109f88:	41                   	inc    ecx
c0109f89:	0e                   	push   cs
c0109f8a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f90:	55                   	push   ebp
c0109f91:	0c 04                	or     al,0x4
c0109f93:	04 c5                	add    al,0xc5
c0109f95:	00 00                	add    BYTE PTR [eax],al
c0109f97:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109f9a:	00 00                	add    BYTE PTR [eax],al
c0109f9c:	d8 0a                	fmul   DWORD PTR [edx]
c0109f9e:	00 00                	add    BYTE PTR [eax],al
c0109fa0:	a2 41 10 c0 13       	mov    ds:0x13c01041,al
c0109fa5:	00 00                	add    BYTE PTR [eax],al
c0109fa7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109faa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109fb0:	4f                   	dec    edi
c0109fb1:	0c 04                	or     al,0x4
c0109fb3:	04 c5                	add    al,0xc5
c0109fb5:	00 00                	add    BYTE PTR [eax],al
c0109fb7:	00 20                	add    BYTE PTR [eax],ah
c0109fb9:	00 00                	add    BYTE PTR [eax],al
c0109fbb:	00 f8                	add    al,bh
c0109fbd:	0a 00                	or     al,BYTE PTR [eax]
c0109fbf:	00 b8 41 10 c0 1f    	add    BYTE PTR [eax+0x1fc01041],bh
c0109fc5:	00 00                	add    BYTE PTR [eax],al
c0109fc7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109fca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109fd0:	44                   	inc    esp
c0109fd1:	83 03 56             	add    DWORD PTR [ebx],0x56
c0109fd4:	c3                   	ret    
c0109fd5:	41                   	inc    ecx
c0109fd6:	0c 04                	or     al,0x4
c0109fd8:	04 c5                	add    al,0xc5
c0109fda:	00 00                	add    BYTE PTR [eax],al
c0109fdc:	1c 00                	sbb    al,0x0
c0109fde:	00 00                	add    BYTE PTR [eax],al
c0109fe0:	1c 0b                	sbb    al,0xb
c0109fe2:	00 00                	add    BYTE PTR [eax],al
c0109fe4:	d7                   	xlat   BYTE PTR ds:[ebx]
c0109fe5:	41                   	inc    ecx
c0109fe6:	10 c0                	adc    al,al
c0109fe8:	0c 00                	or     al,0x0
c0109fea:	00 00                	add    BYTE PTR [eax],al
c0109fec:	41                   	inc    ecx
c0109fed:	0e                   	push   cs
c0109fee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ff4:	48                   	dec    eax
c0109ff5:	0c 04                	or     al,0x4
c0109ff7:	04 c5                	add    al,0xc5
c0109ff9:	00 00                	add    BYTE PTR [eax],al
c0109ffb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109ffe:	00 00                	add    BYTE PTR [eax],al
c010a000:	3c 0b                	cmp    al,0xb
c010a002:	00 00                	add    BYTE PTR [eax],al
c010a004:	e3 41                	jecxz  c010a047 <_edata+0xb86>
c010a006:	10 c0                	adc    al,al
c010a008:	1f                   	pop    ds
c010a009:	00 00                	add    BYTE PTR [eax],al
c010a00b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a00e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a014:	5b                   	pop    ebx
c010a015:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a018:	04 00                	add    al,0x0
c010a01a:	00 00                	add    BYTE PTR [eax],al
c010a01c:	1c 00                	sbb    al,0x0
c010a01e:	00 00                	add    BYTE PTR [eax],al
c010a020:	5c                   	pop    esp
c010a021:	0b 00                	or     eax,DWORD PTR [eax]
c010a023:	00 02                	add    BYTE PTR [edx],al
c010a025:	42                   	inc    edx
c010a026:	10 c0                	adc    al,al
c010a028:	5e                   	pop    esi
c010a029:	00 00                	add    BYTE PTR [eax],al
c010a02b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a02e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a034:	02 5a c5             	add    bl,BYTE PTR [edx-0x3b]
c010a037:	0c 04                	or     al,0x4
c010a039:	04 00                	add    al,0x0
c010a03b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a03e:	00 00                	add    BYTE PTR [eax],al
c010a040:	7c 0b                	jl     c010a04d <_edata+0xb8c>
c010a042:	00 00                	add    BYTE PTR [eax],al
c010a044:	60                   	pusha  
c010a045:	42                   	inc    edx
c010a046:	10 c0                	adc    al,al
c010a048:	49                   	dec    ecx
c010a049:	02 00                	add    al,BYTE PTR [eax]
c010a04b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a04e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a054:	03 45 02             	add    eax,DWORD PTR [ebp+0x2]
c010a057:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a05a:	04 00                	add    al,0x0
c010a05c:	20 00                	and    BYTE PTR [eax],al
c010a05e:	00 00                	add    BYTE PTR [eax],al
c010a060:	9c                   	pushf  
c010a061:	0b 00                	or     eax,DWORD PTR [eax]
c010a063:	00 ac 44 10 c0 1f 00 	add    BYTE PTR [esp+eax*2+0x1fc010],ch
c010a06a:	00 00                	add    BYTE PTR [eax],al
c010a06c:	41                   	inc    ecx
c010a06d:	0e                   	push   cs
c010a06e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a074:	44                   	inc    esp
c010a075:	83 03 56             	add    DWORD PTR [ebx],0x56
c010a078:	c3                   	ret    
c010a079:	41                   	inc    ecx
c010a07a:	0c 04                	or     al,0x4
c010a07c:	04 c5                	add    al,0xc5
c010a07e:	00 00                	add    BYTE PTR [eax],al
c010a080:	1c 00                	sbb    al,0x0
c010a082:	00 00                	add    BYTE PTR [eax],al
c010a084:	c0 0b 00             	ror    BYTE PTR [ebx],0x0
c010a087:	00 cb                	add    bl,cl
c010a089:	44                   	inc    esp
c010a08a:	10 c0                	adc    al,al
c010a08c:	0c 00                	or     al,0x0
c010a08e:	00 00                	add    BYTE PTR [eax],al
c010a090:	41                   	inc    ecx
c010a091:	0e                   	push   cs
c010a092:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a098:	48                   	dec    eax
c010a099:	0c 04                	or     al,0x4
c010a09b:	04 c5                	add    al,0xc5
c010a09d:	00 00                	add    BYTE PTR [eax],al
c010a09f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a0a2:	00 00                	add    BYTE PTR [eax],al
c010a0a4:	e0 0b                	loopne c010a0b1 <_edata+0xbf0>
c010a0a6:	00 00                	add    BYTE PTR [eax],al
c010a0a8:	d7                   	xlat   BYTE PTR ds:[ebx]
c010a0a9:	44                   	inc    esp
c010a0aa:	10 c0                	adc    al,al
c010a0ac:	44                   	inc    esp
c010a0ad:	00 00                	add    BYTE PTR [eax],al
c010a0af:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a0b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a0b8:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010a0bb:	0c 04                	or     al,0x4
c010a0bd:	04 00                	add    al,0x0
c010a0bf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a0c2:	00 00                	add    BYTE PTR [eax],al
c010a0c4:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
c010a0c7:	00 1b                	add    BYTE PTR [ebx],bl
c010a0c9:	45                   	inc    ebp
c010a0ca:	10 c0                	adc    al,al
c010a0cc:	5a                   	pop    edx
c010a0cd:	01 00                	add    DWORD PTR [eax],eax
c010a0cf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a0d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a0d8:	03 56 01             	add    edx,DWORD PTR [esi+0x1]
c010a0db:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a0de:	04 00                	add    al,0x0
c010a0e0:	1c 00                	sbb    al,0x0
c010a0e2:	00 00                	add    BYTE PTR [eax],al
c010a0e4:	20 0c 00             	and    BYTE PTR [eax+eax*1],cl
c010a0e7:	00 75 46             	add    BYTE PTR [ebp+0x46],dh
c010a0ea:	10 c0                	adc    al,al
c010a0ec:	79 00                	jns    c010a0ee <_edata+0xc2d>
c010a0ee:	00 00                	add    BYTE PTR [eax],al
c010a0f0:	41                   	inc    ecx
c010a0f1:	0e                   	push   cs
c010a0f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a0f8:	02 73 c5             	add    dh,BYTE PTR [ebx-0x3b]
c010a0fb:	0c 04                	or     al,0x4
c010a0fd:	04 00                	add    al,0x0
c010a0ff:	00 20                	add    BYTE PTR [eax],ah
c010a101:	00 00                	add    BYTE PTR [eax],al
c010a103:	00 40 0c             	add    BYTE PTR [eax+0xc],al
c010a106:	00 00                	add    BYTE PTR [eax],al
c010a108:	f0 46                	lock inc esi
c010a10a:	10 c0                	adc    al,al
c010a10c:	1f                   	pop    ds
c010a10d:	00 00                	add    BYTE PTR [eax],al
c010a10f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a112:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a118:	44                   	inc    esp
c010a119:	83 03 56             	add    DWORD PTR [ebx],0x56
c010a11c:	c3                   	ret    
c010a11d:	41                   	inc    ecx
c010a11e:	0c 04                	or     al,0x4
c010a120:	04 c5                	add    al,0xc5
c010a122:	00 00                	add    BYTE PTR [eax],al
c010a124:	1c 00                	sbb    al,0x0
c010a126:	00 00                	add    BYTE PTR [eax],al
c010a128:	64 0c 00             	fs or  al,0x0
c010a12b:	00 0f                	add    BYTE PTR [edi],cl
c010a12d:	47                   	inc    edi
c010a12e:	10 c0                	adc    al,al
c010a130:	0c 00                	or     al,0x0
c010a132:	00 00                	add    BYTE PTR [eax],al
c010a134:	41                   	inc    ecx
c010a135:	0e                   	push   cs
c010a136:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a13c:	48                   	dec    eax
c010a13d:	0c 04                	or     al,0x4
c010a13f:	04 c5                	add    al,0xc5
c010a141:	00 00                	add    BYTE PTR [eax],al
c010a143:	00 20                	add    BYTE PTR [eax],ah
c010a145:	00 00                	add    BYTE PTR [eax],al
c010a147:	00 84 0c 00 00 1b 47 	add    BYTE PTR [esp+ecx*1+0x471b0000],al
c010a14e:	10 c0                	adc    al,al
c010a150:	6c                   	ins    BYTE PTR es:[edi],dx
c010a151:	01 00                	add    DWORD PTR [eax],eax
c010a153:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a156:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a15c:	44                   	inc    esp
c010a15d:	83 03 03             	add    DWORD PTR [ebx],0x3
c010a160:	63 01                	arpl   WORD PTR [ecx],ax
c010a162:	c3                   	ret    
c010a163:	41                   	inc    ecx
c010a164:	0c 04                	or     al,0x4
c010a166:	04 c5                	add    al,0xc5
c010a168:	1c 00                	sbb    al,0x0
c010a16a:	00 00                	add    BYTE PTR [eax],al
c010a16c:	a8 0c                	test   al,0xc
c010a16e:	00 00                	add    BYTE PTR [eax],al
c010a170:	88 48 10             	mov    BYTE PTR [eax+0x10],cl
c010a173:	c0 0c 00 00          	ror    BYTE PTR [eax+eax*1],0x0
c010a177:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a17a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a180:	48                   	dec    eax
c010a181:	0c 04                	or     al,0x4
c010a183:	04 c5                	add    al,0xc5
c010a185:	00 00                	add    BYTE PTR [eax],al
c010a187:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a18a:	00 00                	add    BYTE PTR [eax],al
c010a18c:	c8 0c 00 00          	enter  0xc,0x0
c010a190:	94                   	xchg   esp,eax
c010a191:	48                   	dec    eax
c010a192:	10 c0                	adc    al,al
c010a194:	44                   	inc    esp
c010a195:	00 00                	add    BYTE PTR [eax],al
c010a197:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a19a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a1a0:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010a1a3:	0c 04                	or     al,0x4
c010a1a5:	04 00                	add    al,0x0
c010a1a7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a1aa:	00 00                	add    BYTE PTR [eax],al
c010a1ac:	e8 0c 00 00 d8       	call   9810a1bd <AR_CODE32+0x980fe125>
c010a1b1:	48                   	dec    eax
c010a1b2:	10 c0                	adc    al,al
c010a1b4:	62 00                	bound  eax,QWORD PTR [eax]
c010a1b6:	00 00                	add    BYTE PTR [eax],al
c010a1b8:	41                   	inc    ecx
c010a1b9:	0e                   	push   cs
c010a1ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a1c0:	02 5e c5             	add    bl,BYTE PTR [esi-0x3b]
c010a1c3:	0c 04                	or     al,0x4
c010a1c5:	04 00                	add    al,0x0
c010a1c7:	00 20                	add    BYTE PTR [eax],ah
c010a1c9:	00 00                	add    BYTE PTR [eax],al
c010a1cb:	00 08                	add    BYTE PTR [eax],cl
c010a1cd:	0d 00 00 3c 49       	or     eax,0x493c0000
c010a1d2:	10 c0                	adc    al,al
c010a1d4:	2c 00                	sub    al,0x0
c010a1d6:	00 00                	add    BYTE PTR [eax],al
c010a1d8:	41                   	inc    ecx
c010a1d9:	0e                   	push   cs
c010a1da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a1e0:	44                   	inc    esp
c010a1e1:	83 03 63             	add    DWORD PTR [ebx],0x63
c010a1e4:	c3                   	ret    
c010a1e5:	41                   	inc    ecx
c010a1e6:	0c 04                	or     al,0x4
c010a1e8:	04 c5                	add    al,0xc5
c010a1ea:	00 00                	add    BYTE PTR [eax],al
c010a1ec:	1c 00                	sbb    al,0x0
c010a1ee:	00 00                	add    BYTE PTR [eax],al
c010a1f0:	2c 0d                	sub    al,0xd
c010a1f2:	00 00                	add    BYTE PTR [eax],al
c010a1f4:	68 49 10 c0 23       	push   0x23c01049
c010a1f9:	00 00                	add    BYTE PTR [eax],al
c010a1fb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a1fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a204:	5f                   	pop    edi
c010a205:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a208:	04 00                	add    al,0x0
c010a20a:	00 00                	add    BYTE PTR [eax],al
c010a20c:	20 00                	and    BYTE PTR [eax],al
c010a20e:	00 00                	add    BYTE PTR [eax],al
c010a210:	4c                   	dec    esp
c010a211:	0d 00 00 8b 49       	or     eax,0x498b0000
c010a216:	10 c0                	adc    al,al
c010a218:	da 00                	fiadd  DWORD PTR [eax]
c010a21a:	00 00                	add    BYTE PTR [eax],al
c010a21c:	41                   	inc    ecx
c010a21d:	0e                   	push   cs
c010a21e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a224:	44                   	inc    esp
c010a225:	83 03 02             	add    DWORD PTR [ebx],0x2
c010a228:	d1 c3                	rol    ebx,1
c010a22a:	41                   	inc    ecx
c010a22b:	0c 04                	or     al,0x4
c010a22d:	04 c5                	add    al,0xc5
c010a22f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a232:	00 00                	add    BYTE PTR [eax],al
c010a234:	70 0d                	jo     c010a243 <_edata+0xd82>
c010a236:	00 00                	add    BYTE PTR [eax],al
c010a238:	65 4a                	gs dec edx
c010a23a:	10 c0                	adc    al,al
c010a23c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a23d:	02 00                	add    al,BYTE PTR [eax]
c010a23f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a242:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a248:	03 6b 02             	add    ebp,DWORD PTR [ebx+0x2]
c010a24b:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a24e:	04 00                	add    al,0x0
c010a250:	1c 00                	sbb    al,0x0
c010a252:	00 00                	add    BYTE PTR [eax],al
c010a254:	90                   	nop
c010a255:	0d 00 00 d4 4c       	or     eax,0x4cd40000
c010a25a:	10 c0                	adc    al,al
c010a25c:	17                   	pop    ss
c010a25d:	00 00                	add    BYTE PTR [eax],al
c010a25f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a262:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a268:	53                   	push   ebx
c010a269:	0c 04                	or     al,0x4
c010a26b:	04 c5                	add    al,0xc5
c010a26d:	00 00                	add    BYTE PTR [eax],al
c010a26f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a272:	00 00                	add    BYTE PTR [eax],al
c010a274:	b0 0d                	mov    al,0xd
c010a276:	00 00                	add    BYTE PTR [eax],al
c010a278:	eb 4c                	jmp    c010a2c6 <_edata+0xe05>
c010a27a:	10 c0                	adc    al,al
c010a27c:	71 01                	jno    c010a27f <_edata+0xdbe>
c010a27e:	00 00                	add    BYTE PTR [eax],al
c010a280:	41                   	inc    ecx
c010a281:	0e                   	push   cs
c010a282:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a288:	03 6d 01             	add    ebp,DWORD PTR [ebp+0x1]
c010a28b:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a28e:	04 00                	add    al,0x0
c010a290:	1c 00                	sbb    al,0x0
c010a292:	00 00                	add    BYTE PTR [eax],al
c010a294:	d0 0d 00 00 5c 4e    	ror    BYTE PTR ds:0x4e5c0000,1
c010a29a:	10 c0                	adc    al,al
c010a29c:	e4 00                	in     al,0x0
c010a29e:	00 00                	add    BYTE PTR [eax],al
c010a2a0:	41                   	inc    ecx
c010a2a1:	0e                   	push   cs
c010a2a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a2a8:	02 e0                	add    ah,al
c010a2aa:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a2ad:	04 00                	add    al,0x0
c010a2af:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
c010a2b2:	00 00                	add    BYTE PTR [eax],al
c010a2b4:	f0 0d 00 00 40 4f    	lock or eax,0x4f400000
c010a2ba:	10 c0                	adc    al,al
c010a2bc:	bd 02 00 00 41       	mov    ebp,0x41000002
c010a2c1:	0e                   	push   cs
c010a2c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a2c8:	1c 00                	sbb    al,0x0
c010a2ca:	00 00                	add    BYTE PTR [eax],al
c010a2cc:	08 0e                	or     BYTE PTR [esi],cl
c010a2ce:	00 00                	add    BYTE PTR [eax],al
c010a2d0:	fd                   	std    
c010a2d1:	51                   	push   ecx
c010a2d2:	10 c0                	adc    al,al
c010a2d4:	1a 00                	sbb    al,BYTE PTR [eax]
c010a2d6:	00 00                	add    BYTE PTR [eax],al
c010a2d8:	41                   	inc    ecx
c010a2d9:	0e                   	push   cs
c010a2da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a2e0:	56                   	push   esi
c010a2e1:	0c 04                	or     al,0x4
c010a2e3:	04 c5                	add    al,0xc5
c010a2e5:	00 00                	add    BYTE PTR [eax],al
c010a2e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a2ea:	00 00                	add    BYTE PTR [eax],al
c010a2ec:	28 0e                	sub    BYTE PTR [esi],cl
c010a2ee:	00 00                	add    BYTE PTR [eax],al
c010a2f0:	17                   	pop    ss
c010a2f1:	52                   	push   edx
c010a2f2:	10 c0                	adc    al,al
c010a2f4:	0d 00 00 00 41       	or     eax,0x41000000
c010a2f9:	0e                   	push   cs
c010a2fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a300:	49                   	dec    ecx
c010a301:	0c 04                	or     al,0x4
c010a303:	04 c5                	add    al,0xc5
c010a305:	00 00                	add    BYTE PTR [eax],al
c010a307:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a30a:	00 00                	add    BYTE PTR [eax],al
c010a30c:	48                   	dec    eax
c010a30d:	0e                   	push   cs
c010a30e:	00 00                	add    BYTE PTR [eax],al
c010a310:	24 52                	and    al,0x52
c010a312:	10 c0                	adc    al,al
c010a314:	fd                   	std    
c010a315:	02 00                	add    al,BYTE PTR [eax]
c010a317:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a31a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a320:	03 f9                	add    edi,ecx
c010a322:	02 c5                	add    al,ch
c010a324:	0c 04                	or     al,0x4
c010a326:	04 00                	add    al,0x0
c010a328:	1c 00                	sbb    al,0x0
c010a32a:	00 00                	add    BYTE PTR [eax],al
c010a32c:	68 0e 00 00 21       	push   0x2100000e
c010a331:	55                   	push   ebp
c010a332:	10 c0                	adc    al,al
c010a334:	55                   	push   ebp
c010a335:	01 00                	add    DWORD PTR [eax],eax
c010a337:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a33a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a340:	03 51 01             	add    edx,DWORD PTR [ecx+0x1]
c010a343:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a346:	04 00                	add    al,0x0
c010a348:	1c 00                	sbb    al,0x0
c010a34a:	00 00                	add    BYTE PTR [eax],al
c010a34c:	88 0e                	mov    BYTE PTR [esi],cl
c010a34e:	00 00                	add    BYTE PTR [eax],al
c010a350:	76 56                	jbe    c010a3a8 <_edata+0xee7>
c010a352:	10 c0                	adc    al,al
c010a354:	b3 00                	mov    bl,0x0
c010a356:	00 00                	add    BYTE PTR [eax],al
c010a358:	41                   	inc    ecx
c010a359:	0e                   	push   cs
c010a35a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a360:	02 af c5 0c 04 04    	add    ch,BYTE PTR [edi+0x4040cc5]
c010a366:	00 00                	add    BYTE PTR [eax],al
c010a368:	1c 00                	sbb    al,0x0
c010a36a:	00 00                	add    BYTE PTR [eax],al
c010a36c:	a8 0e                	test   al,0xe
c010a36e:	00 00                	add    BYTE PTR [eax],al
c010a370:	29 57 10             	sub    DWORD PTR [edi+0x10],edx
c010a373:	c0 10 01             	rcl    BYTE PTR [eax],0x1
c010a376:	00 00                	add    BYTE PTR [eax],al
c010a378:	41                   	inc    ecx
c010a379:	0e                   	push   cs
c010a37a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a380:	03 0c 01             	add    ecx,DWORD PTR [ecx+eax*1]
c010a383:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a386:	04 00                	add    al,0x0
c010a388:	1c 00                	sbb    al,0x0
c010a38a:	00 00                	add    BYTE PTR [eax],al
c010a38c:	c8 0e 00 00          	enter  0xe,0x0
c010a390:	3c 58                	cmp    al,0x58
c010a392:	10 c0                	adc    al,al
c010a394:	01 04 00             	add    DWORD PTR [eax+eax*1],eax
c010a397:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a39a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a3a0:	48                   	dec    eax
c010a3a1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010a3a5:	00 00                	add    BYTE PTR [eax],al
c010a3a7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a3aa:	00 00                	add    BYTE PTR [eax],al
c010a3ac:	e8 0e 00 00 3d       	call   fd10a3bf <_kernel_end+0x3cff7edf>
c010a3b1:	5c                   	pop    esp
c010a3b2:	10 c0                	adc    al,al
c010a3b4:	64 00 00             	add    BYTE PTR fs:[eax],al
c010a3b7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a3ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a3c0:	02 60 c5             	add    ah,BYTE PTR [eax-0x3b]
c010a3c3:	0c 04                	or     al,0x4
c010a3c5:	04 00                	add    al,0x0
c010a3c7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a3ca:	00 00                	add    BYTE PTR [eax],al
c010a3cc:	08 0f                	or     BYTE PTR [edi],cl
c010a3ce:	00 00                	add    BYTE PTR [eax],al
c010a3d0:	a1 5c 10 c0 8e       	mov    eax,ds:0x8ec0105c
c010a3d5:	00 00                	add    BYTE PTR [eax],al
c010a3d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a3da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a3e0:	02 8a c5 0c 04 04    	add    cl,BYTE PTR [edx+0x4040cc5]
c010a3e6:	00 00                	add    BYTE PTR [eax],al
c010a3e8:	1c 00                	sbb    al,0x0
c010a3ea:	00 00                	add    BYTE PTR [eax],al
c010a3ec:	28 0f                	sub    BYTE PTR [edi],cl
c010a3ee:	00 00                	add    BYTE PTR [eax],al
c010a3f0:	2f                   	das    
c010a3f1:	5d                   	pop    ebp
c010a3f2:	10 c0                	adc    al,al
c010a3f4:	35 00 00 00 41       	xor    eax,0x41000000
c010a3f9:	0e                   	push   cs
c010a3fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a400:	71 c5                	jno    c010a3c7 <_edata+0xf06>
c010a402:	0c 04                	or     al,0x4
c010a404:	04 00                	add    al,0x0
c010a406:	00 00                	add    BYTE PTR [eax],al
c010a408:	1c 00                	sbb    al,0x0
c010a40a:	00 00                	add    BYTE PTR [eax],al
c010a40c:	48                   	dec    eax
c010a40d:	0f 00 00             	sldt   WORD PTR [eax]
c010a410:	64 5d                	fs pop ebp
c010a412:	10 c0                	adc    al,al
c010a414:	51                   	push   ecx
c010a415:	00 00                	add    BYTE PTR [eax],al
c010a417:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a41a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a420:	02 4d 0c             	add    cl,BYTE PTR [ebp+0xc]
c010a423:	04 04                	add    al,0x4
c010a425:	c5 00                	lds    eax,FWORD PTR [eax]
c010a427:	00 28                	add    BYTE PTR [eax],ch
c010a429:	00 00                	add    BYTE PTR [eax],al
c010a42b:	00 68 0f             	add    BYTE PTR [eax+0xf],ch
c010a42e:	00 00                	add    BYTE PTR [eax],al
c010a430:	b5 5d                	mov    ch,0x5d
c010a432:	10 c0                	adc    al,al
c010a434:	44                   	inc    esp
c010a435:	01 00                	add    DWORD PTR [eax],eax
c010a437:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a43a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a440:	46                   	inc    esi
c010a441:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010a448:	37                   	aaa    
c010a449:	01 c3                	add    ebx,eax
c010a44b:	41                   	inc    ecx
c010a44c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010a450:	0c 04                	or     al,0x4
c010a452:	04 c5                	add    al,0xc5
c010a454:	28 00                	sub    BYTE PTR [eax],al
c010a456:	00 00                	add    BYTE PTR [eax],al
c010a458:	94                   	xchg   esp,eax
c010a459:	0f 00 00             	sldt   WORD PTR [eax]
c010a45c:	f9                   	stc    
c010a45d:	5e                   	pop    esi
c010a45e:	10 c0                	adc    al,al
c010a460:	aa                   	stos   BYTE PTR es:[edi],al
c010a461:	02 00                	add    al,BYTE PTR [eax]
c010a463:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a466:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a46c:	46                   	inc    esi
c010a46d:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010a474:	9d                   	popf   
c010a475:	02 c3                	add    al,bl
c010a477:	41                   	inc    ecx
c010a478:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010a47c:	0c 04                	or     al,0x4
c010a47e:	04 c5                	add    al,0xc5
c010a480:	28 00                	sub    BYTE PTR [eax],al
c010a482:	00 00                	add    BYTE PTR [eax],al
c010a484:	c0 0f 00             	ror    BYTE PTR [edi],0x0
c010a487:	00 a3 61 10 c0 90    	add    BYTE PTR [ebx-0x6f3fef9f],ah
c010a48d:	01 00                	add    DWORD PTR [eax],eax
c010a48f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a492:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a498:	46                   	inc    esi
c010a499:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010a4a0:	83 01 c3             	add    DWORD PTR [ecx],0xffffffc3
c010a4a3:	41                   	inc    ecx
c010a4a4:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010a4a8:	0c 04                	or     al,0x4
c010a4aa:	04 c5                	add    al,0xc5
c010a4ac:	28 00                	sub    BYTE PTR [eax],al
c010a4ae:	00 00                	add    BYTE PTR [eax],al
c010a4b0:	ec                   	in     al,dx
c010a4b1:	0f 00 00             	sldt   WORD PTR [eax]
c010a4b4:	33 63 10             	xor    esp,DWORD PTR [ebx+0x10]
c010a4b7:	c0 7a 00 00          	sar    BYTE PTR [edx+0x0],0x0
c010a4bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a4be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a4c4:	46                   	inc    esi
c010a4c5:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c010a4cc:	6d                   	ins    DWORD PTR es:[edi],dx
c010a4cd:	c3                   	ret    
c010a4ce:	41                   	inc    ecx
c010a4cf:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010a4d3:	0c 04                	or     al,0x4
c010a4d5:	04 c5                	add    al,0xc5
c010a4d7:	00 20                	add    BYTE PTR [eax],ah
c010a4d9:	00 00                	add    BYTE PTR [eax],al
c010a4db:	00 18                	add    BYTE PTR [eax],bl
c010a4dd:	10 00                	adc    BYTE PTR [eax],al
c010a4df:	00 ad 63 10 c0 d5    	add    BYTE PTR [ebp-0x2a3fef9d],ch
c010a4e5:	01 00                	add    DWORD PTR [eax],eax
c010a4e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a4ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a4f0:	44                   	inc    esp
c010a4f1:	83 03 03             	add    DWORD PTR [ebx],0x3
c010a4f4:	cc                   	int3   
c010a4f5:	01 c3                	add    ebx,eax
c010a4f7:	41                   	inc    ecx
c010a4f8:	0c 04                	or     al,0x4
c010a4fa:	04 c5                	add    al,0xc5
c010a4fc:	1c 00                	sbb    al,0x0
c010a4fe:	00 00                	add    BYTE PTR [eax],al
c010a500:	3c 10                	cmp    al,0x10
c010a502:	00 00                	add    BYTE PTR [eax],al
c010a504:	82                   	(bad)  
c010a505:	65 10 c0             	gs adc al,al
c010a508:	90                   	nop
c010a509:	01 00                	add    DWORD PTR [eax],eax
c010a50b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a50e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a514:	03 8c 01 c5 0c 04 04 	add    ecx,DWORD PTR [ecx+eax*1+0x4040cc5]
c010a51b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a51e:	00 00                	add    BYTE PTR [eax],al
c010a520:	5c                   	pop    esp
c010a521:	10 00                	adc    BYTE PTR [eax],al
c010a523:	00 14 67             	add    BYTE PTR [edi+eiz*2],dl
c010a526:	10 c0                	adc    al,al
c010a528:	39 00                	cmp    DWORD PTR [eax],eax
c010a52a:	00 00                	add    BYTE PTR [eax],al
c010a52c:	41                   	inc    ecx
c010a52d:	0e                   	push   cs
c010a52e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a534:	75 c5                	jne    c010a4fb <_edata+0x103a>
c010a536:	0c 04                	or     al,0x4
c010a538:	04 00                	add    al,0x0
c010a53a:	00 00                	add    BYTE PTR [eax],al
c010a53c:	1c 00                	sbb    al,0x0
c010a53e:	00 00                	add    BYTE PTR [eax],al
c010a540:	7c 10                	jl     c010a552 <_edata+0x1091>
c010a542:	00 00                	add    BYTE PTR [eax],al
c010a544:	4d                   	dec    ebp
c010a545:	67 10 c0             	addr16 adc al,al
c010a548:	30 00                	xor    BYTE PTR [eax],al
c010a54a:	00 00                	add    BYTE PTR [eax],al
c010a54c:	41                   	inc    ecx
c010a54d:	0e                   	push   cs
c010a54e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a554:	6c                   	ins    BYTE PTR es:[edi],dx
c010a555:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a558:	04 00                	add    al,0x0
c010a55a:	00 00                	add    BYTE PTR [eax],al
c010a55c:	1c 00                	sbb    al,0x0
c010a55e:	00 00                	add    BYTE PTR [eax],al
c010a560:	9c                   	pushf  
c010a561:	10 00                	adc    BYTE PTR [eax],al
c010a563:	00 7d 67             	add    BYTE PTR [ebp+0x67],bh
c010a566:	10 c0                	adc    al,al
c010a568:	48                   	dec    eax
c010a569:	00 00                	add    BYTE PTR [eax],al
c010a56b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a56e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a574:	02 44 c5 0c          	add    al,BYTE PTR [ebp+eax*8+0xc]
c010a578:	04 04                	add    al,0x4
c010a57a:	00 00                	add    BYTE PTR [eax],al
c010a57c:	1c 00                	sbb    al,0x0
c010a57e:	00 00                	add    BYTE PTR [eax],al
c010a580:	bc 10 00 00 c5       	mov    esp,0xc5000010
c010a585:	67 10 c0             	addr16 adc al,al
c010a588:	45                   	inc    ebp
c010a589:	00 00                	add    BYTE PTR [eax],al
c010a58b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a58e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a594:	02 41 c5             	add    al,BYTE PTR [ecx-0x3b]
c010a597:	0c 04                	or     al,0x4
c010a599:	04 00                	add    al,0x0
c010a59b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a59e:	00 00                	add    BYTE PTR [eax],al
c010a5a0:	dc 10                	fcom   QWORD PTR [eax]
c010a5a2:	00 00                	add    BYTE PTR [eax],al
c010a5a4:	0a 68 10             	or     ch,BYTE PTR [eax+0x10]
c010a5a7:	c0 4e 00 00          	ror    BYTE PTR [esi+0x0],0x0
c010a5ab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a5ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a5b4:	02 4a c5             	add    cl,BYTE PTR [edx-0x3b]
c010a5b7:	0c 04                	or     al,0x4
c010a5b9:	04 00                	add    al,0x0
c010a5bb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a5be:	00 00                	add    BYTE PTR [eax],al
c010a5c0:	fc                   	cld    
c010a5c1:	10 00                	adc    BYTE PTR [eax],al
c010a5c3:	00 58 68             	add    BYTE PTR [eax+0x68],bl
c010a5c6:	10 c0                	adc    al,al
c010a5c8:	42                   	inc    edx
c010a5c9:	00 00                	add    BYTE PTR [eax],al
c010a5cb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a5ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a5d4:	7e c5                	jle    c010a59b <_edata+0x10da>
c010a5d6:	0c 04                	or     al,0x4
c010a5d8:	04 00                	add    al,0x0
c010a5da:	00 00                	add    BYTE PTR [eax],al
c010a5dc:	1c 00                	sbb    al,0x0
c010a5de:	00 00                	add    BYTE PTR [eax],al
c010a5e0:	1c 11                	sbb    al,0x11
c010a5e2:	00 00                	add    BYTE PTR [eax],al
c010a5e4:	9a 68 10 c0 3c 00 00 	call   0x0:0x3cc01068
c010a5eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a5ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a5f4:	78 c5                	js     c010a5bb <_edata+0x10fa>
c010a5f6:	0c 04                	or     al,0x4
c010a5f8:	04 00                	add    al,0x0
c010a5fa:	00 00                	add    BYTE PTR [eax],al
c010a5fc:	28 00                	sub    BYTE PTR [eax],al
c010a5fe:	00 00                	add    BYTE PTR [eax],al
c010a600:	3c 11                	cmp    al,0x11
c010a602:	00 00                	add    BYTE PTR [eax],al
c010a604:	d6                   	(bad)  
c010a605:	68 10 c0 43 03       	push   0x343c010
c010a60a:	00 00                	add    BYTE PTR [eax],al
c010a60c:	41                   	inc    ecx
c010a60d:	0e                   	push   cs
c010a60e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a614:	46                   	inc    esi
c010a615:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010a61c:	36 03 c3             	ss add eax,ebx
c010a61f:	41                   	inc    ecx
c010a620:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010a624:	0c 04                	or     al,0x4
c010a626:	04 c5                	add    al,0xc5
c010a628:	1c 00                	sbb    al,0x0
c010a62a:	00 00                	add    BYTE PTR [eax],al
c010a62c:	68 11 00 00 1c       	push   0x1c000011
c010a631:	6c                   	ins    BYTE PTR es:[edi],dx
c010a632:	10 c0                	adc    al,al
c010a634:	27                   	daa    
c010a635:	00 00                	add    BYTE PTR [eax],al
c010a637:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a63a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a640:	63 c5                	arpl   bp,ax
c010a642:	0c 04                	or     al,0x4
c010a644:	04 00                	add    al,0x0
c010a646:	00 00                	add    BYTE PTR [eax],al
c010a648:	24 00                	and    al,0x0
c010a64a:	00 00                	add    BYTE PTR [eax],al
c010a64c:	88 11                	mov    BYTE PTR [ecx],dl
c010a64e:	00 00                	add    BYTE PTR [eax],al
c010a650:	43                   	inc    ebx
c010a651:	6c                   	ins    BYTE PTR es:[edi],dx
c010a652:	10 c0                	adc    al,al
c010a654:	42                   	inc    edx
c010a655:	00 00                	add    BYTE PTR [eax],al
c010a657:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a65a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a660:	45                   	inc    ebp
c010a661:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010a665:	77 c3                	ja     c010a62a <_edata+0x1169>
c010a667:	41                   	inc    ecx
c010a668:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010a66c:	04 c5                	add    al,0xc5
c010a66e:	00 00                	add    BYTE PTR [eax],al
c010a670:	20 00                	and    BYTE PTR [eax],al
c010a672:	00 00                	add    BYTE PTR [eax],al
c010a674:	b0 11                	mov    al,0x11
c010a676:	00 00                	add    BYTE PTR [eax],al
c010a678:	85 6c 10 c0          	test   DWORD PTR [eax+edx*1-0x40],ebp
c010a67c:	4a                   	dec    edx
c010a67d:	01 00                	add    DWORD PTR [eax],eax
c010a67f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a682:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a688:	44                   	inc    esp
c010a689:	83 03 03             	add    DWORD PTR [ebx],0x3
c010a68c:	41                   	inc    ecx
c010a68d:	01 c3                	add    ebx,eax
c010a68f:	41                   	inc    ecx
c010a690:	0c 04                	or     al,0x4
c010a692:	04 c5                	add    al,0xc5
c010a694:	28 00                	sub    BYTE PTR [eax],al
c010a696:	00 00                	add    BYTE PTR [eax],al
c010a698:	d4 11                	aam    0x11
c010a69a:	00 00                	add    BYTE PTR [eax],al
c010a69c:	cf                   	iret   
c010a69d:	6d                   	ins    DWORD PTR es:[edi],dx
c010a69e:	10 c0                	adc    al,al
c010a6a0:	cb                   	retf   
c010a6a1:	00 00                	add    BYTE PTR [eax],al
c010a6a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a6a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a6ac:	46                   	inc    esi
c010a6ad:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c010a6b4:	be c3 41 c6 41       	mov    esi,0x41c641c3
c010a6b9:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c010a6c0:	1c 00                	sbb    al,0x0
c010a6c2:	00 00                	add    BYTE PTR [eax],al
c010a6c4:	00 12                	add    BYTE PTR [edx],dl
c010a6c6:	00 00                	add    BYTE PTR [eax],al
c010a6c8:	9c                   	pushf  
c010a6c9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a6ca:	10 c0                	adc    al,al
c010a6cc:	2d 00 00 00 41       	sub    eax,0x41000000
c010a6d1:	0e                   	push   cs
c010a6d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a6d8:	69 0c 04 04 c5 00 00 	imul   ecx,DWORD PTR [esp+eax*1],0xc504
c010a6df:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a6e2:	00 00                	add    BYTE PTR [eax],al
c010a6e4:	20 12                	and    BYTE PTR [edx],dl
c010a6e6:	00 00                	add    BYTE PTR [eax],al
c010a6e8:	c9                   	leave  
c010a6e9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a6ea:	10 c0                	adc    al,al
c010a6ec:	41                   	inc    ecx
c010a6ed:	00 00                	add    BYTE PTR [eax],al
c010a6ef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a6f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a6f8:	7d c5                	jge    c010a6bf <_edata+0x11fe>
c010a6fa:	0c 04                	or     al,0x4
c010a6fc:	04 00                	add    al,0x0
c010a6fe:	00 00                	add    BYTE PTR [eax],al
c010a700:	1c 00                	sbb    al,0x0
c010a702:	00 00                	add    BYTE PTR [eax],al
c010a704:	40                   	inc    eax
c010a705:	12 00                	adc    al,BYTE PTR [eax]
c010a707:	00 0a                	add    BYTE PTR [edx],cl
c010a709:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a70a:	10 c0                	adc    al,al
c010a70c:	1d 00 00 00 41       	sbb    eax,0x41000000
c010a711:	0e                   	push   cs
c010a712:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a718:	59                   	pop    ecx
c010a719:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a71c:	04 00                	add    al,0x0
c010a71e:	00 00                	add    BYTE PTR [eax],al
c010a720:	1c 00                	sbb    al,0x0
c010a722:	00 00                	add    BYTE PTR [eax],al
c010a724:	60                   	pusha  
c010a725:	12 00                	adc    al,BYTE PTR [eax]
c010a727:	00 27                	add    BYTE PTR [edi],ah
c010a729:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a72a:	10 c0                	adc    al,al
c010a72c:	1d 00 00 00 41       	sbb    eax,0x41000000
c010a731:	0e                   	push   cs
c010a732:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a738:	59                   	pop    ecx
c010a739:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a73c:	04 00                	add    al,0x0
c010a73e:	00 00                	add    BYTE PTR [eax],al
c010a740:	1c 00                	sbb    al,0x0
c010a742:	00 00                	add    BYTE PTR [eax],al
c010a744:	80 12 00             	adc    BYTE PTR [edx],0x0
c010a747:	00 44 6f 10          	add    BYTE PTR [edi+ebp*2+0x10],al
c010a74b:	c0                   	(bad)  
c010a74c:	36 00 00             	add    BYTE PTR ss:[eax],al
c010a74f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a752:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a758:	72 c5                	jb     c010a71f <_edata+0x125e>
c010a75a:	0c 04                	or     al,0x4
c010a75c:	04 00                	add    al,0x0
c010a75e:	00 00                	add    BYTE PTR [eax],al
c010a760:	1c 00                	sbb    al,0x0
c010a762:	00 00                	add    BYTE PTR [eax],al
c010a764:	a0 12 00 00 7a       	mov    al,ds:0x7a000012
c010a769:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a76a:	10 c0                	adc    al,al
c010a76c:	1f                   	pop    ds
c010a76d:	00 00                	add    BYTE PTR [eax],al
c010a76f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a772:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a778:	5b                   	pop    ebx
c010a779:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a77c:	04 00                	add    al,0x0
c010a77e:	00 00                	add    BYTE PTR [eax],al
c010a780:	1c 00                	sbb    al,0x0
c010a782:	00 00                	add    BYTE PTR [eax],al
c010a784:	c0 12 00             	rcl    BYTE PTR [edx],0x0
c010a787:	00 99 6f 10 c0 3b    	add    BYTE PTR [ecx+0x3bc0106f],bl
c010a78d:	00 00                	add    BYTE PTR [eax],al
c010a78f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a792:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a798:	77 c5                	ja     c010a75f <_edata+0x129e>
c010a79a:	0c 04                	or     al,0x4
c010a79c:	04 00                	add    al,0x0
c010a79e:	00 00                	add    BYTE PTR [eax],al
c010a7a0:	1c 00                	sbb    al,0x0
c010a7a2:	00 00                	add    BYTE PTR [eax],al
c010a7a4:	e0 12                	loopne c010a7b8 <_edata+0x12f7>
c010a7a6:	00 00                	add    BYTE PTR [eax],al
c010a7a8:	d4 6f                	aam    0x6f
c010a7aa:	10 c0                	adc    al,al
c010a7ac:	47                   	inc    edi
c010a7ad:	00 00                	add    BYTE PTR [eax],al
c010a7af:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a7b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a7b8:	02 43 c5             	add    al,BYTE PTR [ebx-0x3b]
c010a7bb:	0c 04                	or     al,0x4
c010a7bd:	04 00                	add    al,0x0
c010a7bf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a7c2:	00 00                	add    BYTE PTR [eax],al
c010a7c4:	00 13                	add    BYTE PTR [ebx],dl
c010a7c6:	00 00                	add    BYTE PTR [eax],al
c010a7c8:	1b 70 10             	sbb    esi,DWORD PTR [eax+0x10]
c010a7cb:	c0                   	(bad)  
c010a7cc:	35 00 00 00 41       	xor    eax,0x41000000
c010a7d1:	0e                   	push   cs
c010a7d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a7d8:	71 c5                	jno    c010a79f <_edata+0x12de>
c010a7da:	0c 04                	or     al,0x4
c010a7dc:	04 00                	add    al,0x0
c010a7de:	00 00                	add    BYTE PTR [eax],al
c010a7e0:	1c 00                	sbb    al,0x0
c010a7e2:	00 00                	add    BYTE PTR [eax],al
c010a7e4:	20 13                	and    BYTE PTR [ebx],dl
c010a7e6:	00 00                	add    BYTE PTR [eax],al
c010a7e8:	50                   	push   eax
c010a7e9:	70 10                	jo     c010a7fb <_edata+0x133a>
c010a7eb:	c0 19 00             	rcr    BYTE PTR [ecx],0x0
c010a7ee:	00 00                	add    BYTE PTR [eax],al
c010a7f0:	41                   	inc    ecx
c010a7f1:	0e                   	push   cs
c010a7f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a7f8:	55                   	push   ebp
c010a7f9:	0c 04                	or     al,0x4
c010a7fb:	04 c5                	add    al,0xc5
c010a7fd:	00 00                	add    BYTE PTR [eax],al
c010a7ff:	00 20                	add    BYTE PTR [eax],ah
c010a801:	00 00                	add    BYTE PTR [eax],al
c010a803:	00 40 13             	add    BYTE PTR [eax+0x13],al
c010a806:	00 00                	add    BYTE PTR [eax],al
c010a808:	6c                   	ins    BYTE PTR es:[edi],dx
c010a809:	70 10                	jo     c010a81b <_edata+0x135a>
c010a80b:	c0 1f 00             	rcr    BYTE PTR [edi],0x0
c010a80e:	00 00                	add    BYTE PTR [eax],al
c010a810:	41                   	inc    ecx
c010a811:	0e                   	push   cs
c010a812:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a818:	44                   	inc    esp
c010a819:	83 03 56             	add    DWORD PTR [ebx],0x56
c010a81c:	c3                   	ret    
c010a81d:	41                   	inc    ecx
c010a81e:	0c 04                	or     al,0x4
c010a820:	04 c5                	add    al,0xc5
c010a822:	00 00                	add    BYTE PTR [eax],al
c010a824:	1c 00                	sbb    al,0x0
c010a826:	00 00                	add    BYTE PTR [eax],al
c010a828:	64 13 00             	adc    eax,DWORD PTR fs:[eax]
c010a82b:	00 8b 70 10 c0 0c    	add    BYTE PTR [ebx+0xcc01070],cl
c010a831:	00 00                	add    BYTE PTR [eax],al
c010a833:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a836:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a83c:	48                   	dec    eax
c010a83d:	0c 04                	or     al,0x4
c010a83f:	04 c5                	add    al,0xc5
c010a841:	00 00                	add    BYTE PTR [eax],al
c010a843:	00 20                	add    BYTE PTR [eax],ah
c010a845:	00 00                	add    BYTE PTR [eax],al
c010a847:	00 84 13 00 00 97 70 	add    BYTE PTR [ebx+edx*1+0x70970000],al
c010a84e:	10 c0                	adc    al,al
c010a850:	28 01                	sub    BYTE PTR [ecx],al
c010a852:	00 00                	add    BYTE PTR [eax],al
c010a854:	41                   	inc    ecx
c010a855:	0e                   	push   cs
c010a856:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a85c:	44                   	inc    esp
c010a85d:	83 03 03             	add    DWORD PTR [ebx],0x3
c010a860:	1f                   	pop    ds
c010a861:	01 c3                	add    ebx,eax
c010a863:	41                   	inc    ecx
c010a864:	0c 04                	or     al,0x4
c010a866:	04 c5                	add    al,0xc5
c010a868:	1c 00                	sbb    al,0x0
c010a86a:	00 00                	add    BYTE PTR [eax],al
c010a86c:	a8 13                	test   al,0x13
c010a86e:	00 00                	add    BYTE PTR [eax],al
c010a870:	bf 71 10 c0 37       	mov    edi,0x37c01071
c010a875:	00 00                	add    BYTE PTR [eax],al
c010a877:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a87a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a880:	73 c5                	jae    c010a847 <_edata+0x1386>
c010a882:	0c 04                	or     al,0x4
c010a884:	04 00                	add    al,0x0
c010a886:	00 00                	add    BYTE PTR [eax],al
c010a888:	24 00                	and    al,0x0
c010a88a:	00 00                	add    BYTE PTR [eax],al
c010a88c:	c8 13 00 00          	enter  0x13,0x0
c010a890:	f6 71 10             	div    BYTE PTR [ecx+0x10]
c010a893:	c0 88 00 00 00 41 0e 	ror    BYTE PTR [eax+0x41000000],0xe
c010a89a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a8a0:	45                   	inc    ebp
c010a8a1:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c010a8a5:	02 7d c3             	add    bh,BYTE PTR [ebp-0x3d]
c010a8a8:	41                   	inc    ecx
c010a8a9:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c010a8b0:	24 00                	and    al,0x0
c010a8b2:	00 00                	add    BYTE PTR [eax],al
c010a8b4:	f0 13 00             	lock adc eax,DWORD PTR [eax]
c010a8b7:	00 7e 72             	add    BYTE PTR [esi+0x72],bh
c010a8ba:	10 c0                	adc    al,al
c010a8bc:	88 00                	mov    BYTE PTR [eax],al
c010a8be:	00 00                	add    BYTE PTR [eax],al
c010a8c0:	41                   	inc    ecx
c010a8c1:	0e                   	push   cs
c010a8c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a8c8:	45                   	inc    ebp
c010a8c9:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c010a8cd:	02 7d c3             	add    bh,BYTE PTR [ebp-0x3d]
c010a8d0:	41                   	inc    ecx
c010a8d1:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c010a8d8:	1c 00                	sbb    al,0x0
c010a8da:	00 00                	add    BYTE PTR [eax],al
c010a8dc:	18 14 00             	sbb    BYTE PTR [eax+eax*1],dl
c010a8df:	00 06                	add    BYTE PTR [esi],al
c010a8e1:	73 10                	jae    c010a8f3 <_edata+0x1432>
c010a8e3:	c0 bf 00 00 00 41 0e 	sar    BYTE PTR [edi+0x41000000],0xe
c010a8ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a8f0:	02 bb c5 0c 04 04    	add    bh,BYTE PTR [ebx+0x4040cc5]
c010a8f6:	00 00                	add    BYTE PTR [eax],al
c010a8f8:	20 00                	and    BYTE PTR [eax],al
c010a8fa:	00 00                	add    BYTE PTR [eax],al
c010a8fc:	38 14 00             	cmp    BYTE PTR [eax+eax*1],dl
c010a8ff:	00 c5                	add    ch,al
c010a901:	73 10                	jae    c010a913 <_edata+0x1452>
c010a903:	c0 aa 00 00 00 41 0e 	shr    BYTE PTR [edx+0x41000000],0xe
c010a90a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a910:	44                   	inc    esp
c010a911:	83 03 02             	add    DWORD PTR [ebx],0x2
c010a914:	a1 c3 41 0c 04       	mov    eax,ds:0x40c41c3
c010a919:	04 c5                	add    al,0xc5
c010a91b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a91e:	00 00                	add    BYTE PTR [eax],al
c010a920:	5c                   	pop    esp
c010a921:	14 00                	adc    al,0x0
c010a923:	00 6f 74             	add    BYTE PTR [edi+0x74],ch
c010a926:	10 c0                	adc    al,al
c010a928:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c010a92b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a92e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a934:	02 67 c5             	add    ah,BYTE PTR [edi-0x3b]
c010a937:	0c 04                	or     al,0x4
c010a939:	04 00                	add    al,0x0
c010a93b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a93e:	00 00                	add    BYTE PTR [eax],al
c010a940:	7c 14                	jl     c010a956 <_edata+0x1495>
c010a942:	00 00                	add    BYTE PTR [eax],al
c010a944:	da 74 10 c0          	fidiv  DWORD PTR [eax+edx*1-0x40]
c010a948:	67 00 00             	add    BYTE PTR [bx+si],al
c010a94b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a94e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a954:	02 63 c5             	add    ah,BYTE PTR [ebx-0x3b]
c010a957:	0c 04                	or     al,0x4
c010a959:	04 00                	add    al,0x0
c010a95b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a95e:	00 00                	add    BYTE PTR [eax],al
c010a960:	9c                   	pushf  
c010a961:	14 00                	adc    al,0x0
c010a963:	00 41 75             	add    BYTE PTR [ecx+0x75],al
c010a966:	10 c0                	adc    al,al
c010a968:	63 00                	arpl   WORD PTR [eax],ax
c010a96a:	00 00                	add    BYTE PTR [eax],al
c010a96c:	41                   	inc    ecx
c010a96d:	0e                   	push   cs
c010a96e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a974:	02 5f c5             	add    bl,BYTE PTR [edi-0x3b]
c010a977:	0c 04                	or     al,0x4
c010a979:	04 00                	add    al,0x0
c010a97b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a97e:	00 00                	add    BYTE PTR [eax],al
c010a980:	bc 14 00 00 a4       	mov    esp,0xa4000014
c010a985:	75 10                	jne    c010a997 <_edata+0x14d6>
c010a987:	c0 68 00 00          	shr    BYTE PTR [eax+0x0],0x0
c010a98b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a98e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a994:	02 64 c5 0c          	add    ah,BYTE PTR [ebp+eax*8+0xc]
c010a998:	04 04                	add    al,0x4
c010a99a:	00 00                	add    BYTE PTR [eax],al
c010a99c:	1c 00                	sbb    al,0x0
c010a99e:	00 00                	add    BYTE PTR [eax],al
c010a9a0:	dc 14 00             	fcom   QWORD PTR [eax+eax*1]
c010a9a3:	00 0c 76             	add    BYTE PTR [esi+esi*2],cl
c010a9a6:	10 c0                	adc    al,al
c010a9a8:	74 00                	je     c010a9aa <_edata+0x14e9>
c010a9aa:	00 00                	add    BYTE PTR [eax],al
c010a9ac:	41                   	inc    ecx
c010a9ad:	0e                   	push   cs
c010a9ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a9b4:	02 70 c5             	add    dh,BYTE PTR [eax-0x3b]
c010a9b7:	0c 04                	or     al,0x4
c010a9b9:	04 00                	add    al,0x0
c010a9bb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a9be:	00 00                	add    BYTE PTR [eax],al
c010a9c0:	fc                   	cld    
c010a9c1:	14 00                	adc    al,0x0
c010a9c3:	00 80 76 10 c0 9f    	add    BYTE PTR [eax-0x603fef8a],al
c010a9c9:	00 00                	add    BYTE PTR [eax],al
c010a9cb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a9ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a9d4:	02 9b c5 0c 04 04    	add    bl,BYTE PTR [ebx+0x4040cc5]
c010a9da:	00 00                	add    BYTE PTR [eax],al
c010a9dc:	1c 00                	sbb    al,0x0
c010a9de:	00 00                	add    BYTE PTR [eax],al
c010a9e0:	1c 15                	sbb    al,0x15
c010a9e2:	00 00                	add    BYTE PTR [eax],al
c010a9e4:	1f                   	pop    ds
c010a9e5:	77 10                	ja     c010a9f7 <_edata+0x1536>
c010a9e7:	c0                   	(bad)  
c010a9e8:	34 00                	xor    al,0x0
c010a9ea:	00 00                	add    BYTE PTR [eax],al
c010a9ec:	41                   	inc    ecx
c010a9ed:	0e                   	push   cs
c010a9ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a9f4:	70 c5                	jo     c010a9bb <_edata+0x14fa>
c010a9f6:	0c 04                	or     al,0x4
c010a9f8:	04 00                	add    al,0x0
c010a9fa:	00 00                	add    BYTE PTR [eax],al
c010a9fc:	1c 00                	sbb    al,0x0
c010a9fe:	00 00                	add    BYTE PTR [eax],al
c010aa00:	3c 15                	cmp    al,0x15
c010aa02:	00 00                	add    BYTE PTR [eax],al
c010aa04:	53                   	push   ebx
c010aa05:	77 10                	ja     c010aa17 <_edata+0x1556>
c010aa07:	c0 2b 00             	shr    BYTE PTR [ebx],0x0
c010aa0a:	00 00                	add    BYTE PTR [eax],al
c010aa0c:	41                   	inc    ecx
c010aa0d:	0e                   	push   cs
c010aa0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa14:	67 c5 0c             	lds    ecx,FWORD PTR [si]
c010aa17:	04 04                	add    al,0x4
c010aa19:	00 00                	add    BYTE PTR [eax],al
c010aa1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010aa1e:	00 00                	add    BYTE PTR [eax],al
c010aa20:	5c                   	pop    esp
c010aa21:	15 00 00 80 77       	adc    eax,0x77800000
c010aa26:	10 c0                	adc    al,al
c010aa28:	2f                   	das    
c010aa29:	00 00                	add    BYTE PTR [eax],al
c010aa2b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aa2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa34:	6b c5 0c             	imul   eax,ebp,0xc
c010aa37:	04 04                	add    al,0x4
c010aa39:	00 00                	add    BYTE PTR [eax],al
c010aa3b:	00 20                	add    BYTE PTR [eax],ah
c010aa3d:	00 00                	add    BYTE PTR [eax],al
c010aa3f:	00 7c 15 00          	add    BYTE PTR [ebp+edx*1+0x0],bh
c010aa43:	00 af 77 10 c0 d4    	add    BYTE PTR [edi-0x2b3fef89],ch
c010aa49:	02 00                	add    al,BYTE PTR [eax]
c010aa4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aa4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa54:	44                   	inc    esp
c010aa55:	83 03 03             	add    DWORD PTR [ebx],0x3
c010aa58:	cb                   	retf   
c010aa59:	02 c3                	add    al,bl
c010aa5b:	41                   	inc    ecx
c010aa5c:	0c 04                	or     al,0x4
c010aa5e:	04 c5                	add    al,0xc5
c010aa60:	24 00                	and    al,0x0
c010aa62:	00 00                	add    BYTE PTR [eax],al
c010aa64:	a0 15 00 00 84       	mov    al,ds:0x84000015
c010aa69:	7a 10                	jp     c010aa7b <_edata+0x15ba>
c010aa6b:	c0 c8 01             	ror    al,0x1
c010aa6e:	00 00                	add    BYTE PTR [eax],al
c010aa70:	41                   	inc    ecx
c010aa71:	0e                   	push   cs
c010aa72:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa78:	45                   	inc    ebp
c010aa79:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010aa7d:	03 bd 01 c3 41 c6    	add    edi,DWORD PTR [ebp-0x39be3cff]
c010aa83:	41                   	inc    ecx
c010aa84:	0c 04                	or     al,0x4
c010aa86:	04 c5                	add    al,0xc5
c010aa88:	1c 00                	sbb    al,0x0
c010aa8a:	00 00                	add    BYTE PTR [eax],al
c010aa8c:	c8 15 00 00          	enter  0x15,0x0
c010aa90:	4c                   	dec    esp
c010aa91:	7c 10                	jl     c010aaa3 <_edata+0x15e2>
c010aa93:	c0 6a 00 00          	shr    BYTE PTR [edx+0x0],0x0
c010aa97:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aa9a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aaa0:	02 66 c5             	add    ah,BYTE PTR [esi-0x3b]
c010aaa3:	0c 04                	or     al,0x4
c010aaa5:	04 00                	add    al,0x0
c010aaa7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010aaaa:	00 00                	add    BYTE PTR [eax],al
c010aaac:	e8 15 00 00 b6       	call   7610aac6 <AR_CODE32+0x760fea2e>
c010aab1:	7c 10                	jl     c010aac3 <_edata+0x1602>
c010aab3:	c0 1b 01             	rcr    BYTE PTR [ebx],0x1
c010aab6:	00 00                	add    BYTE PTR [eax],al
c010aab8:	41                   	inc    ecx
c010aab9:	0e                   	push   cs
c010aaba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aac0:	03 17                	add    edx,DWORD PTR [edi]
c010aac2:	01 c5                	add    ebp,eax
c010aac4:	0c 04                	or     al,0x4
c010aac6:	04 00                	add    al,0x0
c010aac8:	1c 00                	sbb    al,0x0
c010aaca:	00 00                	add    BYTE PTR [eax],al
c010aacc:	08 16                	or     BYTE PTR [esi],dl
c010aace:	00 00                	add    BYTE PTR [eax],al
c010aad0:	d1 7d 10             	sar    DWORD PTR [ebp+0x10],1
c010aad3:	c0 7c 00 00 00       	sar    BYTE PTR [eax+eax*1+0x0],0x0
c010aad8:	41                   	inc    ecx
c010aad9:	0e                   	push   cs
c010aada:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aae0:	02 78 c5             	add    bh,BYTE PTR [eax-0x3b]
c010aae3:	0c 04                	or     al,0x4
c010aae5:	04 00                	add    al,0x0
c010aae7:	00 28                	add    BYTE PTR [eax],ch
c010aae9:	00 00                	add    BYTE PTR [eax],al
c010aaeb:	00 28                	add    BYTE PTR [eax],ch
c010aaed:	16                   	push   ss
c010aaee:	00 00                	add    BYTE PTR [eax],al
c010aaf0:	4d                   	dec    ebp
c010aaf1:	7e 10                	jle    c010ab03 <_edata+0x1642>
c010aaf3:	c0 bf 01 00 00 41 0e 	sar    BYTE PTR [edi+0x41000001],0xe
c010aafa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ab00:	46                   	inc    esi
c010ab01:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010ab08:	b2 01                	mov    dl,0x1
c010ab0a:	c3                   	ret    
c010ab0b:	41                   	inc    ecx
c010ab0c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010ab10:	0c 04                	or     al,0x4
c010ab12:	04 c5                	add    al,0xc5

Disassembly of section .rodata:

c010ab14 <PKn_Version>:
c010ab14:	50                   	push   eax
c010ab15:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ab17:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ab1a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ab1f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ab21:	20 28                	and    BYTE PTR [eax],ch
c010ab23:	50                   	push   eax
c010ab24:	4b                   	dec    ebx
c010ab25:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ab26:	29 20                	sub    DWORD PTR [eax],esp
c010ab28:	30 2e                	xor    BYTE PTR [esi],ch
c010ab2a:	30 2e                	xor    BYTE PTR [esi],ch
c010ab2c:	31 20                	xor    DWORD PTR [eax],esp
c010ab2e:	41                   	inc    ecx
c010ab2f:	75 67                	jne    c010ab98 <PKn_Version+0x84>
c010ab31:	2e 00 4d 4d          	add    BYTE PTR cs:[ebp+0x4d],cl
c010ab35:	00 56 49             	add    BYTE PTR [esi+0x49],dl
c010ab38:	45                   	inc    ebp
c010ab39:	57                   	push   edi
c010ab3a:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c010ab3d:	67 5f                	addr16 pop edi
c010ab3f:	41                   	inc    ecx
c010ab40:	20 00                	and    BYTE PTR [eax],al
c010ab42:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c010ab46:	73 68                	jae    c010abb0 <PKn_Version+0x9c>
c010ab48:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ab4a:	6c                   	ins    BYTE PTR es:[edi],dx
c010ab4b:	00 4d 6f             	add    BYTE PTR [ebp+0x6f],cl
c010ab4e:	75 73                	jne    c010abc3 <PKn_Version+0xaf>
c010ab50:	65 00 75 73          	add    BYTE PTR gs:[ebp+0x73],dh
c010ab54:	65 72 5f             	gs jb  c010abb6 <PKn_Version+0xa2>
c010ab57:	70 72                	jo     c010abcb <PKn_Version+0xb7>
c010ab59:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ab5a:	67 41                	addr16 inc ecx
c010ab5c:	00 25 30 34 78 2f    	add    BYTE PTR ds:0x2f783430,ah
c010ab62:	25 30 32 78 2f       	and    eax,0x2f783230
c010ab67:	25 30 32 78 20       	and    eax,0x20783230
c010ab6c:	25 30 32 78 3a       	and    eax,0x3a783230
c010ab71:	25 30 32 78 00       	and    eax,0x783230
c010ab76:	0a 5b 55             	or     bl,BYTE PTR [ebx+0x55]
c010ab79:	73 65                	jae    c010abe0 <PKn_Version+0xcc>
c010ab7b:	72 5d                	jb     c010abda <PKn_Version+0xc6>
c010ab7d:	3a 00                	cmp    al,BYTE PTR [eax]
c010ab7f:	5b                   	pop    ebx
c010ab80:	55                   	push   ebp
c010ab81:	73 65                	jae    c010abe8 <PKn_Version+0xd4>
c010ab83:	72 5d                	jb     c010abe2 <PKn_Version+0xce>
c010ab85:	3a 00                	cmp    al,BYTE PTR [eax]
c010ab87:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010ab8a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ab8b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ab8e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ab93:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ab95:	20 28                	and    BYTE PTR [eax],ch
c010ab97:	50                   	push   eax
c010ab98:	4b                   	dec    ebx
c010ab99:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ab9a:	29 20                	sub    DWORD PTR [eax],esp
c010ab9c:	30 2e                	xor    BYTE PTR [esi],ch
c010ab9e:	30 2e                	xor    BYTE PTR [esi],ch
c010aba0:	31 20                	xor    DWORD PTR [eax],esp
c010aba2:	41                   	inc    ecx
c010aba3:	75 67                	jne    c010ac0c <PKn_Version+0xf8>
c010aba5:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010aba8:	0a 20                	or     ah,BYTE PTR [eax]
c010abaa:	45                   	inc    ebp
c010abab:	72 72                	jb     c010ac1f <PKn_Version+0x10b>
c010abad:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010abae:	72 0a                	jb     c010abba <PKn_Version+0xa6>
c010abb0:	20 46 69             	and    BYTE PTR [esi+0x69],al
c010abb3:	6c                   	ins    BYTE PTR es:[edi],dx
c010abb4:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010abb7:	20 20                	and    BYTE PTR [eax],ah
c010abb9:	20 20                	and    BYTE PTR [eax],ah
c010abbb:	20 20                	and    BYTE PTR [eax],ah
c010abbd:	20 25 73 0a 20 42    	and    BYTE PTR ds:0x42200a73,ah
c010abc3:	61                   	popa   
c010abc4:	73 65                	jae    c010ac2b <PKn_Version+0x117>
c010abc6:	20 46 69             	and    BYTE PTR [esi+0x69],al
c010abc9:	6c                   	ins    BYTE PTR es:[edi],dx
c010abca:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010abcd:	20 20                	and    BYTE PTR [eax],ah
c010abcf:	25 73 0a 20 49       	and    eax,0x49200a73
c010abd4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010abd5:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c010abd8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010abd9:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010abdd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010abde:	3a 20                	cmp    ah,BYTE PTR [eax]
c010abe0:	25 73 0a 20 4c       	and    eax,0x4c200a73
c010abe5:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c010abec:	20 20                	and    BYTE PTR [eax],ah
c010abee:	20 20                	and    BYTE PTR [eax],ah
c010abf0:	20 25 64 0a 20 43    	and    BYTE PTR ds:0x43200a64,ah
c010abf6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010abf7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010abf8:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c010abff:	20 20 
c010ac01:	20 25 73 0a 20 52    	and    BYTE PTR ds:0x52200a73,ah
c010ac07:	75 6e                	jne    c010ac77 <PKn_Version+0x163>
c010ac09:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac0a:	69 6e 67 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x67],0x2020203a
c010ac11:	20 20                	and    BYTE PTR [eax],ah
c010ac13:	25 73 00 20 5b       	and    eax,0x5b200073
c010ac18:	20 4c 6f 67          	and    BYTE PTR [edi+ebp*2+0x67],cl
c010ac1c:	5d                   	pop    ebp
c010ac1d:	00 00                	add    BYTE PTR [eax],al
c010ac1f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010ac22:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac23:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ac26:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ac2b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ac2d:	20 28                	and    BYTE PTR [eax],ch
c010ac2f:	50                   	push   eax
c010ac30:	4b                   	dec    ebx
c010ac31:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac32:	29 20                	sub    DWORD PTR [eax],esp
c010ac34:	30 2e                	xor    BYTE PTR [esi],ch
c010ac36:	30 2e                	xor    BYTE PTR [esi],ch
c010ac38:	31 20                	xor    DWORD PTR [eax],esp
c010ac3a:	41                   	inc    ecx
c010ac3b:	75 67                	jne    c010aca4 <PKn_Version+0x190>
c010ac3d:	2e 00 69 6e          	add    BYTE PTR cs:[ecx+0x6e],ch
c010ac41:	69 74 20 61 6c 6c 00 	imul   esi,DWORD PTR [eax+eiz*1+0x61],0x69006c6c
c010ac48:	69 
c010ac49:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac4a:	69 74 20 64 6f 6e 65 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x656e6f
c010ac51:	00 
c010ac52:	00 00                	add    BYTE PTR [eax],al
c010ac54:	50                   	push   eax
c010ac55:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ac57:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ac5a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ac5f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ac61:	20 28                	and    BYTE PTR [eax],ch
c010ac63:	50                   	push   eax
c010ac64:	4b                   	dec    ebx
c010ac65:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac66:	29 20                	sub    DWORD PTR [eax],esp
c010ac68:	30 2e                	xor    BYTE PTR [esi],ch
c010ac6a:	30 2e                	xor    BYTE PTR [esi],ch
c010ac6c:	31 20                	xor    DWORD PTR [eax],esp
c010ac6e:	41                   	inc    ecx
c010ac6f:	75 67                	jne    c010acd8 <PKn_Version+0x1c4>
c010ac71:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ac74:	53                   	push   ebx
c010ac75:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ac76:	72 72                	jb     c010acea <PKn_Version+0x1d6>
c010ac78:	79 2c                	jns    c010aca6 <PKn_Version+0x192>
c010ac7a:	20 61 20             	and    BYTE PTR [ecx+0x20],ah
c010ac7d:	70 72                	jo     c010acf1 <PKn_Version+0x1dd>
c010ac7f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ac80:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c010ac84:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c010ac87:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ac89:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c010ac8d:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c010ac92:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c010ac95:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c010ac99:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac9a:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c010ac9d:	75 74                	jne    c010ad13 <PKn_Version+0x1ff>
c010ac9f:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c010aca3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010aca4:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c010aca8:	70 72                	jo     c010ad1c <PKn_Version+0x208>
c010acaa:	65 76 65             	gs jbe c010ad12 <PKn_Version+0x1fe>
c010acad:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010acae:	74 20                	je     c010acd0 <PKn_Version+0x1bc>
c010acb0:	64 61                	fs popa 
c010acb2:	6d                   	ins    DWORD PTR es:[edi],dx
c010acb3:	61                   	popa   
c010acb4:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c010acb9:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010acbc:	75 72                	jne    c010ad30 <PKn_Version+0x21c>
c010acbe:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010acc1:	6d                   	ins    DWORD PTR es:[edi],dx
c010acc2:	70 75                	jo     c010ad39 <PKn_Version+0x225>
c010acc4:	74 65                	je     c010ad2b <PKn_Version+0x217>
c010acc6:	72 2e                	jb     c010acf6 <PKn_Version+0x1e2>
c010acc8:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c010accb:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010accf:	73 20                	jae    c010acf1 <PKn_Version+0x1dd>
c010acd1:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c010acd8:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c010acde:	74 69                	je     c010ad49 <PKn_Version+0x235>
c010ace0:	6d                   	ins    DWORD PTR es:[edi],dx
c010ace1:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c010ace5:	75 27                	jne    c010ad0e <PKn_Version+0x1fa>
c010ace7:	76 65                	jbe    c010ad4e <PKn_Version+0x23a>
c010ace9:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c010acec:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010acee:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010acf2:	73 20                	jae    c010ad14 <PKn_Version+0x200>
c010acf4:	73 74                	jae    c010ad6a <PKn_Version+0x256>
c010acf6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010acf7:	70 20                	jo     c010ad19 <PKn_Version+0x205>
c010acf9:	65 72 72             	gs jb  c010ad6e <PKn_Version+0x25a>
c010acfc:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010acfd:	72 20                	jb     c010ad1f <PKn_Version+0x20b>
c010acff:	73 65                	jae    c010ad66 <PKn_Version+0x252>
c010ad01:	72 65                	jb     c010ad68 <PKn_Version+0x254>
c010ad03:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ad05:	2c 20                	sub    al,0x20
c010ad07:	72 65                	jb     c010ad6e <PKn_Version+0x25a>
c010ad09:	73 74                	jae    c010ad7f <PKn_Version+0x26b>
c010ad0b:	61                   	popa   
c010ad0c:	72 74                	jb     c010ad82 <PKn_Version+0x26e>
c010ad0e:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010ad11:	75 72                	jne    c010ad85 <PKn_Version+0x271>
c010ad13:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010ad16:	6d                   	ins    DWORD PTR es:[edi],dx
c010ad17:	70 75                	jo     c010ad8e <PKn_Version+0x27a>
c010ad19:	74 65                	je     c010ad80 <PKn_Version+0x26c>
c010ad1b:	72 2e                	jb     c010ad4b <PKn_Version+0x237>
c010ad1d:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c010ad20:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010ad24:	73 20                	jae    c010ad46 <PKn_Version+0x232>
c010ad26:	73 63                	jae    c010ad8b <PKn_Version+0x277>
c010ad28:	72 65                	jb     c010ad8f <PKn_Version+0x27b>
c010ad2a:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ad2c:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c010ad2f:	70 65                	jo     c010ad96 <PKn_Version+0x282>
c010ad31:	72 73                	jb     c010ada6 <PKn_Version+0x292>
c010ad33:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c010ad36:	61                   	popa   
c010ad37:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c010ad3e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ad3f:	77 20                	ja     c010ad61 <PKn_Version+0x24d>
c010ad41:	74 68                	je     c010adab <PKn_Version+0x297>
c010ad43:	65 73 65             	gs jae c010adab <PKn_Version+0x297>
c010ad46:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c010ad49:	65 70 73             	gs jo  c010adbf <PKn_Version+0x2ab>
c010ad4c:	3a 0a                	cmp    cl,BYTE PTR [edx]
c010ad4e:	20 31                	and    BYTE PTR [ecx],dh
c010ad50:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c010ad54:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c010ad57:	6c                   	ins    BYTE PTR es:[edi],dx
c010ad58:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c010ad5c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad5d:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ad60:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ad65:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ad67:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c010ad6a:	20 32                	and    BYTE PTR [edx],dh
c010ad6c:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c010ad71:	75 67                	jne    c010adda <PKn_Version+0x2c6>
c010ad73:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c010ad76:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad77:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ad7a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ad7f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ad81:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c010ad84:	20 76 69             	and    BYTE PTR [esi+0x69],dh
c010ad87:	72 74                	jb     c010adfd <PKn_Version+0x2e9>
c010ad89:	75 61                	jne    c010adec <PKn_Version+0x2d8>
c010ad8b:	6c                   	ins    BYTE PTR es:[edi],dx
c010ad8c:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c010ad8f:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c010ad92:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad93:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c010ad97:	00 20                	add    BYTE PTR [eax],ah
c010ad99:	25 73 0a 20 69       	and    eax,0x69200a73
c010ad9e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad9f:	74 72                	je     c010ae13 <PKn_Version+0x2ff>
c010ada1:	3a 20                	cmp    ah,BYTE PTR [eax]
c010ada3:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010ada6:	30 32                	xor    BYTE PTR [edx],dh
c010ada8:	78 0a                	js     c010adb4 <PKn_Version+0x2a0>
c010adaa:	20 43 53             	and    BYTE PTR [ebx+0x53],al
c010adad:	3a 45 49             	cmp    al,BYTE PTR [ebp+0x49]
c010adb0:	50                   	push   eax
c010adb1:	20 20                	and    BYTE PTR [eax],ah
c010adb3:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010adb6:	30 32                	xor    BYTE PTR [edx],dh
c010adb8:	78 3a                	js     c010adf4 <PKn_Version+0x2e0>
c010adba:	25 30 38 70 20       	and    eax,0x20703830
c010adbf:	52                   	push   edx
c010adc0:	75 6e                	jne    c010ae30 <PKn_Version+0x31c>
c010adc2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010adc3:	69 6e 67 3a 20 25 73 	imul   ebp,DWORD PTR [esi+0x67],0x7325203a
c010adca:	00 28                	add    BYTE PTR [eax],ch
c010adcc:	20 46 61             	and    BYTE PTR [esi+0x61],al
c010adcf:	75 6c                	jne    c010ae3d <PKn_Version+0x329>
c010add1:	74 20                	je     c010adf3 <PKn_Version+0x2df>
c010add3:	61                   	popa   
c010add4:	64 64 72 65          	fs fs jb c010ae3d <PKn_Version+0x329>
c010add8:	73 73                	jae    c010ae4d <PKn_Version+0x339>
c010adda:	3a 20                	cmp    ah,BYTE PTR [eax]
c010addc:	25 70 20 29 00       	and    eax,0x292070
c010ade1:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c010ade5:	44                   	inc    esp
c010ade6:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c010aded:	72 72                	jb     c010ae61 <PKn_Version+0x34d>
c010adef:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010adf0:	72 00                	jb     c010adf2 <PKn_Version+0x2de>
c010adf2:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c010adf6:	44                   	inc    esp
c010adf7:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c010adfb:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c010adfe:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010ae01:	74 69                	je     c010ae6c <PKn_Version+0x358>
c010ae03:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ae04:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae05:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c010ae08:	49                   	dec    ecx
c010ae09:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010ae0c:	74 65                	je     c010ae73 <PKn_Version+0x35f>
c010ae0e:	72 72                	jb     c010ae82 <PKn_Version+0x36e>
c010ae10:	75 70                	jne    c010ae82 <PKn_Version+0x36e>
c010ae12:	74 00                	je     c010ae14 <PKn_Version+0x300>
c010ae14:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c010ae17:	20 42 72             	and    BYTE PTR [edx+0x72],al
c010ae1a:	65 61                	gs popa 
c010ae1c:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c010ae20:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae21:	74 20                	je     c010ae43 <PKn_Version+0x32f>
c010ae23:	45                   	inc    ebp
c010ae24:	78 63                	js     c010ae89 <PKn_Version+0x375>
c010ae26:	65 70 74             	gs jo  c010ae9d <PKn_Version+0x389>
c010ae29:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c010ae30:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c010ae33:	65 72 66             	gs jb  c010ae9c <PKn_Version+0x388>
c010ae36:	6c                   	ins    BYTE PTR es:[edi],dx
c010ae37:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ae38:	77 20                	ja     c010ae5a <PKn_Version+0x346>
c010ae3a:	45                   	inc    ebp
c010ae3b:	78 63                	js     c010aea0 <PKn_Version+0x38c>
c010ae3d:	65 70 74             	gs jo  c010aeb4 <PKn_Version+0x3a0>
c010ae40:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c010ae47:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c010ae4a:	55                   	push   ebp
c010ae4b:	4e                   	dec    esi
c010ae4c:	44                   	inc    esp
c010ae4d:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c010ae50:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae51:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c010ae56:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c010ae59:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c010ae5f:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010ae62:	74 69                	je     c010aecd <PKn_Version+0x3b9>
c010ae64:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ae65:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae66:	00 23                	add    BYTE PTR [ebx],ah
c010ae68:	55                   	push   ebp
c010ae69:	44                   	inc    esp
c010ae6a:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010ae6d:	76 61                	jbe    c010aed0 <PKn_Version+0x3bc>
c010ae6f:	6c                   	ins    BYTE PTR es:[edi],dx
c010ae70:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c010ae77:	64 
c010ae78:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c010ae7c:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010ae7f:	74 69                	je     c010aeea <PKn_Version+0x3d6>
c010ae81:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ae82:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae83:	00 23                	add    BYTE PTR [ebx],ah
c010ae85:	4e                   	dec    esi
c010ae86:	4d                   	dec    ebp
c010ae87:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c010ae8b:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c010ae92:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c010ae95:	61                   	popa   
c010ae96:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c010ae9d:	45 
c010ae9e:	78 63                	js     c010af03 <PKn_Version+0x3ef>
c010aea0:	65 70 74             	gs jo  c010af17 <PKn_Version+0x403>
c010aea3:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c010aeaa:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c010aeae:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c010aeb2:	46                   	inc    esi
c010aeb3:	61                   	popa   
c010aeb4:	75 6c                	jne    c010af22 <PKn_Version+0x40e>
c010aeb6:	74 20                	je     c010aed8 <PKn_Version+0x3c4>
c010aeb8:	45                   	inc    ebp
c010aeb9:	78 63                	js     c010af1e <PKn_Version+0x40a>
c010aebb:	65 70 74             	gs jo  c010af32 <PKn_Version+0x41e>
c010aebe:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c010aec5:	72 6f                	jb     c010af36 <PKn_Version+0x422>
c010aec7:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010aeca:	73 6f                	jae    c010af3b <PKn_Version+0x427>
c010aecc:	72 20                	jb     c010aeee <PKn_Version+0x3da>
c010aece:	53                   	push   ebx
c010aecf:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c010aed2:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010aed4:	74 20                	je     c010aef6 <PKn_Version+0x3e2>
c010aed6:	4f                   	dec    edi
c010aed7:	76 65                	jbe    c010af3e <PKn_Version+0x42a>
c010aed9:	72 72                	jb     c010af4d <PKn_Version+0x439>
c010aedb:	75 6e                	jne    c010af4b <PKn_Version+0x437>
c010aedd:	00 23                	add    BYTE PTR [ebx],ah
c010aedf:	54                   	push   esp
c010aee0:	53                   	push   ebx
c010aee1:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010aee4:	76 61                	jbe    c010af47 <PKn_Version+0x433>
c010aee6:	6c                   	ins    BYTE PTR es:[edi],dx
c010aee7:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c010aeee:	45 
c010aeef:	78 63                	js     c010af54 <PKn_Version+0x440>
c010aef1:	65 70 74             	gs jo  c010af68 <PKn_Version+0x454>
c010aef4:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c010aefb:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c010aefe:	67 6d                	ins    DWORD PTR es:[di],dx
c010af00:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010af02:	74 20                	je     c010af24 <PKn_Version+0x410>
c010af04:	4e                   	dec    esi
c010af05:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010af06:	74 20                	je     c010af28 <PKn_Version+0x414>
c010af08:	50                   	push   eax
c010af09:	72 65                	jb     c010af70 <PKn_Version+0x45c>
c010af0b:	73 65                	jae    c010af72 <PKn_Version+0x45e>
c010af0d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af0e:	74 00                	je     c010af10 <PKn_Version+0x3fc>
c010af10:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c010af13:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c010af16:	61                   	popa   
c010af17:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c010af1a:	46                   	inc    esi
c010af1b:	61                   	popa   
c010af1c:	75 6c                	jne    c010af8a <PKn_Version+0x476>
c010af1e:	74 20                	je     c010af40 <PKn_Version+0x42c>
c010af20:	45                   	inc    ebp
c010af21:	78 63                	js     c010af86 <PKn_Version+0x472>
c010af23:	65 70 74             	gs jo  c010af9a <PKn_Version+0x486>
c010af26:	69 6f 6e 00 00 00 23 	imul   ebp,DWORD PTR [edi+0x6e],0x23000000
c010af2d:	47                   	inc    edi
c010af2e:	50                   	push   eax
c010af2f:	20 47 65             	and    BYTE PTR [edi+0x65],al
c010af32:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af33:	65 72 61             	gs jb  c010af97 <PKn_Version+0x483>
c010af36:	6c                   	ins    BYTE PTR es:[edi],dx
c010af37:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c010af3a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010af3b:	74 65                	je     c010afa2 <PKn_Version+0x48e>
c010af3d:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010af41:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af42:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c010af45:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010af48:	74 69                	je     c010afb3 <PKn_Version+0x49f>
c010af4a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010af4b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af4c:	00 23                	add    BYTE PTR [ebx],ah
c010af4e:	50                   	push   eax
c010af4f:	46                   	inc    esi
c010af50:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c010af53:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c010af5a:	74 20                	je     c010af7c <PKn_Version+0x468>
c010af5c:	45                   	inc    ebp
c010af5d:	78 63                	js     c010afc2 <PKn_Version+0x4ae>
c010af5f:	65 70 74             	gs jo  c010afd6 <PKn_Version+0x4c2>
c010af62:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c010af69:	65 72 76             	gs jb  c010afe2 <PKn_Version+0x4ce>
c010af6c:	65 64 00 00          	gs add BYTE PTR fs:[eax],al
c010af70:	23 4d 46             	and    ecx,DWORD PTR [ebp+0x46]
c010af73:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c010af76:	37                   	aaa    
c010af77:	20 46 50             	and    BYTE PTR [esi+0x50],al
c010af7a:	55                   	push   ebp
c010af7b:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c010af7e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010af7f:	61                   	popa   
c010af80:	74 69                	je     c010afeb <PKn_Version+0x4d7>
c010af82:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af83:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c010af89:	74 20                	je     c010afab <PKn_Version+0x497>
c010af8b:	45                   	inc    ebp
c010af8c:	72 72                	jb     c010b000 <PKn_Version+0x4ec>
c010af8e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010af8f:	72 00                	jb     c010af91 <PKn_Version+0x47d>
c010af91:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c010af94:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c010af97:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c010af9e:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c010afa1:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c010afa5:	45                   	inc    ebp
c010afa6:	78 63                	js     c010b00b <PKn_Version+0x4f7>
c010afa8:	65 70 74             	gs jo  c010b01f <PKn_Version+0x50b>
c010afab:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c010afb2:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c010afb5:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c010afb8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010afb9:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c010afbf:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c010afc2:	78 63                	js     c010b027 <PKn_Version+0x513>
c010afc4:	65 70 74             	gs jo  c010b03b <PKn_Version+0x527>
c010afc7:	69 6f 6e 00 00 23 58 	imul   ebp,DWORD PTR [edi+0x6e],0x58230000
c010afce:	46                   	inc    esi
c010afcf:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c010afd2:	4d                   	dec    ebp
c010afd3:	44                   	inc    esp
c010afd4:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c010afd7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010afd8:	61                   	popa   
c010afd9:	74 69                	je     c010b044 <PKn_Version+0x530>
c010afdb:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010afdc:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c010afe2:	74 20                	je     c010b004 <PKn_Version+0x4f0>
c010afe4:	45                   	inc    ebp
c010afe5:	78 63                	js     c010b04a <PKn_Version+0x536>
c010afe7:	65 70 74             	gs jo  c010b05e <PKn_Version+0x54a>
c010afea:	69 6f 6e 00 00 00 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50000000
c010aff1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010aff3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010aff6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010affb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010affd:	20 28                	and    BYTE PTR [eax],ch
c010afff:	50                   	push   eax
c010b000:	4b                   	dec    ebx
c010b001:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b002:	29 20                	sub    DWORD PTR [eax],esp
c010b004:	30 2e                	xor    BYTE PTR [esi],ch
c010b006:	30 2e                	xor    BYTE PTR [esi],ch
c010b008:	31 20                	xor    DWORD PTR [eax],esp
c010b00a:	41                   	inc    ecx
c010b00b:	75 67                	jne    c010b074 <PKn_Version+0x560>
c010b00d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b010:	21 28                	and    DWORD PTR [eax],ebp
c010b012:	6c                   	ins    BYTE PTR es:[edi],dx
c010b013:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010b01a:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010b01d:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010b020:	3e 64 65 73 63       	ds fs gs jae c010b088 <PKn_Version+0x574>
c010b025:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010b02a:	65 5f                	gs pop edi
c010b02c:	6c                   	ins    BYTE PTR es:[edi],dx
c010b02d:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010b034:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010b03a:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c010b03d:	29 00                	sub    DWORD PTR [eax],eax
c010b03f:	6d                   	ins    DWORD PTR es:[edi],dx
c010b040:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b042:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b043:	72 79                	jb     c010b0be <__func__.1321+0x4>
c010b045:	2f                   	das    
c010b046:	61                   	popa   
c010b047:	72 65                	jb     c010b0ae <PKn_Version+0x59a>
c010b049:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b04a:	61                   	popa   
c010b04b:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010b04e:	00 00                	add    BYTE PTR [eax],al
c010b050:	61                   	popa   
c010b051:	2d 3e 64 65 73       	sub    eax,0x7365643e
c010b056:	63 20                	arpl   WORD PTR [eax],sp
c010b058:	3d 3d 20 4e 55       	cmp    eax,0x554e203d
c010b05d:	4c                   	dec    esp
c010b05e:	4c                   	dec    esp
c010b05f:	20 26                	and    BYTE PTR [esi],ah
c010b061:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010b065:	3e 63 6e 74          	arpl   WORD PTR ds:[esi+0x74],bp
c010b069:	20 3d 3d 20 70 67    	and    BYTE PTR ds:0x6770203d,bh
c010b06f:	5f                   	pop    edi
c010b070:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010b073:	20 26                	and    BYTE PTR [esi],ah
c010b075:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010b079:	3e 6c                	ds ins BYTE PTR es:[edi],dx
c010b07b:	61                   	popa   
c010b07c:	72 67                	jb     c010b0e5 <__func__.1321+0x2b>
c010b07e:	65 20 3d 3d 20 74 72 	and    BYTE PTR gs:0x7274203d,bh
c010b085:	75 65                	jne    c010b0ec <__func__.1321+0x32>
c010b087:	00 6c 69 73          	add    BYTE PTR [ecx+ebp*2+0x73],ch
c010b08b:	74 5f                	je     c010b0ec <__func__.1321+0x32>
c010b08d:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010b093:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010b096:	3e 64 65 73 63       	ds fs gs jae c010b0fe <__func__.1321+0x44>
c010b09b:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010b0a0:	65 5f                	gs pop edi
c010b0a2:	6c                   	ins    BYTE PTR es:[edi],dx
c010b0a3:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010b0aa:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010b0b0:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
	...

c010b0b4 <__func__.1335>:
c010b0b4:	6b 66 72 65          	imul   esp,DWORD PTR [esi+0x72],0x65
c010b0b8:	65 00 6b 6d          	add    BYTE PTR gs:[ebx+0x6d],ch

c010b0ba <__func__.1321>:
c010b0ba:	6b 6d 61 6c          	imul   ebp,DWORD PTR [ebp+0x61],0x6c
c010b0be:	6c                   	ins    BYTE PTR es:[edi],dx
c010b0bf:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b0c0:	63 00                	arpl   WORD PTR [eax],ax
c010b0c2:	00 00                	add    BYTE PTR [eax],al
c010b0c4:	50                   	push   eax
c010b0c5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b0c7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b0ca:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b0cf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b0d1:	20 28                	and    BYTE PTR [eax],ch
c010b0d3:	50                   	push   eax
c010b0d4:	4b                   	dec    ebx
c010b0d5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b0d6:	29 20                	sub    DWORD PTR [eax],esp
c010b0d8:	30 2e                	xor    BYTE PTR [esi],ch
c010b0da:	30 2e                	xor    BYTE PTR [esi],ch
c010b0dc:	31 20                	xor    DWORD PTR [eax],esp
c010b0de:	41                   	inc    ecx
c010b0df:	75 67                	jne    c010b148 <__func__.1321+0x8e>
c010b0e1:	2e 00 4e 6f          	add    BYTE PTR cs:[esi+0x6f],cl
c010b0e5:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c010b0e8:	6d                   	ins    DWORD PTR es:[edi],dx
c010b0e9:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b0ea:	72 79                	jb     c010b165 <__func__.1321+0xab>
c010b0ec:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c010b0ef:	61                   	popa   
c010b0f0:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c010b0f7:	00 
c010b0f8:	6d                   	ins    DWORD PTR es:[edi],dx
c010b0f9:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b0fb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b0fc:	72 79                	jb     c010b177 <__func__.1321+0xbd>
c010b0fe:	2f                   	das    
c010b0ff:	6d                   	ins    DWORD PTR es:[edi],dx
c010b100:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b102:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b103:	72 79                	jb     c010b17e <__func__.1321+0xc4>
c010b105:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010b108:	70 61                	jo     c010b16b <__func__.1321+0xb1>
c010b10a:	67 65 73 20          	addr16 gs jae c010b12e <__func__.1321+0x74>
c010b10e:	21 3d 20 30 00 66    	and    DWORD PTR ds:0x66003020,edi
c010b114:	72 65                	jb     c010b17b <__func__.1321+0xc1>
c010b116:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c010b119:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b11e:	4c                   	dec    esp
c010b11f:	00 21                	add    BYTE PTR [ecx],ah
c010b121:	28 2a                	sub    BYTE PTR [edx],ch
c010b123:	70 74                	jo     c010b199 <__func__.1321+0xdf>
c010b125:	65 20 26             	and    BYTE PTR gs:[esi],ah
c010b128:	20 30                	and    BYTE PTR [eax],dh
c010b12a:	78 30                	js     c010b15c <__func__.1321+0xa2>
c010b12c:	30 30                	xor    BYTE PTR [eax],dh
c010b12e:	30 30                	xor    BYTE PTR [eax],dh
c010b130:	30 30                	xor    BYTE PTR [eax],dh
c010b132:	31 29                	xor    DWORD PTR [ecx],ebp
c010b134:	00 00                	add    BYTE PTR [eax],al
c010b136:	00 00                	add    BYTE PTR [eax],al
c010b138:	67 65 74 5f          	addr16 gs je c010b19b <__func__.1321+0xe1>
c010b13c:	61                   	popa   
c010b13d:	5f                   	pop    edi
c010b13e:	70 61                	jo     c010b1a1 <__func__.1321+0xe7>
c010b140:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c010b144:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b145:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b146:	74 20                	je     c010b168 <__func__.1321+0xae>
c010b148:	61                   	popa   
c010b149:	6c                   	ins    BYTE PTR es:[edi],dx
c010b14a:	6c                   	ins    BYTE PTR es:[edi],dx
c010b14b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b14c:	77 20                	ja     c010b16e <__func__.1321+0xb4>
c010b14e:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c010b152:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b154:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c010b157:	6c                   	ins    BYTE PTR es:[edi],dx
c010b158:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b159:	63 20                	arpl   WORD PTR [eax],sp
c010b15b:	75 73                	jne    c010b1d0 <__func__.1321+0x116>
c010b15d:	65 72 73             	gs jb  c010b1d3 <__func__.1321+0x119>
c010b160:	70 61                	jo     c010b1c3 <__func__.1321+0x109>
c010b162:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c010b165:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b166:	72 20                	jb     c010b188 <__func__.1321+0xce>
c010b168:	75 73                	jne    c010b1dd <__func__.1321+0x123>
c010b16a:	65 72 20             	gs jb  c010b18d <__func__.1321+0xd3>
c010b16d:	61                   	popa   
c010b16e:	6c                   	ins    BYTE PTR es:[edi],dx
c010b16f:	6c                   	ins    BYTE PTR es:[edi],dx
c010b170:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b171:	63 20                	arpl   WORD PTR [eax],sp
c010b173:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c010b177:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b179:	73 70                	jae    c010b1eb <__func__.1321+0x131>
c010b17b:	61                   	popa   
c010b17c:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c010b17f:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c010b182:	67 65 74 5f          	addr16 gs je c010b1e5 <__func__.1321+0x12b>
c010b186:	61                   	popa   
c010b187:	5f                   	pop    edi
c010b188:	70 61                	jo     c010b1eb <__func__.1321+0x131>
c010b18a:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c010b18e:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c010b191:	67 65 5f             	addr16 gs pop edi
c010b194:	70 61                	jo     c010b1f7 <__func__.1321+0x13d>
c010b196:	64 64 72 20          	fs fs jb c010b1ba <__func__.1321+0x100>
c010b19a:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c010b1a0:	4c                   	dec    esp
c010b1a1:	00 50 61             	add    BYTE PTR [eax+0x61],dl
c010b1a4:	67 65 20 46 72       	and    BYTE PTR gs:[bp+0x72],al
c010b1a9:	65 65 20 45 72       	gs and BYTE PTR gs:[ebp+0x72],al
c010b1ae:	72 6f                	jb     c010b21f <__func__.1321+0x165>
c010b1b0:	72 20                	jb     c010b1d2 <__func__.1321+0x118>
c010b1b2:	21 00                	and    DWORD PTR [eax],eax
c010b1b4:	66 72 65             	data16 jb c010b21c <__func__.1321+0x162>
c010b1b7:	65 5f                	gs pop edi
c010b1b9:	70 67                	jo     c010b222 <__func__.1321+0x168>
c010b1bb:	5f                   	pop    edi
c010b1bc:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010b1bf:	20 3e                	and    BYTE PTR [esi],bh
c010b1c1:	3d 20 31 20 26       	cmp    eax,0x26203120
c010b1c6:	26 20 28             	and    BYTE PTR es:[eax],ch
c010b1c9:	75 69                	jne    c010b234 <__func__.1321+0x17a>
c010b1cb:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b1cc:	74 33                	je     c010b201 <__func__.1321+0x147>
c010b1ce:	32 5f 74             	xor    bl,BYTE PTR [edi+0x74]
c010b1d1:	29 70 76             	sub    DWORD PTR [eax+0x76],esi
c010b1d4:	61                   	popa   
c010b1d5:	64 64 72 20          	fs fs jb c010b1f9 <__func__.1321+0x13f>
c010b1d9:	25 20 50 47 5f       	and    eax,0x5f475020
c010b1de:	53                   	push   ebx
c010b1df:	49                   	dec    ecx
c010b1e0:	5a                   	pop    edx
c010b1e1:	45                   	inc    ebp
c010b1e2:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c010b1e8:	28 28                	sub    BYTE PTR [eax],ch
c010b1ea:	70 74                	jo     c010b260 <__func__.1334+0x5>
c010b1ec:	72 5f                	jb     c010b24d <__func__.1376+0x7>
c010b1ee:	74 29                	je     c010b219 <__func__.1321+0x15f>
c010b1f0:	70 67                	jo     c010b259 <__func__.1354+0x9>
c010b1f2:	5f                   	pop    edi
c010b1f3:	70 61                	jo     c010b256 <__func__.1354+0x6>
c010b1f5:	64 64 72 20          	fs fs jb c010b219 <__func__.1321+0x15f>
c010b1f9:	25 20 50 47 5f       	and    eax,0x5f475020
c010b1fe:	53                   	push   ebx
c010b1ff:	49                   	dec    ecx
c010b200:	5a                   	pop    edx
c010b201:	45                   	inc    ebp
c010b202:	29 20                	sub    DWORD PTR [eax],esp
c010b204:	3d 3d 20 30 20       	cmp    eax,0x2030203d
c010b209:	26 26 20 28          	es and BYTE PTR es:[eax],ch
c010b20d:	28 70 74             	sub    BYTE PTR [eax+0x74],dh
c010b210:	72 5f                	jb     c010b271 <__func__.1306+0xb>
c010b212:	74 29                	je     c010b23d <__func__.1321+0x183>
c010b214:	70 67                	jo     c010b27d <__func__.1266+0x8>
c010b216:	5f                   	pop    edi
c010b217:	70 61                	jo     c010b27a <__func__.1266+0x5>
c010b219:	64 64 72 29          	fs fs jb c010b246 <__func__.1376>
c010b21d:	20 3e                	and    BYTE PTR [esi],bh
c010b21f:	3d 20 4b 45 52       	cmp    eax,0x52454b20
c010b224:	4e                   	dec    esi
c010b225:	45                   	inc    ebp
c010b226:	4c                   	dec    esp
c010b227:	5f                   	pop    edi
c010b228:	50                   	push   eax
c010b229:	41                   	inc    ecx
c010b22a:	47                   	inc    edi
c010b22b:	45                   	inc    ebp
c010b22c:	5f                   	pop    edi
c010b22d:	44                   	inc    esp
c010b22e:	49                   	dec    ecx
c010b22f:	52                   	push   edx
c010b230:	5f                   	pop    edi
c010b231:	54                   	push   esp
c010b232:	41                   	inc    ecx
c010b233:	42                   	inc    edx
c010b234:	4c                   	dec    esp
c010b235:	45                   	inc    ebp
c010b236:	5f                   	pop    edi
c010b237:	50                   	push   eax
c010b238:	4f                   	dec    edi
c010b239:	53                   	push   ebx
c010b23a:	20 2b                	and    BYTE PTR [ebx],ch
c010b23c:	20 30                	and    BYTE PTR [eax],dh
c010b23e:	78 32                	js     c010b272 <__func__.1306+0xc>
c010b240:	30 30                	xor    BYTE PTR [eax],dh
c010b242:	30 30                	xor    BYTE PTR [eax],dh
c010b244:	30 00                	xor    BYTE PTR [eax],al

c010b246 <__func__.1376>:
c010b246:	70 61                	jo     c010b2a9 <__func__.1256+0x28>
c010b248:	67 65 5f             	addr16 gs pop edi
c010b24b:	66 72 65             	data16 jb c010b2b3 <__func__.1256+0x32>
c010b24e:	65 00 70 67          	add    BYTE PTR gs:[eax+0x67],dh

c010b250 <__func__.1354>:
c010b250:	70 67                	jo     c010b2b9 <__func__.1256+0x38>
c010b252:	6d                   	ins    DWORD PTR es:[edi],dx
c010b253:	61                   	popa   
c010b254:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b255:	5f                   	pop    edi
c010b256:	66 72 65             	data16 jb c010b2be <__func__.1256+0x3d>
c010b259:	65 00 67 65          	add    BYTE PTR gs:[edi+0x65],ah

c010b25b <__func__.1334>:
c010b25b:	67 65 74 5f          	addr16 gs je c010b2be <__func__.1256+0x3d>
c010b25f:	61                   	popa   
c010b260:	5f                   	pop    edi
c010b261:	70 61                	jo     c010b2c4 <__func__.1256+0x43>
c010b263:	67 65 00 70 61       	add    BYTE PTR gs:[bx+si+0x61],dh

c010b266 <__func__.1306>:
c010b266:	70 61                	jo     c010b2c9 <__func__.1256+0x48>
c010b268:	67 65 5f             	addr16 gs pop edi
c010b26b:	74 61                	je     c010b2ce <__func__.1256+0x4d>
c010b26d:	62 6c 65 5f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x5f]
c010b271:	61                   	popa   
c010b272:	64 64 00 69 6e       	fs add BYTE PTR fs:[ecx+0x6e],ch

c010b275 <__func__.1266>:
c010b275:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c010b27c:	6d                   	ins    DWORD PTR es:[edi],dx
c010b27d:	6d                   	ins    DWORD PTR es:[edi],dx
c010b27e:	61                   	popa   
c010b27f:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c010b281 <__func__.1256>:
c010b281:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c010b288:	6d                   	ins    DWORD PTR es:[edi],dx
c010b289:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b28a:	72 79                	jb     c010b305 <__func__.1256+0x84>
c010b28c:	00 00                	add    BYTE PTR [eax],al
c010b28e:	00 00                	add    BYTE PTR [eax],al
c010b290:	50                   	push   eax
c010b291:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b293:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b296:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b29b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b29d:	20 28                	and    BYTE PTR [eax],ch
c010b29f:	50                   	push   eax
c010b2a0:	4b                   	dec    ebx
c010b2a1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b2a2:	29 20                	sub    DWORD PTR [eax],esp
c010b2a4:	30 2e                	xor    BYTE PTR [esi],ch
c010b2a6:	30 2e                	xor    BYTE PTR [esi],ch
c010b2a8:	31 20                	xor    DWORD PTR [eax],esp
c010b2aa:	41                   	inc    ecx
c010b2ab:	75 67                	jne    c010b314 <__func__.1256+0x93>
c010b2ad:	2e 00 70 73          	add    BYTE PTR cs:[eax+0x73],dh
c010b2b1:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b2b3:	61                   	popa   
c010b2b4:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010b2b9:	75 65                	jne    c010b320 <__func__.1256+0x9f>
c010b2bb:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c010b2c1:	6c                   	ins    BYTE PTR es:[edi],dx
c010b2c2:	75 65                	jne    c010b329 <__func__.1256+0xa8>
c010b2c4:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010b2c8:	65 61                	gs popa 
c010b2ca:	64 2f                	fs das 
c010b2cc:	73 79                	jae    c010b347 <__func__.1256+0xc6>
c010b2ce:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b2cf:	63 2e                	arpl   WORD PTR [esi],bp
c010b2d1:	63 00                	arpl   WORD PTR [eax],ax
c010b2d3:	00 21                	add    BYTE PTR [ecx],ah
c010b2d5:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c010b2d9:	74 5f                	je     c010b33a <__func__.1256+0xb9>
c010b2db:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010b2e1:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c010b2e4:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b2e6:	61                   	popa   
c010b2e7:	2d 3e 77 61 69       	sub    eax,0x6961773e
c010b2ec:	74 65                	je     c010b353 <__func__.1256+0xd2>
c010b2ee:	72 73                	jb     c010b363 <__func__.1256+0xe2>
c010b2f0:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c010b2f3:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c010b2f6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b2f7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b2f8:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010b2ff:	65 61                	gs popa 
c010b301:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010b304:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010b309:	65 72 61             	gs jb  c010b36d <__func__.1256+0xec>
c010b30c:	6c                   	ins    BYTE PTR es:[edi],dx
c010b30d:	5f                   	pop    edi
c010b30e:	74 61                	je     c010b371 <__func__.1256+0xf0>
c010b310:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b313:	29 00                	sub    DWORD PTR [eax],eax
c010b315:	00 00                	add    BYTE PTR [eax],al
c010b317:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
c010b31a:	6d                   	ins    DWORD PTR es:[edi],dx
c010b31b:	61                   	popa   
c010b31c:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c010b320:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b321:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c010b325:	65 61                	gs popa 
c010b327:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c010b32b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b32c:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c010b32f:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c010b333:	73 20                	jae    c010b355 <__func__.1256+0xd4>
c010b335:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c010b338:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b339:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c010b33c:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c010b33f:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c010b346:	69 
c010b347:	73 74                	jae    c010b3bd <__func__.1256+0x13c>
c010b349:	21 0a                	and    DWORD PTR [edx],ecx
c010b34b:	00 72 75             	add    BYTE PTR [edx+0x75],dh
c010b34e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b34f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b350:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010b357:	65 61                	gs popa 
c010b359:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010b35c:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010b361:	65 72 61             	gs jb  c010b3c5 <__func__.1256+0x144>
c010b364:	6c                   	ins    BYTE PTR es:[edi],dx
c010b365:	5f                   	pop    edi
c010b366:	74 61                	je     c010b3c9 <__func__.1256+0x148>
c010b368:	67 2e 64 61          	addr16 cs fs popa 
c010b36c:	74 61                	je     c010b3cf <__func__.1256+0x14e>
c010b36e:	20 3d 3d 20 72 75    	and    BYTE PTR ds:0x7572203d,bh
c010b374:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b375:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b376:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010b37d:	65 61                	gs popa 
c010b37f:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010b382:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c010b385:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b387:	61                   	popa   
c010b388:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010b38d:	75 65                	jne    c010b3f4 <__func__.1256+0x173>
c010b38f:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c010b395:	70 73                	jo     c010b40a <__func__.1163+0x7>
c010b397:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b399:	61                   	popa   
c010b39a:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010b39f:	75 65                	jne    c010b406 <__func__.1163+0x3>
c010b3a1:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c010b3a7:	70 6c                	jo     c010b415 <__func__.1159+0x5>
c010b3a9:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b3aa:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010b3ad:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010b3b3:	72 5f                	jb     c010b414 <__func__.1159+0x4>
c010b3b5:	72 65                	jb     c010b41c <__func__.1159+0xc>
c010b3b7:	70 65                	jo     c010b41e <__func__.1154+0x1>
c010b3b9:	61                   	popa   
c010b3ba:	74 5f                	je     c010b41b <__func__.1159+0xb>
c010b3bc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b3bd:	72 20                	jb     c010b3df <__func__.1256+0x15e>
c010b3bf:	3d 3d 20 30 00       	cmp    eax,0x30203d
c010b3c4:	70 6c                	jo     c010b432 <__func__.1138+0x3>
c010b3c6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b3c7:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010b3ca:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010b3d0:	72 20                	jb     c010b3f2 <__func__.1256+0x171>
c010b3d2:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c010b3d7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b3d8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b3d9:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010b3e0:	65 61                	gs popa 
c010b3e2:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010b3e5:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c010b3e8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b3e9:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010b3ec:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010b3f2:	72 5f                	jb     c010b453 <__func__.1138+0x24>
c010b3f4:	72 65                	jb     c010b45b <__func__.1138+0x2c>
c010b3f6:	70 65                	jo     c010b45d <__func__.1138+0x2e>
c010b3f8:	61                   	popa   
c010b3f9:	74 5f                	je     c010b45a <__func__.1138+0x2b>
c010b3fb:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b3fc:	72 20                	jb     c010b41e <__func__.1154+0x1>
c010b3fe:	3d 3d 20 31 00       	cmp    eax,0x31203d

c010b403 <__func__.1163>:
c010b403:	6c                   	ins    BYTE PTR es:[edi],dx
c010b404:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b405:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010b408:	72 65                	jb     c010b46f <__func__.1138+0x40>
c010b40a:	6c                   	ins    BYTE PTR es:[edi],dx
c010b40b:	65 61                	gs popa 
c010b40d:	73 65                	jae    c010b474 <__func__.1138+0x45>
	...

c010b410 <__func__.1159>:
c010b410:	6c                   	ins    BYTE PTR es:[edi],dx
c010b411:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b412:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010b415:	61                   	popa   
c010b416:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c010b419:	69 72 65 00 73 65 6d 	imul   esi,DWORD PTR [edx+0x65],0x6d657300

c010b41d <__func__.1154>:
c010b41d:	73 65                	jae    c010b484 <__func__.1138+0x55>
c010b41f:	6d                   	ins    DWORD PTR es:[edi],dx
c010b420:	61                   	popa   
c010b421:	5f                   	pop    edi
c010b422:	75 70                	jne    c010b494 <__func__.1138+0x65>
	...

c010b425 <__func__.1146>:
c010b425:	73 65                	jae    c010b48c <__func__.1138+0x5d>
c010b427:	6d                   	ins    DWORD PTR es:[edi],dx
c010b428:	61                   	popa   
c010b429:	5f                   	pop    edi
c010b42a:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c010b42c:	77 6e                	ja     c010b49c <__func__.1138+0x6d>
	...

c010b42f <__func__.1138>:
c010b42f:	73 65                	jae    c010b496 <__func__.1138+0x67>
c010b431:	6d                   	ins    DWORD PTR es:[edi],dx
c010b432:	61                   	popa   
c010b433:	5f                   	pop    edi
c010b434:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74
c010b43b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010b43e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b43f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b442:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b447:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b449:	20 28                	and    BYTE PTR [eax],ch
c010b44b:	50                   	push   eax
c010b44c:	4b                   	dec    ebx
c010b44d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b44e:	29 20                	sub    DWORD PTR [eax],esp
c010b450:	30 2e                	xor    BYTE PTR [esi],ch
c010b452:	30 2e                	xor    BYTE PTR [esi],ch
c010b454:	31 20                	xor    DWORD PTR [eax],esp
c010b456:	41                   	inc    ecx
c010b457:	75 67                	jne    c010b4c0 <__func__.1138+0x91>
c010b459:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b45c:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010b460:	74 5f                	je     c010b4c1 <__func__.1138+0x92>
c010b462:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010b468:	72 65                	jb     c010b4cf <__func__.1138+0xa0>
c010b46a:	61                   	popa   
c010b46b:	64 79 5f             	fs jns c010b4cd <__func__.1138+0x9e>
c010b46e:	6c                   	ins    BYTE PTR es:[edi],dx
c010b46f:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c010b476:	68 72 65 61 64       	push   0x64616572
c010b47b:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010b480:	65 72 61             	gs jb  c010b4e4 <__func__.1138+0xb5>
c010b483:	6c                   	ins    BYTE PTR es:[edi],dx
c010b484:	5f                   	pop    edi
c010b485:	74 61                	je     c010b4e8 <__func__.1138+0xb9>
c010b487:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b48a:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010b48e:	65 61                	gs popa 
c010b490:	64 2f                	fs das 
c010b492:	74 68                	je     c010b4fc <__func__.1138+0xcd>
c010b494:	72 65                	jb     c010b4fb <__func__.1138+0xcc>
c010b496:	61                   	popa   
c010b497:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c010b49b:	00 21                	add    BYTE PTR [ecx],ah
c010b49d:	6c                   	ins    BYTE PTR es:[edi],dx
c010b49e:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010b4a5:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010b4a8:	61                   	popa   
c010b4a9:	6c                   	ins    BYTE PTR es:[edi],dx
c010b4aa:	6c                   	ins    BYTE PTR es:[edi],dx
c010b4ab:	5f                   	pop    edi
c010b4ac:	6c                   	ins    BYTE PTR es:[edi],dx
c010b4ad:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c010b4b4:	68 72 65 61 64       	push   0x64616572
c010b4b9:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c010b4be:	5f                   	pop    edi
c010b4bf:	74 61                	je     c010b522 <__func__.1138+0xf3>
c010b4c1:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b4c4:	00 4d 61             	add    BYTE PTR [ebp+0x61],cl
c010b4c7:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c010b4ce:	61                   	popa   
c010b4cf:	64 00 00             	add    BYTE PTR fs:[eax],al
c010b4d2:	00 00                	add    BYTE PTR [eax],al
c010b4d4:	63 75 72             	arpl   WORD PTR [ebp+0x72],si
c010b4d7:	5f                   	pop    edi
c010b4d8:	74 68                	je     c010b542 <__func__.1138+0x113>
c010b4da:	72 65                	jb     c010b541 <__func__.1138+0x112>
c010b4dc:	61                   	popa   
c010b4dd:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c010b4e3:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010b4e6:	6d                   	ins    DWORD PTR es:[edi],dx
c010b4e7:	61                   	popa   
c010b4e8:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c010b4ef:	30 
c010b4f0:	78 31                	js     c010b523 <__func__.1138+0xf4>
c010b4f2:	32 33                	xor    dh,BYTE PTR [ebx]
c010b4f4:	34 35                	xor    al,0x35
c010b4f6:	36 37                	ss aaa 
c010b4f8:	38 00                	cmp    BYTE PTR [eax],al
c010b4fa:	00 00                	add    BYTE PTR [eax],al
c010b4fc:	21 28                	and    DWORD PTR [eax],ebp
c010b4fe:	6c                   	ins    BYTE PTR es:[edi],dx
c010b4ff:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010b506:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010b509:	72 65                	jb     c010b570 <__func__.1138+0x141>
c010b50b:	61                   	popa   
c010b50c:	64 79 5f             	fs jns c010b56e <__func__.1138+0x13f>
c010b50f:	6c                   	ins    BYTE PTR es:[edi],dx
c010b510:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c010b517:	75 72                	jne    c010b58b <__func__.1138+0x15c>
c010b519:	5f                   	pop    edi
c010b51a:	74 68                	je     c010b584 <__func__.1138+0x155>
c010b51c:	72 65                	jb     c010b583 <__func__.1138+0x154>
c010b51e:	61                   	popa   
c010b51f:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010b525:	65 72 61             	gs jb  c010b589 <__func__.1138+0x15a>
c010b528:	6c                   	ins    BYTE PTR es:[edi],dx
c010b529:	5f                   	pop    edi
c010b52a:	74 61                	je     c010b58d <__func__.1138+0x15e>
c010b52c:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b52f:	29 00                	sub    DWORD PTR [eax],eax
c010b531:	21 28                	and    DWORD PTR [eax],ebp
c010b533:	6c                   	ins    BYTE PTR es:[edi],dx
c010b534:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c010b53b:	74 79                	je     c010b5b6 <__func__.1138+0x187>
c010b53d:	28 26                	sub    BYTE PTR [esi],ah
c010b53f:	72 65                	jb     c010b5a6 <__func__.1138+0x177>
c010b541:	61                   	popa   
c010b542:	64 79 5f             	fs jns c010b5a4 <__func__.1138+0x175>
c010b545:	6c                   	ins    BYTE PTR es:[edi],dx
c010b546:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c010b54d:	65 61                	gs popa 
c010b54f:	64 79 5f             	fs jns c010b5b1 <__func__.1138+0x182>
c010b552:	6c                   	ins    BYTE PTR es:[edi],dx
c010b553:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c010b55a:	6c                   	ins    BYTE PTR es:[edi],dx
c010b55b:	2e 70 72             	cs jo  c010b5d0 <__func__.1138+0x1a1>
c010b55e:	65 76 20             	gs jbe c010b581 <__func__.1138+0x152>
c010b561:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c010b567:	61                   	popa   
c010b568:	64 79 5f             	fs jns c010b5ca <__func__.1138+0x19b>
c010b56b:	6c                   	ins    BYTE PTR es:[edi],dx
c010b56c:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c010b573:	64 00 00             	add    BYTE PTR fs:[eax],al
c010b576:	00 00                	add    BYTE PTR [eax],al
c010b578:	73 74                	jae    c010b5ee <__func__.1138+0x1bf>
c010b57a:	61                   	popa   
c010b57b:	74 75                	je     c010b5f2 <__func__.1138+0x1c3>
c010b57d:	73 20                	jae    c010b59f <__func__.1138+0x170>
c010b57f:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c010b585:	4b                   	dec    ebx
c010b586:	5f                   	pop    edi
c010b587:	52                   	push   edx
c010b588:	55                   	push   ebp
c010b589:	4e                   	dec    esi
c010b58a:	4e                   	dec    esi
c010b58b:	49                   	dec    ecx
c010b58c:	4e                   	dec    esi
c010b58d:	47                   	inc    edi
c010b58e:	20 26                	and    BYTE PTR [esi],ah
c010b590:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c010b594:	61                   	popa   
c010b595:	74 75                	je     c010b60c <__func__.1138+0x1dd>
c010b597:	73 20                	jae    c010b5b9 <__func__.1138+0x18a>
c010b599:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c010b59f:	4b                   	dec    ebx
c010b5a0:	5f                   	pop    edi
c010b5a1:	52                   	push   edx
c010b5a2:	45                   	inc    ebp
c010b5a3:	41                   	inc    ecx
c010b5a4:	44                   	inc    esp
c010b5a5:	59                   	pop    ecx
c010b5a6:	00 00                	add    BYTE PTR [eax],al
c010b5a8:	63 75 72             	arpl   WORD PTR [ebp+0x72],si
c010b5ab:	5f                   	pop    edi
c010b5ac:	74 68                	je     c010b616 <__func__.1138+0x1e7>
c010b5ae:	72 65                	jb     c010b615 <__func__.1138+0x1e6>
c010b5b0:	61                   	popa   
c010b5b1:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010b5b7:	65 72 61             	gs jb  c010b61b <__func__.1138+0x1ec>
c010b5ba:	6c                   	ins    BYTE PTR es:[edi],dx
c010b5bb:	5f                   	pop    edi
c010b5bc:	74 61                	je     c010b61f <__func__.1138+0x1f0>
c010b5be:	67 2e 64 61          	addr16 cs fs popa 
c010b5c2:	74 61                	je     c010b625 <__func__.1138+0x1f6>
c010b5c4:	20 3d 3d 20 63 75    	and    BYTE PTR ds:0x7563203d,bh
c010b5ca:	72 5f                	jb     c010b62b <__func__.1138+0x1fc>
c010b5cc:	74 68                	je     c010b636 <__func__.1412+0x5>
c010b5ce:	72 65                	jb     c010b635 <__func__.1412+0x4>
c010b5d0:	61                   	popa   
c010b5d1:	64 00 00             	add    BYTE PTR fs:[eax],al
c010b5d4:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010b5d8:	74 5f                	je     c010b639 <__func__.1412+0x8>
c010b5da:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010b5e0:	72 65                	jb     c010b647 <__func__.1405+0x7>
c010b5e2:	61                   	popa   
c010b5e3:	64 79 5f             	fs jns c010b645 <__func__.1405+0x5>
c010b5e6:	6c                   	ins    BYTE PTR es:[edi],dx
c010b5e7:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010b5ee:	74 68                	je     c010b658 <__func__.1393+0x2>
c010b5f0:	72 65                	jb     c010b657 <__func__.1393+0x1>
c010b5f2:	61                   	popa   
c010b5f3:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010b5f9:	65 72 61             	gs jb  c010b65d <__func__.1393+0x7>
c010b5fc:	6c                   	ins    BYTE PTR es:[edi],dx
c010b5fd:	5f                   	pop    edi
c010b5fe:	74 61                	je     c010b661 <__func__.1393+0xb>
c010b600:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b603:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010b607:	65 61                	gs popa 
c010b609:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c010b60d:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010b611:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c010b614:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010b618:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c010b61c:	74 68                	je     c010b686 <__func__.1393+0x30>
c010b61e:	72 65                	jb     c010b685 <__func__.1393+0x2f>
c010b620:	61                   	popa   
c010b621:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c010b625:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c010b628:	61                   	popa   
c010b629:	64 79 20             	fs jns c010b64c <__func__.1405+0xc>
c010b62c:	6c                   	ins    BYTE PTR es:[edi],dx
c010b62d:	69 73 74 00 74 68 72 	imul   esi,DWORD PTR [ebx+0x74],0x72687400

c010b631 <__func__.1412>:
c010b631:	74 68                	je     c010b69b <__func__.1393+0x45>
c010b633:	72 65                	jb     c010b69a <__func__.1393+0x44>
c010b635:	61                   	popa   
c010b636:	64 5f                	fs pop edi
c010b638:	75 6e                	jne    c010b6a8 <__func__.1393+0x52>
c010b63a:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010b63e:	6b 00 74             	imul   eax,DWORD PTR [eax],0x74

c010b640 <__func__.1405>:
c010b640:	74 68                	je     c010b6aa <__func__.1393+0x54>
c010b642:	72 65                	jb     c010b6a9 <__func__.1393+0x53>
c010b644:	61                   	popa   
c010b645:	64 5f                	fs pop edi
c010b647:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010b64b:	6b 00 73             	imul   eax,DWORD PTR [eax],0x73

c010b64d <__func__.1400>:
c010b64d:	73 63                	jae    c010b6b2 <__func__.1393+0x5c>
c010b64f:	68 65 64 75 6c       	push   0x6c756465
c010b654:	65 00 74 68 72       	add    BYTE PTR gs:[eax+ebp*2+0x72],dh

c010b656 <__func__.1393>:
c010b656:	74 68                	je     c010b6c0 <__func__.1393+0x6a>
c010b658:	72 65                	jb     c010b6bf <__func__.1393+0x69>
c010b65a:	61                   	popa   
c010b65b:	64 5f                	fs pop edi
c010b65d:	73 74                	jae    c010b6d3 <__func__.1393+0x7d>
c010b65f:	61                   	popa   
c010b660:	72 74                	jb     c010b6d6 <__func__.1393+0x80>
c010b662:	00 00                	add    BYTE PTR [eax],al
c010b664:	50                   	push   eax
c010b665:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b667:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b66a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b66f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b671:	20 28                	and    BYTE PTR [eax],ch
c010b673:	50                   	push   eax
c010b674:	4b                   	dec    ebx
c010b675:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b676:	29 20                	sub    DWORD PTR [eax],esp
c010b678:	30 2e                	xor    BYTE PTR [esi],ch
c010b67a:	30 2e                	xor    BYTE PTR [esi],ch
c010b67c:	31 20                	xor    DWORD PTR [eax],esp
c010b67e:	41                   	inc    ecx
c010b67f:	75 67                	jne    c010b6e8 <__func__.1393+0x92>
c010b681:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b684:	50                   	push   eax
c010b685:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b687:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b68a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b68f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b691:	20 28                	and    BYTE PTR [eax],ch
c010b693:	50                   	push   eax
c010b694:	4b                   	dec    ebx
c010b695:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b696:	29 20                	sub    DWORD PTR [eax],esp
c010b698:	30 2e                	xor    BYTE PTR [esi],ch
c010b69a:	30 2e                	xor    BYTE PTR [esi],ch
c010b69c:	31 20                	xor    DWORD PTR [eax],esp
c010b69e:	41                   	inc    ecx
c010b69f:	75 67                	jne    c010b708 <__func__.1393+0xb2>
c010b6a1:	2e 00 70 61          	add    BYTE PTR cs:[eax+0x61],dh
c010b6a5:	67 65 5f             	addr16 gs pop edi
c010b6a8:	64 69 72 5f 74 61 62 	imul   esi,DWORD PTR fs:[edx+0x5f],0x6c626174
c010b6af:	6c 
c010b6b0:	65 5f                	gs pop edi
c010b6b2:	70 6f                	jo     c010b723 <__func__.1393+0xcd>
c010b6b4:	73 20                	jae    c010b6d6 <__func__.1393+0x80>
c010b6b6:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c010b6bc:	4c                   	dec    esp
c010b6bd:	00 70 72             	add    BYTE PTR [eax+0x72],dh
c010b6c0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b6c1:	67 2f                	addr16 das 
c010b6c3:	70 72                	jo     c010b737 <__func__.1393+0xe1>
c010b6c5:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b6c6:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010b6c9:	73 2e                	jae    c010b6f9 <__func__.1393+0xa3>
c010b6cb:	63 00                	arpl   WORD PTR [eax],ax
c010b6cd:	70 74                	jo     c010b743 <__func__.1393+0xed>
c010b6cf:	68 72 65 61 64       	push   0x64616572
c010b6d4:	20 21                	and    BYTE PTR [ecx],ah
c010b6d6:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b6db:	4c                   	dec    esp
c010b6dc:	00 00                	add    BYTE PTR [eax],al
c010b6de:	00 00                	add    BYTE PTR [eax],al
c010b6e0:	63 72 65             	arpl   WORD PTR [edx+0x65],si
c010b6e3:	61                   	popa   
c010b6e4:	74 65                	je     c010b74b <__func__.1393+0xf5>
c010b6e6:	5f                   	pop    edi
c010b6e7:	70 61                	jo     c010b74a <__func__.1393+0xf4>
c010b6e9:	67 65 5f             	addr16 gs pop edi
c010b6ec:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c010b6f3:	74 
c010b6f4:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c010b6f7:	72 6e                	jb     c010b767 <__func__.1393+0x111>
c010b6f9:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b6fb:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c010b6fe:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c010b703:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0xa21
c010b70a:	00 
c010b70b:	00 21                	add    BYTE PTR [ecx],ah
c010b70d:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c010b711:	74 5f                	je     c010b772 <__func__.1403+0x8>
c010b713:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010b719:	61                   	popa   
c010b71a:	6c                   	ins    BYTE PTR es:[edi],dx
c010b71b:	6c                   	ins    BYTE PTR es:[edi],dx
c010b71c:	5f                   	pop    edi
c010b71d:	6c                   	ins    BYTE PTR es:[edi],dx
c010b71e:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010b725:	74 68                	je     c010b78f <__func__.1384+0x4>
c010b727:	72 65                	jb     c010b78e <__func__.1384+0x3>
c010b729:	61                   	popa   
c010b72a:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c010b730:	5f                   	pop    edi
c010b731:	74 61                	je     c010b794 <__func__.1384+0x9>
c010b733:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b736:	29 00                	sub    DWORD PTR [eax],eax
c010b738:	21 28                	and    DWORD PTR [eax],ebp
c010b73a:	6c                   	ins    BYTE PTR es:[edi],dx
c010b73b:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010b742:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010b745:	72 65                	jb     c010b7ac <__func__.1384+0x21>
c010b747:	61                   	popa   
c010b748:	64 79 5f             	fs jns c010b7aa <__func__.1384+0x1f>
c010b74b:	6c                   	ins    BYTE PTR es:[edi],dx
c010b74c:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010b753:	74 68                	je     c010b7bd <__func__.1384+0x32>
c010b755:	72 65                	jb     c010b7bc <__func__.1384+0x31>
c010b757:	61                   	popa   
c010b758:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010b75e:	65 72 61             	gs jb  c010b7c2 <__func__.1384+0x37>
c010b761:	6c                   	ins    BYTE PTR es:[edi],dx
c010b762:	5f                   	pop    edi
c010b763:	74 61                	je     c010b7c6 <__func__.1384+0x3b>
c010b765:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b768:	29 00                	sub    DWORD PTR [eax],eax

c010b76a <__func__.1403>:
c010b76a:	70 72                	jo     c010b7de <__func__.1384+0x53>
c010b76c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b76d:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010b770:	73 5f                	jae    c010b7d1 <__func__.1384+0x46>
c010b772:	65 78 65             	gs js  c010b7da <__func__.1384+0x4f>
c010b775:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c010b778:	65 00 70 72          	add    BYTE PTR gs:[eax+0x72],dh

c010b77a <__func__.1388>:
c010b77a:	70 72                	jo     c010b7ee <__func__.1384+0x63>
c010b77c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b77d:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010b780:	73 5f                	jae    c010b7e1 <__func__.1384+0x56>
c010b782:	61                   	popa   
c010b783:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c010b787:	61                   	popa   
c010b788:	74 65                	je     c010b7ef <__func__.1384+0x64>
	...

c010b78b <__func__.1384>:
c010b78b:	70 61                	jo     c010b7ee <__func__.1384+0x63>
c010b78d:	67 65 5f             	addr16 gs pop edi
c010b790:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c010b797:	69 
c010b798:	76 61                	jbe    c010b7fb <__func__.1384+0x70>
c010b79a:	74 65                	je     c010b801 <__func__.1384+0x76>
c010b79c:	00 00                	add    BYTE PTR [eax],al
c010b79e:	00 00                	add    BYTE PTR [eax],al
c010b7a0:	50                   	push   eax
c010b7a1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b7a3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b7a6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b7ab:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b7ad:	20 28                	and    BYTE PTR [eax],ch
c010b7af:	50                   	push   eax
c010b7b0:	4b                   	dec    ebx
c010b7b1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b7b2:	29 20                	sub    DWORD PTR [eax],esp
c010b7b4:	30 2e                	xor    BYTE PTR [esi],ch
c010b7b6:	30 2e                	xor    BYTE PTR [esi],ch
c010b7b8:	31 20                	xor    DWORD PTR [eax],esp
c010b7ba:	41                   	inc    ecx
c010b7bb:	75 67                	jne    c010b824 <__func__.1384+0x99>
c010b7bd:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b7c0:	50                   	push   eax
c010b7c1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b7c3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b7c6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b7cb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b7cd:	20 28                	and    BYTE PTR [eax],ch
c010b7cf:	50                   	push   eax
c010b7d0:	4b                   	dec    ebx
c010b7d1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b7d2:	29 20                	sub    DWORD PTR [eax],esp
c010b7d4:	30 2e                	xor    BYTE PTR [esi],ch
c010b7d6:	30 2e                	xor    BYTE PTR [esi],ch
c010b7d8:	31 20                	xor    DWORD PTR [eax],esp
c010b7da:	41                   	inc    ecx
c010b7db:	75 67                	jne    c010b844 <__func__.1384+0xb9>
c010b7dd:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b7e0:	50                   	push   eax
c010b7e1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
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
c010b7fb:	75 67                	jne    c010b864 <__func__.1183+0x1>
c010b7fd:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b800:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010b806:	74 79                	je     c010b881 <__func__.1183+0x1e>
c010b808:	70 65                	jo     c010b86f <__func__.1183+0xc>
c010b80a:	20 3d 3d 20 38 20    	and    BYTE PTR ds:0x2038203d,bh
c010b810:	7c 7c                	jl     c010b88e <__func__.1183+0x2b>
c010b812:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c010b815:	66 6f                	outs   dx,WORD PTR ds:[esi]
c010b817:	2d 3e 74 79 70       	sub    eax,0x7079743e
c010b81c:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c010b823:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c010b827:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010b82d:	74 79                	je     c010b8a8 <__func__.1183+0x45>
c010b82f:	70 65                	jo     c010b896 <__func__.1183+0x33>
c010b831:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c010b837:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c010b83b:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010b841:	74 79                	je     c010b8bc <__func__.1183+0x59>
c010b843:	70 65                	jo     c010b8aa <__func__.1183+0x47>
c010b845:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c010b84b:	00 64 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],ah
c010b84f:	69 63 65 2f 66 69 66 	imul   esp,DWORD PTR [ebx+0x65],0x6669662f
c010b856:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b857:	2e 63 00             	arpl   WORD PTR cs:[eax],ax

c010b85a <__func__.1194>:
c010b85a:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c010b860:	65 74 00             	gs je  c010b863 <__func__.1183>

c010b863 <__func__.1183>:
c010b863:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c010b869:	75 74                	jne    c010b8df <__func__.1183+0x7c>
c010b86b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010b86e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b86f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b872:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b877:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b879:	20 28                	and    BYTE PTR [eax],ch
c010b87b:	50                   	push   eax
c010b87c:	4b                   	dec    ebx
c010b87d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b87e:	29 20                	sub    DWORD PTR [eax],esp
c010b880:	30 2e                	xor    BYTE PTR [esi],ch
c010b882:	30 2e                	xor    BYTE PTR [esi],ch
c010b884:	31 20                	xor    DWORD PTR [eax],esp
c010b886:	41                   	inc    ecx
c010b887:	75 67                	jne    c010b8f0 <__func__.1183+0x8d>
c010b889:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b88c:	50                   	push   eax
c010b88d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b88f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b892:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b897:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b899:	20 28                	and    BYTE PTR [eax],ch
c010b89b:	50                   	push   eax
c010b89c:	4b                   	dec    ebx
c010b89d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b89e:	29 20                	sub    DWORD PTR [eax],esp
c010b8a0:	30 2e                	xor    BYTE PTR [esi],ch
c010b8a2:	30 2e                	xor    BYTE PTR [esi],ch
c010b8a4:	31 20                	xor    DWORD PTR [eax],esp
c010b8a6:	41                   	inc    ecx
c010b8a7:	75 67                	jne    c010b910 <__func__.1183+0xad>
c010b8a9:	2e 00 00             	add    BYTE PTR cs:[eax],al
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
c010b8c7:	75 67                	jne    c010b930 <__func__.1183+0xcd>
c010b8c9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b8cc:	50                   	push   eax
c010b8cd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b8cf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b8d2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b8d7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b8d9:	20 28                	and    BYTE PTR [eax],ch
c010b8db:	50                   	push   eax
c010b8dc:	4b                   	dec    ebx
c010b8dd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b8de:	29 20                	sub    DWORD PTR [eax],esp
c010b8e0:	30 2e                	xor    BYTE PTR [esi],ch
c010b8e2:	30 2e                	xor    BYTE PTR [esi],ch
c010b8e4:	31 20                	xor    DWORD PTR [eax],esp
c010b8e6:	41                   	inc    ecx
c010b8e7:	75 67                	jne    c010b950 <__func__.1183+0xed>
c010b8e9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b8ec:	50                   	push   eax
c010b8ed:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b8ef:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b8f2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b8f7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b8f9:	20 28                	and    BYTE PTR [eax],ch
c010b8fb:	50                   	push   eax
c010b8fc:	4b                   	dec    ebx
c010b8fd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b8fe:	29 20                	sub    DWORD PTR [eax],esp
c010b900:	30 2e                	xor    BYTE PTR [esi],ch
c010b902:	30 2e                	xor    BYTE PTR [esi],ch
c010b904:	31 20                	xor    DWORD PTR [eax],esp
c010b906:	41                   	inc    ecx
c010b907:	75 67                	jne    c010b970 <__func__.1183+0x10d>
c010b909:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b90c:	50                   	push   eax
c010b90d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b90f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b912:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b917:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b919:	20 28                	and    BYTE PTR [eax],ch
c010b91b:	50                   	push   eax
c010b91c:	4b                   	dec    ebx
c010b91d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b91e:	29 20                	sub    DWORD PTR [eax],esp
c010b920:	30 2e                	xor    BYTE PTR [esi],ch
c010b922:	30 2e                	xor    BYTE PTR [esi],ch
c010b924:	31 20                	xor    DWORD PTR [eax],esp
c010b926:	41                   	inc    ecx
c010b927:	75 67                	jne    c010b990 <__func__.1183+0x12d>
c010b929:	2e 00 73 72          	add    BYTE PTR cs:[ebx+0x72],dh
c010b92d:	63 3a                	arpl   WORD PTR [edx],di
c010b92f:	25 73 20 2d 3e       	and    eax,0x3e2d2073
c010b934:	20 64 73 74          	and    BYTE PTR [ebx+esi*2+0x74],ah
c010b938:	3a 25 73 20 64 65    	cmp    ah,BYTE PTR ds:0x65642073
c010b93e:	61                   	popa   
c010b93f:	64 20 6c 6f 63       	and    BYTE PTR fs:[edi+ebp*2+0x63],ch
c010b944:	6b 00 70             	imul   eax,DWORD PTR [eax],0x70
c010b947:	64 65 73 74          	fs gs jae c010b9bf <__func__.1183+0x15c>
c010b94b:	20 21                	and    BYTE PTR [ecx],ah
c010b94d:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b952:	4c                   	dec    esp
c010b953:	00 73 79             	add    BYTE PTR [ebx+0x79],dh
c010b956:	73 63                	jae    c010b9bb <__func__.1183+0x158>
c010b958:	61                   	popa   
c010b959:	6c                   	ins    BYTE PTR es:[edi],dx
c010b95a:	6c                   	ins    BYTE PTR es:[edi],dx
c010b95b:	2f                   	das    
c010b95c:	73 79                	jae    c010b9d7 <__func__.1183+0x174>
c010b95e:	73 63                	jae    c010b9c3 <__func__.1183+0x160>
c010b960:	61                   	popa   
c010b961:	6c                   	ins    BYTE PTR es:[edi],dx
c010b962:	6c                   	ins    BYTE PTR es:[edi],dx
c010b963:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010b966:	73 65                	jae    c010b9cd <__func__.1183+0x16a>
c010b968:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b969:	64 65 72 20          	fs gs jb c010b98d <__func__.1183+0x12a>
c010b96d:	21 3d 20 70 64 65    	and    DWORD PTR ds:0x65647020,edi
c010b973:	73 74                	jae    c010b9e9 <__func__.1183+0x186>
c010b975:	00 00                	add    BYTE PTR [eax],al
c010b977:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
c010b97a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b97b:	64 65 72 2d          	fs gs jb c010b9ac <__func__.1183+0x149>
c010b97f:	3e 73 65             	ds jae c010b9e7 <__func__.1183+0x184>
c010b982:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b983:	64 5f                	fs pop edi
c010b985:	74 61                	je     c010b9e8 <__func__.1183+0x185>
c010b987:	67 2e 64 61          	addr16 cs fs popa 
c010b98b:	74 61                	je     c010b9ee <__func__.1183+0x18b>
c010b98d:	20 3d 3d 20 73 65    	and    BYTE PTR ds:0x6573203d,bh
c010b993:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b994:	64 65 72 00          	fs gs jb c010b998 <__func__.1183+0x135>
c010b998:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010b99c:	74 5f                	je     c010b9fd <__func__.1183+0x19a>
c010b99e:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010b9a4:	28 70 64             	sub    BYTE PTR [eax+0x64],dh
c010b9a7:	65 73 74             	gs jae c010ba1e <__func__.1183+0x1bb>
c010b9aa:	2d 3e 73 65 6e       	sub    eax,0x6e65733e
c010b9af:	64 65 72 5f          	fs gs jb c010ba12 <__func__.1183+0x1af>
c010b9b3:	6c                   	ins    BYTE PTR es:[edi],dx
c010b9b4:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010b9bb:	73 65                	jae    c010ba22 <__func__.1183+0x1bf>
c010b9bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b9be:	64 65 72 2d          	fs gs jb c010b9ef <__func__.1183+0x18c>
c010b9c2:	3e 73 65             	ds jae c010ba2a <__func__.1183+0x1c7>
c010b9c5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b9c6:	64 5f                	fs pop edi
c010b9c8:	74 61                	je     c010ba2b <__func__.1183+0x1c8>
c010b9ca:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010b9cd:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c010b9d0:	72 63                	jb     c010ba35 <__func__.1298+0x7>
c010b9d2:	20 21                	and    BYTE PTR [ecx],ah
c010b9d4:	3d 20 72 65 63       	cmp    eax,0x63657220
c010b9d9:	65 69 76 65 72 00 70 	imul   esi,DWORD PTR gs:[esi+0x65],0x73700072
c010b9e0:	73 
c010b9e1:	72 63                	jb     c010ba46 <__func__.1272+0x3>
c010b9e3:	20 21                	and    BYTE PTR [ecx],ah
c010b9e5:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b9ea:	4c                   	dec    esp
c010b9eb:	00 28                	add    BYTE PTR [eax],ch
c010b9ed:	66 75 6e             	data16 jne c010ba5e <__func__.1272+0x1b>
c010b9f0:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010b9f4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b9f5:	20 3d 3d 20 53 45    	and    BYTE PTR ds:0x4553203d,bh
c010b9fb:	4e                   	dec    esi
c010b9fc:	44                   	inc    esp
c010b9fd:	29 20                	sub    DWORD PTR [eax],esp
c010b9ff:	7c 7c                	jl     c010ba7d <__func__.1272+0x3a>
c010ba01:	20 28                	and    BYTE PTR [eax],ch
c010ba03:	66 75 6e             	data16 jne c010ba74 <__func__.1272+0x31>
c010ba06:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010ba0a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba0b:	20 3d 3d 20 52 45    	and    BYTE PTR ds:0x4552203d,bh
c010ba11:	43                   	inc    ebx
c010ba12:	45                   	inc    ebp
c010ba13:	49                   	dec    ecx
c010ba14:	56                   	push   esi
c010ba15:	45                   	inc    ebp
c010ba16:	29 20                	sub    DWORD PTR [eax],esp
c010ba18:	7c 7c                	jl     c010ba96 <__func__.1272+0x53>
c010ba1a:	20 28                	and    BYTE PTR [eax],ch
c010ba1c:	66 75 6e             	data16 jne c010ba8d <__func__.1272+0x4a>
c010ba1f:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010ba23:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba24:	20 3d 3d 20 42 4f    	and    BYTE PTR ds:0x4f42203d,bh
c010ba2a:	54                   	push   esp
c010ba2b:	48                   	dec    eax
c010ba2c:	29 00                	sub    DWORD PTR [eax],eax

c010ba2e <__func__.1298>:
c010ba2e:	73 79                	jae    c010baa9 <__func__.1272+0x66>
c010ba30:	73 5f                	jae    c010ba91 <__func__.1272+0x4e>
c010ba32:	73 65                	jae    c010ba99 <__func__.1272+0x56>
c010ba34:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba35:	64 72 65             	fs jb  c010ba9d <__func__.1272+0x5a>
c010ba38:	63 00                	arpl   WORD PTR [eax],ax

c010ba3a <__func__.1283>:
c010ba3a:	6d                   	ins    DWORD PTR es:[edi],dx
c010ba3b:	73 67                	jae    c010baa4 <__func__.1272+0x61>
c010ba3d:	5f                   	pop    edi
c010ba3e:	72 65                	jb     c010baa5 <__func__.1272+0x62>
c010ba40:	63 76 00             	arpl   WORD PTR [esi+0x0],si

c010ba43 <__func__.1272>:
c010ba43:	6d                   	ins    DWORD PTR es:[edi],dx
c010ba44:	73 67                	jae    c010baad <__func__.1272+0x6a>
c010ba46:	5f                   	pop    edi
c010ba47:	73 65                	jae    c010baae <__func__.1272+0x6b>
c010ba49:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba4a:	64 00 50 65          	add    BYTE PTR fs:[eax+0x65],dl
c010ba4e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba4f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ba52:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ba57:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ba59:	20 28                	and    BYTE PTR [eax],ch
c010ba5b:	50                   	push   eax
c010ba5c:	4b                   	dec    ebx
c010ba5d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba5e:	29 20                	sub    DWORD PTR [eax],esp
c010ba60:	30 2e                	xor    BYTE PTR [esi],ch
c010ba62:	30 2e                	xor    BYTE PTR [esi],ch
c010ba64:	31 20                	xor    DWORD PTR [eax],esp
c010ba66:	41                   	inc    ecx
c010ba67:	75 67                	jne    c010bad0 <__func__.1272+0x8d>
c010ba69:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ba6c:	21 28                	and    DWORD PTR [eax],ebp
c010ba6e:	6c                   	ins    BYTE PTR es:[edi],dx
c010ba6f:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010ba76:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010ba79:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010ba7c:	3e 64 65 73 63       	ds fs gs jae c010bae4 <__func__.1272+0xa1>
c010ba81:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010ba86:	65 5f                	gs pop edi
c010ba88:	6c                   	ins    BYTE PTR es:[edi],dx
c010ba89:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010ba90:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010ba96:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c010ba99:	29 00                	sub    DWORD PTR [eax],eax
c010ba9b:	74 61                	je     c010bafe <__func__.1272+0xbb>
c010ba9d:	73 6b                	jae    c010bb0a <__func__.1272+0xc7>
c010ba9f:	2f                   	das    
c010baa0:	6d                   	ins    DWORD PTR es:[edi],dx
c010baa1:	6d                   	ins    DWORD PTR es:[edi],dx
c010baa2:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010baa5:	00 00                	add    BYTE PTR [eax],al
c010baa7:	00 61 2d             	add    BYTE PTR [ecx+0x2d],ah
c010baaa:	3e 64 65 73 63       	ds fs gs jae c010bb12 <__func__.1272+0xcf>
c010baaf:	20 3d 3d 20 4e 55    	and    BYTE PTR ds:0x554e203d,bh
c010bab5:	4c                   	dec    esp
c010bab6:	4c                   	dec    esp
c010bab7:	20 26                	and    BYTE PTR [esi],ah
c010bab9:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010babd:	3e 63 6e 74          	arpl   WORD PTR ds:[esi+0x74],bp
c010bac1:	20 3d 3d 20 70 67    	and    BYTE PTR ds:0x6770203d,bh
c010bac7:	5f                   	pop    edi
c010bac8:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010bacb:	20 26                	and    BYTE PTR [esi],ah
c010bacd:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010bad1:	3e 6c                	ds ins BYTE PTR es:[edi],dx
c010bad3:	61                   	popa   
c010bad4:	72 67                	jb     c010bb3d <__func__.1272+0xfa>
c010bad6:	65 20 3d 3d 20 74 72 	and    BYTE PTR gs:0x7274203d,bh
c010badd:	75 65                	jne    c010bb44 <__func__.1445+0x1>
c010badf:	00 6c 69 73          	add    BYTE PTR [ecx+ebp*2+0x73],ch
c010bae3:	74 5f                	je     c010bb44 <__func__.1445+0x1>
c010bae5:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010baeb:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010baee:	3e 64 65 73 63       	ds fs gs jae c010bb56 <__func__.1417+0x1>
c010baf3:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010baf8:	65 5f                	gs pop edi
c010bafa:	6c                   	ins    BYTE PTR es:[edi],dx
c010bafb:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010bb02:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010bb08:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c010bb0b:	00 70 74             	add    BYTE PTR [eax+0x74],dh
c010bb0e:	65 20 72 65          	and    BYTE PTR gs:[edx+0x65],dh
c010bb12:	70 65                	jo     c010bb79 <__func__.1403+0x1c>
c010bb14:	61                   	popa   
c010bb15:	74 21                	je     c010bb38 <__func__.1272+0xf5>
c010bb17:	28 76 61             	sub    BYTE PTR [esi+0x61],dh
c010bb1a:	64 64 72 3a          	fs fs jb c010bb58 <__func__.1417+0x3>
c010bb1e:	20 25 70 2c 20 70    	and    BYTE PTR ds:0x70202c70,ah
c010bb24:	61                   	popa   
c010bb25:	64 64 72 3a          	fs fs jb c010bb63 <__func__.1403+0x6>
c010bb29:	20 25 70 29 00 21    	and    BYTE PTR ds:0x21002970,ah
c010bb2f:	28 2a                	sub    BYTE PTR [edx],ch
c010bb31:	70 74                	jo     c010bba7 <__func__.1403+0x4a>
c010bb33:	65 20 26             	and    BYTE PTR gs:[esi],ah
c010bb36:	20 30                	and    BYTE PTR [eax],dh
c010bb38:	78 30                	js     c010bb6a <__func__.1403+0xd>
c010bb3a:	30 30                	xor    BYTE PTR [eax],dh
c010bb3c:	30 30                	xor    BYTE PTR [eax],dh
c010bb3e:	30 30                	xor    BYTE PTR [eax],dh
c010bb40:	31 29                	xor    DWORD PTR [ecx],ebp
	...

c010bb43 <__func__.1445>:
c010bb43:	6d                   	ins    DWORD PTR es:[edi],dx
c010bb44:	6d                   	ins    DWORD PTR es:[edi],dx
c010bb45:	5f                   	pop    edi
c010bb46:	70 61                	jo     c010bba9 <__func__.1403+0x4c>
c010bb48:	67 65 5f             	addr16 gs pop edi
c010bb4b:	74 61                	je     c010bbae <__func__.1403+0x51>
c010bb4d:	62 6c 65 5f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x5f]
c010bb51:	61                   	popa   
c010bb52:	64 64 00 6d 6d       	fs add BYTE PTR fs:[ebp+0x6d],ch

c010bb55 <__func__.1417>:
c010bb55:	6d                   	ins    DWORD PTR es:[edi],dx
c010bb56:	6d                   	ins    DWORD PTR es:[edi],dx
c010bb57:	5f                   	pop    edi
c010bb58:	66 72 65             	data16 jb c010bbc0 <__func__.1403+0x63>
c010bb5b:	65 00 6d 6d          	add    BYTE PTR gs:[ebp+0x6d],ch

c010bb5d <__func__.1403>:
c010bb5d:	6d                   	ins    DWORD PTR es:[edi],dx
c010bb5e:	6d                   	ins    DWORD PTR es:[edi],dx
c010bb5f:	5f                   	pop    edi
c010bb60:	6d                   	ins    DWORD PTR es:[edi],dx
c010bb61:	61                   	popa   
c010bb62:	6c                   	ins    BYTE PTR es:[edi],dx
c010bb63:	6c                   	ins    BYTE PTR es:[edi],dx
c010bb64:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bb65:	63 00                	arpl   WORD PTR [eax],ax
c010bb67:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010bb6a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bb6b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bb6e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bb73:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bb75:	20 28                	and    BYTE PTR [eax],ch
c010bb77:	50                   	push   eax
c010bb78:	4b                   	dec    ebx
c010bb79:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bb7a:	29 20                	sub    DWORD PTR [eax],esp
c010bb7c:	30 2e                	xor    BYTE PTR [esi],ch
c010bb7e:	30 2e                	xor    BYTE PTR [esi],ch
c010bb80:	31 20                	xor    DWORD PTR [eax],esp
c010bb82:	41                   	inc    ecx
c010bb83:	75 67                	jne    c010bbec <__func__.1403+0x8f>
c010bb85:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bb88:	50                   	push   eax
c010bb89:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bb8b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bb8e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bb93:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bb95:	20 28                	and    BYTE PTR [eax],ch
c010bb97:	50                   	push   eax
c010bb98:	4b                   	dec    ebx
c010bb99:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bb9a:	29 20                	sub    DWORD PTR [eax],esp
c010bb9c:	30 2e                	xor    BYTE PTR [esi],ch
c010bb9e:	30 2e                	xor    BYTE PTR [esi],ch
c010bba0:	31 20                	xor    DWORD PTR [eax],esp
c010bba2:	41                   	inc    ecx
c010bba3:	75 67                	jne    c010bc0c <__func__.1403+0xaf>
c010bba5:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bba8:	50                   	push   eax
c010bba9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bbab:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bbae:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bbb3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bbb5:	20 28                	and    BYTE PTR [eax],ch
c010bbb7:	50                   	push   eax
c010bbb8:	4b                   	dec    ebx
c010bbb9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bbba:	29 20                	sub    DWORD PTR [eax],esp
c010bbbc:	30 2e                	xor    BYTE PTR [esi],ch
c010bbbe:	30 2e                	xor    BYTE PTR [esi],ch
c010bbc0:	31 20                	xor    DWORD PTR [eax],esp
c010bbc2:	41                   	inc    ecx
c010bbc3:	75 67                	jne    c010bc2c <__func__.1403+0xcf>
c010bbc5:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bbc8:	50                   	push   eax
c010bbc9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bbcb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bbce:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bbd3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bbd5:	20 28                	and    BYTE PTR [eax],ch
c010bbd7:	50                   	push   eax
c010bbd8:	4b                   	dec    ebx
c010bbd9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bbda:	29 20                	sub    DWORD PTR [eax],esp
c010bbdc:	30 2e                	xor    BYTE PTR [esi],ch
c010bbde:	30 2e                	xor    BYTE PTR [esi],ch
c010bbe0:	31 20                	xor    DWORD PTR [eax],esp
c010bbe2:	41                   	inc    ecx
c010bbe3:	75 67                	jne    c010bc4c <__func__.870+0xf>
c010bbe5:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bbe8:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c010bbeb:	65 5f                	gs pop edi
c010bbed:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c010bbf4:	20 28                	and    BYTE PTR [eax],ch
c010bbf6:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c010bbfa:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c010bbff:	70 5f                	jo     c010bc60 <__func__.870+0x23>
c010bc01:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c010bc04:	65 73 5f             	gs jae c010bc66 <__func__.870+0x29>
c010bc07:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc08:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bc0a:	29 00                	sub    DWORD PTR [eax],eax
c010bc0c:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc0d:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c010bc14:	61                   	popa   
c010bc15:	70 2e                	jo     c010bc45 <__func__.870+0x8>
c010bc17:	63 00                	arpl   WORD PTR [eax],ax
c010bc19:	76 61                	jbe    c010bc7c <__func__.870+0x3f>
c010bc1b:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc1c:	75 65                	jne    c010bc83 <__func__.870+0x46>
c010bc1e:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c010bc24:	7c 7c                	jl     c010bca2 <__func__.870+0x65>
c010bc26:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c010bc29:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc2a:	75 65                	jne    c010bc91 <__func__.870+0x54>
c010bc2c:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh

c010bc32 <__func__.887>:
c010bc32:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010bc35:	6d                   	ins    DWORD PTR es:[edi],dx
c010bc36:	61                   	popa   
c010bc37:	70 5f                	jo     c010bc98 <__func__.870+0x5b>
c010bc39:	73 65                	jae    c010bca0 <__func__.870+0x63>
c010bc3b:	74 00                	je     c010bc3d <__func__.870>

c010bc3d <__func__.870>:
c010bc3d:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010bc40:	6d                   	ins    DWORD PTR es:[edi],dx
c010bc41:	61                   	popa   
c010bc42:	70 5f                	jo     c010bca3 <__func__.870+0x66>
c010bc44:	61                   	popa   
c010bc45:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc46:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc47:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bc48:	63 00                	arpl   WORD PTR [eax],ax
c010bc4a:	00 00                	add    BYTE PTR [eax],al
c010bc4c:	50                   	push   eax
c010bc4d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bc4f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bc52:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bc57:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bc59:	20 28                	and    BYTE PTR [eax],ch
c010bc5b:	50                   	push   eax
c010bc5c:	4b                   	dec    ebx
c010bc5d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bc5e:	29 20                	sub    DWORD PTR [eax],esp
c010bc60:	30 2e                	xor    BYTE PTR [esi],ch
c010bc62:	30 2e                	xor    BYTE PTR [esi],ch
c010bc64:	31 20                	xor    DWORD PTR [eax],esp
c010bc66:	41                   	inc    ecx
c010bc67:	75 67                	jne    c010bcd0 <__func__.870+0x93>
c010bc69:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bc6c:	50                   	push   eax
c010bc6d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bc6f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bc72:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bc77:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bc79:	20 28                	and    BYTE PTR [eax],ch
c010bc7b:	50                   	push   eax
c010bc7c:	4b                   	dec    ebx
c010bc7d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bc7e:	29 20                	sub    DWORD PTR [eax],esp
c010bc80:	30 2e                	xor    BYTE PTR [esi],ch
c010bc82:	30 2e                	xor    BYTE PTR [esi],ch
c010bc84:	31 20                	xor    DWORD PTR [eax],esp
c010bc86:	41                   	inc    ecx
c010bc87:	75 67                	jne    c010bcf0 <__func__.870+0xb3>
c010bc89:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bc8c:	b8 71 10 c0 33       	mov    eax,0x33c01071
c010bc91:	71 10                	jno    c010bca3 <__func__.870+0x66>
c010bc93:	c0                   	(bad)  
c010bc94:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bc97:	c0                   	(bad)  
c010bc98:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bc9b:	c0                   	(bad)  
c010bc9c:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bc9f:	c0                   	(bad)  
c010bca0:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bca3:	c0                   	(bad)  
c010bca4:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bca7:	c0                   	(bad)  
c010bca8:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bcab:	c0 db 70             	rcr    bl,0x70
c010bcae:	10 c0                	adc    al,al
c010bcb0:	25 71 10 c0 f5       	and    eax,0xf5c01071
c010bcb5:	70 10                	jo     c010bcc7 <__func__.870+0x8a>
c010bcb7:	c0                   	(bad)  
c010bcb8:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bcbb:	c0                   	(bad)  
c010bcbc:	33 71 10             	xor    esi,DWORD PTR [ecx+0x10]
c010bcbf:	c0                   	(bad)  
c010bcc0:	f5                   	cmc    
c010bcc1:	70 10                	jo     c010bcd3 <__func__.870+0x96>
c010bcc3:	c0 50 65 6e          	rcl    BYTE PTR [eax+0x65],0x6e
c010bcc7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bcca:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bccf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bcd1:	20 28                	and    BYTE PTR [eax],ch
c010bcd3:	50                   	push   eax
c010bcd4:	4b                   	dec    ebx
c010bcd5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bcd6:	29 20                	sub    DWORD PTR [eax],esp
c010bcd8:	30 2e                	xor    BYTE PTR [esi],ch
c010bcda:	30 2e                	xor    BYTE PTR [esi],ch
c010bcdc:	31 20                	xor    DWORD PTR [eax],esp
c010bcde:	41                   	inc    ecx
c010bcdf:	75 67                	jne    c010bd48 <__func__.854+0x5>
c010bce1:	2e 00 64 73 74       	add    BYTE PTR cs:[ebx+esi*2+0x74],ah
c010bce6:	5f                   	pop    edi
c010bce7:	5f                   	pop    edi
c010bce8:	20 21                	and    BYTE PTR [ecx],ah
c010bcea:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010bcef:	4c                   	dec    esp
c010bcf0:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c010bcf4:	63 2f                	arpl   WORD PTR [edi],bp
c010bcf6:	73 74                	jae    c010bd6c <__func__.843+0x22>
c010bcf8:	72 69                	jb     c010bd63 <__func__.843+0x19>
c010bcfa:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bcfb:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c010bcff:	00 64 73 74          	add    BYTE PTR [ebx+esi*2+0x74],ah
c010bd03:	5f                   	pop    edi
c010bd04:	5f                   	pop    edi
c010bd05:	20 21                	and    BYTE PTR [ecx],ah
c010bd07:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010bd0c:	4c                   	dec    esp
c010bd0d:	20 26                	and    BYTE PTR [esi],ah
c010bd0f:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c010bd13:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c010bd16:	20 21                	and    BYTE PTR [ecx],ah
c010bd18:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010bd1d:	4c                   	dec    esp
c010bd1e:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c010bd21:	5f                   	pop    edi
c010bd22:	5f                   	pop    edi
c010bd23:	20 21                	and    BYTE PTR [ecx],ah
c010bd25:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010bd2a:	4c                   	dec    esp
c010bd2b:	20 26                	and    BYTE PTR [esi],ah
c010bd2d:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c010bd31:	5f                   	pop    edi
c010bd32:	5f                   	pop    edi
c010bd33:	20 21                	and    BYTE PTR [ecx],ah
c010bd35:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010bd3a:	4c                   	dec    esp
	...

c010bd3c <__func__.866>:
c010bd3c:	6d                   	ins    DWORD PTR es:[edi],dx
c010bd3d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bd3f:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
	...

c010bd43 <__func__.854>:
c010bd43:	6d                   	ins    DWORD PTR es:[edi],dx
c010bd44:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bd46:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c010bd4a <__func__.843>:
c010bd4a:	6d                   	ins    DWORD PTR es:[edi],dx
c010bd4b:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bd4d:	73 65                	jae    c010bdb4 <__func__.843+0x6a>
c010bd4f:	74 00                	je     c010bd51 <__func__.843+0x7>
c010bd51:	00 00                	add    BYTE PTR [eax],al
c010bd53:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010bd56:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bd57:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bd5a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bd5f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bd61:	20 28                	and    BYTE PTR [eax],ch
c010bd63:	50                   	push   eax
c010bd64:	4b                   	dec    ebx
c010bd65:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bd66:	29 20                	sub    DWORD PTR [eax],esp
c010bd68:	30 2e                	xor    BYTE PTR [esi],ch
c010bd6a:	30 2e                	xor    BYTE PTR [esi],ch
c010bd6c:	31 20                	xor    DWORD PTR [eax],esp
c010bd6e:	41                   	inc    ecx
c010bd6f:	75 67                	jne    c010bdd8 <_erodata+0x1>
c010bd71:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bd74:	3d 78 10 c0 30       	cmp    eax,0x30c01078
c010bd79:	78 10                	js     c010bd8b <__func__.843+0x41>
c010bd7b:	c0                   	(bad)  
c010bd7c:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bd7f:	c0 3d 78 10 c0 30 78 	sar    BYTE PTR ds:0x30c01078,0x78
c010bd86:	10 c0                	adc    al,al
c010bd88:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bd8b:	c0                   	(bad)  
c010bd8c:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bd8f:	c0                   	(bad)  
c010bd90:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bd93:	c0                   	(bad)  
c010bd94:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bd97:	c0                   	(bad)  
c010bd98:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bd9b:	c0                   	(bad)  
c010bd9c:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bd9f:	c0 18 78             	rcr    BYTE PTR [eax],0x78
c010bda2:	10 c0                	adc    al,al
c010bda4:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bda7:	c0 21 78             	shl    BYTE PTR [ecx],0x78
c010bdaa:	10 c0                	adc    al,al
c010bdac:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bdaf:	c0                   	(bad)  
c010bdb0:	30 78 10             	xor    BYTE PTR [eax+0x10],bh
c010bdb3:	c0 2a 78             	shr    BYTE PTR [edx],0x78
c010bdb6:	10 c0                	adc    al,al
c010bdb8:	50                   	push   eax
c010bdb9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bdbb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bdbe:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bdc3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bdc5:	20 28                	and    BYTE PTR [eax],ch
c010bdc7:	50                   	push   eax
c010bdc8:	4b                   	dec    ebx
c010bdc9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bdca:	29 20                	sub    DWORD PTR [eax],esp
c010bdcc:	30 2e                	xor    BYTE PTR [esi],ch
c010bdce:	30 2e                	xor    BYTE PTR [esi],ch
c010bdd0:	31 20                	xor    DWORD PTR [eax],esp
c010bdd2:	41                   	inc    ecx
c010bdd3:	75 67                	jne    c010be3c <pid_pool+0x1c>
c010bdd5:	2e                   	cs
	...

Disassembly of section .bss:

c010bde0 <_bss>:
	...

c010be00 <this_thread_tag>:
	...

c010be20 <pid_pool>:
	...

c010be60 <tss>:
	...

c010bee0 <console_lock>:
	...

c010bf20 <buf>:
	...

c010bf60 <ctrl_status>:
c010bf60:	00 00                	add    BYTE PTR [eax],al
	...

c010bf64 <shift_status>:
c010bf64:	00 00                	add    BYTE PTR [eax],al
	...

c010bf68 <alt_status>:
c010bf68:	00 00                	add    BYTE PTR [eax],al
	...

c010bf6c <casplock_status>:
c010bf6c:	00 00                	add    BYTE PTR [eax],al
	...

c010bf70 <ext_scandcode>:
c010bf70:	00 00                	add    BYTE PTR [eax],al
	...

c010bf74 <i>:
c010bf74:	00 00                	add    BYTE PTR [eax],al
	...

c010bf78 <MouseData>:
	...

c010bf8c <ticks>:
	...

c010bf94 <_ebss>:
	...

c010bfa0 <intr_name>:
	...

c010c0e0 <idt>:
	...

c010c360 <idt_table>:
	...

c010c4a0 <kvinfo>:
	...

c010e3e0 <k_desc>:
	...

c010e4a0 <user_pool>:
	...

c010e4e0 <kernel_vaddr>:
	...

c010e520 <upinfo>:
	...

c0110460 <kpinfo>:
	...

c01123a0 <kernel_pool>:
	...

c01123dc <ready_list>:
	...

c01123f4 <all_list>:
	...

c011240c <main_thread>:
	...

c0112420 <keybuf>:
	...

c0112464 <pid_table>:
	...

c0112480 <background>:
	...

c01124a0 <Screen_Ctl>:
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
