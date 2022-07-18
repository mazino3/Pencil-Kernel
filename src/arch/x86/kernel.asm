
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
c0100013:	e9 86 04 00 00       	jmp    c010049e <kernel_main>
c0100018:	e9 fb ff ff ff       	jmp    c0100018 <_start+0x18>
c010001d:	00 00                	add    BYTE PTR [eax],al
	...

c0100020 <u_prog_a>:
c0100020:	55                   	push   ebp
c0100021:	b8 08 00 00 00       	mov    eax,0x8
c0100026:	89 e5                	mov    ebp,esp
c0100028:	53                   	push   ebx
c0100029:	bb 05 00 00 00       	mov    ebx,0x5
c010002e:	83 ec 30             	sub    esp,0x30
c0100031:	8d 4d cc             	lea    ecx,[ebp-0x34]
c0100034:	cd 4d                	int    0x4d
c0100036:	a3 8c 8a 10 c0       	mov    ds:0xc0108a8c,eax
c010003b:	eb fe                	jmp    c010003b <u_prog_a+0x1b>

c010003d <u_prog_b>:
c010003d:	55                   	push   ebp
c010003e:	31 c9                	xor    ecx,ecx
c0100040:	89 e5                	mov    ebp,esp
c0100042:	b8 09 00 00 00       	mov    eax,0x9
c0100047:	53                   	push   ebx
c0100048:	bb b0 78 10 c0       	mov    ebx,0xc01078b0
c010004d:	cd 4d                	int    0x4d
c010004f:	a3 88 8a 10 c0       	mov    ds:0xc0108a88,eax
c0100054:	eb fe                	jmp    c0100054 <u_prog_b+0x17>

c0100056 <View_thread>:
c0100056:	55                   	push   ebp
c0100057:	89 e5                	mov    ebp,esp
c0100059:	57                   	push   edi
c010005a:	56                   	push   esi
c010005b:	53                   	push   ebx
c010005c:	83 ec 44             	sub    esp,0x44
c010005f:	6a 10                	push   0x10
c0100061:	6a 10                	push   0x10
c0100063:	e8 4a 39 00 00       	call   c01039b2 <viewblock_init>
c0100068:	83 c4 10             	add    esp,0x10
c010006b:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [ebp-0x40],0x0
c0100072:	89 c7                	mov    edi,eax
c0100074:	31 c0                	xor    eax,eax
c0100076:	eb 5d                	jmp    c01000d5 <View_thread+0x7f>
c0100078:	8b 5d c0             	mov    ebx,DWORD PTR [ebp-0x40]
c010007b:	8a 9c 0b e8 79 10 c0 	mov    bl,BYTE PTR [ebx+ecx*1-0x3fef8618]
c0100082:	80 fb 23             	cmp    bl,0x23
c0100085:	88 5d c7             	mov    BYTE PTR [ebp-0x39],bl
c0100088:	75 0e                	jne    c0100098 <View_thread+0x42>
c010008a:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
c010008d:	01 c6                	add    esi,eax
c010008f:	c7 04 16 ff ff ff 00 	mov    DWORD PTR [esi+edx*1],0xffffff
c0100096:	eb 26                	jmp    c01000be <View_thread+0x68>
c0100098:	80 7d c7 2d          	cmp    BYTE PTR [ebp-0x39],0x2d
c010009c:	75 0e                	jne    c01000ac <View_thread+0x56>
c010009e:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
c01000a1:	01 c6                	add    esi,eax
c01000a3:	c7 04 16 00 00 00 ff 	mov    DWORD PTR [esi+edx*1],0xff000000
c01000aa:	eb 12                	jmp    c01000be <View_thread+0x68>
c01000ac:	80 7d c7 2a          	cmp    BYTE PTR [ebp-0x39],0x2a
c01000b0:	75 0c                	jne    c01000be <View_thread+0x68>
c01000b2:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
c01000b5:	01 c6                	add    esi,eax
c01000b7:	c7 04 16 84 84 84 00 	mov    DWORD PTR [esi+edx*1],0x848484
c01000be:	41                   	inc    ecx
c01000bf:	83 c2 04             	add    edx,0x4
c01000c2:	83 f9 10             	cmp    ecx,0x10
c01000c5:	75 b1                	jne    c0100078 <View_thread+0x22>
c01000c7:	83 c0 40             	add    eax,0x40
c01000ca:	83 45 c0 10          	add    DWORD PTR [ebp-0x40],0x10
c01000ce:	3d 00 04 00 00       	cmp    eax,0x400
c01000d3:	74 06                	je     c01000db <View_thread+0x85>
c01000d5:	31 d2                	xor    edx,edx
c01000d7:	31 c9                	xor    ecx,ecx
c01000d9:	eb 9d                	jmp    c0100078 <View_thread+0x22>
c01000db:	a1 b4 09 12 c0       	mov    eax,ds:0xc01209b4
c01000e0:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c01000e3:	51                   	push   ecx
c01000e4:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
c01000e7:	49                   	dec    ecx
c01000e8:	51                   	push   ecx
c01000e9:	8d 4a ff             	lea    ecx,[edx-0x1]
c01000ec:	51                   	push   ecx
c01000ed:	6a 00                	push   0x0
c01000ef:	6a 00                	push   0x0
c01000f1:	68 84 84 00 00       	push   0x8484
c01000f6:	52                   	push   edx
c01000f7:	ff 70 04             	push   DWORD PTR [eax+0x4]
c01000fa:	e8 42 3e 00 00       	call   c0103f41 <viewFill>
c01000ff:	83 c4 18             	add    esp,0x18
c0100102:	6a 00                	push   0x0
c0100104:	ff 35 b4 09 12 c0    	push   DWORD PTR ds:0xc01209b4
c010010a:	e8 6a 3c 00 00       	call   c0103d79 <viewUpdown>
c010010f:	83 c4 0c             	add    esp,0xc
c0100112:	6a 00                	push   0x0
c0100114:	6a 00                	push   0x0
c0100116:	ff 35 b4 09 12 c0    	push   DWORD PTR ds:0xc01209b4
c010011c:	e8 be 3b 00 00       	call   c0103cdf <viewSlide>
c0100121:	5b                   	pop    ebx
c0100122:	5e                   	pop    esi
c0100123:	57                   	push   edi
c0100124:	68 b8 09 12 c0       	push   0xc01209b8
c0100129:	e8 fb 38 00 00       	call   c0103a29 <viewInsert>
c010012e:	58                   	pop    eax
c010012f:	a1 e4 09 12 c0       	mov    eax,ds:0xc01209e4
c0100134:	5a                   	pop    edx
c0100135:	48                   	dec    eax
c0100136:	50                   	push   eax
c0100137:	57                   	push   edi
c0100138:	e8 3c 3c 00 00       	call   c0103d79 <viewUpdown>
c010013d:	8b 1d 24 7c 00 c0    	mov    ebx,DWORD PTR ds:0xc0007c24
c0100143:	83 c4 0c             	add    esp,0xc
c0100146:	8b 35 28 7c 00 c0    	mov    esi,DWORD PTR ds:0xc0007c28
c010014c:	d1 eb                	shr    ebx,1
c010014e:	d1 ee                	shr    esi,1
c0100150:	56                   	push   esi
c0100151:	53                   	push   ebx
c0100152:	57                   	push   edi
c0100153:	e8 87 3b 00 00       	call   c0103cdf <viewSlide>
c0100158:	83 c4 10             	add    esp,0x10
c010015b:	a1 e4 09 12 c0       	mov    eax,ds:0xc01209e4
c0100160:	52                   	push   edx
c0100161:	52                   	push   edx
c0100162:	48                   	dec    eax
c0100163:	50                   	push   eax
c0100164:	57                   	push   edi
c0100165:	e8 0f 3c 00 00       	call   c0103d79 <viewUpdown>
c010016a:	8d 45 d4             	lea    eax,[ebp-0x2c]
c010016d:	89 04 24             	mov    DWORD PTR [esp],eax
c0100170:	e8 8f 2b 00 00       	call   c0102d04 <get_mouse>
c0100175:	83 c4 0c             	add    esp,0xc
c0100178:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c010017c:	74 dd                	je     c010015b <View_thread+0x105>
c010017e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0100181:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0100184:	01 f0                	add    eax,esi
c0100186:	89 c6                	mov    esi,eax
c0100188:	01 da                	add    edx,ebx
c010018a:	f7 d6                	not    esi
c010018c:	89 d3                	mov    ebx,edx
c010018e:	c1 fe 1f             	sar    esi,0x1f
c0100191:	f7 d3                	not    ebx
c0100193:	21 c6                	and    esi,eax
c0100195:	a1 ec 09 12 c0       	mov    eax,ds:0xc01209ec
c010019a:	c1 fb 1f             	sar    ebx,0x1f
c010019d:	21 d3                	and    ebx,edx
c010019f:	8d 50 fe             	lea    edx,[eax-0x2]
c01001a2:	39 da                	cmp    edx,ebx
c01001a4:	7f 03                	jg     c01001a9 <View_thread+0x153>
c01001a6:	8d 58 fd             	lea    ebx,[eax-0x3]
c01001a9:	a1 f0 09 12 c0       	mov    eax,ds:0xc01209f0
c01001ae:	8d 50 fe             	lea    edx,[eax-0x2]
c01001b1:	39 f2                	cmp    edx,esi
c01001b3:	7f 03                	jg     c01001b8 <View_thread+0x162>
c01001b5:	8d 70 fd             	lea    esi,[eax-0x3]
c01001b8:	50                   	push   eax
c01001b9:	eb 95                	jmp    c0100150 <View_thread+0xfa>

c01001bb <shell>:
c01001bb:	55                   	push   ebp
c01001bc:	89 e5                	mov    ebp,esp
c01001be:	57                   	push   edi
c01001bf:	56                   	push   esi
c01001c0:	53                   	push   ebx
c01001c1:	bb 64 00 00 00       	mov    ebx,0x64
c01001c6:	83 ec 24             	sub    esp,0x24
c01001c9:	68 bd 78 10 c0       	push   0xc01078bd
c01001ce:	6a 07                	push   0x7
c01001d0:	e8 6e 26 00 00       	call   c0102843 <console_str>
c01001d5:	8d 7d e7             	lea    edi,[ebp-0x19]
c01001d8:	83 c4 10             	add    esp,0x10
c01001db:	be 14 00 00 00       	mov    esi,0x14
c01001e0:	83 ec 0c             	sub    esp,0xc
c01001e3:	68 48 09 12 c0       	push   0xc0120948
c01001e8:	e8 87 30 00 00       	call   c0103274 <fifo_empty>
c01001ed:	83 c4 10             	add    esp,0x10
c01001f0:	85 c0                	test   eax,eax
c01001f2:	75 ec                	jne    c01001e0 <shell+0x25>
c01001f4:	50                   	push   eax
c01001f5:	50                   	push   eax
c01001f6:	57                   	push   edi
c01001f7:	68 48 09 12 c0       	push   0xc0120948
c01001fc:	e8 72 2f 00 00       	call   c0103173 <fifo_get>
c0100201:	58                   	pop    eax
c0100202:	0f be 45 e7          	movsx  eax,BYTE PTR [ebp-0x19]
c0100206:	5a                   	pop    edx
c0100207:	50                   	push   eax
c0100208:	6a 07                	push   0x7
c010020a:	e8 f6 25 00 00       	call   c0102805 <console_char>
c010020f:	59                   	pop    ecx
c0100210:	58                   	pop    eax
c0100211:	0f be 45 e7          	movsx  eax,BYTE PTR [ebp-0x19]
c0100215:	50                   	push   eax
c0100216:	68 ff ff ff 00       	push   0xffffff
c010021b:	53                   	push   ebx
c010021c:	56                   	push   esi
c010021d:	83 c6 08             	add    esi,0x8
c0100220:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0100226:	68 00 00 00 e0       	push   0xe0000000
c010022b:	e8 68 3d 00 00       	call   c0103f98 <vput_char>
c0100230:	83 c4 20             	add    esp,0x20
c0100233:	80 7d e7 0d          	cmp    BYTE PTR [ebp-0x19],0xd
c0100237:	75 a7                	jne    c01001e0 <shell+0x25>
c0100239:	51                   	push   ecx
c010023a:	83 c3 10             	add    ebx,0x10
c010023d:	51                   	push   ecx
c010023e:	68 c6 78 10 c0       	push   0xc01078c6
c0100243:	6a 07                	push   0x7
c0100245:	e8 f9 25 00 00       	call   c0102843 <console_str>
c010024a:	83 c4 10             	add    esp,0x10
c010024d:	eb 8c                	jmp    c01001db <shell+0x20>

c010024f <k_thread_a>:
c010024f:	55                   	push   ebp
c0100250:	89 e5                	mov    ebp,esp
c0100252:	57                   	push   edi
c0100253:	56                   	push   esi
c0100254:	31 f6                	xor    esi,esi
c0100256:	53                   	push   ebx
c0100257:	83 ec 64             	sub    esp,0x64
c010025a:	a1 b4 09 12 c0       	mov    eax,ds:0xc01209b4
c010025f:	6a 32                	push   0x32
c0100261:	ff 70 14             	push   DWORD PTR [eax+0x14]
c0100264:	e8 49 37 00 00       	call   c01039b2 <viewblock_init>
c0100269:	83 c4 0c             	add    esp,0xc
c010026c:	89 c3                	mov    ebx,eax
c010026e:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100271:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
c0100274:	4a                   	dec    edx
c0100275:	52                   	push   edx
c0100276:	8d 50 ff             	lea    edx,[eax-0x1]
c0100279:	52                   	push   edx
c010027a:	6a 00                	push   0x0
c010027c:	6a 00                	push   0x0
c010027e:	68 c6 c6 c6 00       	push   0xc6c6c6
c0100283:	50                   	push   eax
c0100284:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0100287:	e8 b5 3c 00 00       	call   c0103f41 <viewFill>
c010028c:	83 c4 1c             	add    esp,0x1c
c010028f:	6a 2b                	push   0x2b
c0100291:	6a 2b                	push   0x2b
c0100293:	6a 0d                	push   0xd
c0100295:	6a 0d                	push   0xd
c0100297:	68 84 84 84 00       	push   0x848484
c010029c:	ff 73 14             	push   DWORD PTR [ebx+0x14]
c010029f:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c01002a2:	e8 9a 3c 00 00       	call   c0103f41 <viewFill>
c01002a7:	83 c4 1c             	add    esp,0x1c
c01002aa:	6a 28                	push   0x28
c01002ac:	6a 28                	push   0x28
c01002ae:	6a 0a                	push   0xa
c01002b0:	6a 0a                	push   0xa
c01002b2:	68 ff ff ff 00       	push   0xffffff
c01002b7:	ff 73 14             	push   DWORD PTR [ebx+0x14]
c01002ba:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c01002bd:	e8 7f 3c 00 00       	call   c0103f41 <viewFill>
c01002c2:	83 c4 20             	add    esp,0x20
c01002c5:	ba 0a 00 00 00       	mov    edx,0xa
c01002ca:	eb 4a                	jmp    c0100316 <k_thread_a+0xc7>
c01002cc:	80 bc 3e 58 41 10 c0 	cmp    BYTE PTR [esi+edi*1-0x3fefbea8],0x23
c01002d3:	23 
c01002d4:	75 29                	jne    c01002ff <k_thread_a+0xb0>
c01002d6:	51                   	push   ecx
c01002d7:	ff 75 a4             	push   DWORD PTR [ebp-0x5c]
c01002da:	8d 48 02             	lea    ecx,[eax+0x2]
c01002dd:	51                   	push   ecx
c01002de:	52                   	push   edx
c01002df:	50                   	push   eax
c01002e0:	68 84 84 84 00       	push   0x848484
c01002e5:	ff 73 14             	push   DWORD PTR [ebx+0x14]
c01002e8:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c01002eb:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
c01002ee:	89 55 9c             	mov    DWORD PTR [ebp-0x64],edx
c01002f1:	e8 4b 3c 00 00       	call   c0103f41 <viewFill>
c01002f6:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
c01002f9:	83 c4 20             	add    esp,0x20
c01002fc:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
c01002ff:	47                   	inc    edi
c0100300:	83 c0 02             	add    eax,0x2
c0100303:	83 ff 0f             	cmp    edi,0xf
c0100306:	75 c4                	jne    c01002cc <k_thread_a+0x7d>
c0100308:	83 c6 0f             	add    esi,0xf
c010030b:	81 fe e1 00 00 00    	cmp    esi,0xe1
c0100311:	74 12                	je     c0100325 <k_thread_a+0xd6>
c0100313:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c0100316:	8d 42 02             	lea    eax,[edx+0x2]
c0100319:	31 ff                	xor    edi,edi
c010031b:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
c010031e:	b8 0a 00 00 00       	mov    eax,0xa
c0100323:	eb a7                	jmp    c01002cc <k_thread_a+0x7d>
c0100325:	50                   	push   eax
c0100326:	6a 2b                	push   0x2b
c0100328:	6a 3f                	push   0x3f
c010032a:	6a 0d                	push   0xd
c010032c:	6a 35                	push   0x35
c010032e:	68 84 84 84 00       	push   0x848484
c0100333:	ff 73 14             	push   DWORD PTR [ebx+0x14]
c0100336:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0100339:	8d 75 b0             	lea    esi,[ebp-0x50]
c010033c:	e8 00 3c 00 00       	call   c0103f41 <viewFill>
c0100341:	83 c4 1c             	add    esp,0x1c
c0100344:	6a 28                	push   0x28
c0100346:	6a 3c                	push   0x3c
c0100348:	6a 0a                	push   0xa
c010034a:	6a 32                	push   0x32
c010034c:	68 ff ff ff 00       	push   0xffffff
c0100351:	ff 73 14             	push   DWORD PTR [ebx+0x14]
c0100354:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0100357:	e8 e5 3b 00 00       	call   c0103f41 <viewFill>
c010035c:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
c010035f:	83 c4 1c             	add    esp,0x1c
c0100362:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c0100365:	8d 4a f8             	lea    ecx,[edx-0x8]
c0100368:	83 ea 26             	sub    edx,0x26
c010036b:	51                   	push   ecx
c010036c:	8d 48 f8             	lea    ecx,[eax-0x8]
c010036f:	51                   	push   ecx
c0100370:	52                   	push   edx
c0100371:	8d 90 6a ff ff ff    	lea    edx,[eax-0x96]
c0100377:	52                   	push   edx
c0100378:	68 84 84 84 00       	push   0x848484
c010037d:	50                   	push   eax
c010037e:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0100381:	e8 bb 3b 00 00       	call   c0103f41 <viewFill>
c0100386:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
c0100389:	83 c4 1c             	add    esp,0x1c
c010038c:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c010038f:	8d 4a f5             	lea    ecx,[edx-0xb]
c0100392:	83 ea 29             	sub    edx,0x29
c0100395:	51                   	push   ecx
c0100396:	8d 48 f5             	lea    ecx,[eax-0xb]
c0100399:	51                   	push   ecx
c010039a:	52                   	push   edx
c010039b:	8d 90 67 ff ff ff    	lea    edx,[eax-0x99]
c01003a1:	52                   	push   edx
c01003a2:	68 ff ff ff 00       	push   0xffffff
c01003a7:	50                   	push   eax
c01003a8:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c01003ab:	e8 91 3b 00 00       	call   c0103f41 <viewFill>
c01003b0:	83 c4 18             	add    esp,0x18
c01003b3:	53                   	push   ebx
c01003b4:	68 b8 09 12 c0       	push   0xc01209b8
c01003b9:	e8 6b 36 00 00       	call   c0103a29 <viewInsert>
c01003be:	a1 b4 09 12 c0       	mov    eax,ds:0xc01209b4
c01003c3:	83 c4 0c             	add    esp,0xc
c01003c6:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01003c9:	83 e8 32             	sub    eax,0x32
c01003cc:	50                   	push   eax
c01003cd:	6a 00                	push   0x0
c01003cf:	53                   	push   ebx
c01003d0:	e8 0a 39 00 00       	call   c0103cdf <viewSlide>
c01003d5:	8d 45 d0             	lea    eax,[ebp-0x30]
c01003d8:	89 04 24             	mov    DWORD PTR [esp],eax
c01003db:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
c01003de:	e8 5d 29 00 00       	call   c0102d40 <get_time>
c01003e3:	8b 3d bc 8b 10 c0    	mov    edi,DWORD PTR ds:0xc0108bbc
c01003e9:	83 c4 10             	add    esp,0x10
c01003ec:	50                   	push   eax
c01003ed:	83 c7 64             	add    edi,0x64
c01003f0:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
c01003f3:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
c01003f6:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
c01003f9:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
c01003fc:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c01003ff:	68 ce 78 10 c0       	push   0xc01078ce
c0100404:	56                   	push   esi
c0100405:	e8 1f 35 00 00       	call   c0103929 <sprintf>
c010040a:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
c010040d:	83 c4 1c             	add    esp,0x1c
c0100410:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c0100413:	8d 4a ee             	lea    ecx,[edx-0x12]
c0100416:	83 ea 21             	sub    edx,0x21
c0100419:	51                   	push   ecx
c010041a:	8d 48 ef             	lea    ecx,[eax-0x11]
c010041d:	51                   	push   ecx
c010041e:	52                   	push   edx
c010041f:	8d 90 6f ff ff ff    	lea    edx,[eax-0x91]
c0100425:	52                   	push   edx
c0100426:	68 ff ff ff 00       	push   0xffffff
c010042b:	50                   	push   eax
c010042c:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c010042f:	e8 0d 3b 00 00       	call   c0103f41 <viewFill>
c0100434:	83 c4 18             	add    esp,0x18
c0100437:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c010043a:	56                   	push   esi
c010043b:	68 84 84 84 00       	push   0x848484
c0100440:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
c0100443:	83 ea 21             	sub    edx,0x21
c0100446:	52                   	push   edx
c0100447:	8d 90 6f ff ff ff    	lea    edx,[eax-0x91]
c010044d:	52                   	push   edx
c010044e:	50                   	push   eax
c010044f:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0100452:	e8 cb 3b 00 00       	call   c0104022 <vput_str>
c0100457:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
c010045a:	83 c4 14             	add    esp,0x14
c010045d:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c0100460:	8d 4a ee             	lea    ecx,[edx-0x12]
c0100463:	83 ea 21             	sub    edx,0x21
c0100466:	51                   	push   ecx
c0100467:	8d 48 ef             	lea    ecx,[eax-0x11]
c010046a:	2d 91 00 00 00       	sub    eax,0x91
c010046f:	51                   	push   ecx
c0100470:	52                   	push   edx
c0100471:	50                   	push   eax
c0100472:	53                   	push   ebx
c0100473:	e8 14 37 00 00       	call   c0103b8c <view_reflush>
c0100478:	83 c4 20             	add    esp,0x20
c010047b:	a1 bc 8b 10 c0       	mov    eax,ds:0xc0108bbc
c0100480:	39 f8                	cmp    eax,edi
c0100482:	7e f7                	jle    c010047b <k_thread_a+0x22c>
c0100484:	83 ec 0c             	sub    esp,0xc
c0100487:	8b 3d bc 8b 10 c0    	mov    edi,DWORD PTR ds:0xc0108bbc
c010048d:	8d 45 d0             	lea    eax,[ebp-0x30]
c0100490:	50                   	push   eax
c0100491:	e8 aa 28 00 00       	call   c0102d40 <get_time>
c0100496:	83 c4 10             	add    esp,0x10
c0100499:	e9 4e ff ff ff       	jmp    c01003ec <k_thread_a+0x19d>

c010049e <kernel_main>:
c010049e:	55                   	push   ebp
c010049f:	89 e5                	mov    ebp,esp
c01004a1:	53                   	push   ebx
c01004a2:	bb 23 00 00 00       	mov    ebx,0x23
c01004a7:	83 ec 44             	sub    esp,0x44
c01004aa:	51                   	push   ecx
c01004ab:	51                   	push   ecx
c01004ac:	6a 0a                	push   0xa
c01004ae:	6a 07                	push   0x7
c01004b0:	e8 63 30 00 00       	call   c0103518 <put_char>
c01004b5:	83 c4 10             	add    esp,0x10
c01004b8:	4b                   	dec    ebx
c01004b9:	75 ef                	jne    c01004aa <kernel_main+0xc>
c01004bb:	83 ec 0c             	sub    esp,0xc
c01004be:	6a 00                	push   0x0
c01004c0:	e8 2c 30 00 00       	call   c01034f1 <set_cursor>
c01004c5:	e8 5a 02 00 00       	call   c0100724 <init_all>
c01004ca:	e8 d6 0c 00 00       	call   c01011a5 <intr_enable>
c01004cf:	5b                   	pop    ebx
c01004d0:	58                   	pop    eax
c01004d1:	68 e7 78 10 c0       	push   0xc01078e7
c01004d6:	6a 07                	push   0x7
c01004d8:	e8 66 23 00 00       	call   c0102843 <console_str>
c01004dd:	58                   	pop    eax
c01004de:	5a                   	pop    edx
c01004df:	68 10 79 10 c0       	push   0xc0107910
c01004e4:	6a 07                	push   0x7
c01004e6:	e8 58 23 00 00       	call   c0102843 <console_str>
c01004eb:	e8 72 24 00 00       	call   c0102962 <cpu_info>
c01004f0:	59                   	pop    ecx
c01004f1:	5b                   	pop    ebx
c01004f2:	6a 0a                	push   0xa
c01004f4:	6a 07                	push   0x7
c01004f6:	e8 0a 23 00 00       	call   c0102805 <console_char>
c01004fb:	58                   	pop    eax
c01004fc:	5a                   	pop    edx
c01004fd:	68 19 79 10 c0       	push   0xc0107919
c0100502:	6a 07                	push   0x7
c0100504:	e8 3a 23 00 00       	call   c0102843 <console_str>
c0100509:	83 c4 0c             	add    esp,0xc
c010050c:	6a 0a                	push   0xa
c010050e:	a1 08 7c 00 c0       	mov    eax,ds:0xc0007c08
c0100513:	c1 e8 14             	shr    eax,0x14
c0100516:	50                   	push   eax
c0100517:	6a 07                	push   0x7
c0100519:	e8 5e 23 00 00       	call   c010287c <console_int>
c010051e:	59                   	pop    ecx
c010051f:	5b                   	pop    ebx
c0100520:	68 22 79 10 c0       	push   0xc0107922
c0100525:	6a 07                	push   0x7
c0100527:	e8 17 23 00 00       	call   c0102843 <console_str>
c010052c:	83 c4 0c             	add    esp,0xc
c010052f:	6a 0a                	push   0xa
c0100531:	a1 08 7c 00 c0       	mov    eax,ds:0xc0007c08
c0100536:	c1 e8 0a             	shr    eax,0xa
c0100539:	50                   	push   eax
c010053a:	6a 07                	push   0x7
c010053c:	e8 3b 23 00 00       	call   c010287c <console_int>
c0100541:	58                   	pop    eax
c0100542:	5a                   	pop    edx
c0100543:	68 28 79 10 c0       	push   0xc0107928
c0100548:	6a 07                	push   0x7
c010054a:	e8 6a 30 00 00       	call   c01035b9 <put_str>
c010054f:	59                   	pop    ecx
c0100550:	5b                   	pop    ebx
c0100551:	6a 0a                	push   0xa
c0100553:	6a 07                	push   0x7
c0100555:	e8 be 2f 00 00       	call   c0103518 <put_char>
c010055a:	58                   	pop    eax
c010055b:	5a                   	pop    edx
c010055c:	68 2e 79 10 c0       	push   0xc010792e
c0100561:	6a 07                	push   0x7
c0100563:	e8 db 22 00 00       	call   c0102843 <console_str>
c0100568:	83 c4 0c             	add    esp,0xc
c010056b:	6a 0a                	push   0xa
c010056d:	ff 35 10 7c 00 c0    	push   DWORD PTR ds:0xc0007c10
c0100573:	6a 07                	push   0x7
c0100575:	e8 02 23 00 00       	call   c010287c <console_int>
c010057a:	59                   	pop    ecx
c010057b:	5b                   	pop    ebx
c010057c:	8d 5d b8             	lea    ebx,[ebp-0x48]
c010057f:	6a 0a                	push   0xa
c0100581:	6a 07                	push   0x7
c0100583:	e8 7d 22 00 00       	call   c0102805 <console_char>
c0100588:	58                   	pop    eax
c0100589:	5a                   	pop    edx
c010058a:	a1 b4 09 12 c0       	mov    eax,ds:0xc01209b4
c010058f:	68 c8 79 10 c0       	push   0xc01079c8
c0100594:	68 ff ff ff 00       	push   0xffffff
c0100599:	6a 14                	push   0x14
c010059b:	6a 14                	push   0x14
c010059d:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01005a3:	ff 70 04             	push   DWORD PTR [eax+0x4]
c01005a6:	e8 77 3a 00 00       	call   c0104022 <vput_str>
c01005ab:	83 c4 14             	add    esp,0x14
c01005ae:	ff 35 28 7c 00 c0    	push   DWORD PTR ds:0xc0007c28
c01005b4:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01005ba:	ff 35 18 7c 00 c0    	push   DWORD PTR ds:0xc0007c18
c01005c0:	68 37 79 10 c0       	push   0xc0107937
c01005c5:	53                   	push   ebx
c01005c6:	e8 5e 33 00 00       	call   c0103929 <sprintf>
c01005cb:	83 c4 18             	add    esp,0x18
c01005ce:	a1 b4 09 12 c0       	mov    eax,ds:0xc01209b4
c01005d3:	68 5e 79 10 c0       	push   0xc010795e
c01005d8:	68 ff ff ff 00       	push   0xffffff
c01005dd:	6a 24                	push   0x24
c01005df:	6a 14                	push   0x14
c01005e1:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01005e7:	ff 70 04             	push   DWORD PTR [eax+0x4]
c01005ea:	e8 33 3a 00 00       	call   c0104022 <vput_str>
c01005ef:	83 c4 18             	add    esp,0x18
c01005f2:	a1 b4 09 12 c0       	mov    eax,ds:0xc01209b4
c01005f7:	53                   	push   ebx
c01005f8:	68 ff ff ff 00       	push   0xffffff
c01005fd:	6a 34                	push   0x34
c01005ff:	6a 14                	push   0x14
c0100601:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0100607:	ff 70 04             	push   DWORD PTR [eax+0x4]
c010060a:	e8 13 3a 00 00       	call   c0104022 <vput_str>
c010060f:	a1 b4 09 12 c0       	mov    eax,ds:0xc01209b4
c0100614:	83 c4 14             	add    esp,0x14
c0100617:	6a 44                	push   0x44
c0100619:	ff 70 14             	push   DWORD PTR [eax+0x14]
c010061c:	6a 14                	push   0x14
c010061e:	6a 14                	push   0x14
c0100620:	50                   	push   eax
c0100621:	e8 66 35 00 00       	call   c0103b8c <view_reflush>
c0100626:	83 c4 20             	add    esp,0x20
c0100629:	68 a5 79 10 c0       	push   0xc01079a5
c010062e:	68 4f 02 10 c0       	push   0xc010024f
c0100633:	6a 1f                	push   0x1f
c0100635:	68 ac 79 10 c0       	push   0xc01079ac
c010063a:	e8 0e 1b 00 00       	call   c010214d <thread_start>
c010063f:	6a 00                	push   0x0
c0100641:	68 bb 01 10 c0       	push   0xc01001bb
c0100646:	6a 1f                	push   0x1f
c0100648:	68 b0 79 10 c0       	push   0xc01079b0
c010064d:	e8 fb 1a 00 00       	call   c010214d <thread_start>
c0100652:	83 c4 20             	add    esp,0x20
c0100655:	6a 00                	push   0x0
c0100657:	68 56 00 10 c0       	push   0xc0100056
c010065c:	6a 1f                	push   0x1f
c010065e:	68 b6 79 10 c0       	push   0xc01079b6
c0100663:	e8 e5 1a 00 00       	call   c010214d <thread_start>
c0100668:	59                   	pop    ecx
c0100669:	5b                   	pop    ebx
c010066a:	68 bb 79 10 c0       	push   0xc01079bb
c010066f:	68 20 00 10 c0       	push   0xc0100020
c0100674:	e8 8e 20 00 00       	call   c0102707 <process_execute>
c0100679:	58                   	pop    eax
c010067a:	5a                   	pop    edx
c010067b:	68 bb 79 10 c0       	push   0xc01079bb
c0100680:	68 3d 00 10 c0       	push   0xc010003d
c0100685:	e8 7d 20 00 00       	call   c0102707 <process_execute>
c010068a:	83 c4 10             	add    esp,0x10
c010068d:	eb fe                	jmp    c010068d <kernel_main+0x1ef>
	...

c0100690 <panic_spin>:
c0100690:	55                   	push   ebp
c0100691:	89 e5                	mov    ebp,esp
c0100693:	53                   	push   ebx
c0100694:	81 ec 84 00 00 00    	sub    esp,0x84
c010069a:	e8 ad 09 00 00       	call   c010104c <intr_disable>
c010069f:	83 ec 0c             	sub    esp,0xc
c01006a2:	6a 00                	push   0x0
c01006a4:	e8 48 2e 00 00       	call   c01034f1 <set_cursor>
c01006a9:	8d 9d 79 ff ff ff    	lea    ebx,[ebp-0x87]
c01006af:	58                   	pop    eax
c01006b0:	5a                   	pop    edx
c01006b1:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c01006b4:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c01006b7:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c01006ba:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c01006bd:	68 e8 7a 10 c0       	push   0xc0107ae8
c01006c2:	53                   	push   ebx
c01006c3:	e8 61 32 00 00       	call   c0103929 <sprintf>
c01006c8:	83 c4 18             	add    esp,0x18
c01006cb:	53                   	push   ebx
c01006cc:	6a 04                	push   0x4
c01006ce:	e8 e6 2e 00 00       	call   c01035b9 <put_str>
c01006d3:	59                   	pop    ecx
c01006d4:	58                   	pop    eax
c01006d5:	53                   	push   ebx
c01006d6:	68 00 00 ff 00       	push   0xff0000
c01006db:	6a 00                	push   0x0
c01006dd:	6a 00                	push   0x0
c01006df:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01006e5:	68 00 00 00 e0       	push   0xe0000000
c01006ea:	e8 33 39 00 00       	call   c0104022 <vput_str>
c01006ef:	83 c4 20             	add    esp,0x20
c01006f2:	eb fe                	jmp    c01006f2 <panic_spin+0x62>

c01006f4 <log>:
c01006f4:	55                   	push   ebp
c01006f5:	89 e5                	mov    ebp,esp
c01006f7:	83 ec 10             	sub    esp,0x10
c01006fa:	68 34 7b 10 c0       	push   0xc0107b34
c01006ff:	6a 06                	push   0x6
c0100701:	e8 b3 2e 00 00       	call   c01035b9 <put_str>
c0100706:	58                   	pop    eax
c0100707:	5a                   	pop    edx
c0100708:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c010070b:	6a 06                	push   0x6
c010070d:	e8 a7 2e 00 00       	call   c01035b9 <put_str>
c0100712:	59                   	pop    ecx
c0100713:	58                   	pop    eax
c0100714:	6a 0a                	push   0xa
c0100716:	6a 06                	push   0x6
c0100718:	e8 fb 2d 00 00       	call   c0103518 <put_char>
c010071d:	83 c4 10             	add    esp,0x10
c0100720:	c9                   	leave  
c0100721:	c3                   	ret    
	...

c0100724 <init_all>:
c0100724:	55                   	push   ebp
c0100725:	89 e5                	mov    ebp,esp
c0100727:	83 ec 14             	sub    esp,0x14
c010072a:	68 5c 7b 10 c0       	push   0xc0107b5c
c010072f:	e8 c0 ff ff ff       	call   c01006f4 <log>
c0100734:	e8 cf 08 00 00       	call   c0101008 <init_idt>
c0100739:	e8 da 1c 00 00       	call   c0102418 <init_tss>
c010073e:	e8 a9 26 00 00       	call   c0102dec <init_pit>
c0100743:	e8 fb 12 00 00       	call   c0101a43 <init_memory>
c0100748:	e8 1f 39 00 00       	call   c010406c <init_screen>
c010074d:	e8 85 22 00 00       	call   c01029d7 <init_keyboard>
c0100752:	e8 7d 24 00 00       	call   c0102bd4 <init_mouse>
c0100757:	e8 2f 19 00 00       	call   c010208b <init_thread>
c010075c:	e8 8f 20 00 00       	call   c01027f0 <init_console>
c0100761:	e8 f9 26 00 00       	call   c0102e5f <init_syscall>
c0100766:	c7 04 24 65 7b 10 c0 	mov    DWORD PTR [esp],0xc0107b65
c010076d:	e8 82 ff ff ff       	call   c01006f4 <log>
c0100772:	83 c4 10             	add    esp,0x10
c0100775:	c9                   	leave  
c0100776:	c3                   	ret    
	...

c0100780 <intr_exit>:
c0100780:	81 c4 04 00 00 00    	add    esp,0x4
c0100786:	61                   	popa   
c0100787:	0f a9                	pop    gs
c0100789:	0f a1                	pop    fs
c010078b:	07                   	pop    es
c010078c:	1f                   	pop    ds
c010078d:	81 c4 04 00 00 00    	add    esp,0x4
c0100793:	cf                   	iret   

c0100794 <asm_intr0x00_handler>:
c0100794:	68 00 00 00 00       	push   0x0
c0100799:	1e                   	push   ds
c010079a:	06                   	push   es
c010079b:	0f a0                	push   fs
c010079d:	0f a8                	push   gs
c010079f:	60                   	pusha  
c01007a0:	68 00 00 00 00       	push   0x0
c01007a5:	66 8c d0             	mov    ax,ss
c01007a8:	8e d8                	mov    ds,eax
c01007aa:	8e c0                	mov    es,eax
c01007ac:	ff 15 68 8f 10 c0    	call   DWORD PTR ds:0xc0108f68
c01007b2:	e9 c9 ff ff ff       	jmp    c0100780 <intr_exit>

c01007b7 <asm_intr0x01_handler>:
c01007b7:	68 00 00 00 00       	push   0x0
c01007bc:	1e                   	push   ds
c01007bd:	06                   	push   es
c01007be:	0f a0                	push   fs
c01007c0:	0f a8                	push   gs
c01007c2:	60                   	pusha  
c01007c3:	68 01 00 00 00       	push   0x1
c01007c8:	66 8c d0             	mov    ax,ss
c01007cb:	8e d8                	mov    ds,eax
c01007cd:	8e c0                	mov    es,eax
c01007cf:	ff 15 6c 8f 10 c0    	call   DWORD PTR ds:0xc0108f6c
c01007d5:	e9 a6 ff ff ff       	jmp    c0100780 <intr_exit>

c01007da <asm_intr0x02_handler>:
c01007da:	68 00 00 00 00       	push   0x0
c01007df:	1e                   	push   ds
c01007e0:	06                   	push   es
c01007e1:	0f a0                	push   fs
c01007e3:	0f a8                	push   gs
c01007e5:	60                   	pusha  
c01007e6:	68 02 00 00 00       	push   0x2
c01007eb:	66 8c d0             	mov    ax,ss
c01007ee:	8e d8                	mov    ds,eax
c01007f0:	8e c0                	mov    es,eax
c01007f2:	ff 15 70 8f 10 c0    	call   DWORD PTR ds:0xc0108f70
c01007f8:	e9 83 ff ff ff       	jmp    c0100780 <intr_exit>

c01007fd <asm_intr0x03_handler>:
c01007fd:	68 00 00 00 00       	push   0x0
c0100802:	1e                   	push   ds
c0100803:	06                   	push   es
c0100804:	0f a0                	push   fs
c0100806:	0f a8                	push   gs
c0100808:	60                   	pusha  
c0100809:	68 03 00 00 00       	push   0x3
c010080e:	66 8c d0             	mov    ax,ss
c0100811:	8e d8                	mov    ds,eax
c0100813:	8e c0                	mov    es,eax
c0100815:	ff 15 74 8f 10 c0    	call   DWORD PTR ds:0xc0108f74
c010081b:	e9 60 ff ff ff       	jmp    c0100780 <intr_exit>

c0100820 <asm_intr0x04_handler>:
c0100820:	68 00 00 00 00       	push   0x0
c0100825:	1e                   	push   ds
c0100826:	06                   	push   es
c0100827:	0f a0                	push   fs
c0100829:	0f a8                	push   gs
c010082b:	60                   	pusha  
c010082c:	68 04 00 00 00       	push   0x4
c0100831:	66 8c d0             	mov    ax,ss
c0100834:	8e d8                	mov    ds,eax
c0100836:	8e c0                	mov    es,eax
c0100838:	ff 15 78 8f 10 c0    	call   DWORD PTR ds:0xc0108f78
c010083e:	e9 3d ff ff ff       	jmp    c0100780 <intr_exit>

c0100843 <asm_intr0x05_handler>:
c0100843:	68 00 00 00 00       	push   0x0
c0100848:	1e                   	push   ds
c0100849:	06                   	push   es
c010084a:	0f a0                	push   fs
c010084c:	0f a8                	push   gs
c010084e:	60                   	pusha  
c010084f:	68 05 00 00 00       	push   0x5
c0100854:	66 8c d0             	mov    ax,ss
c0100857:	8e d8                	mov    ds,eax
c0100859:	8e c0                	mov    es,eax
c010085b:	ff 15 7c 8f 10 c0    	call   DWORD PTR ds:0xc0108f7c
c0100861:	e9 1a ff ff ff       	jmp    c0100780 <intr_exit>

c0100866 <asm_intr0x06_handler>:
c0100866:	68 00 00 00 00       	push   0x0
c010086b:	1e                   	push   ds
c010086c:	06                   	push   es
c010086d:	0f a0                	push   fs
c010086f:	0f a8                	push   gs
c0100871:	60                   	pusha  
c0100872:	68 06 00 00 00       	push   0x6
c0100877:	66 8c d0             	mov    ax,ss
c010087a:	8e d8                	mov    ds,eax
c010087c:	8e c0                	mov    es,eax
c010087e:	ff 15 80 8f 10 c0    	call   DWORD PTR ds:0xc0108f80
c0100884:	e9 f7 fe ff ff       	jmp    c0100780 <intr_exit>

c0100889 <asm_intr0x07_handler>:
c0100889:	68 00 00 00 00       	push   0x0
c010088e:	1e                   	push   ds
c010088f:	06                   	push   es
c0100890:	0f a0                	push   fs
c0100892:	0f a8                	push   gs
c0100894:	60                   	pusha  
c0100895:	68 07 00 00 00       	push   0x7
c010089a:	66 8c d0             	mov    ax,ss
c010089d:	8e d8                	mov    ds,eax
c010089f:	8e c0                	mov    es,eax
c01008a1:	ff 15 84 8f 10 c0    	call   DWORD PTR ds:0xc0108f84
c01008a7:	e9 d4 fe ff ff       	jmp    c0100780 <intr_exit>

c01008ac <asm_intr0x08_handler>:
c01008ac:	90                   	nop
c01008ad:	1e                   	push   ds
c01008ae:	06                   	push   es
c01008af:	0f a0                	push   fs
c01008b1:	0f a8                	push   gs
c01008b3:	60                   	pusha  
c01008b4:	68 08 00 00 00       	push   0x8
c01008b9:	66 8c d0             	mov    ax,ss
c01008bc:	8e d8                	mov    ds,eax
c01008be:	8e c0                	mov    es,eax
c01008c0:	ff 15 88 8f 10 c0    	call   DWORD PTR ds:0xc0108f88
c01008c6:	e9 b5 fe ff ff       	jmp    c0100780 <intr_exit>

c01008cb <asm_intr0x09_handler>:
c01008cb:	68 00 00 00 00       	push   0x0
c01008d0:	1e                   	push   ds
c01008d1:	06                   	push   es
c01008d2:	0f a0                	push   fs
c01008d4:	0f a8                	push   gs
c01008d6:	60                   	pusha  
c01008d7:	68 09 00 00 00       	push   0x9
c01008dc:	66 8c d0             	mov    ax,ss
c01008df:	8e d8                	mov    ds,eax
c01008e1:	8e c0                	mov    es,eax
c01008e3:	ff 15 8c 8f 10 c0    	call   DWORD PTR ds:0xc0108f8c
c01008e9:	e9 92 fe ff ff       	jmp    c0100780 <intr_exit>

c01008ee <asm_intr0x0a_handler>:
c01008ee:	90                   	nop
c01008ef:	1e                   	push   ds
c01008f0:	06                   	push   es
c01008f1:	0f a0                	push   fs
c01008f3:	0f a8                	push   gs
c01008f5:	60                   	pusha  
c01008f6:	68 0a 00 00 00       	push   0xa
c01008fb:	66 8c d0             	mov    ax,ss
c01008fe:	8e d8                	mov    ds,eax
c0100900:	8e c0                	mov    es,eax
c0100902:	ff 15 90 8f 10 c0    	call   DWORD PTR ds:0xc0108f90
c0100908:	e9 73 fe ff ff       	jmp    c0100780 <intr_exit>

c010090d <asm_intr0x0b_handler>:
c010090d:	90                   	nop
c010090e:	1e                   	push   ds
c010090f:	06                   	push   es
c0100910:	0f a0                	push   fs
c0100912:	0f a8                	push   gs
c0100914:	60                   	pusha  
c0100915:	68 0b 00 00 00       	push   0xb
c010091a:	66 8c d0             	mov    ax,ss
c010091d:	8e d8                	mov    ds,eax
c010091f:	8e c0                	mov    es,eax
c0100921:	ff 15 94 8f 10 c0    	call   DWORD PTR ds:0xc0108f94
c0100927:	e9 54 fe ff ff       	jmp    c0100780 <intr_exit>

c010092c <asm_intr0x0c_handler>:
c010092c:	68 00 00 00 00       	push   0x0
c0100931:	1e                   	push   ds
c0100932:	06                   	push   es
c0100933:	0f a0                	push   fs
c0100935:	0f a8                	push   gs
c0100937:	60                   	pusha  
c0100938:	68 0c 00 00 00       	push   0xc
c010093d:	66 8c d0             	mov    ax,ss
c0100940:	8e d8                	mov    ds,eax
c0100942:	8e c0                	mov    es,eax
c0100944:	ff 15 98 8f 10 c0    	call   DWORD PTR ds:0xc0108f98
c010094a:	e9 31 fe ff ff       	jmp    c0100780 <intr_exit>

c010094f <asm_intr0x0d_handler>:
c010094f:	90                   	nop
c0100950:	1e                   	push   ds
c0100951:	06                   	push   es
c0100952:	0f a0                	push   fs
c0100954:	0f a8                	push   gs
c0100956:	60                   	pusha  
c0100957:	68 0d 00 00 00       	push   0xd
c010095c:	66 8c d0             	mov    ax,ss
c010095f:	8e d8                	mov    ds,eax
c0100961:	8e c0                	mov    es,eax
c0100963:	ff 15 9c 8f 10 c0    	call   DWORD PTR ds:0xc0108f9c
c0100969:	e9 12 fe ff ff       	jmp    c0100780 <intr_exit>

c010096e <asm_intr0x0e_handler>:
c010096e:	90                   	nop
c010096f:	1e                   	push   ds
c0100970:	06                   	push   es
c0100971:	0f a0                	push   fs
c0100973:	0f a8                	push   gs
c0100975:	60                   	pusha  
c0100976:	68 0e 00 00 00       	push   0xe
c010097b:	66 8c d0             	mov    ax,ss
c010097e:	8e d8                	mov    ds,eax
c0100980:	8e c0                	mov    es,eax
c0100982:	ff 15 a0 8f 10 c0    	call   DWORD PTR ds:0xc0108fa0
c0100988:	e9 f3 fd ff ff       	jmp    c0100780 <intr_exit>

c010098d <asm_intr0x0f_handler>:
c010098d:	68 00 00 00 00       	push   0x0
c0100992:	1e                   	push   ds
c0100993:	06                   	push   es
c0100994:	0f a0                	push   fs
c0100996:	0f a8                	push   gs
c0100998:	60                   	pusha  
c0100999:	68 0f 00 00 00       	push   0xf
c010099e:	66 8c d0             	mov    ax,ss
c01009a1:	8e d8                	mov    ds,eax
c01009a3:	8e c0                	mov    es,eax
c01009a5:	ff 15 a4 8f 10 c0    	call   DWORD PTR ds:0xc0108fa4
c01009ab:	e9 d0 fd ff ff       	jmp    c0100780 <intr_exit>

c01009b0 <asm_intr0x10_handler>:
c01009b0:	68 00 00 00 00       	push   0x0
c01009b5:	1e                   	push   ds
c01009b6:	06                   	push   es
c01009b7:	0f a0                	push   fs
c01009b9:	0f a8                	push   gs
c01009bb:	60                   	pusha  
c01009bc:	68 10 00 00 00       	push   0x10
c01009c1:	66 8c d0             	mov    ax,ss
c01009c4:	8e d8                	mov    ds,eax
c01009c6:	8e c0                	mov    es,eax
c01009c8:	ff 15 a8 8f 10 c0    	call   DWORD PTR ds:0xc0108fa8
c01009ce:	e9 ad fd ff ff       	jmp    c0100780 <intr_exit>

c01009d3 <asm_intr0x11_handler>:
c01009d3:	90                   	nop
c01009d4:	1e                   	push   ds
c01009d5:	06                   	push   es
c01009d6:	0f a0                	push   fs
c01009d8:	0f a8                	push   gs
c01009da:	60                   	pusha  
c01009db:	68 11 00 00 00       	push   0x11
c01009e0:	66 8c d0             	mov    ax,ss
c01009e3:	8e d8                	mov    ds,eax
c01009e5:	8e c0                	mov    es,eax
c01009e7:	ff 15 ac 8f 10 c0    	call   DWORD PTR ds:0xc0108fac
c01009ed:	e9 8e fd ff ff       	jmp    c0100780 <intr_exit>

c01009f2 <asm_intr0x12_handler>:
c01009f2:	68 00 00 00 00       	push   0x0
c01009f7:	1e                   	push   ds
c01009f8:	06                   	push   es
c01009f9:	0f a0                	push   fs
c01009fb:	0f a8                	push   gs
c01009fd:	60                   	pusha  
c01009fe:	68 12 00 00 00       	push   0x12
c0100a03:	66 8c d0             	mov    ax,ss
c0100a06:	8e d8                	mov    ds,eax
c0100a08:	8e c0                	mov    es,eax
c0100a0a:	ff 15 b0 8f 10 c0    	call   DWORD PTR ds:0xc0108fb0
c0100a10:	e9 6b fd ff ff       	jmp    c0100780 <intr_exit>

c0100a15 <asm_intr0x13_handler>:
c0100a15:	68 00 00 00 00       	push   0x0
c0100a1a:	1e                   	push   ds
c0100a1b:	06                   	push   es
c0100a1c:	0f a0                	push   fs
c0100a1e:	0f a8                	push   gs
c0100a20:	60                   	pusha  
c0100a21:	68 13 00 00 00       	push   0x13
c0100a26:	66 8c d0             	mov    ax,ss
c0100a29:	8e d8                	mov    ds,eax
c0100a2b:	8e c0                	mov    es,eax
c0100a2d:	ff 15 b4 8f 10 c0    	call   DWORD PTR ds:0xc0108fb4
c0100a33:	e9 48 fd ff ff       	jmp    c0100780 <intr_exit>

c0100a38 <asm_intr0x14_handler>:
c0100a38:	68 00 00 00 00       	push   0x0
c0100a3d:	1e                   	push   ds
c0100a3e:	06                   	push   es
c0100a3f:	0f a0                	push   fs
c0100a41:	0f a8                	push   gs
c0100a43:	60                   	pusha  
c0100a44:	68 14 00 00 00       	push   0x14
c0100a49:	66 8c d0             	mov    ax,ss
c0100a4c:	8e d8                	mov    ds,eax
c0100a4e:	8e c0                	mov    es,eax
c0100a50:	ff 15 b8 8f 10 c0    	call   DWORD PTR ds:0xc0108fb8
c0100a56:	e9 25 fd ff ff       	jmp    c0100780 <intr_exit>

c0100a5b <asm_intr0x15_handler>:
c0100a5b:	68 00 00 00 00       	push   0x0
c0100a60:	1e                   	push   ds
c0100a61:	06                   	push   es
c0100a62:	0f a0                	push   fs
c0100a64:	0f a8                	push   gs
c0100a66:	60                   	pusha  
c0100a67:	68 15 00 00 00       	push   0x15
c0100a6c:	66 8c d0             	mov    ax,ss
c0100a6f:	8e d8                	mov    ds,eax
c0100a71:	8e c0                	mov    es,eax
c0100a73:	ff 15 bc 8f 10 c0    	call   DWORD PTR ds:0xc0108fbc
c0100a79:	e9 02 fd ff ff       	jmp    c0100780 <intr_exit>

c0100a7e <asm_intr0x16_handler>:
c0100a7e:	68 00 00 00 00       	push   0x0
c0100a83:	1e                   	push   ds
c0100a84:	06                   	push   es
c0100a85:	0f a0                	push   fs
c0100a87:	0f a8                	push   gs
c0100a89:	60                   	pusha  
c0100a8a:	68 16 00 00 00       	push   0x16
c0100a8f:	66 8c d0             	mov    ax,ss
c0100a92:	8e d8                	mov    ds,eax
c0100a94:	8e c0                	mov    es,eax
c0100a96:	ff 15 c0 8f 10 c0    	call   DWORD PTR ds:0xc0108fc0
c0100a9c:	e9 df fc ff ff       	jmp    c0100780 <intr_exit>

c0100aa1 <asm_intr0x17_handler>:
c0100aa1:	68 00 00 00 00       	push   0x0
c0100aa6:	1e                   	push   ds
c0100aa7:	06                   	push   es
c0100aa8:	0f a0                	push   fs
c0100aaa:	0f a8                	push   gs
c0100aac:	60                   	pusha  
c0100aad:	68 17 00 00 00       	push   0x17
c0100ab2:	66 8c d0             	mov    ax,ss
c0100ab5:	8e d8                	mov    ds,eax
c0100ab7:	8e c0                	mov    es,eax
c0100ab9:	ff 15 c4 8f 10 c0    	call   DWORD PTR ds:0xc0108fc4
c0100abf:	e9 bc fc ff ff       	jmp    c0100780 <intr_exit>

c0100ac4 <asm_intr0x18_handler>:
c0100ac4:	90                   	nop
c0100ac5:	1e                   	push   ds
c0100ac6:	06                   	push   es
c0100ac7:	0f a0                	push   fs
c0100ac9:	0f a8                	push   gs
c0100acb:	60                   	pusha  
c0100acc:	68 18 00 00 00       	push   0x18
c0100ad1:	66 8c d0             	mov    ax,ss
c0100ad4:	8e d8                	mov    ds,eax
c0100ad6:	8e c0                	mov    es,eax
c0100ad8:	ff 15 c8 8f 10 c0    	call   DWORD PTR ds:0xc0108fc8
c0100ade:	e9 9d fc ff ff       	jmp    c0100780 <intr_exit>

c0100ae3 <asm_intr0x19_handler>:
c0100ae3:	68 00 00 00 00       	push   0x0
c0100ae8:	1e                   	push   ds
c0100ae9:	06                   	push   es
c0100aea:	0f a0                	push   fs
c0100aec:	0f a8                	push   gs
c0100aee:	60                   	pusha  
c0100aef:	68 19 00 00 00       	push   0x19
c0100af4:	66 8c d0             	mov    ax,ss
c0100af7:	8e d8                	mov    ds,eax
c0100af9:	8e c0                	mov    es,eax
c0100afb:	ff 15 cc 8f 10 c0    	call   DWORD PTR ds:0xc0108fcc
c0100b01:	e9 7a fc ff ff       	jmp    c0100780 <intr_exit>

c0100b06 <asm_intr0x1a_handler>:
c0100b06:	90                   	nop
c0100b07:	1e                   	push   ds
c0100b08:	06                   	push   es
c0100b09:	0f a0                	push   fs
c0100b0b:	0f a8                	push   gs
c0100b0d:	60                   	pusha  
c0100b0e:	68 1a 00 00 00       	push   0x1a
c0100b13:	66 8c d0             	mov    ax,ss
c0100b16:	8e d8                	mov    ds,eax
c0100b18:	8e c0                	mov    es,eax
c0100b1a:	ff 15 d0 8f 10 c0    	call   DWORD PTR ds:0xc0108fd0
c0100b20:	e9 5b fc ff ff       	jmp    c0100780 <intr_exit>

c0100b25 <asm_intr0x1b_handler>:
c0100b25:	90                   	nop
c0100b26:	1e                   	push   ds
c0100b27:	06                   	push   es
c0100b28:	0f a0                	push   fs
c0100b2a:	0f a8                	push   gs
c0100b2c:	60                   	pusha  
c0100b2d:	68 1b 00 00 00       	push   0x1b
c0100b32:	66 8c d0             	mov    ax,ss
c0100b35:	8e d8                	mov    ds,eax
c0100b37:	8e c0                	mov    es,eax
c0100b39:	ff 15 d4 8f 10 c0    	call   DWORD PTR ds:0xc0108fd4
c0100b3f:	e9 3c fc ff ff       	jmp    c0100780 <intr_exit>

c0100b44 <asm_intr0x1c_handler>:
c0100b44:	68 00 00 00 00       	push   0x0
c0100b49:	1e                   	push   ds
c0100b4a:	06                   	push   es
c0100b4b:	0f a0                	push   fs
c0100b4d:	0f a8                	push   gs
c0100b4f:	60                   	pusha  
c0100b50:	68 1c 00 00 00       	push   0x1c
c0100b55:	66 8c d0             	mov    ax,ss
c0100b58:	8e d8                	mov    ds,eax
c0100b5a:	8e c0                	mov    es,eax
c0100b5c:	ff 15 d8 8f 10 c0    	call   DWORD PTR ds:0xc0108fd8
c0100b62:	e9 19 fc ff ff       	jmp    c0100780 <intr_exit>

c0100b67 <asm_intr0x1d_handler>:
c0100b67:	90                   	nop
c0100b68:	1e                   	push   ds
c0100b69:	06                   	push   es
c0100b6a:	0f a0                	push   fs
c0100b6c:	0f a8                	push   gs
c0100b6e:	60                   	pusha  
c0100b6f:	68 1d 00 00 00       	push   0x1d
c0100b74:	66 8c d0             	mov    ax,ss
c0100b77:	8e d8                	mov    ds,eax
c0100b79:	8e c0                	mov    es,eax
c0100b7b:	ff 15 dc 8f 10 c0    	call   DWORD PTR ds:0xc0108fdc
c0100b81:	e9 fa fb ff ff       	jmp    c0100780 <intr_exit>

c0100b86 <asm_intr0x1e_handler>:
c0100b86:	90                   	nop
c0100b87:	1e                   	push   ds
c0100b88:	06                   	push   es
c0100b89:	0f a0                	push   fs
c0100b8b:	0f a8                	push   gs
c0100b8d:	60                   	pusha  
c0100b8e:	68 1e 00 00 00       	push   0x1e
c0100b93:	66 8c d0             	mov    ax,ss
c0100b96:	8e d8                	mov    ds,eax
c0100b98:	8e c0                	mov    es,eax
c0100b9a:	ff 15 e0 8f 10 c0    	call   DWORD PTR ds:0xc0108fe0
c0100ba0:	e9 db fb ff ff       	jmp    c0100780 <intr_exit>

c0100ba5 <asm_intr0x1f_handler>:
c0100ba5:	68 00 00 00 00       	push   0x0
c0100baa:	1e                   	push   ds
c0100bab:	06                   	push   es
c0100bac:	0f a0                	push   fs
c0100bae:	0f a8                	push   gs
c0100bb0:	60                   	pusha  
c0100bb1:	68 1f 00 00 00       	push   0x1f
c0100bb6:	66 8c d0             	mov    ax,ss
c0100bb9:	8e d8                	mov    ds,eax
c0100bbb:	8e c0                	mov    es,eax
c0100bbd:	ff 15 e4 8f 10 c0    	call   DWORD PTR ds:0xc0108fe4
c0100bc3:	e9 b8 fb ff ff       	jmp    c0100780 <intr_exit>

c0100bc8 <asm_intr0x20_handler>:
c0100bc8:	68 00 00 00 00       	push   0x0
c0100bcd:	1e                   	push   ds
c0100bce:	06                   	push   es
c0100bcf:	0f a0                	push   fs
c0100bd1:	0f a8                	push   gs
c0100bd3:	60                   	pusha  
c0100bd4:	68 20 00 00 00       	push   0x20
c0100bd9:	66 8c d0             	mov    ax,ss
c0100bdc:	8e d8                	mov    ds,eax
c0100bde:	8e c0                	mov    es,eax
c0100be0:	ff 15 e8 8f 10 c0    	call   DWORD PTR ds:0xc0108fe8
c0100be6:	e9 95 fb ff ff       	jmp    c0100780 <intr_exit>

c0100beb <asm_intr0x21_handler>:
c0100beb:	68 00 00 00 00       	push   0x0
c0100bf0:	1e                   	push   ds
c0100bf1:	06                   	push   es
c0100bf2:	0f a0                	push   fs
c0100bf4:	0f a8                	push   gs
c0100bf6:	60                   	pusha  
c0100bf7:	68 21 00 00 00       	push   0x21
c0100bfc:	66 8c d0             	mov    ax,ss
c0100bff:	8e d8                	mov    ds,eax
c0100c01:	8e c0                	mov    es,eax
c0100c03:	ff 15 ec 8f 10 c0    	call   DWORD PTR ds:0xc0108fec
c0100c09:	e9 72 fb ff ff       	jmp    c0100780 <intr_exit>

c0100c0e <asm_intr0x22_handler>:
c0100c0e:	68 00 00 00 00       	push   0x0
c0100c13:	1e                   	push   ds
c0100c14:	06                   	push   es
c0100c15:	0f a0                	push   fs
c0100c17:	0f a8                	push   gs
c0100c19:	60                   	pusha  
c0100c1a:	68 22 00 00 00       	push   0x22
c0100c1f:	66 8c d0             	mov    ax,ss
c0100c22:	8e d8                	mov    ds,eax
c0100c24:	8e c0                	mov    es,eax
c0100c26:	ff 15 f0 8f 10 c0    	call   DWORD PTR ds:0xc0108ff0
c0100c2c:	e9 4f fb ff ff       	jmp    c0100780 <intr_exit>

c0100c31 <asm_intr0x23_handler>:
c0100c31:	68 00 00 00 00       	push   0x0
c0100c36:	1e                   	push   ds
c0100c37:	06                   	push   es
c0100c38:	0f a0                	push   fs
c0100c3a:	0f a8                	push   gs
c0100c3c:	60                   	pusha  
c0100c3d:	68 23 00 00 00       	push   0x23
c0100c42:	66 8c d0             	mov    ax,ss
c0100c45:	8e d8                	mov    ds,eax
c0100c47:	8e c0                	mov    es,eax
c0100c49:	ff 15 f4 8f 10 c0    	call   DWORD PTR ds:0xc0108ff4
c0100c4f:	e9 2c fb ff ff       	jmp    c0100780 <intr_exit>

c0100c54 <asm_intr0x24_handler>:
c0100c54:	68 00 00 00 00       	push   0x0
c0100c59:	1e                   	push   ds
c0100c5a:	06                   	push   es
c0100c5b:	0f a0                	push   fs
c0100c5d:	0f a8                	push   gs
c0100c5f:	60                   	pusha  
c0100c60:	68 24 00 00 00       	push   0x24
c0100c65:	66 8c d0             	mov    ax,ss
c0100c68:	8e d8                	mov    ds,eax
c0100c6a:	8e c0                	mov    es,eax
c0100c6c:	ff 15 f8 8f 10 c0    	call   DWORD PTR ds:0xc0108ff8
c0100c72:	e9 09 fb ff ff       	jmp    c0100780 <intr_exit>

c0100c77 <asm_intr0x25_handler>:
c0100c77:	68 00 00 00 00       	push   0x0
c0100c7c:	1e                   	push   ds
c0100c7d:	06                   	push   es
c0100c7e:	0f a0                	push   fs
c0100c80:	0f a8                	push   gs
c0100c82:	60                   	pusha  
c0100c83:	68 25 00 00 00       	push   0x25
c0100c88:	66 8c d0             	mov    ax,ss
c0100c8b:	8e d8                	mov    ds,eax
c0100c8d:	8e c0                	mov    es,eax
c0100c8f:	ff 15 fc 8f 10 c0    	call   DWORD PTR ds:0xc0108ffc
c0100c95:	e9 e6 fa ff ff       	jmp    c0100780 <intr_exit>

c0100c9a <asm_intr0x26_handler>:
c0100c9a:	68 00 00 00 00       	push   0x0
c0100c9f:	1e                   	push   ds
c0100ca0:	06                   	push   es
c0100ca1:	0f a0                	push   fs
c0100ca3:	0f a8                	push   gs
c0100ca5:	60                   	pusha  
c0100ca6:	68 26 00 00 00       	push   0x26
c0100cab:	66 8c d0             	mov    ax,ss
c0100cae:	8e d8                	mov    ds,eax
c0100cb0:	8e c0                	mov    es,eax
c0100cb2:	ff 15 00 90 10 c0    	call   DWORD PTR ds:0xc0109000
c0100cb8:	e9 c3 fa ff ff       	jmp    c0100780 <intr_exit>

c0100cbd <asm_intr0x27_handler>:
c0100cbd:	68 00 00 00 00       	push   0x0
c0100cc2:	1e                   	push   ds
c0100cc3:	06                   	push   es
c0100cc4:	0f a0                	push   fs
c0100cc6:	0f a8                	push   gs
c0100cc8:	60                   	pusha  
c0100cc9:	68 27 00 00 00       	push   0x27
c0100cce:	66 8c d0             	mov    ax,ss
c0100cd1:	8e d8                	mov    ds,eax
c0100cd3:	8e c0                	mov    es,eax
c0100cd5:	ff 15 04 90 10 c0    	call   DWORD PTR ds:0xc0109004
c0100cdb:	e9 a0 fa ff ff       	jmp    c0100780 <intr_exit>

c0100ce0 <asm_intr0x28_handler>:
c0100ce0:	68 00 00 00 00       	push   0x0
c0100ce5:	1e                   	push   ds
c0100ce6:	06                   	push   es
c0100ce7:	0f a0                	push   fs
c0100ce9:	0f a8                	push   gs
c0100ceb:	60                   	pusha  
c0100cec:	68 28 00 00 00       	push   0x28
c0100cf1:	66 8c d0             	mov    ax,ss
c0100cf4:	8e d8                	mov    ds,eax
c0100cf6:	8e c0                	mov    es,eax
c0100cf8:	ff 15 08 90 10 c0    	call   DWORD PTR ds:0xc0109008
c0100cfe:	e9 7d fa ff ff       	jmp    c0100780 <intr_exit>

c0100d03 <asm_intr0x29_handler>:
c0100d03:	68 00 00 00 00       	push   0x0
c0100d08:	1e                   	push   ds
c0100d09:	06                   	push   es
c0100d0a:	0f a0                	push   fs
c0100d0c:	0f a8                	push   gs
c0100d0e:	60                   	pusha  
c0100d0f:	68 29 00 00 00       	push   0x29
c0100d14:	66 8c d0             	mov    ax,ss
c0100d17:	8e d8                	mov    ds,eax
c0100d19:	8e c0                	mov    es,eax
c0100d1b:	ff 15 0c 90 10 c0    	call   DWORD PTR ds:0xc010900c
c0100d21:	e9 5a fa ff ff       	jmp    c0100780 <intr_exit>

c0100d26 <asm_intr0x2a_handler>:
c0100d26:	68 00 00 00 00       	push   0x0
c0100d2b:	1e                   	push   ds
c0100d2c:	06                   	push   es
c0100d2d:	0f a0                	push   fs
c0100d2f:	0f a8                	push   gs
c0100d31:	60                   	pusha  
c0100d32:	68 2a 00 00 00       	push   0x2a
c0100d37:	66 8c d0             	mov    ax,ss
c0100d3a:	8e d8                	mov    ds,eax
c0100d3c:	8e c0                	mov    es,eax
c0100d3e:	ff 15 10 90 10 c0    	call   DWORD PTR ds:0xc0109010
c0100d44:	e9 37 fa ff ff       	jmp    c0100780 <intr_exit>

c0100d49 <asm_intr0x2b_handler>:
c0100d49:	68 00 00 00 00       	push   0x0
c0100d4e:	1e                   	push   ds
c0100d4f:	06                   	push   es
c0100d50:	0f a0                	push   fs
c0100d52:	0f a8                	push   gs
c0100d54:	60                   	pusha  
c0100d55:	68 2b 00 00 00       	push   0x2b
c0100d5a:	66 8c d0             	mov    ax,ss
c0100d5d:	8e d8                	mov    ds,eax
c0100d5f:	8e c0                	mov    es,eax
c0100d61:	ff 15 14 90 10 c0    	call   DWORD PTR ds:0xc0109014
c0100d67:	e9 14 fa ff ff       	jmp    c0100780 <intr_exit>

c0100d6c <asm_intr0x2c_handler>:
c0100d6c:	68 00 00 00 00       	push   0x0
c0100d71:	1e                   	push   ds
c0100d72:	06                   	push   es
c0100d73:	0f a0                	push   fs
c0100d75:	0f a8                	push   gs
c0100d77:	60                   	pusha  
c0100d78:	68 2c 00 00 00       	push   0x2c
c0100d7d:	66 8c d0             	mov    ax,ss
c0100d80:	8e d8                	mov    ds,eax
c0100d82:	8e c0                	mov    es,eax
c0100d84:	ff 15 18 90 10 c0    	call   DWORD PTR ds:0xc0109018
c0100d8a:	e9 f1 f9 ff ff       	jmp    c0100780 <intr_exit>

c0100d8f <asm_intr0x2d_handler>:
c0100d8f:	68 00 00 00 00       	push   0x0
c0100d94:	1e                   	push   ds
c0100d95:	06                   	push   es
c0100d96:	0f a0                	push   fs
c0100d98:	0f a8                	push   gs
c0100d9a:	60                   	pusha  
c0100d9b:	68 2d 00 00 00       	push   0x2d
c0100da0:	66 8c d0             	mov    ax,ss
c0100da3:	8e d8                	mov    ds,eax
c0100da5:	8e c0                	mov    es,eax
c0100da7:	ff 15 1c 90 10 c0    	call   DWORD PTR ds:0xc010901c
c0100dad:	e9 ce f9 ff ff       	jmp    c0100780 <intr_exit>

c0100db2 <asm_intr0x2e_handler>:
c0100db2:	68 00 00 00 00       	push   0x0
c0100db7:	1e                   	push   ds
c0100db8:	06                   	push   es
c0100db9:	0f a0                	push   fs
c0100dbb:	0f a8                	push   gs
c0100dbd:	60                   	pusha  
c0100dbe:	68 2e 00 00 00       	push   0x2e
c0100dc3:	66 8c d0             	mov    ax,ss
c0100dc6:	8e d8                	mov    ds,eax
c0100dc8:	8e c0                	mov    es,eax
c0100dca:	ff 15 20 90 10 c0    	call   DWORD PTR ds:0xc0109020
c0100dd0:	e9 ab f9 ff ff       	jmp    c0100780 <intr_exit>

c0100dd5 <asm_intr0x2f_handler>:
c0100dd5:	68 00 00 00 00       	push   0x0
c0100dda:	1e                   	push   ds
c0100ddb:	06                   	push   es
c0100ddc:	0f a0                	push   fs
c0100dde:	0f a8                	push   gs
c0100de0:	60                   	pusha  
c0100de1:	68 2f 00 00 00       	push   0x2f
c0100de6:	66 8c d0             	mov    ax,ss
c0100de9:	8e d8                	mov    ds,eax
c0100deb:	8e c0                	mov    es,eax
c0100ded:	ff 15 24 90 10 c0    	call   DWORD PTR ds:0xc0109024
c0100df3:	e9 88 f9 ff ff       	jmp    c0100780 <intr_exit>

c0100df8 <syscall_entry>:
c0100df8:	fb                   	sti    
c0100df9:	68 00 00 00 00       	push   0x0
c0100dfe:	1e                   	push   ds
c0100dff:	06                   	push   es
c0100e00:	0f a0                	push   fs
c0100e02:	0f a8                	push   gs
c0100e04:	60                   	pusha  
c0100e05:	68 4d 00 00 00       	push   0x4d
c0100e0a:	52                   	push   edx
c0100e0b:	51                   	push   ecx
c0100e0c:	53                   	push   ebx
c0100e0d:	ff 14 85 8c 09 12 c0 	call   DWORD PTR [eax*4-0x3fedf674]
c0100e14:	81 c4 0c 00 00 00    	add    esp,0xc
c0100e1a:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
c0100e1e:	e9 5d f9 ff ff       	jmp    c0100780 <intr_exit>
	...

c0100e24 <intr0x27_handler>:
c0100e24:	55                   	push   ebp
c0100e25:	ba 20 00 00 00       	mov    edx,0x20
c0100e2a:	89 e5                	mov    ebp,esp
c0100e2c:	b8 20 00 00 00       	mov    eax,0x20
c0100e31:	ee                   	out    dx,al
c0100e32:	5d                   	pop    ebp
c0100e33:	c3                   	ret    

c0100e34 <init_pic>:
c0100e34:	55                   	push   ebp
c0100e35:	ba 21 00 00 00       	mov    edx,0x21
c0100e3a:	89 e5                	mov    ebp,esp
c0100e3c:	b8 ff 00 00 00       	mov    eax,0xff
c0100e41:	ee                   	out    dx,al
c0100e42:	b2 a1                	mov    dl,0xa1
c0100e44:	ee                   	out    dx,al
c0100e45:	b2 20                	mov    dl,0x20
c0100e47:	b0 11                	mov    al,0x11
c0100e49:	ee                   	out    dx,al
c0100e4a:	b2 21                	mov    dl,0x21
c0100e4c:	b0 20                	mov    al,0x20
c0100e4e:	ee                   	out    dx,al
c0100e4f:	b0 04                	mov    al,0x4
c0100e51:	ee                   	out    dx,al
c0100e52:	b0 01                	mov    al,0x1
c0100e54:	ee                   	out    dx,al
c0100e55:	b2 a0                	mov    dl,0xa0
c0100e57:	b0 11                	mov    al,0x11
c0100e59:	ee                   	out    dx,al
c0100e5a:	b2 a1                	mov    dl,0xa1
c0100e5c:	b0 28                	mov    al,0x28
c0100e5e:	ee                   	out    dx,al
c0100e5f:	b0 02                	mov    al,0x2
c0100e61:	ee                   	out    dx,al
c0100e62:	b0 01                	mov    al,0x1
c0100e64:	ee                   	out    dx,al
c0100e65:	b2 21                	mov    dl,0x21
c0100e67:	b0 f8                	mov    al,0xf8
c0100e69:	ee                   	out    dx,al
c0100e6a:	b2 a1                	mov    dl,0xa1
c0100e6c:	b0 ef                	mov    al,0xef
c0100e6e:	ee                   	out    dx,al
c0100e6f:	5d                   	pop    ebp
c0100e70:	c3                   	ret    

c0100e71 <idt_desc_init>:
c0100e71:	55                   	push   ebp
c0100e72:	31 c0                	xor    eax,eax
c0100e74:	89 e5                	mov    ebp,esp
c0100e76:	c7 04 85 68 8f 10 c0 	mov    DWORD PTR [eax*4-0x3fef7098],0xc0101060
c0100e7d:	60 10 10 c0 
c0100e81:	40                   	inc    eax
c0100e82:	83 f8 4e             	cmp    eax,0x4e
c0100e85:	75 ef                	jne    c0100e76 <idt_desc_init+0x5>
c0100e87:	c7 05 e8 8f 10 c0 04 	mov    DWORD PTR ds:0xc0108fe8,0xc0102e04
c0100e8e:	2e 10 c0 
c0100e91:	30 c0                	xor    al,al
c0100e93:	c7 05 ec 8f 10 c0 15 	mov    DWORD PTR ds:0xc0108fec,0xc0102a15
c0100e9a:	2a 10 c0 
c0100e9d:	c7 05 04 90 10 c0 24 	mov    DWORD PTR ds:0xc0109004,0xc0100e24
c0100ea4:	0e 10 c0 
c0100ea7:	c7 05 18 90 10 c0 06 	mov    DWORD PTR ds:0xc0109018,0xc0102c06
c0100eae:	2c 10 c0 
c0100eb1:	8b 0c 85 3c 42 10 c0 	mov    ecx,DWORD PTR [eax*4-0x3fefbdc4]
c0100eb8:	8d 14 c5 f8 8c 10 c0 	lea    edx,[eax*8-0x3fef7308]
c0100ebf:	66 89 0c c5 f8 8c 10 	mov    WORD PTR [eax*8-0x3fef7308],cx
c0100ec6:	c0 
c0100ec7:	40                   	inc    eax
c0100ec8:	c1 e9 10             	shr    ecx,0x10
c0100ecb:	83 f8 4e             	cmp    eax,0x4e
c0100ece:	66 c7 42 02 08 00    	mov    WORD PTR [edx+0x2],0x8
c0100ed4:	c6 42 04 00          	mov    BYTE PTR [edx+0x4],0x0
c0100ed8:	c6 42 05 8e          	mov    BYTE PTR [edx+0x5],0x8e
c0100edc:	66 89 4a 06          	mov    WORD PTR [edx+0x6],cx
c0100ee0:	75 cf                	jne    c0100eb1 <idt_desc_init+0x40>
c0100ee2:	b8 f8 0d 10 c0       	mov    eax,0xc0100df8
c0100ee7:	66 a3 60 8f 10 c0    	mov    ds:0xc0108f60,ax
c0100eed:	c1 e8 10             	shr    eax,0x10
c0100ef0:	66 c7 05 62 8f 10 c0 	mov    WORD PTR ds:0xc0108f62,0x8
c0100ef7:	08 00 
c0100ef9:	c6 05 64 8f 10 c0 00 	mov    BYTE PTR ds:0xc0108f64,0x0
c0100f00:	c6 05 65 8f 10 c0 ee 	mov    BYTE PTR ds:0xc0108f65,0xee
c0100f07:	66 a3 66 8f 10 c0    	mov    ds:0xc0108f66,ax
c0100f0d:	5d                   	pop    ebp
c0100f0e:	c3                   	ret    

c0100f0f <set_gatedesc>:
c0100f0f:	55                   	push   ebp
c0100f10:	89 e5                	mov    ebp,esp
c0100f12:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100f15:	53                   	push   ebx
c0100f16:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
c0100f19:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0100f1c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0100f1f:	88 48 05             	mov    BYTE PTR [eax+0x5],cl
c0100f22:	66 89 58 02          	mov    WORD PTR [eax+0x2],bx
c0100f26:	89 cb                	mov    ebx,ecx
c0100f28:	66 89 10             	mov    WORD PTR [eax],dx
c0100f2b:	c1 fb 08             	sar    ebx,0x8
c0100f2e:	c1 ea 10             	shr    edx,0x10
c0100f31:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0100f34:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0100f38:	5b                   	pop    ebx
c0100f39:	5d                   	pop    ebp
c0100f3a:	c3                   	ret    

c0100f3b <exception_init>:
c0100f3b:	55                   	push   ebp
c0100f3c:	89 e5                	mov    ebp,esp
c0100f3e:	c7 05 c0 8b 10 c0 90 	mov    DWORD PTR ds:0xc0108bc0,0xc0107b90
c0100f45:	7b 10 c0 
c0100f48:	c7 05 c4 8b 10 c0 a1 	mov    DWORD PTR ds:0xc0108bc4,0xc0107ba1
c0100f4f:	7b 10 c0 
c0100f52:	c7 05 c8 8b 10 c0 b5 	mov    DWORD PTR ds:0xc0108bc8,0xc0107bb5
c0100f59:	7b 10 c0 
c0100f5c:	c7 05 cc 8b 10 c0 c3 	mov    DWORD PTR ds:0xc0108bcc,0xc0107bc3
c0100f63:	7b 10 c0 
c0100f66:	c7 05 d0 8b 10 c0 dc 	mov    DWORD PTR ds:0xc0108bd0,0xc0107bdc
c0100f6d:	7b 10 c0 
c0100f70:	c7 05 d4 8b 10 c0 f3 	mov    DWORD PTR ds:0xc0108bd4,0xc0107bf3
c0100f77:	7b 10 c0 
c0100f7a:	c7 05 d8 8b 10 c0 16 	mov    DWORD PTR ds:0xc0108bd8,0xc0107c16
c0100f81:	7c 10 c0 
c0100f84:	c7 05 dc 8b 10 c0 33 	mov    DWORD PTR ds:0xc0108bdc,0xc0107c33
c0100f8b:	7c 10 c0 
c0100f8e:	c7 05 e0 8b 10 c0 56 	mov    DWORD PTR ds:0xc0108be0,0xc0107c56
c0100f95:	7c 10 c0 
c0100f98:	c7 05 e4 8b 10 c0 71 	mov    DWORD PTR ds:0xc0108be4,0xc0107c71
c0100f9f:	7c 10 c0 
c0100fa2:	c7 05 e8 8b 10 c0 8d 	mov    DWORD PTR ds:0xc0108be8,0xc0107c8d
c0100fa9:	7c 10 c0 
c0100fac:	c7 05 ec 8b 10 c0 a7 	mov    DWORD PTR ds:0xc0108bec,0xc0107ca7
c0100fb3:	7c 10 c0 
c0100fb6:	c7 05 f0 8b 10 c0 bf 	mov    DWORD PTR ds:0xc0108bf0,0xc0107cbf
c0100fbd:	7c 10 c0 
c0100fc0:	c7 05 f4 8b 10 c0 d9 	mov    DWORD PTR ds:0xc0108bf4,0xc0107cd9
c0100fc7:	7c 10 c0 
c0100fca:	c7 05 f8 8b 10 c0 fa 	mov    DWORD PTR ds:0xc0108bf8,0xc0107cfa
c0100fd1:	7c 10 c0 
c0100fd4:	c7 05 fc 8b 10 c0 13 	mov    DWORD PTR ds:0xc0108bfc,0xc0107d13
c0100fdb:	7d 10 c0 
c0100fde:	c7 05 00 8c 10 c0 1c 	mov    DWORD PTR ds:0xc0108c00,0xc0107d1c
c0100fe5:	7d 10 c0 
c0100fe8:	c7 05 04 8c 10 c0 3d 	mov    DWORD PTR ds:0xc0108c04,0xc0107d3d
c0100fef:	7d 10 c0 
c0100ff2:	c7 05 08 8c 10 c0 5b 	mov    DWORD PTR ds:0xc0108c08,0xc0107d5b
c0100ff9:	7d 10 c0 
c0100ffc:	c7 05 0c 8c 10 c0 77 	mov    DWORD PTR ds:0xc0108c0c,0xc0107d77
c0101003:	7d 10 c0 
c0101006:	5d                   	pop    ebp
c0101007:	c3                   	ret    

c0101008 <init_idt>:
c0101008:	55                   	push   ebp
c0101009:	89 e5                	mov    ebp,esp
c010100b:	83 ec 10             	sub    esp,0x10
c010100e:	e8 5e fe ff ff       	call   c0100e71 <idt_desc_init>
c0101013:	e8 1c fe ff ff       	call   c0100e34 <init_pic>
c0101018:	b8 f8 8c 10 c0       	mov    eax,0xc0108cf8
c010101d:	31 d2                	xor    edx,edx
c010101f:	0f a4 c2 10          	shld   edx,eax,0x10
c0101023:	c1 e0 10             	shl    eax,0x10
c0101026:	0d 6f 02 00 00       	or     eax,0x26f
c010102b:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c010102e:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
c0101031:	e8 05 ff ff ff       	call   c0100f3b <exception_init>
c0101036:	0f 01 5d f8          	lidtd  [ebp-0x8]
c010103a:	c9                   	leave  
c010103b:	c3                   	ret    

c010103c <intr_get_status>:
c010103c:	55                   	push   ebp
c010103d:	89 e5                	mov    ebp,esp
c010103f:	9c                   	pushf  
c0101040:	58                   	pop    eax
c0101041:	f6 c4 02             	test   ah,0x2
c0101044:	0f 95 c0             	setne  al
c0101047:	0f b6 c0             	movzx  eax,al
c010104a:	5d                   	pop    ebp
c010104b:	c3                   	ret    

c010104c <intr_disable>:
c010104c:	55                   	push   ebp
c010104d:	89 e5                	mov    ebp,esp
c010104f:	e8 e8 ff ff ff       	call   c010103c <intr_get_status>
c0101054:	31 d2                	xor    edx,edx
c0101056:	48                   	dec    eax
c0101057:	75 03                	jne    c010105c <intr_disable+0x10>
c0101059:	fa                   	cli    
c010105a:	b2 01                	mov    dl,0x1
c010105c:	89 d0                	mov    eax,edx
c010105e:	5d                   	pop    ebp
c010105f:	c3                   	ret    

c0101060 <general_intr_handler>:
c0101060:	55                   	push   ebp
c0101061:	89 e5                	mov    ebp,esp
c0101063:	56                   	push   esi
c0101064:	53                   	push   ebx
c0101065:	81 ec 10 01 00 00    	sub    esp,0x110
c010106b:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
c010106e:	8d 9d f9 fe ff ff    	lea    ebx,[ebp-0x107]
c0101074:	88 85 f7 fe ff ff    	mov    BYTE PTR [ebp-0x109],al
c010107a:	e8 cd ff ff ff       	call   c010104c <intr_disable>
c010107f:	83 ec 0c             	sub    esp,0xc
c0101082:	6a 00                	push   0x0
c0101084:	e8 68 24 00 00       	call   c01034f1 <set_cursor>
c0101089:	8b 15 28 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c28
c010108f:	83 c4 0c             	add    esp,0xc
c0101092:	a1 24 7c 00 c0       	mov    eax,ds:0xc0007c24
c0101097:	4a                   	dec    edx
c0101098:	52                   	push   edx
c0101099:	8d 50 ff             	lea    edx,[eax-0x1]
c010109c:	52                   	push   edx
c010109d:	6a 00                	push   0x0
c010109f:	6a 00                	push   0x0
c01010a1:	68 ff 00 00 00       	push   0xff
c01010a6:	50                   	push   eax
c01010a7:	68 00 00 00 e0       	push   0xe0000000
c01010ac:	e8 90 2e 00 00       	call   c0103f41 <viewFill>
c01010b1:	83 c4 18             	add    esp,0x18
c01010b4:	68 99 7d 10 c0       	push   0xc0107d99
c01010b9:	68 ff ff ff 00       	push   0xffffff
c01010be:	6a 0a                	push   0xa
c01010c0:	6a 0a                	push   0xa
c01010c2:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01010c8:	68 00 00 00 e0       	push   0xe0000000
c01010cd:	e8 50 2f 00 00       	call   c0104022 <vput_str>
c01010d2:	83 c4 18             	add    esp,0x18
c01010d5:	0f b6 b5 f7 fe ff ff 	movzx  esi,BYTE PTR [ebp-0x109]
c01010dc:	ff 75 40             	push   DWORD PTR [ebp+0x40]
c01010df:	ff 75 44             	push   DWORD PTR [ebp+0x44]
c01010e2:	56                   	push   esi
c01010e3:	68 c8 79 10 c0       	push   0xc01079c8
c01010e8:	68 bc 7e 10 c0       	push   0xc0107ebc
c01010ed:	53                   	push   ebx
c01010ee:	e8 36 28 00 00       	call   c0103929 <sprintf>
c01010f3:	83 c4 18             	add    esp,0x18
c01010f6:	53                   	push   ebx
c01010f7:	6a 17                	push   0x17
c01010f9:	e8 bb 24 00 00       	call   c01035b9 <put_str>
c01010fe:	59                   	pop    ecx
c01010ff:	58                   	pop    eax
c0101100:	53                   	push   ebx
c0101101:	68 ff ff ff 00       	push   0xffffff
c0101106:	6a 5a                	push   0x5a
c0101108:	6a 0a                	push   0xa
c010110a:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0101110:	68 00 00 00 e0       	push   0xe0000000
c0101115:	e8 08 2f 00 00       	call   c0104022 <vput_str>
c010111a:	83 c4 20             	add    esp,0x20
c010111d:	80 bd f7 fe ff ff 13 	cmp    BYTE PTR [ebp-0x109],0x13
c0101124:	77 7d                	ja     c01011a3 <general_intr_handler+0x143>
c0101126:	51                   	push   ecx
c0101127:	51                   	push   ecx
c0101128:	ff 34 b5 c0 8b 10 c0 	push   DWORD PTR [esi*4-0x3fef7440]
c010112f:	6a 14                	push   0x14
c0101131:	e8 83 24 00 00       	call   c01035b9 <put_str>
c0101136:	58                   	pop    eax
c0101137:	5a                   	pop    edx
c0101138:	ff 34 b5 c0 8b 10 c0 	push   DWORD PTR [esi*4-0x3fef7440]
c010113f:	68 ff 00 ff 00       	push   0xff00ff
c0101144:	68 8a 00 00 00       	push   0x8a
c0101149:	6a 12                	push   0x12
c010114b:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0101151:	68 00 00 00 e0       	push   0xe0000000
c0101156:	e8 c7 2e 00 00       	call   c0104022 <vput_str>
c010115b:	83 c4 20             	add    esp,0x20
c010115e:	80 bd f7 fe ff ff 0e 	cmp    BYTE PTR [ebp-0x109],0xe
c0101165:	75 3c                	jne    c01011a3 <general_intr_handler+0x143>
c0101167:	0f 20 d0             	mov    eax,cr2
c010116a:	52                   	push   edx
c010116b:	50                   	push   eax
c010116c:	68 e3 7e 10 c0       	push   0xc0107ee3
c0101171:	53                   	push   ebx
c0101172:	e8 b2 27 00 00       	call   c0103929 <sprintf>
c0101177:	59                   	pop    ecx
c0101178:	5e                   	pop    esi
c0101179:	53                   	push   ebx
c010117a:	6a 17                	push   0x17
c010117c:	e8 38 24 00 00       	call   c01035b9 <put_str>
c0101181:	58                   	pop    eax
c0101182:	5a                   	pop    edx
c0101183:	53                   	push   ebx
c0101184:	68 ff ff ff 00       	push   0xffffff
c0101189:	68 9a 00 00 00       	push   0x9a
c010118e:	6a 0a                	push   0xa
c0101190:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0101196:	68 00 00 00 e0       	push   0xe0000000
c010119b:	e8 82 2e 00 00       	call   c0104022 <vput_str>
c01011a0:	83 c4 20             	add    esp,0x20
c01011a3:	eb fe                	jmp    c01011a3 <general_intr_handler+0x143>

c01011a5 <intr_enable>:
c01011a5:	55                   	push   ebp
c01011a6:	89 e5                	mov    ebp,esp
c01011a8:	e8 8f fe ff ff       	call   c010103c <intr_get_status>
c01011ad:	ba 01 00 00 00       	mov    edx,0x1
c01011b2:	48                   	dec    eax
c01011b3:	74 03                	je     c01011b8 <intr_enable+0x13>
c01011b5:	fb                   	sti    
c01011b6:	30 d2                	xor    dl,dl
c01011b8:	89 d0                	mov    eax,edx
c01011ba:	5d                   	pop    ebp
c01011bb:	c3                   	ret    

c01011bc <intr_set_status>:
c01011bc:	55                   	push   ebp
c01011bd:	89 e5                	mov    ebp,esp
c01011bf:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01011c3:	75 06                	jne    c01011cb <intr_set_status+0xf>
c01011c5:	5d                   	pop    ebp
c01011c6:	e9 da ff ff ff       	jmp    c01011a5 <intr_enable>
c01011cb:	5d                   	pop    ebp
c01011cc:	e9 7b fe ff ff       	jmp    c010104c <intr_disable>
c01011d1:	00 00                	add    BYTE PTR [eax],al
	...

c01011d4 <init_block>:
c01011d4:	55                   	push   ebp
c01011d5:	89 e5                	mov    ebp,esp
c01011d7:	57                   	push   edi
c01011d8:	bf 06 00 00 00       	mov    edi,0x6
c01011dd:	56                   	push   esi
c01011de:	53                   	push   ebx
c01011df:	bb 20 00 00 00       	mov    ebx,0x20
c01011e4:	83 ec 0c             	sub    esp,0xc
c01011e7:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01011ea:	31 d2                	xor    edx,edx
c01011ec:	b8 f4 0f 00 00       	mov    eax,0xff4
c01011f1:	f7 f3                	div    ebx
c01011f3:	83 ec 0c             	sub    esp,0xc
c01011f6:	89 1e                	mov    DWORD PTR [esi],ebx
c01011f8:	01 db                	add    ebx,ebx
c01011fa:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
c01011fd:	8d 46 08             	lea    eax,[esi+0x8]
c0101200:	83 c6 20             	add    esi,0x20
c0101203:	50                   	push   eax
c0101204:	e8 93 20 00 00       	call   c010329c <list_init>
c0101209:	83 c4 10             	add    esp,0x10
c010120c:	4f                   	dec    edi
c010120d:	75 db                	jne    c01011ea <init_block+0x16>
c010120f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101212:	5b                   	pop    ebx
c0101213:	5e                   	pop    esi
c0101214:	5f                   	pop    edi
c0101215:	5d                   	pop    ebp
c0101216:	c3                   	ret    

c0101217 <sys_malloc>:
c0101217:	55                   	push   ebp
c0101218:	89 e5                	mov    ebp,esp
c010121a:	57                   	push   edi
c010121b:	56                   	push   esi
c010121c:	53                   	push   ebx
c010121d:	83 ec 38             	sub    esp,0x38
c0101220:	68 1c 7f 10 c0       	push   0xc0107f1c
c0101225:	e8 ca f4 ff ff       	call   c01006f4 <log>
c010122a:	e8 50 0e 00 00       	call   c010207f <running_thread>
c010122f:	83 c4 10             	add    esp,0x10
c0101232:	83 78 3c 00          	cmp    DWORD PTR [eax+0x3c],0x0
c0101236:	75 1c                	jne    c0101254 <sys_malloc+0x3d>
c0101238:	8b 15 0c 09 12 c0    	mov    edx,DWORD PTR ds:0xc012090c
c010123e:	be d8 08 12 c0       	mov    esi,0xc01208d8
c0101243:	bb 01 00 00 00       	mov    ebx,0x1
c0101248:	c7 45 e0 a0 0d 11 c0 	mov    DWORD PTR [ebp-0x20],0xc0110da0
c010124f:	c1 e2 0c             	shl    edx,0xc
c0101252:	eb 19                	jmp    c010126d <sys_malloc+0x56>
c0101254:	8b 15 94 0e 11 c0    	mov    edx,DWORD PTR ds:0xc0110e94
c010125a:	83 c0 7c             	add    eax,0x7c
c010125d:	be 60 0e 11 c0       	mov    esi,0xc0110e60
c0101262:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0101265:	bb 02 00 00 00       	mov    ebx,0x2
c010126a:	c1 e2 0c             	shl    edx,0xc
c010126d:	31 ff                	xor    edi,edi
c010126f:	39 55 08             	cmp    DWORD PTR [ebp+0x8],edx
c0101272:	0f 8f ad 01 00 00    	jg     c0101425 <sys_malloc+0x20e>
c0101278:	83 ec 0c             	sub    esp,0xc
c010127b:	56                   	push   esi
c010127c:	e8 66 0c 00 00       	call   c0101ee7 <lock_acquire>
c0101281:	83 c4 10             	add    esp,0x10
c0101284:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c010128b:	0f 8f 25 01 00 00    	jg     c01013b6 <sys_malloc+0x19f>
c0101291:	83 ec 0c             	sub    esp,0xc
c0101294:	68 2a 7f 10 c0       	push   0xc0107f2a
c0101299:	e8 56 f4 ff ff       	call   c01006f4 <log>
c010129e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01012a1:	83 c4 10             	add    esp,0x10
c01012a4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01012a7:	3b 50 04             	cmp    edx,DWORD PTR [eax+0x4]
c01012aa:	76 09                	jbe    c01012b5 <sys_malloc+0x9e>
c01012ac:	47                   	inc    edi
c01012ad:	83 c0 20             	add    eax,0x20
c01012b0:	83 ff 06             	cmp    edi,0x6
c01012b3:	75 ef                	jne    c01012a4 <sys_malloc+0x8d>
c01012b5:	c1 e7 05             	shl    edi,0x5
c01012b8:	83 ec 0c             	sub    esp,0xc
c01012bb:	03 7d e0             	add    edi,DWORD PTR [ebp-0x20]
c01012be:	8d 57 08             	lea    edx,[edi+0x8]
c01012c1:	52                   	push   edx
c01012c2:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c01012c5:	e8 03 21 00 00       	call   c01033cd <list_empty>
c01012ca:	83 c4 10             	add    esp,0x10
c01012cd:	85 c0                	test   eax,eax
c01012cf:	0f 84 c6 00 00 00    	je     c010139b <sys_malloc+0x184>
c01012d5:	50                   	push   eax
c01012d6:	50                   	push   eax
c01012d7:	6a 01                	push   0x1
c01012d9:	53                   	push   ebx
c01012da:	e8 6d 04 00 00       	call   c010174c <page_alloc>
c01012df:	83 c4 10             	add    esp,0x10
c01012e2:	85 c0                	test   eax,eax
c01012e4:	89 c3                	mov    ebx,eax
c01012e6:	75 1f                	jne    c0101307 <sys_malloc+0xf0>
c01012e8:	83 ec 0c             	sub    esp,0xc
c01012eb:	31 ff                	xor    edi,edi
c01012ed:	68 3f 7f 10 c0       	push   0xc0107f3f
c01012f2:	e8 fd f3 ff ff       	call   c01006f4 <log>
c01012f7:	89 34 24             	mov    DWORD PTR [esp],esi
c01012fa:	e8 43 0c 00 00       	call   c0101f42 <lock_release>
c01012ff:	83 c4 10             	add    esp,0x10
c0101302:	e9 1e 01 00 00       	jmp    c0101425 <sys_malloc+0x20e>
c0101307:	89 38                	mov    DWORD PTR [eax],edi
c0101309:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0101310:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
c0101313:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
c0101316:	e8 31 fd ff ff       	call   c010104c <intr_disable>
c010131b:	8d 53 0c             	lea    edx,[ebx+0xc]
c010131e:	89 75 d4             	mov    DWORD PTR [ebp-0x2c],esi
c0101321:	89 de                	mov    esi,ebx
c0101323:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c010132a:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
c010132d:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0101330:	eb 50                	jmp    c0101382 <sys_malloc+0x16b>
c0101332:	8b 06                	mov    eax,DWORD PTR [esi]
c0101334:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c0101337:	0f af 18             	imul   ebx,DWORD PTR [eax]
c010133a:	03 5d d8             	add    ebx,DWORD PTR [ebp-0x28]
c010133d:	89 5b 04             	mov    DWORD PTR [ebx+0x4],ebx
c0101340:	50                   	push   eax
c0101341:	50                   	push   eax
c0101342:	53                   	push   ebx
c0101343:	8b 06                	mov    eax,DWORD PTR [esi]
c0101345:	83 c0 08             	add    eax,0x8
c0101348:	50                   	push   eax
c0101349:	e8 06 20 00 00       	call   c0103354 <list_find>
c010134e:	83 c4 10             	add    esp,0x10
c0101351:	85 c0                	test   eax,eax
c0101353:	74 19                	je     c010136e <sys_malloc+0x157>
c0101355:	68 4d 7f 10 c0       	push   0xc0107f4d
c010135a:	68 f8 7f 10 c0       	push   0xc0107ff8
c010135f:	6a 63                	push   0x63
c0101361:	68 7c 7f 10 c0       	push   0xc0107f7c
c0101366:	e8 25 f3 ff ff       	call   c0100690 <panic_spin>
c010136b:	83 c4 10             	add    esp,0x10
c010136e:	50                   	push   eax
c010136f:	50                   	push   eax
c0101370:	53                   	push   ebx
c0101371:	8b 06                	mov    eax,DWORD PTR [esi]
c0101373:	83 c0 08             	add    eax,0x8
c0101376:	50                   	push   eax
c0101377:	e8 7f 1f 00 00       	call   c01032fb <list_append>
c010137c:	83 c4 10             	add    esp,0x10
c010137f:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
c0101382:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0101385:	3b 57 04             	cmp    edx,DWORD PTR [edi+0x4]
c0101388:	72 a8                	jb     c0101332 <sys_malloc+0x11b>
c010138a:	83 ec 0c             	sub    esp,0xc
c010138d:	8b 75 d4             	mov    esi,DWORD PTR [ebp-0x2c]
c0101390:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
c0101393:	e8 24 fe ff ff       	call   c01011bc <intr_set_status>
c0101398:	83 c4 10             	add    esp,0x10
c010139b:	83 ec 0c             	sub    esp,0xc
c010139e:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
c01013a1:	e8 94 1f 00 00       	call   c010333a <list_pop>
c01013a6:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
c01013a9:	89 f8                	mov    eax,edi
c01013ab:	25 00 f0 ff ff       	and    eax,0xfffff000
c01013b0:	ff 48 04             	dec    DWORD PTR [eax+0x4]
c01013b3:	58                   	pop    eax
c01013b4:	eb 34                	jmp    c01013ea <sys_malloc+0x1d3>
c01013b6:	83 ec 0c             	sub    esp,0xc
c01013b9:	68 8b 7f 10 c0       	push   0xc0107f8b
c01013be:	e8 31 f3 ff ff       	call   c01006f4 <log>
c01013c3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01013c6:	59                   	pop    ecx
c01013c7:	58                   	pop    eax
c01013c8:	81 c2 0b 10 00 00    	add    edx,0x100b
c01013ce:	c1 ea 0c             	shr    edx,0xc
c01013d1:	52                   	push   edx
c01013d2:	53                   	push   ebx
c01013d3:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
c01013d6:	e8 71 03 00 00       	call   c010174c <page_alloc>
c01013db:	83 c4 10             	add    esp,0x10
c01013de:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c01013e1:	85 c0                	test   eax,eax
c01013e3:	89 c3                	mov    ebx,eax
c01013e5:	75 0b                	jne    c01013f2 <sys_malloc+0x1db>
c01013e7:	83 ec 0c             	sub    esp,0xc
c01013ea:	56                   	push   esi
c01013eb:	e8 52 0b 00 00       	call   c0101f42 <lock_release>
c01013f0:	eb 30                	jmp    c0101422 <sys_malloc+0x20b>
c01013f2:	50                   	push   eax
c01013f3:	89 d0                	mov    eax,edx
c01013f5:	c1 e0 0c             	shl    eax,0xc
c01013f8:	50                   	push   eax
c01013f9:	6a 00                	push   0x0
c01013fb:	53                   	push   ebx
c01013fc:	8d 7b 0c             	lea    edi,[ebx+0xc]
c01013ff:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
c0101402:	e8 51 22 00 00       	call   c0103658 <memset>
c0101407:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c010140d:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0101410:	c7 43 08 01 00 00 00 	mov    DWORD PTR [ebx+0x8],0x1
c0101417:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c010141a:	89 34 24             	mov    DWORD PTR [esp],esi
c010141d:	e8 20 0b 00 00       	call   c0101f42 <lock_release>
c0101422:	83 c4 10             	add    esp,0x10
c0101425:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101428:	89 f8                	mov    eax,edi
c010142a:	5b                   	pop    ebx
c010142b:	5e                   	pop    esi
c010142c:	5f                   	pop    edi
c010142d:	5d                   	pop    ebp
c010142e:	c3                   	ret    

c010142f <sys_free>:
c010142f:	55                   	push   ebp
c0101430:	89 e5                	mov    ebp,esp
c0101432:	57                   	push   edi
c0101433:	56                   	push   esi
c0101434:	53                   	push   ebx
c0101435:	83 ec 28             	sub    esp,0x28
c0101438:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c010143b:	68 9e 7f 10 c0       	push   0xc0107f9e
c0101440:	e8 af f2 ff ff       	call   c01006f4 <log>
c0101445:	83 c4 10             	add    esp,0x10
c0101448:	85 f6                	test   esi,esi
c010144a:	0f 84 ea 00 00 00    	je     c010153a <sys_free+0x10b>
c0101450:	e8 2a 0c 00 00       	call   c010207f <running_thread>
c0101455:	83 78 3c 00          	cmp    DWORD PTR [eax+0x3c],0x0
c0101459:	75 0e                	jne    c0101469 <sys_free+0x3a>
c010145b:	bf d8 08 12 c0       	mov    edi,0xc01208d8
c0101460:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
c0101467:	eb 0c                	jmp    c0101475 <sys_free+0x46>
c0101469:	bf 60 0e 11 c0       	mov    edi,0xc0110e60
c010146e:	c7 45 e4 02 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x2
c0101475:	83 ec 0c             	sub    esp,0xc
c0101478:	89 f3                	mov    ebx,esi
c010147a:	57                   	push   edi
c010147b:	81 e3 00 f0 ff ff    	and    ebx,0xfffff000
c0101481:	e8 61 0a 00 00       	call   c0101ee7 <lock_acquire>
c0101486:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101488:	83 c4 10             	add    esp,0x10
c010148b:	85 c0                	test   eax,eax
c010148d:	75 0f                	jne    c010149e <sys_free+0x6f>
c010148f:	83 7b 08 01          	cmp    DWORD PTR [ebx+0x8],0x1
c0101493:	75 09                	jne    c010149e <sys_free+0x6f>
c0101495:	56                   	push   esi
c0101496:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0101499:	e9 81 00 00 00       	jmp    c010151f <sys_free+0xf0>
c010149e:	51                   	push   ecx
c010149f:	83 c0 08             	add    eax,0x8
c01014a2:	51                   	push   ecx
c01014a3:	56                   	push   esi
c01014a4:	50                   	push   eax
c01014a5:	e8 51 1e 00 00       	call   c01032fb <list_append>
c01014aa:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c01014ad:	83 c4 10             	add    esp,0x10
c01014b0:	8b 13                	mov    edx,DWORD PTR [ebx]
c01014b2:	40                   	inc    eax
c01014b3:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
c01014b6:	3b 42 04             	cmp    eax,DWORD PTR [edx+0x4]
c01014b9:	75 70                	jne    c010152b <sys_free+0xfc>
c01014bb:	eb 46                	jmp    c0101503 <sys_free+0xd4>
c01014bd:	8b 18                	mov    ebx,DWORD PTR [eax]
c01014bf:	83 c0 08             	add    eax,0x8
c01014c2:	52                   	push   edx
c01014c3:	52                   	push   edx
c01014c4:	0f af de             	imul   ebx,esi
c01014c7:	03 5d e0             	add    ebx,DWORD PTR [ebp-0x20]
c01014ca:	53                   	push   ebx
c01014cb:	50                   	push   eax
c01014cc:	e8 83 1e 00 00       	call   c0103354 <list_find>
c01014d1:	83 c4 10             	add    esp,0x10
c01014d4:	85 c0                	test   eax,eax
c01014d6:	75 1c                	jne    c01014f4 <sys_free+0xc5>
c01014d8:	68 aa 7f 10 c0       	push   0xc0107faa
c01014dd:	68 04 80 10 c0       	push   0xc0108004
c01014e2:	68 ae 00 00 00       	push   0xae
c01014e7:	68 7c 7f 10 c0       	push   0xc0107f7c
c01014ec:	e8 9f f1 ff ff       	call   c0100690 <panic_spin>
c01014f1:	83 c4 10             	add    esp,0x10
c01014f4:	83 ec 0c             	sub    esp,0xc
c01014f7:	46                   	inc    esi
c01014f8:	53                   	push   ebx
c01014f9:	e8 15 1e 00 00       	call   c0103313 <list_remove>
c01014fe:	83 c4 10             	add    esp,0x10
c0101501:	eb 0d                	jmp    c0101510 <sys_free+0xe1>
c0101503:	8d 43 0c             	lea    eax,[ebx+0xc]
c0101506:	31 f6                	xor    esi,esi
c0101508:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
c010150b:	89 df                	mov    edi,ebx
c010150d:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0101510:	8b 07                	mov    eax,DWORD PTR [edi]
c0101512:	3b 70 04             	cmp    esi,DWORD PTR [eax+0x4]
c0101515:	72 a6                	jb     c01014bd <sys_free+0x8e>
c0101517:	89 fb                	mov    ebx,edi
c0101519:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
c010151c:	50                   	push   eax
c010151d:	6a 01                	push   0x1
c010151f:	53                   	push   ebx
c0101520:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0101523:	e8 ee 06 00 00       	call   c0101c16 <page_free>
c0101528:	83 c4 10             	add    esp,0x10
c010152b:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c010152e:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101531:	5b                   	pop    ebx
c0101532:	5e                   	pop    esi
c0101533:	5f                   	pop    edi
c0101534:	5d                   	pop    ebp
c0101535:	e9 08 0a 00 00       	jmp    c0101f42 <lock_release>
c010153a:	8d 65 f4             	lea    esp,[ebp-0xc]
c010153d:	5b                   	pop    ebx
c010153e:	5e                   	pop    esi
c010153f:	5f                   	pop    edi
c0101540:	5d                   	pop    ebp
c0101541:	c3                   	ret    
	...

c0101544 <init_memman>:
c0101544:	55                   	push   ebp
c0101545:	89 e5                	mov    ebp,esp
c0101547:	57                   	push   edi
c0101548:	56                   	push   esi
c0101549:	53                   	push   ebx
c010154a:	83 ec 18             	sub    esp,0x18
c010154d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101550:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0101553:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0101556:	53                   	push   ebx
c0101557:	e8 ff 07 00 00       	call   c0101d5b <lock_init>
c010155c:	83 c4 10             	add    esp,0x10
c010155f:	85 ff                	test   edi,edi
c0101561:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c0101568:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c010156f:	c7 43 2c 00 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x0
c0101576:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
c010157d:	75 19                	jne    c0101598 <init_memman+0x54>
c010157f:	68 10 80 10 c0       	push   0xc0108010
c0101584:	68 88 81 10 c0       	push   0xc0108188
c0101589:	6a 54                	push   0x54
c010158b:	68 1b 80 10 c0       	push   0xc010801b
c0101590:	e8 fb f0 ff ff       	call   c0100690 <panic_spin>
c0101595:	83 c4 10             	add    esp,0x10
c0101598:	85 f6                	test   esi,esi
c010159a:	89 7b 34             	mov    DWORD PTR [ebx+0x34],edi
c010159d:	75 19                	jne    c01015b8 <init_memman+0x74>
c010159f:	68 2b 80 10 c0       	push   0xc010802b
c01015a4:	68 88 81 10 c0       	push   0xc0108188
c01015a9:	6a 56                	push   0x56
c01015ab:	68 1b 80 10 c0       	push   0xc010801b
c01015b0:	e8 db f0 ff ff       	call   c0100690 <panic_spin>
c01015b5:	83 c4 10             	add    esp,0x10
c01015b8:	89 73 38             	mov    DWORD PTR [ebx+0x38],esi
c01015bb:	8d 65 f4             	lea    esp,[ebp-0xc]
c01015be:	5b                   	pop    ebx
c01015bf:	5e                   	pop    esi
c01015c0:	5f                   	pop    edi
c01015c1:	5d                   	pop    ebp
c01015c2:	c3                   	ret    

c01015c3 <TotalFreeSize>:
c01015c3:	55                   	push   ebp
c01015c4:	31 d2                	xor    edx,edx
c01015c6:	89 e5                	mov    ebp,esp
c01015c8:	31 c0                	xor    eax,eax
c01015ca:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c01015cd:	56                   	push   esi
c01015ce:	53                   	push   ebx
c01015cf:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
c01015d2:	eb 08                	jmp    c01015dc <TotalFreeSize+0x19>
c01015d4:	8b 71 38             	mov    esi,DWORD PTR [ecx+0x38]
c01015d7:	03 44 d6 04          	add    eax,DWORD PTR [esi+edx*8+0x4]
c01015db:	42                   	inc    edx
c01015dc:	39 da                	cmp    edx,ebx
c01015de:	75 f4                	jne    c01015d4 <TotalFreeSize+0x11>
c01015e0:	5b                   	pop    ebx
c01015e1:	5e                   	pop    esi
c01015e2:	5d                   	pop    ebp
c01015e3:	c3                   	ret    

c01015e4 <pde_ptr>:
c01015e4:	55                   	push   ebp
c01015e5:	89 e5                	mov    ebp,esp
c01015e7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01015ea:	5d                   	pop    ebp
c01015eb:	c1 e8 16             	shr    eax,0x16
c01015ee:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c01015f5:	c3                   	ret    

c01015f6 <pte_ptr>:
c01015f6:	55                   	push   ebp
c01015f7:	89 e5                	mov    ebp,esp
c01015f9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01015fc:	5d                   	pop    ebp
c01015fd:	89 c2                	mov    edx,eax
c01015ff:	25 00 f0 3f 00       	and    eax,0x3ff000
c0101604:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c010160a:	c1 ea 0a             	shr    edx,0xa
c010160d:	c1 e8 0a             	shr    eax,0xa
c0101610:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c0101617:	c3                   	ret    

c0101618 <addr_v2p>:
c0101618:	55                   	push   ebp
c0101619:	89 e5                	mov    ebp,esp
c010161b:	53                   	push   ebx
c010161c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010161f:	53                   	push   ebx
c0101620:	81 e3 ff 0f 00 00    	and    ebx,0xfff
c0101626:	e8 cb ff ff ff       	call   c01015f6 <pte_ptr>
c010162b:	5a                   	pop    edx
c010162c:	8b 00                	mov    eax,DWORD PTR [eax]
c010162e:	25 00 f0 ff ff       	and    eax,0xfffff000
c0101633:	09 d8                	or     eax,ebx
c0101635:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101638:	c9                   	leave  
c0101639:	c3                   	ret    

c010163a <pgman_alloc>:
c010163a:	55                   	push   ebp
c010163b:	89 e5                	mov    ebp,esp
c010163d:	57                   	push   edi
c010163e:	56                   	push   esi
c010163f:	53                   	push   ebx
c0101640:	83 ec 28             	sub    esp,0x28
c0101643:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101646:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101649:	53                   	push   ebx
c010164a:	e8 98 08 00 00       	call   c0101ee7 <lock_acquire>
c010164f:	8b 7b 24             	mov    edi,DWORD PTR [ebx+0x24]
c0101652:	83 c4 10             	add    esp,0x10
c0101655:	31 c0                	xor    eax,eax
c0101657:	eb 67                	jmp    c01016c0 <pgman_alloc+0x86>
c0101659:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c010165c:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
c0101663:	01 d1                	add    ecx,edx
c0101665:	39 71 04             	cmp    DWORD PTR [ecx+0x4],esi
c0101668:	72 55                	jb     c01016bf <pgman_alloc+0x85>
c010166a:	8b 39                	mov    edi,DWORD PTR [ecx]
c010166c:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
c010166f:	01 f7                	add    edi,esi
c0101671:	89 39                	mov    DWORD PTR [ecx],edi
c0101673:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c0101676:	01 d1                	add    ecx,edx
c0101678:	29 71 04             	sub    DWORD PTR [ecx+0x4],esi
c010167b:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c010167e:	83 7c 11 04 00       	cmp    DWORD PTR [ecx+edx*1+0x4],0x0
c0101683:	75 26                	jne    c01016ab <pgman_alloc+0x71>
c0101685:	ff 4b 24             	dec    DWORD PTR [ebx+0x24]
c0101688:	eb 16                	jmp    c01016a0 <pgman_alloc+0x66>
c010168a:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c010168d:	40                   	inc    eax
c010168e:	8b 74 11 08          	mov    esi,DWORD PTR [ecx+edx*1+0x8]
c0101692:	8b 7c 11 0c          	mov    edi,DWORD PTR [ecx+edx*1+0xc]
c0101696:	89 34 11             	mov    DWORD PTR [ecx+edx*1],esi
c0101699:	89 7c 11 04          	mov    DWORD PTR [ecx+edx*1+0x4],edi
c010169d:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01016a0:	3b 43 24             	cmp    eax,DWORD PTR [ebx+0x24]
c01016a3:	8d 7a 08             	lea    edi,[edx+0x8]
c01016a6:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
c01016a9:	72 df                	jb     c010168a <pgman_alloc+0x50>
c01016ab:	83 ec 0c             	sub    esp,0xc
c01016ae:	53                   	push   ebx
c01016af:	e8 8e 08 00 00       	call   c0101f42 <lock_release>
c01016b4:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01016b7:	83 c4 10             	add    esp,0x10
c01016ba:	c1 e0 0c             	shl    eax,0xc
c01016bd:	eb 13                	jmp    c01016d2 <pgman_alloc+0x98>
c01016bf:	40                   	inc    eax
c01016c0:	39 f8                	cmp    eax,edi
c01016c2:	75 95                	jne    c0101659 <pgman_alloc+0x1f>
c01016c4:	83 ec 0c             	sub    esp,0xc
c01016c7:	53                   	push   ebx
c01016c8:	e8 75 08 00 00       	call   c0101f42 <lock_release>
c01016cd:	83 c4 10             	add    esp,0x10
c01016d0:	31 c0                	xor    eax,eax
c01016d2:	8d 65 f4             	lea    esp,[ebp-0xc]
c01016d5:	5b                   	pop    ebx
c01016d6:	5e                   	pop    esi
c01016d7:	5f                   	pop    edi
c01016d8:	5d                   	pop    ebp
c01016d9:	c3                   	ret    

c01016da <page_table_add>:
c01016da:	55                   	push   ebp
c01016db:	89 e5                	mov    ebp,esp
c01016dd:	57                   	push   edi
c01016de:	56                   	push   esi
c01016df:	53                   	push   ebx
c01016e0:	83 ec 0c             	sub    esp,0xc
c01016e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01016e6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01016e9:	50                   	push   eax
c01016ea:	89 c7                	mov    edi,eax
c01016ec:	e8 05 ff ff ff       	call   c01015f6 <pte_ptr>
c01016f1:	c1 ef 16             	shr    edi,0x16
c01016f4:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c01016fb:	01 
c01016fc:	5b                   	pop    ebx
c01016fd:	89 c3                	mov    ebx,eax
c01016ff:	74 0c                	je     c010170d <page_table_add+0x33>
c0101701:	f6 00 01             	test   BYTE PTR [eax],0x1
c0101704:	75 3e                	jne    c0101744 <page_table_add+0x6a>
c0101706:	83 ce 07             	or     esi,0x7
c0101709:	89 30                	mov    DWORD PTR [eax],esi
c010170b:	eb 37                	jmp    c0101744 <page_table_add+0x6a>
c010170d:	51                   	push   ecx
c010170e:	83 ce 07             	or     esi,0x7
c0101711:	51                   	push   ecx
c0101712:	6a 01                	push   0x1
c0101714:	68 d8 08 12 c0       	push   0xc01208d8
c0101719:	e8 1c ff ff ff       	call   c010163a <pgman_alloc>
c010171e:	83 c4 0c             	add    esp,0xc
c0101721:	83 c8 07             	or     eax,0x7
c0101724:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c010172b:	89 d8                	mov    eax,ebx
c010172d:	68 00 10 00 00       	push   0x1000
c0101732:	25 00 f0 ff ff       	and    eax,0xfffff000
c0101737:	6a 00                	push   0x0
c0101739:	50                   	push   eax
c010173a:	e8 19 1f 00 00       	call   c0103658 <memset>
c010173f:	83 c4 10             	add    esp,0x10
c0101742:	89 33                	mov    DWORD PTR [ebx],esi
c0101744:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101747:	5b                   	pop    ebx
c0101748:	5e                   	pop    esi
c0101749:	5f                   	pop    edi
c010174a:	5d                   	pop    ebp
c010174b:	c3                   	ret    

c010174c <page_alloc>:
c010174c:	55                   	push   ebp
c010174d:	89 e5                	mov    ebp,esp
c010174f:	57                   	push   edi
c0101750:	56                   	push   esi
c0101751:	53                   	push   ebx
c0101752:	83 ec 1c             	sub    esp,0x1c
c0101755:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0101758:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c010175c:	c7 45 e4 60 0e 11 c0 	mov    DWORD PTR [ebp-0x1c],0xc0110e60
c0101763:	75 07                	jne    c010176c <page_alloc+0x20>
c0101765:	c7 45 e4 d8 08 12 c0 	mov    DWORD PTR [ebp-0x1c],0xc01208d8
c010176c:	53                   	push   ebx
c010176d:	53                   	push   ebx
c010176e:	57                   	push   edi
c010176f:	68 9c 0e 11 c0       	push   0xc0110e9c
c0101774:	e8 c1 fe ff ff       	call   c010163a <pgman_alloc>
c0101779:	83 c4 10             	add    esp,0x10
c010177c:	85 c0                	test   eax,eax
c010177e:	89 c3                	mov    ebx,eax
c0101780:	89 c6                	mov    esi,eax
c0101782:	75 28                	jne    c01017ac <page_alloc+0x60>
c0101784:	eb 2e                	jmp    c01017b4 <page_alloc+0x68>
c0101786:	51                   	push   ecx
c0101787:	51                   	push   ecx
c0101788:	6a 01                	push   0x1
c010178a:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c010178d:	e8 a8 fe ff ff       	call   c010163a <pgman_alloc>
c0101792:	83 c4 10             	add    esp,0x10
c0101795:	85 c0                	test   eax,eax
c0101797:	74 19                	je     c01017b2 <page_alloc+0x66>
c0101799:	52                   	push   edx
c010179a:	4f                   	dec    edi
c010179b:	52                   	push   edx
c010179c:	50                   	push   eax
c010179d:	56                   	push   esi
c010179e:	81 c6 00 10 00 00    	add    esi,0x1000
c01017a4:	e8 31 ff ff ff       	call   c01016da <page_table_add>
c01017a9:	83 c4 10             	add    esp,0x10
c01017ac:	85 ff                	test   edi,edi
c01017ae:	75 d6                	jne    c0101786 <page_alloc+0x3a>
c01017b0:	eb 02                	jmp    c01017b4 <page_alloc+0x68>
c01017b2:	31 db                	xor    ebx,ebx
c01017b4:	8d 65 f4             	lea    esp,[ebp-0xc]
c01017b7:	89 d8                	mov    eax,ebx
c01017b9:	5b                   	pop    ebx
c01017ba:	5e                   	pop    esi
c01017bb:	5f                   	pop    edi
c01017bc:	5d                   	pop    ebp
c01017bd:	c3                   	ret    

c01017be <get_kernel_page>:
c01017be:	55                   	push   ebp
c01017bf:	89 e5                	mov    ebp,esp
c01017c1:	53                   	push   ebx
c01017c2:	83 ec 1c             	sub    esp,0x1c
c01017c5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01017c8:	53                   	push   ebx
c01017c9:	6a 01                	push   0x1
c01017cb:	e8 7c ff ff ff       	call   c010174c <page_alloc>
c01017d0:	83 c4 10             	add    esp,0x10
c01017d3:	85 c0                	test   eax,eax
c01017d5:	74 16                	je     c01017ed <get_kernel_page+0x2f>
c01017d7:	c1 e3 0c             	shl    ebx,0xc
c01017da:	52                   	push   edx
c01017db:	53                   	push   ebx
c01017dc:	6a 00                	push   0x0
c01017de:	50                   	push   eax
c01017df:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01017e2:	e8 71 1e 00 00       	call   c0103658 <memset>
c01017e7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01017ea:	83 c4 10             	add    esp,0x10
c01017ed:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01017f0:	c9                   	leave  
c01017f1:	c3                   	ret    

c01017f2 <get_user_page>:
c01017f2:	55                   	push   ebp
c01017f3:	89 e5                	mov    ebp,esp
c01017f5:	53                   	push   ebx
c01017f6:	83 ec 1c             	sub    esp,0x1c
c01017f9:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01017fc:	53                   	push   ebx
c01017fd:	6a 02                	push   0x2
c01017ff:	e8 48 ff ff ff       	call   c010174c <page_alloc>
c0101804:	83 c4 10             	add    esp,0x10
c0101807:	85 c0                	test   eax,eax
c0101809:	74 16                	je     c0101821 <get_user_page+0x2f>
c010180b:	c1 e3 0c             	shl    ebx,0xc
c010180e:	51                   	push   ecx
c010180f:	53                   	push   ebx
c0101810:	6a 00                	push   0x0
c0101812:	50                   	push   eax
c0101813:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0101816:	e8 3d 1e 00 00       	call   c0103658 <memset>
c010181b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010181e:	83 c4 10             	add    esp,0x10
c0101821:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101824:	c9                   	leave  
c0101825:	c3                   	ret    

c0101826 <get_a_page>:
c0101826:	55                   	push   ebp
c0101827:	89 e5                	mov    ebp,esp
c0101829:	57                   	push   edi
c010182a:	bf 60 0e 11 c0       	mov    edi,0xc0110e60
c010182f:	56                   	push   esi
c0101830:	53                   	push   ebx
c0101831:	83 ec 0c             	sub    esp,0xc
c0101834:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101837:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c010183a:	83 fb 01             	cmp    ebx,0x1
c010183d:	75 05                	jne    c0101844 <get_a_page+0x1e>
c010183f:	bf d8 08 12 c0       	mov    edi,0xc01208d8
c0101844:	e8 36 08 00 00       	call   c010207f <running_thread>
c0101849:	83 fb 02             	cmp    ebx,0x2
c010184c:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c010184f:	75 0e                	jne    c010185f <get_a_page+0x39>
c0101851:	85 d2                	test   edx,edx
c0101853:	74 0a                	je     c010185f <get_a_page+0x39>
c0101855:	53                   	push   ebx
c0101856:	83 c0 40             	add    eax,0x40
c0101859:	53                   	push   ebx
c010185a:	6a 01                	push   0x1
c010185c:	50                   	push   eax
c010185d:	eb 10                	jmp    c010186f <get_a_page+0x49>
c010185f:	4b                   	dec    ebx
c0101860:	75 14                	jne    c0101876 <get_a_page+0x50>
c0101862:	85 d2                	test   edx,edx
c0101864:	75 10                	jne    c0101876 <get_a_page+0x50>
c0101866:	51                   	push   ecx
c0101867:	51                   	push   ecx
c0101868:	6a 01                	push   0x1
c010186a:	68 9c 0e 11 c0       	push   0xc0110e9c
c010186f:	e8 c6 fd ff ff       	call   c010163a <pgman_alloc>
c0101874:	eb 19                	jmp    c010188f <get_a_page+0x69>
c0101876:	68 38 80 10 c0       	push   0xc0108038
c010187b:	68 94 81 10 c0       	push   0xc0108194
c0101880:	68 f1 00 00 00       	push   0xf1
c0101885:	68 1b 80 10 c0       	push   0xc010801b
c010188a:	e8 01 ee ff ff       	call   c0100690 <panic_spin>
c010188f:	58                   	pop    eax
c0101890:	5a                   	pop    edx
c0101891:	6a 01                	push   0x1
c0101893:	57                   	push   edi
c0101894:	e8 a1 fd ff ff       	call   c010163a <pgman_alloc>
c0101899:	83 c4 10             	add    esp,0x10
c010189c:	85 c0                	test   eax,eax
c010189e:	89 c3                	mov    ebx,eax
c01018a0:	75 1c                	jne    c01018be <get_a_page+0x98>
c01018a2:	68 8f 80 10 c0       	push   0xc010808f
c01018a7:	68 94 81 10 c0       	push   0xc0108194
c01018ac:	68 f4 00 00 00       	push   0xf4
c01018b1:	68 1b 80 10 c0       	push   0xc010801b
c01018b6:	e8 d5 ed ff ff       	call   c0100690 <panic_spin>
c01018bb:	83 c4 10             	add    esp,0x10
c01018be:	57                   	push   edi
c01018bf:	57                   	push   edi
c01018c0:	53                   	push   ebx
c01018c1:	56                   	push   esi
c01018c2:	e8 13 fe ff ff       	call   c01016da <page_table_add>
c01018c7:	8d 65 f4             	lea    esp,[ebp-0xc]
c01018ca:	89 f0                	mov    eax,esi
c01018cc:	5b                   	pop    ebx
c01018cd:	5e                   	pop    esi
c01018ce:	5f                   	pop    edi
c01018cf:	5d                   	pop    ebp
c01018d0:	c3                   	ret    

c01018d1 <pgman_free>:
c01018d1:	55                   	push   ebp
c01018d2:	89 e5                	mov    ebp,esp
c01018d4:	57                   	push   edi
c01018d5:	56                   	push   esi
c01018d6:	53                   	push   ebx
c01018d7:	83 ec 28             	sub    esp,0x28
c01018da:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01018dd:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01018e0:	53                   	push   ebx
c01018e1:	e8 01 06 00 00       	call   c0101ee7 <lock_acquire>
c01018e6:	8b 53 24             	mov    edx,DWORD PTR [ebx+0x24]
c01018e9:	c1 ee 0c             	shr    esi,0xc
c01018ec:	83 c4 10             	add    esp,0x10
c01018ef:	31 c0                	xor    eax,eax
c01018f1:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c01018f4:	eb 09                	jmp    c01018ff <pgman_free+0x2e>
c01018f6:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01018f9:	39 34 c1             	cmp    DWORD PTR [ecx+eax*8],esi
c01018fc:	7f 05                	jg     c0101903 <pgman_free+0x32>
c01018fe:	40                   	inc    eax
c01018ff:	39 d0                	cmp    eax,edx
c0101901:	75 f3                	jne    c01018f6 <pgman_free+0x25>
c0101903:	85 c0                	test   eax,eax
c0101905:	74 71                	je     c0101978 <pgman_free+0xa7>
c0101907:	8b 7b 38             	mov    edi,DWORD PTR [ebx+0x38]
c010190a:	8d 0c c5 f8 ff ff ff 	lea    ecx,[eax*8-0x8]
c0101911:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
c0101914:	01 cf                	add    edi,ecx
c0101916:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
c0101919:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c010191c:	03 0f                	add    ecx,DWORD PTR [edi]
c010191e:	39 f1                	cmp    ecx,esi
c0101920:	75 56                	jne    c0101978 <pgman_free+0xa7>
c0101922:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0101925:	03 55 e0             	add    edx,DWORD PTR [ebp-0x20]
c0101928:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
c010192b:	3b 43 24             	cmp    eax,DWORD PTR [ebx+0x24]
c010192e:	73 72                	jae    c01019a2 <pgman_free+0xd1>
c0101930:	8b 53 38             	mov    edx,DWORD PTR [ebx+0x38]
c0101933:	8d 3c c5 00 00 00 00 	lea    edi,[eax*8+0x0]
c010193a:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
c010193d:	03 75 10             	add    esi,DWORD PTR [ebp+0x10]
c0101940:	01 d7                	add    edi,edx
c0101942:	3b 37                	cmp    esi,DWORD PTR [edi]
c0101944:	75 5c                	jne    c01019a2 <pgman_free+0xd1>
c0101946:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
c0101949:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
c010194c:	01 74 0a 04          	add    DWORD PTR [edx+ecx*1+0x4],esi
c0101950:	ff 4b 24             	dec    DWORD PTR [ebx+0x24]
c0101953:	eb 13                	jmp    c0101968 <pgman_free+0x97>
c0101955:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c0101958:	40                   	inc    eax
c0101959:	8b 74 11 08          	mov    esi,DWORD PTR [ecx+edx*1+0x8]
c010195d:	8b 7c 11 0c          	mov    edi,DWORD PTR [ecx+edx*1+0xc]
c0101961:	89 34 11             	mov    DWORD PTR [ecx+edx*1],esi
c0101964:	89 7c 11 04          	mov    DWORD PTR [ecx+edx*1+0x4],edi
c0101968:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c010196b:	3b 43 24             	cmp    eax,DWORD PTR [ebx+0x24]
c010196e:	8d 7a 08             	lea    edi,[edx+0x8]
c0101971:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
c0101974:	72 df                	jb     c0101955 <pgman_free+0x84>
c0101976:	eb 2a                	jmp    c01019a2 <pgman_free+0xd1>
c0101978:	39 d0                	cmp    eax,edx
c010197a:	73 39                	jae    c01019b5 <pgman_free+0xe4>
c010197c:	8b 7b 38             	mov    edi,DWORD PTR [ebx+0x38]
c010197f:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
c0101986:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
c0101989:	01 cf                	add    edi,ecx
c010198b:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c010198e:	01 f1                	add    ecx,esi
c0101990:	3b 0f                	cmp    ecx,DWORD PTR [edi]
c0101992:	75 21                	jne    c01019b5 <pgman_free+0xe4>
c0101994:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
c0101997:	89 37                	mov    DWORD PTR [edi],esi
c0101999:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c010199c:	03 4b 38             	add    ecx,DWORD PTR [ebx+0x38]
c010199f:	01 71 04             	add    DWORD PTR [ecx+0x4],esi
c01019a2:	83 ec 0c             	sub    esp,0xc
c01019a5:	53                   	push   ebx
c01019a6:	e8 97 05 00 00       	call   c0101f42 <lock_release>
c01019ab:	83 c4 10             	add    esp,0x10
c01019ae:	31 c0                	xor    eax,eax
c01019b0:	e9 86 00 00 00       	jmp    c0101a3b <pgman_free+0x16a>
c01019b5:	81 fa 9f 0f 00 00    	cmp    edx,0xf9f
c01019bb:	77 4c                	ja     c0101a09 <pgman_free+0x138>
c01019bd:	c1 e2 03             	shl    edx,0x3
c01019c0:	89 75 dc             	mov    DWORD PTR [ebp-0x24],esi
c01019c3:	eb 15                	jmp    c01019da <pgman_free+0x109>
c01019c5:	8b 74 11 f8          	mov    esi,DWORD PTR [ecx+edx*1-0x8]
c01019c9:	8b 7c 11 fc          	mov    edi,DWORD PTR [ecx+edx*1-0x4]
c01019cd:	ff 4d e4             	dec    DWORD PTR [ebp-0x1c]
c01019d0:	89 34 11             	mov    DWORD PTR [ecx+edx*1],esi
c01019d3:	89 7c 11 04          	mov    DWORD PTR [ecx+edx*1+0x4],edi
c01019d7:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01019da:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c01019dd:	8d 7a f8             	lea    edi,[edx-0x8]
c01019e0:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01019e3:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
c01019e6:	7f dd                	jg     c01019c5 <pgman_free+0xf4>
c01019e8:	8b 53 24             	mov    edx,DWORD PTR [ebx+0x24]
c01019eb:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
c01019ee:	42                   	inc    edx
c01019ef:	39 53 28             	cmp    DWORD PTR [ebx+0x28],edx
c01019f2:	89 53 24             	mov    DWORD PTR [ebx+0x24],edx
c01019f5:	73 03                	jae    c01019fa <pgman_free+0x129>
c01019f7:	89 53 28             	mov    DWORD PTR [ebx+0x28],edx
c01019fa:	89 34 c1             	mov    DWORD PTR [ecx+eax*8],esi
c01019fd:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c0101a00:	8b 53 38             	mov    edx,DWORD PTR [ebx+0x38]
c0101a03:	89 4c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],ecx
c0101a07:	eb 99                	jmp    c01019a2 <pgman_free+0xd1>
c0101a09:	68 a2 80 10 c0       	push   0xc01080a2
c0101a0e:	68 a0 81 10 c0       	push   0xc01081a0
c0101a13:	68 42 01 00 00       	push   0x142
c0101a18:	68 1b 80 10 c0       	push   0xc010801b
c0101a1d:	e8 6e ec ff ff       	call   c0100690 <panic_spin>
c0101a22:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0101a25:	ff 43 30             	inc    DWORD PTR [ebx+0x30]
c0101a28:	01 73 2c             	add    DWORD PTR [ebx+0x2c],esi
c0101a2b:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0101a2e:	e8 0f 05 00 00       	call   c0101f42 <lock_release>
c0101a33:	83 c4 10             	add    esp,0x10
c0101a36:	b8 01 00 00 00       	mov    eax,0x1
c0101a3b:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101a3e:	5b                   	pop    ebx
c0101a3f:	5e                   	pop    esi
c0101a40:	5f                   	pop    edi
c0101a41:	5d                   	pop    ebp
c0101a42:	c3                   	ret    

c0101a43 <init_memory>:
c0101a43:	55                   	push   ebp
c0101a44:	89 e5                	mov    ebp,esp
c0101a46:	57                   	push   edi
c0101a47:	56                   	push   esi
c0101a48:	53                   	push   ebx
c0101a49:	83 ec 1c             	sub    esp,0x1c
c0101a4c:	83 3d 08 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c08,0x0
c0101a53:	0f 85 9a 00 00 00    	jne    c0101af3 <init_memory+0xb0>
c0101a59:	83 3d 0c 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c0c,0x0
c0101a60:	0f 85 8d 00 00 00    	jne    c0101af3 <init_memory+0xb0>
c0101a66:	a1 04 7c 00 c0       	mov    eax,ds:0xc0007c04
c0101a6b:	31 f6                	xor    esi,esi
c0101a6d:	31 ff                	xor    edi,edi
c0101a6f:	8b 0d 00 7c 00 c0    	mov    ecx,DWORD PTR ds:0xc0007c00
c0101a75:	31 db                	xor    ebx,ebx
c0101a77:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101a7a:	eb 33                	jmp    c0101aaf <init_memory+0x6c>
c0101a7c:	83 79 10 01          	cmp    DWORD PTR [ecx+0x10],0x1
c0101a80:	75 29                	jne    c0101aab <init_memory+0x68>
c0101a82:	8b 01                	mov    eax,DWORD PTR [ecx]
c0101a84:	31 d2                	xor    edx,edx
c0101a86:	31 ff                	xor    edi,edi
c0101a88:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
c0101a8b:	01 c6                	add    esi,eax
c0101a8d:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
c0101a90:	11 d7                	adc    edi,edx
c0101a92:	89 c2                	mov    edx,eax
c0101a94:	b8 00 00 00 00       	mov    eax,0x0
c0101a99:	01 c6                	add    esi,eax
c0101a9b:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
c0101a9e:	11 d7                	adc    edi,edx
c0101aa0:	89 c2                	mov    edx,eax
c0101aa2:	b8 00 00 00 00       	mov    eax,0x0
c0101aa7:	01 c6                	add    esi,eax
c0101aa9:	11 d7                	adc    edi,edx
c0101aab:	83 c1 14             	add    ecx,0x14
c0101aae:	43                   	inc    ebx
c0101aaf:	3b 5d e4             	cmp    ebx,DWORD PTR [ebp-0x1c]
c0101ab2:	75 c8                	jne    c0101a7c <init_memory+0x39>
c0101ab4:	89 f9                	mov    ecx,edi
c0101ab6:	09 f1                	or     ecx,esi
c0101ab8:	75 1b                	jne    c0101ad5 <init_memory+0x92>
c0101aba:	68 b4 80 10 c0       	push   0xc01080b4
c0101abf:	68 7c 81 10 c0       	push   0xc010817c
c0101ac4:	6a 2f                	push   0x2f
c0101ac6:	68 1b 80 10 c0       	push   0xc010801b
c0101acb:	e8 c0 eb ff ff       	call   c0100690 <panic_spin>
c0101ad0:	83 c4 10             	add    esp,0x10
c0101ad3:	eb 12                	jmp    c0101ae7 <init_memory+0xa4>
c0101ad5:	83 ff 00             	cmp    edi,0x0
c0101ad8:	77 08                	ja     c0101ae2 <init_memory+0x9f>
c0101ada:	81 fe ff ff ff 3f    	cmp    esi,0x3fffffff
c0101ae0:	76 05                	jbe    c0101ae7 <init_memory+0xa4>
c0101ae2:	be ff ff ff 3f       	mov    esi,0x3fffffff
c0101ae7:	81 c6 00 00 10 00    	add    esi,0x100000
c0101aed:	89 35 08 7c 00 c0    	mov    DWORD PTR ds:0xc0007c08,esi
c0101af3:	a1 08 7c 00 c0       	mov    eax,ds:0xc0007c08
c0101af8:	2d 00 00 60 00       	sub    eax,0x600000
c0101afd:	89 c6                	mov    esi,eax
c0101aff:	89 c3                	mov    ebx,eax
c0101b01:	89 c7                	mov    edi,eax
c0101b03:	50                   	push   eax
c0101b04:	68 d8 8b 11 c0       	push   0xc0118bd8
c0101b09:	c1 ef 0d             	shr    edi,0xd
c0101b0c:	57                   	push   edi
c0101b0d:	68 d8 08 12 c0       	push   0xc01208d8
c0101b12:	e8 2d fa ff ff       	call   c0101544 <init_memman>
c0101b17:	83 c4 0c             	add    esp,0xc
c0101b1a:	68 a0 90 10 c0       	push   0xc01090a0
c0101b1f:	68 ff ff 0f 00       	push   0xfffff
c0101b24:	d1 ee                	shr    esi,1
c0101b26:	68 9c 0e 11 c0       	push   0xc0110e9c
c0101b2b:	29 f3                	sub    ebx,esi
c0101b2d:	e8 12 fa ff ff       	call   c0101544 <init_memman>
c0101b32:	83 c4 0c             	add    esp,0xc
c0101b35:	81 c6 00 00 60 00    	add    esi,0x600000
c0101b3b:	68 d8 0e 11 c0       	push   0xc0110ed8
c0101b40:	c1 eb 0c             	shr    ebx,0xc
c0101b43:	53                   	push   ebx
c0101b44:	68 60 0e 11 c0       	push   0xc0110e60
c0101b49:	e8 f6 f9 ff ff       	call   c0101544 <init_memman>
c0101b4e:	83 c4 0c             	add    esp,0xc
c0101b51:	57                   	push   edi
c0101b52:	68 00 00 60 00       	push   0x600000
c0101b57:	68 d8 08 12 c0       	push   0xc01208d8
c0101b5c:	e8 70 fd ff ff       	call   c01018d1 <pgman_free>
c0101b61:	83 c4 0c             	add    esp,0xc
c0101b64:	53                   	push   ebx
c0101b65:	56                   	push   esi
c0101b66:	68 60 0e 11 c0       	push   0xc0110e60
c0101b6b:	e8 61 fd ff ff       	call   c01018d1 <pgman_free>
c0101b70:	83 c4 0c             	add    esp,0xc
c0101b73:	68 00 fc 01 00       	push   0x1fc00
c0101b78:	68 00 00 40 c0       	push   0xc0400000
c0101b7d:	68 9c 0e 11 c0       	push   0xc0110e9c
c0101b82:	89 35 90 8a 10 c0    	mov    DWORD PTR ds:0xc0108a90,esi
c0101b88:	e8 44 fd ff ff       	call   c01018d1 <pgman_free>
c0101b8d:	c7 04 24 a0 0d 11 c0 	mov    DWORD PTR [esp],0xc0110da0
c0101b94:	e8 3b f6 ff ff       	call   c01011d4 <init_block>
c0101b99:	83 c4 10             	add    esp,0x10
c0101b9c:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101b9f:	5b                   	pop    ebx
c0101ba0:	5e                   	pop    esi
c0101ba1:	5f                   	pop    edi
c0101ba2:	5d                   	pop    ebp
c0101ba3:	c3                   	ret    

c0101ba4 <page_table_remove>:
c0101ba4:	55                   	push   ebp
c0101ba5:	89 e5                	mov    ebp,esp
c0101ba7:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0101baa:	e8 47 fa ff ff       	call   c01015f6 <pte_ptr>
c0101baf:	5a                   	pop    edx
c0101bb0:	83 20 fe             	and    DWORD PTR [eax],0xfffffffe
c0101bb3:	0f 01 7d 08          	invlpg BYTE PTR [ebp+0x8]
c0101bb7:	c9                   	leave  
c0101bb8:	c3                   	ret    

c0101bb9 <paddr_free>:
c0101bb9:	55                   	push   ebp
c0101bba:	b8 d8 08 12 c0       	mov    eax,0xc01208d8
c0101bbf:	89 e5                	mov    ebp,esp
c0101bc1:	83 ec 08             	sub    esp,0x8
c0101bc4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101bc7:	3b 15 90 8a 10 c0    	cmp    edx,DWORD PTR ds:0xc0108a90
c0101bcd:	72 05                	jb     c0101bd4 <paddr_free+0x1b>
c0101bcf:	b8 60 0e 11 c0       	mov    eax,0xc0110e60
c0101bd4:	51                   	push   ecx
c0101bd5:	6a 01                	push   0x1
c0101bd7:	52                   	push   edx
c0101bd8:	50                   	push   eax
c0101bd9:	e8 f3 fc ff ff       	call   c01018d1 <pgman_free>
c0101bde:	83 c4 10             	add    esp,0x10
c0101be1:	c9                   	leave  
c0101be2:	c3                   	ret    

c0101be3 <vaddr_free>:
c0101be3:	55                   	push   ebp
c0101be4:	89 e5                	mov    ebp,esp
c0101be6:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0101bea:	56                   	push   esi
c0101beb:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0101bee:	53                   	push   ebx
c0101bef:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0101bf2:	75 09                	jne    c0101bfd <vaddr_free+0x1a>
c0101bf4:	c7 45 08 9c 0e 11 c0 	mov    DWORD PTR [ebp+0x8],0xc0110e9c
c0101bfb:	eb 11                	jmp    c0101c0e <vaddr_free+0x2b>
c0101bfd:	e8 7d 04 00 00       	call   c010207f <running_thread>
c0101c02:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
c0101c05:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
c0101c08:	83 c0 40             	add    eax,0x40
c0101c0b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0101c0e:	5b                   	pop    ebx
c0101c0f:	5e                   	pop    esi
c0101c10:	5d                   	pop    ebp
c0101c11:	e9 bb fc ff ff       	jmp    c01018d1 <pgman_free>

c0101c16 <page_free>:
c0101c16:	55                   	push   ebp
c0101c17:	89 e5                	mov    ebp,esp
c0101c19:	57                   	push   edi
c0101c1a:	56                   	push   esi
c0101c1b:	53                   	push   ebx
c0101c1c:	83 ec 1c             	sub    esp,0x1c
c0101c1f:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0101c22:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101c25:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0101c28:	85 ff                	test   edi,edi
c0101c2a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101c2d:	7e 08                	jle    c0101c37 <page_free+0x21>
c0101c2f:	f7 c3 ff 0f 00 00    	test   ebx,0xfff
c0101c35:	74 1c                	je     c0101c53 <page_free+0x3d>
c0101c37:	68 c9 80 10 c0       	push   0xc01080c9
c0101c3c:	68 ac 81 10 c0       	push   0xc01081ac
c0101c41:	68 72 01 00 00       	push   0x172
c0101c46:	68 1b 80 10 c0       	push   0xc010801b
c0101c4b:	e8 40 ea ff ff       	call   c0100690 <panic_spin>
c0101c50:	83 c4 10             	add    esp,0x10
c0101c53:	83 ec 0c             	sub    esp,0xc
c0101c56:	53                   	push   ebx
c0101c57:	e8 bc f9 ff ff       	call   c0101618 <addr_v2p>
c0101c5c:	83 c4 10             	add    esp,0x10
c0101c5f:	a9 ff 0f 00 00       	test   eax,0xfff
c0101c64:	89 c6                	mov    esi,eax
c0101c66:	75 07                	jne    c0101c6f <page_free+0x59>
c0101c68:	3d ff ff 5f 00       	cmp    eax,0x5fffff
c0101c6d:	77 1c                	ja     c0101c8b <page_free+0x75>
c0101c6f:	68 fd 80 10 c0       	push   0xc01080fd
c0101c74:	68 ac 81 10 c0       	push   0xc01081ac
c0101c79:	68 74 01 00 00       	push   0x174
c0101c7e:	68 1b 80 10 c0       	push   0xc010801b
c0101c83:	e8 08 ea ff ff       	call   c0100690 <panic_spin>
c0101c88:	83 c4 10             	add    esp,0x10
c0101c8b:	3b 35 90 8a 10 c0    	cmp    esi,DWORD PTR ds:0xc0108a90
c0101c91:	89 da                	mov    edx,ebx
c0101c93:	be 00 00 00 00       	mov    esi,0x0
c0101c98:	73 2e                	jae    c0101cc8 <page_free+0xb2>
c0101c9a:	eb 5e                	jmp    c0101cfa <page_free+0xe4>
c0101c9c:	83 ec 0c             	sub    esp,0xc
c0101c9f:	46                   	inc    esi
c0101ca0:	52                   	push   edx
c0101ca1:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c0101ca4:	e8 6f f9 ff ff       	call   c0101618 <addr_v2p>
c0101ca9:	89 04 24             	mov    DWORD PTR [esp],eax
c0101cac:	e8 08 ff ff ff       	call   c0101bb9 <paddr_free>
c0101cb1:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101cb4:	89 14 24             	mov    DWORD PTR [esp],edx
c0101cb7:	e8 e8 fe ff ff       	call   c0101ba4 <page_table_remove>
c0101cbc:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101cbf:	83 c4 10             	add    esp,0x10
c0101cc2:	81 c2 00 10 00 00    	add    edx,0x1000
c0101cc8:	39 fe                	cmp    esi,edi
c0101cca:	75 d0                	jne    c0101c9c <page_free+0x86>
c0101ccc:	eb 30                	jmp    c0101cfe <page_free+0xe8>
c0101cce:	83 ec 0c             	sub    esp,0xc
c0101cd1:	46                   	inc    esi
c0101cd2:	52                   	push   edx
c0101cd3:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c0101cd6:	e8 3d f9 ff ff       	call   c0101618 <addr_v2p>
c0101cdb:	89 04 24             	mov    DWORD PTR [esp],eax
c0101cde:	e8 d6 fe ff ff       	call   c0101bb9 <paddr_free>
c0101ce3:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101ce6:	89 14 24             	mov    DWORD PTR [esp],edx
c0101ce9:	e8 b6 fe ff ff       	call   c0101ba4 <page_table_remove>
c0101cee:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101cf1:	83 c4 10             	add    esp,0x10
c0101cf4:	81 c2 00 10 00 00    	add    edx,0x1000
c0101cfa:	39 fe                	cmp    esi,edi
c0101cfc:	75 d0                	jne    c0101cce <page_free+0xb8>
c0101cfe:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101d01:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
c0101d04:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
c0101d07:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0101d0a:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101d0d:	5b                   	pop    ebx
c0101d0e:	5e                   	pop    esi
c0101d0f:	5f                   	pop    edi
c0101d10:	5d                   	pop    ebp
c0101d11:	e9 cd fe ff ff       	jmp    c0101be3 <vaddr_free>
	...

c0101d18 <sema_init>:
c0101d18:	55                   	push   ebp
c0101d19:	89 e5                	mov    ebp,esp
c0101d1b:	56                   	push   esi
c0101d1c:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c0101d20:	53                   	push   ebx
c0101d21:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101d24:	83 ec 0c             	sub    esp,0xc
c0101d27:	8d 43 04             	lea    eax,[ebx+0x4]
c0101d2a:	89 33                	mov    DWORD PTR [ebx],esi
c0101d2c:	50                   	push   eax
c0101d2d:	e8 6a 15 00 00       	call   c010329c <list_init>
c0101d32:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101d34:	83 c4 10             	add    esp,0x10
c0101d37:	39 f0                	cmp    eax,esi
c0101d39:	74 19                	je     c0101d54 <sema_init+0x3c>
c0101d3b:	68 b8 81 10 c0       	push   0xc01081b8
c0101d40:	68 f4 82 10 c0       	push   0xc01082f4
c0101d45:	6a 0d                	push   0xd
c0101d47:	68 ce 81 10 c0       	push   0xc01081ce
c0101d4c:	e8 3f e9 ff ff       	call   c0100690 <panic_spin>
c0101d51:	83 c4 10             	add    esp,0x10
c0101d54:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101d57:	5b                   	pop    ebx
c0101d58:	5e                   	pop    esi
c0101d59:	5d                   	pop    ebp
c0101d5a:	c3                   	ret    

c0101d5b <lock_init>:
c0101d5b:	55                   	push   ebp
c0101d5c:	89 e5                	mov    ebp,esp
c0101d5e:	83 ec 10             	sub    esp,0x10
c0101d61:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101d64:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0101d6a:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0101d71:	83 c0 04             	add    eax,0x4
c0101d74:	6a 01                	push   0x1
c0101d76:	50                   	push   eax
c0101d77:	e8 9c ff ff ff       	call   c0101d18 <sema_init>
c0101d7c:	83 c4 10             	add    esp,0x10
c0101d7f:	c9                   	leave  
c0101d80:	c3                   	ret    

c0101d81 <sema_down>:
c0101d81:	55                   	push   ebp
c0101d82:	89 e5                	mov    ebp,esp
c0101d84:	57                   	push   edi
c0101d85:	56                   	push   esi
c0101d86:	53                   	push   ebx
c0101d87:	83 ec 0c             	sub    esp,0xc
c0101d8a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101d8d:	e8 ba f2 ff ff       	call   c010104c <intr_disable>
c0101d92:	8d 73 04             	lea    esi,[ebx+0x4]
c0101d95:	89 c7                	mov    edi,eax
c0101d97:	e9 82 00 00 00       	jmp    c0101e1e <sema_down+0x9d>
c0101d9c:	e8 de 02 00 00       	call   c010207f <running_thread>
c0101da1:	52                   	push   edx
c0101da2:	83 c0 30             	add    eax,0x30
c0101da5:	52                   	push   edx
c0101da6:	50                   	push   eax
c0101da7:	56                   	push   esi
c0101da8:	e8 a7 15 00 00       	call   c0103354 <list_find>
c0101dad:	83 c4 10             	add    esp,0x10
c0101db0:	85 c0                	test   eax,eax
c0101db2:	74 19                	je     c0101dcd <sema_down+0x4c>
c0101db4:	68 dc 81 10 c0       	push   0xc01081dc
c0101db9:	68 00 83 10 c0       	push   0xc0108300
c0101dbe:	6a 24                	push   0x24
c0101dc0:	68 ce 81 10 c0       	push   0xc01081ce
c0101dc5:	e8 c6 e8 ff ff       	call   c0100690 <panic_spin>
c0101dca:	83 c4 10             	add    esp,0x10
c0101dcd:	e8 ad 02 00 00       	call   c010207f <running_thread>
c0101dd2:	51                   	push   ecx
c0101dd3:	83 c0 30             	add    eax,0x30
c0101dd6:	51                   	push   ecx
c0101dd7:	50                   	push   eax
c0101dd8:	56                   	push   esi
c0101dd9:	e8 76 15 00 00       	call   c0103354 <list_find>
c0101dde:	83 c4 10             	add    esp,0x10
c0101de1:	85 c0                	test   eax,eax
c0101de3:	74 19                	je     c0101dfe <sema_down+0x7d>
c0101de5:	68 1d 82 10 c0       	push   0xc010821d
c0101dea:	68 00 83 10 c0       	push   0xc0108300
c0101def:	6a 27                	push   0x27
c0101df1:	68 ce 81 10 c0       	push   0xc01081ce
c0101df6:	e8 95 e8 ff ff       	call   c0100690 <panic_spin>
c0101dfb:	83 c4 10             	add    esp,0x10
c0101dfe:	e8 7c 02 00 00       	call   c010207f <running_thread>
c0101e03:	52                   	push   edx
c0101e04:	83 c0 30             	add    eax,0x30
c0101e07:	52                   	push   edx
c0101e08:	50                   	push   eax
c0101e09:	56                   	push   esi
c0101e0a:	e8 ec 14 00 00       	call   c01032fb <list_append>
c0101e0f:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0101e16:	e8 0f 05 00 00       	call   c010232a <thread_block>
c0101e1b:	83 c4 10             	add    esp,0x10
c0101e1e:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101e20:	85 c0                	test   eax,eax
c0101e22:	0f 84 74 ff ff ff    	je     c0101d9c <sema_down+0x1b>
c0101e28:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101e2a:	48                   	dec    eax
c0101e2b:	89 03                	mov    DWORD PTR [ebx],eax
c0101e2d:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101e2f:	85 c0                	test   eax,eax
c0101e31:	74 19                	je     c0101e4c <sema_down+0xcb>
c0101e33:	68 51 82 10 c0       	push   0xc0108251
c0101e38:	68 00 83 10 c0       	push   0xc0108300
c0101e3d:	6a 2d                	push   0x2d
c0101e3f:	68 ce 81 10 c0       	push   0xc01081ce
c0101e44:	e8 47 e8 ff ff       	call   c0100690 <panic_spin>
c0101e49:	83 c4 10             	add    esp,0x10
c0101e4c:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0101e4f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101e52:	5b                   	pop    ebx
c0101e53:	5e                   	pop    esi
c0101e54:	5f                   	pop    edi
c0101e55:	5d                   	pop    ebp
c0101e56:	e9 61 f3 ff ff       	jmp    c01011bc <intr_set_status>

c0101e5b <sema_up>:
c0101e5b:	55                   	push   ebp
c0101e5c:	89 e5                	mov    ebp,esp
c0101e5e:	57                   	push   edi
c0101e5f:	56                   	push   esi
c0101e60:	53                   	push   ebx
c0101e61:	83 ec 0c             	sub    esp,0xc
c0101e64:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101e67:	e8 e0 f1 ff ff       	call   c010104c <intr_disable>
c0101e6c:	89 c7                	mov    edi,eax
c0101e6e:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101e70:	85 c0                	test   eax,eax
c0101e72:	74 19                	je     c0101e8d <sema_up+0x32>
c0101e74:	68 51 82 10 c0       	push   0xc0108251
c0101e79:	68 0c 83 10 c0       	push   0xc010830c
c0101e7e:	6a 38                	push   0x38
c0101e80:	68 ce 81 10 c0       	push   0xc01081ce
c0101e85:	e8 06 e8 ff ff       	call   c0100690 <panic_spin>
c0101e8a:	83 c4 10             	add    esp,0x10
c0101e8d:	83 ec 0c             	sub    esp,0xc
c0101e90:	8d 73 04             	lea    esi,[ebx+0x4]
c0101e93:	56                   	push   esi
c0101e94:	e8 34 15 00 00       	call   c01033cd <list_empty>
c0101e99:	83 c4 10             	add    esp,0x10
c0101e9c:	85 c0                	test   eax,eax
c0101e9e:	75 15                	jne    c0101eb5 <sema_up+0x5a>
c0101ea0:	83 ec 0c             	sub    esp,0xc
c0101ea3:	56                   	push   esi
c0101ea4:	e8 91 14 00 00       	call   c010333a <list_pop>
c0101ea9:	59                   	pop    ecx
c0101eaa:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0101ead:	e8 c3 04 00 00       	call   c0102375 <thread_unblock>
c0101eb2:	83 c4 10             	add    esp,0x10
c0101eb5:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101eb7:	40                   	inc    eax
c0101eb8:	89 03                	mov    DWORD PTR [ebx],eax
c0101eba:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101ebc:	48                   	dec    eax
c0101ebd:	74 19                	je     c0101ed8 <sema_up+0x7d>
c0101ebf:	68 63 82 10 c0       	push   0xc0108263
c0101ec4:	68 0c 83 10 c0       	push   0xc010830c
c0101ec9:	6a 3f                	push   0x3f
c0101ecb:	68 ce 81 10 c0       	push   0xc01081ce
c0101ed0:	e8 bb e7 ff ff       	call   c0100690 <panic_spin>
c0101ed5:	83 c4 10             	add    esp,0x10
c0101ed8:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0101edb:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101ede:	5b                   	pop    ebx
c0101edf:	5e                   	pop    esi
c0101ee0:	5f                   	pop    edi
c0101ee1:	5d                   	pop    ebp
c0101ee2:	e9 d5 f2 ff ff       	jmp    c01011bc <intr_set_status>

c0101ee7 <lock_acquire>:
c0101ee7:	55                   	push   ebp
c0101ee8:	89 e5                	mov    ebp,esp
c0101eea:	56                   	push   esi
c0101eeb:	53                   	push   ebx
c0101eec:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101eef:	8b 33                	mov    esi,DWORD PTR [ebx]
c0101ef1:	e8 89 01 00 00       	call   c010207f <running_thread>
c0101ef6:	39 c6                	cmp    esi,eax
c0101ef8:	74 3e                	je     c0101f38 <lock_acquire+0x51>
c0101efa:	83 ec 0c             	sub    esp,0xc
c0101efd:	8d 43 04             	lea    eax,[ebx+0x4]
c0101f00:	50                   	push   eax
c0101f01:	e8 7b fe ff ff       	call   c0101d81 <sema_down>
c0101f06:	e8 74 01 00 00       	call   c010207f <running_thread>
c0101f0b:	83 c4 10             	add    esp,0x10
c0101f0e:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c0101f12:	89 03                	mov    DWORD PTR [ebx],eax
c0101f14:	74 19                	je     c0101f2f <lock_acquire+0x48>
c0101f16:	68 75 82 10 c0       	push   0xc0108275
c0101f1b:	68 14 83 10 c0       	push   0xc0108314
c0101f20:	6a 4d                	push   0x4d
c0101f22:	68 ce 81 10 c0       	push   0xc01081ce
c0101f27:	e8 64 e7 ff ff       	call   c0100690 <panic_spin>
c0101f2c:	83 c4 10             	add    esp,0x10
c0101f2f:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c0101f36:	eb 03                	jmp    c0101f3b <lock_acquire+0x54>
c0101f38:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c0101f3b:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101f3e:	5b                   	pop    ebx
c0101f3f:	5e                   	pop    esi
c0101f40:	5d                   	pop    ebp
c0101f41:	c3                   	ret    

c0101f42 <lock_release>:
c0101f42:	55                   	push   ebp
c0101f43:	89 e5                	mov    ebp,esp
c0101f45:	56                   	push   esi
c0101f46:	53                   	push   ebx
c0101f47:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101f4a:	8b 33                	mov    esi,DWORD PTR [ebx]
c0101f4c:	e8 2e 01 00 00       	call   c010207f <running_thread>
c0101f51:	39 c6                	cmp    esi,eax
c0101f53:	74 19                	je     c0101f6e <lock_release+0x2c>
c0101f55:	68 92 82 10 c0       	push   0xc0108292
c0101f5a:	68 24 83 10 c0       	push   0xc0108324
c0101f5f:	6a 5c                	push   0x5c
c0101f61:	68 ce 81 10 c0       	push   0xc01081ce
c0101f66:	e8 25 e7 ff ff       	call   c0100690 <panic_spin>
c0101f6b:	83 c4 10             	add    esp,0x10
c0101f6e:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c0101f71:	83 f8 01             	cmp    eax,0x1
c0101f74:	76 0b                	jbe    c0101f81 <lock_release+0x3f>
c0101f76:	48                   	dec    eax
c0101f77:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c0101f7a:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101f7d:	5b                   	pop    ebx
c0101f7e:	5e                   	pop    esi
c0101f7f:	5d                   	pop    ebp
c0101f80:	c3                   	ret    
c0101f81:	74 19                	je     c0101f9c <lock_release+0x5a>
c0101f83:	68 b4 82 10 c0       	push   0xc01082b4
c0101f88:	68 24 83 10 c0       	push   0xc0108324
c0101f8d:	6a 62                	push   0x62
c0101f8f:	68 ce 81 10 c0       	push   0xc01081ce
c0101f94:	e8 f7 e6 ff ff       	call   c0100690 <panic_spin>
c0101f99:	83 c4 10             	add    esp,0x10
c0101f9c:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0101fa2:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c0101fa9:	83 c3 04             	add    ebx,0x4
c0101fac:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0101faf:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101fb2:	5b                   	pop    ebx
c0101fb3:	5e                   	pop    esi
c0101fb4:	5d                   	pop    ebp
c0101fb5:	e9 a1 fe ff ff       	jmp    c0101e5b <sema_up>
	...

c0101fbc <switch_to>:
c0101fbc:	56                   	push   esi
c0101fbd:	57                   	push   edi
c0101fbe:	53                   	push   ebx
c0101fbf:	55                   	push   ebp
c0101fc0:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0101fc4:	89 20                	mov    DWORD PTR [eax],esp
c0101fc6:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0101fca:	8b 20                	mov    esp,DWORD PTR [eax]
c0101fcc:	5d                   	pop    ebp
c0101fcd:	5b                   	pop    ebx
c0101fce:	5f                   	pop    edi
c0101fcf:	5e                   	pop    esi
c0101fd0:	c3                   	ret    

c0101fd1 <kernel_thread>:
c0101fd1:	55                   	push   ebp
c0101fd2:	89 e5                	mov    ebp,esp
c0101fd4:	56                   	push   esi
c0101fd5:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101fd8:	53                   	push   ebx
c0101fd9:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101fdc:	e8 c4 f1 ff ff       	call   c01011a5 <intr_enable>
c0101fe1:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0101fe4:	89 d8                	mov    eax,ebx
c0101fe6:	5b                   	pop    ebx
c0101fe7:	5e                   	pop    esi
c0101fe8:	5d                   	pop    ebp
c0101fe9:	ff e0                	jmp    eax

c0101feb <thread_init>:
c0101feb:	55                   	push   ebp
c0101fec:	89 e5                	mov    ebp,esp
c0101fee:	53                   	push   ebx
c0101fef:	83 ec 18             	sub    esp,0x18
c0101ff2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101ff5:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
c0101ff8:	68 40 01 00 00       	push   0x140
c0101ffd:	6a 00                	push   0x0
c0101fff:	53                   	push   ebx
c0102000:	88 45 f7             	mov    BYTE PTR [ebp-0x9],al
c0102003:	e8 50 16 00 00       	call   c0103658 <memset>
c0102008:	58                   	pop    eax
c0102009:	5a                   	pop    edx
c010200a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c010200d:	8d 43 0c             	lea    eax,[ebx+0xc]
c0102010:	50                   	push   eax
c0102011:	e8 15 17 00 00       	call   c010372b <strcpy>
c0102016:	83 c4 10             	add    esp,0x10
c0102019:	3b 1d 44 09 12 c0    	cmp    ebx,DWORD PTR ds:0xc0120944
c010201f:	75 09                	jne    c010202a <thread_init+0x3f>
c0102021:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0102028:	eb 07                	jmp    c0102031 <thread_init+0x46>
c010202a:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0102031:	83 ec 0c             	sub    esp,0xc
c0102034:	68 94 8a 10 c0       	push   0xc0108a94
c0102039:	e8 a9 fe ff ff       	call   c0101ee7 <lock_acquire>
c010203e:	ff 05 2c 7c 00 c0    	inc    DWORD PTR ds:0xc0007c2c
c0102044:	c7 04 24 94 8a 10 c0 	mov    DWORD PTR [esp],0xc0108a94
c010204b:	e8 f2 fe ff ff       	call   c0101f42 <lock_release>
c0102050:	a1 2c 7c 00 c0       	mov    eax,ds:0xc0007c2c
c0102055:	83 c4 10             	add    esp,0x10
c0102058:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c010205f:	c7 83 3c 01 00 00 78 	mov    DWORD PTR [ebx+0x13c],0x12345678
c0102066:	56 34 12 
c0102069:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c010206c:	8a 45 f7             	mov    al,BYTE PTR [ebp-0x9]
c010206f:	88 43 1c             	mov    BYTE PTR [ebx+0x1c],al
c0102072:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c0102078:	89 03                	mov    DWORD PTR [ebx],eax
c010207a:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c010207d:	c9                   	leave  
c010207e:	c3                   	ret    

c010207f <running_thread>:
c010207f:	55                   	push   ebp
c0102080:	89 e5                	mov    ebp,esp
c0102082:	89 e0                	mov    eax,esp
c0102084:	25 00 f0 ff ff       	and    eax,0xfffff000
c0102089:	5d                   	pop    ebp
c010208a:	c3                   	ret    

c010208b <init_thread>:
c010208b:	55                   	push   ebp
c010208c:	89 e5                	mov    ebp,esp
c010208e:	83 ec 14             	sub    esp,0x14
c0102091:	68 14 09 12 c0       	push   0xc0120914
c0102096:	e8 01 12 00 00       	call   c010329c <list_init>
c010209b:	c7 04 24 2c 09 12 c0 	mov    DWORD PTR [esp],0xc012092c
c01020a2:	e8 f5 11 00 00       	call   c010329c <list_init>
c01020a7:	c7 05 2c 7c 00 c0 00 	mov    DWORD PTR ds:0xc0007c2c,0x0
c01020ae:	00 00 00 
c01020b1:	c7 04 24 94 8a 10 c0 	mov    DWORD PTR [esp],0xc0108a94
c01020b8:	e8 9e fc ff ff       	call   c0101d5b <lock_init>
c01020bd:	e8 bd ff ff ff       	call   c010207f <running_thread>
c01020c2:	83 c4 0c             	add    esp,0xc
c01020c5:	6a 1f                	push   0x1f
c01020c7:	68 34 83 10 c0       	push   0xc0108334
c01020cc:	50                   	push   eax
c01020cd:	a3 44 09 12 c0       	mov    ds:0xc0120944,eax
c01020d2:	e8 14 ff ff ff       	call   c0101feb <thread_init>
c01020d7:	a1 44 09 12 c0       	mov    eax,ds:0xc0120944
c01020dc:	89 40 28             	mov    DWORD PTR [eax+0x28],eax
c01020df:	89 40 34             	mov    DWORD PTR [eax+0x34],eax
c01020e2:	83 c0 24             	add    eax,0x24
c01020e5:	59                   	pop    ecx
c01020e6:	5a                   	pop    edx
c01020e7:	50                   	push   eax
c01020e8:	68 2c 09 12 c0       	push   0xc012092c
c01020ed:	e8 09 12 00 00       	call   c01032fb <list_append>
c01020f2:	83 c4 10             	add    esp,0x10
c01020f5:	c9                   	leave  
c01020f6:	c3                   	ret    

c01020f7 <thread_create>:
c01020f7:	55                   	push   ebp
c01020f8:	89 e5                	mov    ebp,esp
c01020fa:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01020fd:	8b 02                	mov    eax,DWORD PTR [edx]
c01020ff:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c0102105:	89 0a                	mov    DWORD PTR [edx],ecx
c0102107:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010210a:	c7 80 60 fe ff ff d1 	mov    DWORD PTR [eax-0x1a0],0xc0101fd1
c0102111:	1f 10 c0 
c0102114:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c010211b:	00 00 00 
c010211e:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c0102125:	00 00 00 
c0102128:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c010212e:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0102131:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c0102138:	00 00 00 
c010213b:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c0102142:	00 00 00 
c0102145:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c010214b:	5d                   	pop    ebp
c010214c:	c3                   	ret    

c010214d <thread_start>:
c010214d:	55                   	push   ebp
c010214e:	89 e5                	mov    ebp,esp
c0102150:	56                   	push   esi
c0102151:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102154:	53                   	push   ebx
c0102155:	83 ec 0c             	sub    esp,0xc
c0102158:	6a 01                	push   0x1
c010215a:	e8 5f f6 ff ff       	call   c01017be <get_kernel_page>
c010215f:	81 e6 ff 00 00 00    	and    esi,0xff
c0102165:	83 c4 0c             	add    esp,0xc
c0102168:	56                   	push   esi
c0102169:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c010216c:	50                   	push   eax
c010216d:	89 c3                	mov    ebx,eax
c010216f:	e8 77 fe ff ff       	call   c0101feb <thread_init>
c0102174:	83 c4 0c             	add    esp,0xc
c0102177:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c010217a:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c010217d:	8d 73 30             	lea    esi,[ebx+0x30]
c0102180:	53                   	push   ebx
c0102181:	e8 71 ff ff ff       	call   c01020f7 <thread_create>
c0102186:	89 5b 28             	mov    DWORD PTR [ebx+0x28],ebx
c0102189:	89 5b 34             	mov    DWORD PTR [ebx+0x34],ebx
c010218c:	59                   	pop    ecx
c010218d:	58                   	pop    eax
c010218e:	56                   	push   esi
c010218f:	68 14 09 12 c0       	push   0xc0120914
c0102194:	e8 bb 11 00 00       	call   c0103354 <list_find>
c0102199:	83 c4 10             	add    esp,0x10
c010219c:	85 c0                	test   eax,eax
c010219e:	74 19                	je     c01021b9 <thread_start+0x6c>
c01021a0:	68 40 83 10 c0       	push   0xc0108340
c01021a5:	68 f4 84 10 c0       	push   0xc01084f4
c01021aa:	6a 6f                	push   0x6f
c01021ac:	68 6f 83 10 c0       	push   0xc010836f
c01021b1:	e8 da e4 ff ff       	call   c0100690 <panic_spin>
c01021b6:	83 c4 10             	add    esp,0x10
c01021b9:	50                   	push   eax
c01021ba:	50                   	push   eax
c01021bb:	56                   	push   esi
c01021bc:	68 14 09 12 c0       	push   0xc0120914
c01021c1:	e8 35 11 00 00       	call   c01032fb <list_append>
c01021c6:	8d 73 24             	lea    esi,[ebx+0x24]
c01021c9:	58                   	pop    eax
c01021ca:	5a                   	pop    edx
c01021cb:	56                   	push   esi
c01021cc:	68 2c 09 12 c0       	push   0xc012092c
c01021d1:	e8 7e 11 00 00       	call   c0103354 <list_find>
c01021d6:	83 c4 10             	add    esp,0x10
c01021d9:	85 c0                	test   eax,eax
c01021db:	74 19                	je     c01021f6 <thread_start+0xa9>
c01021dd:	68 7f 83 10 c0       	push   0xc010837f
c01021e2:	68 f4 84 10 c0       	push   0xc01084f4
c01021e7:	6a 72                	push   0x72
c01021e9:	68 6f 83 10 c0       	push   0xc010836f
c01021ee:	e8 9d e4 ff ff       	call   c0100690 <panic_spin>
c01021f3:	83 c4 10             	add    esp,0x10
c01021f6:	51                   	push   ecx
c01021f7:	51                   	push   ecx
c01021f8:	56                   	push   esi
c01021f9:	68 2c 09 12 c0       	push   0xc012092c
c01021fe:	e8 f8 10 00 00       	call   c01032fb <list_append>
c0102203:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102206:	89 d8                	mov    eax,ebx
c0102208:	5b                   	pop    ebx
c0102209:	5e                   	pop    esi
c010220a:	5d                   	pop    ebp
c010220b:	c3                   	ret    

c010220c <schedule>:
c010220c:	55                   	push   ebp
c010220d:	89 e5                	mov    ebp,esp
c010220f:	56                   	push   esi
c0102210:	53                   	push   ebx
c0102211:	e8 69 fe ff ff       	call   c010207f <running_thread>
c0102216:	81 b8 3c 01 00 00 78 	cmp    DWORD PTR [eax+0x13c],0x12345678
c010221d:	56 34 12 
c0102220:	89 c3                	mov    ebx,eax
c0102222:	74 1c                	je     c0102240 <schedule+0x34>
c0102224:	68 a8 83 10 c0       	push   0xc01083a8
c0102229:	68 04 85 10 c0       	push   0xc0108504
c010222e:	68 84 00 00 00       	push   0x84
c0102233:	68 6f 83 10 c0       	push   0xc010836f
c0102238:	e8 53 e4 ff ff       	call   c0100690 <panic_spin>
c010223d:	83 c4 10             	add    esp,0x10
c0102240:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0102243:	85 c0                	test   eax,eax
c0102245:	75 4a                	jne    c0102291 <schedule+0x85>
c0102247:	50                   	push   eax
c0102248:	50                   	push   eax
c0102249:	8d 73 30             	lea    esi,[ebx+0x30]
c010224c:	56                   	push   esi
c010224d:	68 14 09 12 c0       	push   0xc0120914
c0102252:	e8 fd 10 00 00       	call   c0103354 <list_find>
c0102257:	83 c4 10             	add    esp,0x10
c010225a:	85 c0                	test   eax,eax
c010225c:	74 1c                	je     c010227a <schedule+0x6e>
c010225e:	68 ce 83 10 c0       	push   0xc01083ce
c0102263:	68 04 85 10 c0       	push   0xc0108504
c0102268:	68 88 00 00 00       	push   0x88
c010226d:	68 6f 83 10 c0       	push   0xc010836f
c0102272:	e8 19 e4 ff ff       	call   c0100690 <panic_spin>
c0102277:	83 c4 10             	add    esp,0x10
c010227a:	51                   	push   ecx
c010227b:	51                   	push   ecx
c010227c:	56                   	push   esi
c010227d:	68 14 09 12 c0       	push   0xc0120914
c0102282:	e8 74 10 00 00       	call   c01032fb <list_append>
c0102287:	83 c4 10             	add    esp,0x10
c010228a:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0102291:	83 ec 0c             	sub    esp,0xc
c0102294:	68 14 09 12 c0       	push   0xc0120914
c0102299:	c7 05 b8 8a 10 c0 00 	mov    DWORD PTR ds:0xc0108ab8,0x0
c01022a0:	00 00 00 
c01022a3:	e8 25 11 00 00       	call   c01033cd <list_empty>
c01022a8:	83 c4 10             	add    esp,0x10
c01022ab:	85 c0                	test   eax,eax
c01022ad:	74 1c                	je     c01022cb <schedule+0xbf>
c01022af:	68 03 84 10 c0       	push   0xc0108403
c01022b4:	68 04 85 10 c0       	push   0xc0108504
c01022b9:	68 94 00 00 00       	push   0x94
c01022be:	68 6f 83 10 c0       	push   0xc010836f
c01022c3:	e8 c8 e3 ff ff       	call   c0100690 <panic_spin>
c01022c8:	83 c4 10             	add    esp,0x10
c01022cb:	81 3d 20 09 12 c0 14 	cmp    DWORD PTR ds:0xc0120920,0xc0120914
c01022d2:	09 12 c0 
c01022d5:	75 1c                	jne    c01022f3 <schedule+0xe7>
c01022d7:	68 1e 84 10 c0       	push   0xc010841e
c01022dc:	68 04 85 10 c0       	push   0xc0108504
c01022e1:	68 95 00 00 00       	push   0x95
c01022e6:	68 6f 83 10 c0       	push   0xc010836f
c01022eb:	e8 a0 e3 ff ff       	call   c0100690 <panic_spin>
c01022f0:	83 c4 10             	add    esp,0x10
c01022f3:	83 ec 0c             	sub    esp,0xc
c01022f6:	68 14 09 12 c0       	push   0xc0120914
c01022fb:	e8 3a 10 00 00       	call   c010333a <list_pop>
c0102300:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0102303:	a3 b8 8a 10 c0       	mov    ds:0xc0108ab8,eax
c0102308:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
c010230f:	89 34 24             	mov    DWORD PTR [esp],esi
c0102312:	e8 11 03 00 00       	call   c0102628 <process_activate>
c0102317:	58                   	pop    eax
c0102318:	5a                   	pop    edx
c0102319:	56                   	push   esi
c010231a:	53                   	push   ebx
c010231b:	e8 9c fc ff ff       	call   c0101fbc <switch_to>
c0102320:	83 c4 10             	add    esp,0x10
c0102323:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102326:	5b                   	pop    ebx
c0102327:	5e                   	pop    esi
c0102328:	5d                   	pop    ebp
c0102329:	c3                   	ret    

c010232a <thread_block>:
c010232a:	55                   	push   ebp
c010232b:	89 e5                	mov    ebp,esp
c010232d:	56                   	push   esi
c010232e:	53                   	push   ebx
c010232f:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102332:	83 fb 01             	cmp    ebx,0x1
c0102335:	77 1c                	ja     c0102353 <thread_block+0x29>
c0102337:	68 47 84 10 c0       	push   0xc0108447
c010233c:	68 10 85 10 c0       	push   0xc0108510
c0102341:	68 a2 00 00 00       	push   0xa2
c0102346:	68 6f 83 10 c0       	push   0xc010836f
c010234b:	e8 40 e3 ff ff       	call   c0100690 <panic_spin>
c0102350:	83 c4 10             	add    esp,0x10
c0102353:	e8 f4 ec ff ff       	call   c010104c <intr_disable>
c0102358:	89 c6                	mov    esi,eax
c010235a:	e8 20 fd ff ff       	call   c010207f <running_thread>
c010235f:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c0102362:	e8 a5 fe ff ff       	call   c010220c <schedule>
c0102367:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c010236a:	8d 65 f8             	lea    esp,[ebp-0x8]
c010236d:	5b                   	pop    ebx
c010236e:	5e                   	pop    esi
c010236f:	5d                   	pop    ebp
c0102370:	e9 47 ee ff ff       	jmp    c01011bc <intr_set_status>

c0102375 <thread_unblock>:
c0102375:	55                   	push   ebp
c0102376:	89 e5                	mov    ebp,esp
c0102378:	57                   	push   edi
c0102379:	56                   	push   esi
c010237a:	53                   	push   ebx
c010237b:	83 ec 0c             	sub    esp,0xc
c010237e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102381:	e8 c6 ec ff ff       	call   c010104c <intr_disable>
c0102386:	89 c7                	mov    edi,eax
c0102388:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c010238b:	48                   	dec    eax
c010238c:	74 7a                	je     c0102408 <thread_unblock+0x93>
c010238e:	50                   	push   eax
c010238f:	50                   	push   eax
c0102390:	8d 73 30             	lea    esi,[ebx+0x30]
c0102393:	56                   	push   esi
c0102394:	68 14 09 12 c0       	push   0xc0120914
c0102399:	e8 b6 0f 00 00       	call   c0103354 <list_find>
c010239e:	83 c4 10             	add    esp,0x10
c01023a1:	85 c0                	test   eax,eax
c01023a3:	74 1c                	je     c01023c1 <thread_unblock+0x4c>
c01023a5:	68 76 84 10 c0       	push   0xc0108476
c01023aa:	68 20 85 10 c0       	push   0xc0108520
c01023af:	68 b0 00 00 00       	push   0xb0
c01023b4:	68 6f 83 10 c0       	push   0xc010836f
c01023b9:	e8 d2 e2 ff ff       	call   c0100690 <panic_spin>
c01023be:	83 c4 10             	add    esp,0x10
c01023c1:	50                   	push   eax
c01023c2:	50                   	push   eax
c01023c3:	56                   	push   esi
c01023c4:	68 14 09 12 c0       	push   0xc0120914
c01023c9:	e8 86 0f 00 00       	call   c0103354 <list_find>
c01023ce:	83 c4 10             	add    esp,0x10
c01023d1:	85 c0                	test   eax,eax
c01023d3:	74 1c                	je     c01023f1 <thread_unblock+0x7c>
c01023d5:	68 a6 84 10 c0       	push   0xc01084a6
c01023da:	68 20 85 10 c0       	push   0xc0108520
c01023df:	68 b3 00 00 00       	push   0xb3
c01023e4:	68 6f 83 10 c0       	push   0xc010836f
c01023e9:	e8 a2 e2 ff ff       	call   c0100690 <panic_spin>
c01023ee:	83 c4 10             	add    esp,0x10
c01023f1:	50                   	push   eax
c01023f2:	50                   	push   eax
c01023f3:	56                   	push   esi
c01023f4:	68 14 09 12 c0       	push   0xc0120914
c01023f9:	e8 e5 0e 00 00       	call   c01032e3 <list_push>
c01023fe:	83 c4 10             	add    esp,0x10
c0102401:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0102408:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c010240b:	8d 65 f4             	lea    esp,[ebp-0xc]
c010240e:	5b                   	pop    ebx
c010240f:	5e                   	pop    esi
c0102410:	5f                   	pop    edi
c0102411:	5d                   	pop    ebp
c0102412:	e9 a5 ed ff ff       	jmp    c01011bc <intr_set_status>
	...

c0102418 <init_tss>:
c0102418:	55                   	push   ebp
c0102419:	89 e5                	mov    ebp,esp
c010241b:	83 ec 1c             	sub    esp,0x1c
c010241e:	6a 6c                	push   0x6c
c0102420:	6a 00                	push   0x0
c0102422:	68 bc 8a 10 c0       	push   0xc0108abc
c0102427:	e8 2c 12 00 00       	call   c0103658 <memset>
c010242c:	b8 bc 8a 10 c0       	mov    eax,0xc0108abc
c0102431:	89 c2                	mov    edx,eax
c0102433:	66 a3 1a 10 00 c0    	mov    ds:0xc000101a,ax
c0102439:	c1 ea 10             	shr    edx,0x10
c010243c:	c1 e8 18             	shr    eax,0x18
c010243f:	66 c7 05 18 10 00 c0 	mov    WORD PTR ds:0xc0001018,0x6b
c0102446:	6b 00 
c0102448:	88 15 1c 10 00 c0    	mov    BYTE PTR ds:0xc000101c,dl
c010244e:	c6 05 1d 10 00 c0 89 	mov    BYTE PTR ds:0xc000101d,0x89
c0102455:	c6 05 1e 10 00 c0 80 	mov    BYTE PTR ds:0xc000101e,0x80
c010245c:	a2 1f 10 00 c0       	mov    ds:0xc000101f,al
c0102461:	66 c7 05 20 10 00 c0 	mov    WORD PTR ds:0xc0001020,0xffff
c0102468:	ff ff 
c010246a:	66 c7 05 22 10 00 c0 	mov    WORD PTR ds:0xc0001022,0x0
c0102471:	00 00 
c0102473:	c6 05 24 10 00 c0 00 	mov    BYTE PTR ds:0xc0001024,0x0
c010247a:	c6 05 25 10 00 c0 f8 	mov    BYTE PTR ds:0xc0001025,0xf8
c0102481:	c6 05 26 10 00 c0 cf 	mov    BYTE PTR ds:0xc0001026,0xcf
c0102488:	c6 05 27 10 00 c0 00 	mov    BYTE PTR ds:0xc0001027,0x0
c010248f:	66 c7 05 28 10 00 c0 	mov    WORD PTR ds:0xc0001028,0xffff
c0102496:	ff ff 
c0102498:	66 c7 05 2a 10 00 c0 	mov    WORD PTR ds:0xc000102a,0x0
c010249f:	00 00 
c01024a1:	c6 05 2c 10 00 c0 00 	mov    BYTE PTR ds:0xc000102c,0x0
c01024a8:	c6 05 2d 10 00 c0 f2 	mov    BYTE PTR ds:0xc000102d,0xf2
c01024af:	c6 05 2e 10 00 c0 cf 	mov    BYTE PTR ds:0xc000102e,0xcf
c01024b6:	c6 05 2f 10 00 c0 00 	mov    BYTE PTR ds:0xc000102f,0x0
c01024bd:	c7 05 c4 8a 10 c0 10 	mov    DWORD PTR ds:0xc0108ac4,0x10
c01024c4:	00 00 00 
c01024c7:	c7 45 f0 2f 00 00 10 	mov    DWORD PTR [ebp-0x10],0x1000002f
c01024ce:	c7 45 f4 00 c0 00 00 	mov    DWORD PTR [ebp-0xc],0xc000
c01024d5:	c7 05 24 8b 10 c0 6c 	mov    DWORD PTR ds:0xc0108b24,0x6c
c01024dc:	00 00 00 
c01024df:	0f 01 55 f0          	lgdtd  [ebp-0x10]
c01024e3:	b8 18 00 00 00       	mov    eax,0x18
c01024e8:	0f 00 d8             	ltr    ax
c01024eb:	83 c4 10             	add    esp,0x10
c01024ee:	c9                   	leave  
c01024ef:	c3                   	ret    

c01024f0 <update_tss_esp0>:
c01024f0:	55                   	push   ebp
c01024f1:	89 e5                	mov    ebp,esp
c01024f3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01024f6:	5d                   	pop    ebp
c01024f7:	05 00 10 00 00       	add    eax,0x1000
c01024fc:	a3 c0 8a 10 c0       	mov    ds:0xc0108ac0,eax
c0102501:	c3                   	ret    
	...

c0102504 <start_process>:
c0102504:	55                   	push   ebp
c0102505:	89 e5                	mov    ebp,esp
c0102507:	56                   	push   esi
c0102508:	53                   	push   ebx
c0102509:	e8 71 fb ff ff       	call   c010207f <running_thread>
c010250e:	8b 18                	mov    ebx,DWORD PTR [eax]
c0102510:	8d b3 80 00 00 00    	lea    esi,[ebx+0x80]
c0102516:	89 30                	mov    DWORD PTR [eax],esi
c0102518:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010251b:	c7 83 84 00 00 00 00 	mov    DWORD PTR [ebx+0x84],0x0
c0102522:	00 00 00 
c0102525:	c7 83 88 00 00 00 00 	mov    DWORD PTR [ebx+0x88],0x0
c010252c:	00 00 00 
c010252f:	c7 83 8c 00 00 00 00 	mov    DWORD PTR [ebx+0x8c],0x0
c0102536:	00 00 00 
c0102539:	89 83 b8 00 00 00    	mov    DWORD PTR [ebx+0xb8],eax
c010253f:	c7 83 90 00 00 00 00 	mov    DWORD PTR [ebx+0x90],0x0
c0102546:	00 00 00 
c0102549:	c7 83 94 00 00 00 00 	mov    DWORD PTR [ebx+0x94],0x0
c0102550:	00 00 00 
c0102553:	c7 83 98 00 00 00 00 	mov    DWORD PTR [ebx+0x98],0x0
c010255a:	00 00 00 
c010255d:	c7 83 9c 00 00 00 00 	mov    DWORD PTR [ebx+0x9c],0x0
c0102564:	00 00 00 
c0102567:	c7 83 a0 00 00 00 00 	mov    DWORD PTR [ebx+0xa0],0x0
c010256e:	00 00 00 
c0102571:	c7 83 a4 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
c0102578:	00 00 00 
c010257b:	c7 83 a8 00 00 00 2b 	mov    DWORD PTR [ebx+0xa8],0x2b
c0102582:	00 00 00 
c0102585:	c7 83 ac 00 00 00 2b 	mov    DWORD PTR [ebx+0xac],0x2b
c010258c:	00 00 00 
c010258f:	c7 83 b0 00 00 00 2b 	mov    DWORD PTR [ebx+0xb0],0x2b
c0102596:	00 00 00 
c0102599:	c7 83 bc 00 00 00 23 	mov    DWORD PTR [ebx+0xbc],0x23
c01025a0:	00 00 00 
c01025a3:	c7 83 c0 00 00 00 02 	mov    DWORD PTR [ebx+0xc0],0x202
c01025aa:	02 00 00 
c01025ad:	50                   	push   eax
c01025ae:	50                   	push   eax
c01025af:	68 00 f0 ff bf       	push   0xbffff000
c01025b4:	6a 02                	push   0x2
c01025b6:	e8 6b f2 ff ff       	call   c0101826 <get_a_page>
c01025bb:	c7 83 c8 00 00 00 2b 	mov    DWORD PTR [ebx+0xc8],0x2b
c01025c2:	00 00 00 
c01025c5:	05 00 10 00 00       	add    eax,0x1000
c01025ca:	89 83 c4 00 00 00    	mov    DWORD PTR [ebx+0xc4],eax
c01025d0:	89 f4                	mov    esp,esi
c01025d2:	e9 a9 e1 ff ff       	jmp    c0100780 <intr_exit>
c01025d7:	83 c4 10             	add    esp,0x10
c01025da:	8d 65 f8             	lea    esp,[ebp-0x8]
c01025dd:	5b                   	pop    ebx
c01025de:	5e                   	pop    esi
c01025df:	5d                   	pop    ebp
c01025e0:	c3                   	ret    

c01025e1 <page_dir_activate>:
c01025e1:	55                   	push   ebp
c01025e2:	89 e5                	mov    ebp,esp
c01025e4:	53                   	push   ebx
c01025e5:	bb 00 00 40 00       	mov    ebx,0x400000
c01025ea:	52                   	push   edx
c01025eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025ee:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01025f1:	85 c0                	test   eax,eax
c01025f3:	74 2b                	je     c0102620 <page_dir_activate+0x3f>
c01025f5:	83 ec 0c             	sub    esp,0xc
c01025f8:	50                   	push   eax
c01025f9:	e8 1a f0 ff ff       	call   c0101618 <addr_v2p>
c01025fe:	83 c4 10             	add    esp,0x10
c0102601:	85 c0                	test   eax,eax
c0102603:	89 c3                	mov    ebx,eax
c0102605:	75 19                	jne    c0102620 <page_dir_activate+0x3f>
c0102607:	68 50 85 10 c0       	push   0xc0108550
c010260c:	68 38 86 10 c0       	push   0xc0108638
c0102611:	6a 32                	push   0x32
c0102613:	68 6b 85 10 c0       	push   0xc010856b
c0102618:	e8 73 e0 ff ff       	call   c0100690 <panic_spin>
c010261d:	83 c4 10             	add    esp,0x10
c0102620:	0f 22 db             	mov    cr3,ebx
c0102623:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102626:	c9                   	leave  
c0102627:	c3                   	ret    

c0102628 <process_activate>:
c0102628:	55                   	push   ebp
c0102629:	89 e5                	mov    ebp,esp
c010262b:	53                   	push   ebx
c010262c:	51                   	push   ecx
c010262d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102630:	85 db                	test   ebx,ebx
c0102632:	75 19                	jne    c010264d <process_activate+0x25>
c0102634:	68 7e 85 10 c0       	push   0xc010857e
c0102639:	68 4c 86 10 c0       	push   0xc010864c
c010263e:	6a 42                	push   0x42
c0102640:	68 6b 85 10 c0       	push   0xc010856b
c0102645:	e8 46 e0 ff ff       	call   c0100690 <panic_spin>
c010264a:	83 c4 10             	add    esp,0x10
c010264d:	83 ec 0c             	sub    esp,0xc
c0102650:	53                   	push   ebx
c0102651:	e8 8b ff ff ff       	call   c01025e1 <page_dir_activate>
c0102656:	83 c4 10             	add    esp,0x10
c0102659:	83 7b 3c 00          	cmp    DWORD PTR [ebx+0x3c],0x0
c010265d:	74 0c                	je     c010266b <process_activate+0x43>
c010265f:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0102662:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102665:	c9                   	leave  
c0102666:	e9 85 fe ff ff       	jmp    c01024f0 <update_tss_esp0>
c010266b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c010266e:	c9                   	leave  
c010266f:	c3                   	ret    

c0102670 <create_page_dir>:
c0102670:	55                   	push   ebp
c0102671:	89 e5                	mov    ebp,esp
c0102673:	53                   	push   ebx
c0102674:	83 ec 10             	sub    esp,0x10
c0102677:	6a 01                	push   0x1
c0102679:	e8 40 f1 ff ff       	call   c01017be <get_kernel_page>
c010267e:	83 c4 10             	add    esp,0x10
c0102681:	85 c0                	test   eax,eax
c0102683:	89 c3                	mov    ebx,eax
c0102685:	75 10                	jne    c0102697 <create_page_dir+0x27>
c0102687:	50                   	push   eax
c0102688:	50                   	push   eax
c0102689:	68 8e 85 10 c0       	push   0xc010858e
c010268e:	6a 04                	push   0x4
c0102690:	e8 ae 01 00 00       	call   c0102843 <console_str>
c0102695:	eb 28                	jmp    c01026bf <create_page_dir+0x4f>
c0102697:	50                   	push   eax
c0102698:	68 00 04 00 00       	push   0x400
c010269d:	68 00 fc ff ff       	push   0xfffffc00
c01026a2:	8d 83 00 0c 00 00    	lea    eax,[ebx+0xc00]
c01026a8:	50                   	push   eax
c01026a9:	e8 f1 0f 00 00       	call   c010369f <memcpy>
c01026ae:	89 1c 24             	mov    DWORD PTR [esp],ebx
c01026b1:	e8 62 ef ff ff       	call   c0101618 <addr_v2p>
c01026b6:	83 c8 07             	or     eax,0x7
c01026b9:	89 83 fc 0f 00 00    	mov    DWORD PTR [ebx+0xffc],eax
c01026bf:	89 d8                	mov    eax,ebx
c01026c1:	83 c4 10             	add    esp,0x10
c01026c4:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01026c7:	c9                   	leave  
c01026c8:	c3                   	ret    

c01026c9 <create_user_vaddr_memman>:
c01026c9:	55                   	push   ebp
c01026ca:	89 e5                	mov    ebp,esp
c01026cc:	53                   	push   ebx
c01026cd:	83 ec 10             	sub    esp,0x10
c01026d0:	6a 08                	push   0x8
c01026d2:	e8 e7 f0 ff ff       	call   c01017be <get_kernel_page>
c01026d7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01026da:	83 c4 0c             	add    esp,0xc
c01026dd:	83 c3 40             	add    ebx,0x40
c01026e0:	50                   	push   eax
c01026e1:	68 ff ff 0f 00       	push   0xfffff
c01026e6:	53                   	push   ebx
c01026e7:	e8 58 ee ff ff       	call   c0101544 <init_memman>
c01026ec:	83 c4 0c             	add    esp,0xc
c01026ef:	68 b8 7f 0b 00       	push   0xb7fb8
c01026f4:	68 00 80 04 08       	push   0x8048000
c01026f9:	53                   	push   ebx
c01026fa:	e8 d2 f1 ff ff       	call   c01018d1 <pgman_free>
c01026ff:	83 c4 10             	add    esp,0x10
c0102702:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102705:	c9                   	leave  
c0102706:	c3                   	ret    

c0102707 <process_execute>:
c0102707:	55                   	push   ebp
c0102708:	89 e5                	mov    ebp,esp
c010270a:	57                   	push   edi
c010270b:	56                   	push   esi
c010270c:	53                   	push   ebx
c010270d:	83 ec 18             	sub    esp,0x18
c0102710:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102713:	6a 01                	push   0x1
c0102715:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0102718:	e8 a1 f0 ff ff       	call   c01017be <get_kernel_page>
c010271d:	83 c4 0c             	add    esp,0xc
c0102720:	6a 1f                	push   0x1f
c0102722:	57                   	push   edi
c0102723:	89 c3                	mov    ebx,eax
c0102725:	50                   	push   eax
c0102726:	e8 c0 f8 ff ff       	call   c0101feb <thread_init>
c010272b:	89 1c 24             	mov    DWORD PTR [esp],ebx
c010272e:	e8 96 ff ff ff       	call   c01026c9 <create_user_vaddr_memman>
c0102733:	83 c4 0c             	add    esp,0xc
c0102736:	56                   	push   esi
c0102737:	68 04 25 10 c0       	push   0xc0102504
c010273c:	53                   	push   ebx
c010273d:	e8 b5 f9 ff ff       	call   c01020f7 <thread_create>
c0102742:	8d 73 24             	lea    esi,[ebx+0x24]
c0102745:	e8 26 ff ff ff       	call   c0102670 <create_page_dir>
c010274a:	89 43 3c             	mov    DWORD PTR [ebx+0x3c],eax
c010274d:	8d 43 7c             	lea    eax,[ebx+0x7c]
c0102750:	89 04 24             	mov    DWORD PTR [esp],eax
c0102753:	e8 7c ea ff ff       	call   c01011d4 <init_block>
c0102758:	89 5b 34             	mov    DWORD PTR [ebx+0x34],ebx
c010275b:	89 5b 28             	mov    DWORD PTR [ebx+0x28],ebx
c010275e:	e8 e9 e8 ff ff       	call   c010104c <intr_disable>
c0102763:	59                   	pop    ecx
c0102764:	89 c7                	mov    edi,eax
c0102766:	58                   	pop    eax
c0102767:	56                   	push   esi
c0102768:	68 2c 09 12 c0       	push   0xc012092c
c010276d:	e8 e2 0b 00 00       	call   c0103354 <list_find>
c0102772:	83 c4 10             	add    esp,0x10
c0102775:	85 c0                	test   eax,eax
c0102777:	74 19                	je     c0102792 <process_execute+0x8b>
c0102779:	68 b8 85 10 c0       	push   0xc01085b8
c010277e:	68 60 86 10 c0       	push   0xc0108660
c0102783:	6a 74                	push   0x74
c0102785:	68 6b 85 10 c0       	push   0xc010856b
c010278a:	e8 01 df ff ff       	call   c0100690 <panic_spin>
c010278f:	83 c4 10             	add    esp,0x10
c0102792:	50                   	push   eax
c0102793:	83 c3 30             	add    ebx,0x30
c0102796:	50                   	push   eax
c0102797:	56                   	push   esi
c0102798:	68 2c 09 12 c0       	push   0xc012092c
c010279d:	e8 59 0b 00 00       	call   c01032fb <list_append>
c01027a2:	58                   	pop    eax
c01027a3:	5a                   	pop    edx
c01027a4:	53                   	push   ebx
c01027a5:	68 14 09 12 c0       	push   0xc0120914
c01027aa:	e8 a5 0b 00 00       	call   c0103354 <list_find>
c01027af:	83 c4 10             	add    esp,0x10
c01027b2:	85 c0                	test   eax,eax
c01027b4:	74 19                	je     c01027cf <process_execute+0xc8>
c01027b6:	68 e4 85 10 c0       	push   0xc01085e4
c01027bb:	68 60 86 10 c0       	push   0xc0108660
c01027c0:	6a 77                	push   0x77
c01027c2:	68 6b 85 10 c0       	push   0xc010856b
c01027c7:	e8 c4 de ff ff       	call   c0100690 <panic_spin>
c01027cc:	83 c4 10             	add    esp,0x10
c01027cf:	50                   	push   eax
c01027d0:	50                   	push   eax
c01027d1:	53                   	push   ebx
c01027d2:	68 14 09 12 c0       	push   0xc0120914
c01027d7:	e8 1f 0b 00 00       	call   c01032fb <list_append>
c01027dc:	83 c4 10             	add    esp,0x10
c01027df:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c01027e2:	8d 65 f4             	lea    esp,[ebp-0xc]
c01027e5:	5b                   	pop    ebx
c01027e6:	5e                   	pop    esi
c01027e7:	5f                   	pop    edi
c01027e8:	5d                   	pop    ebp
c01027e9:	e9 ce e9 ff ff       	jmp    c01011bc <intr_set_status>
	...

c01027f0 <init_console>:
c01027f0:	55                   	push   ebp
c01027f1:	89 e5                	mov    ebp,esp
c01027f3:	83 ec 14             	sub    esp,0x14
c01027f6:	68 28 8b 10 c0       	push   0xc0108b28
c01027fb:	e8 5b f5 ff ff       	call   c0101d5b <lock_init>
c0102800:	83 c4 10             	add    esp,0x10
c0102803:	c9                   	leave  
c0102804:	c3                   	ret    

c0102805 <console_char>:
c0102805:	55                   	push   ebp
c0102806:	89 e5                	mov    ebp,esp
c0102808:	56                   	push   esi
c0102809:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c010280c:	53                   	push   ebx
c010280d:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0102810:	83 ec 0c             	sub    esp,0xc
c0102813:	68 28 8b 10 c0       	push   0xc0108b28
c0102818:	e8 ca f6 ff ff       	call   c0101ee7 <lock_acquire>
c010281d:	58                   	pop    eax
c010281e:	5a                   	pop    edx
c010281f:	89 f2                	mov    edx,esi
c0102821:	0f b6 c2             	movzx  eax,dl
c0102824:	50                   	push   eax
c0102825:	0f b6 c3             	movzx  eax,bl
c0102828:	50                   	push   eax
c0102829:	e8 ea 0c 00 00       	call   c0103518 <put_char>
c010282e:	83 c4 10             	add    esp,0x10
c0102831:	c7 45 08 28 8b 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108b28
c0102838:	8d 65 f8             	lea    esp,[ebp-0x8]
c010283b:	5b                   	pop    ebx
c010283c:	5e                   	pop    esi
c010283d:	5d                   	pop    ebp
c010283e:	e9 ff f6 ff ff       	jmp    c0101f42 <lock_release>

c0102843 <console_str>:
c0102843:	55                   	push   ebp
c0102844:	89 e5                	mov    ebp,esp
c0102846:	56                   	push   esi
c0102847:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c010284a:	53                   	push   ebx
c010284b:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c010284e:	83 ec 0c             	sub    esp,0xc
c0102851:	68 28 8b 10 c0       	push   0xc0108b28
c0102856:	e8 8c f6 ff ff       	call   c0101ee7 <lock_acquire>
c010285b:	59                   	pop    ecx
c010285c:	58                   	pop    eax
c010285d:	0f b6 c3             	movzx  eax,bl
c0102860:	56                   	push   esi
c0102861:	50                   	push   eax
c0102862:	e8 52 0d 00 00       	call   c01035b9 <put_str>
c0102867:	83 c4 10             	add    esp,0x10
c010286a:	c7 45 08 28 8b 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108b28
c0102871:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102874:	5b                   	pop    ebx
c0102875:	5e                   	pop    esi
c0102876:	5d                   	pop    ebp
c0102877:	e9 c6 f6 ff ff       	jmp    c0101f42 <lock_release>

c010287c <console_int>:
c010287c:	55                   	push   ebp
c010287d:	89 e5                	mov    ebp,esp
c010287f:	57                   	push   edi
c0102880:	56                   	push   esi
c0102881:	53                   	push   ebx
c0102882:	83 ec 18             	sub    esp,0x18
c0102885:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0102888:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c010288b:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c010288e:	68 28 8b 10 c0       	push   0xc0108b28
c0102893:	e8 4f f6 ff ff       	call   c0101ee7 <lock_acquire>
c0102898:	83 c4 0c             	add    esp,0xc
c010289b:	57                   	push   edi
c010289c:	56                   	push   esi
c010289d:	0f b6 c3             	movzx  eax,bl
c01028a0:	50                   	push   eax
c01028a1:	e8 75 0d 00 00       	call   c010361b <put_int>
c01028a6:	83 c4 10             	add    esp,0x10
c01028a9:	c7 45 08 28 8b 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108b28
c01028b0:	8d 65 f4             	lea    esp,[ebp-0xc]
c01028b3:	5b                   	pop    ebx
c01028b4:	5e                   	pop    esi
c01028b5:	5f                   	pop    edi
c01028b6:	5d                   	pop    ebp
c01028b7:	e9 86 f6 ff ff       	jmp    c0101f42 <lock_release>

c01028bc <console_uint>:
c01028bc:	55                   	push   ebp
c01028bd:	89 e5                	mov    ebp,esp
c01028bf:	57                   	push   edi
c01028c0:	56                   	push   esi
c01028c1:	53                   	push   ebx
c01028c2:	83 ec 18             	sub    esp,0x18
c01028c5:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c01028c8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01028cb:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c01028ce:	68 28 8b 10 c0       	push   0xc0108b28
c01028d3:	e8 0f f6 ff ff       	call   c0101ee7 <lock_acquire>
c01028d8:	83 c4 0c             	add    esp,0xc
c01028db:	57                   	push   edi
c01028dc:	56                   	push   esi
c01028dd:	0f b6 c3             	movzx  eax,bl
c01028e0:	50                   	push   eax
c01028e1:	e8 fb 0c 00 00       	call   c01035e1 <put_uint>
c01028e6:	83 c4 10             	add    esp,0x10
c01028e9:	c7 45 08 28 8b 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108b28
c01028f0:	8d 65 f4             	lea    esp,[ebp-0xc]
c01028f3:	5b                   	pop    ebx
c01028f4:	5e                   	pop    esi
c01028f5:	5f                   	pop    edi
c01028f6:	5d                   	pop    ebp
c01028f7:	e9 46 f6 ff ff       	jmp    c0101f42 <lock_release>

c01028fc <init_cpu>:
c01028fc:	55                   	push   ebp
c01028fd:	31 c0                	xor    eax,eax
c01028ff:	89 e5                	mov    ebp,esp
c0102901:	b9 04 00 00 00       	mov    ecx,0x4
c0102906:	57                   	push   edi
c0102907:	56                   	push   esi
c0102908:	53                   	push   ebx
c0102909:	8d 7d d8             	lea    edi,[ebp-0x28]
c010290c:	83 ec 3c             	sub    esp,0x3c
c010290f:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0102911:	8d 7d c7             	lea    edi,[ebp-0x39]
c0102914:	8d 75 c7             	lea    esi,[ebp-0x39]
c0102917:	b1 11                	mov    cl,0x11
c0102919:	f3 aa                	rep stos BYTE PTR es:[edi],al
c010291b:	bf 02 00 00 80       	mov    edi,0x80000002
c0102920:	eb 30                	jmp    c0102952 <init_cpu+0x56>
c0102922:	89 f8                	mov    eax,edi
c0102924:	31 c9                	xor    ecx,ecx
c0102926:	0f a2                	cpuid  
c0102928:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010292b:	47                   	inc    edi
c010292c:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c010292f:	50                   	push   eax
c0102930:	50                   	push   eax
c0102931:	56                   	push   esi
c0102932:	6a 07                	push   0x7
c0102934:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c0102937:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c010293a:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c010293d:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c0102940:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c0102943:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c0102946:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c010294a:	e8 6a 0c 00 00       	call   c01035b9 <put_str>
c010294f:	83 c4 10             	add    esp,0x10
c0102952:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c0102958:	75 c8                	jne    c0102922 <init_cpu+0x26>
c010295a:	8d 65 f4             	lea    esp,[ebp-0xc]
c010295d:	5b                   	pop    ebx
c010295e:	5e                   	pop    esi
c010295f:	5f                   	pop    edi
c0102960:	5d                   	pop    ebp
c0102961:	c3                   	ret    

c0102962 <cpu_info>:
c0102962:	55                   	push   ebp
c0102963:	31 c0                	xor    eax,eax
c0102965:	89 e5                	mov    ebp,esp
c0102967:	b9 04 00 00 00       	mov    ecx,0x4
c010296c:	57                   	push   edi
c010296d:	56                   	push   esi
c010296e:	53                   	push   ebx
c010296f:	8d 7d d8             	lea    edi,[ebp-0x28]
c0102972:	83 ec 3c             	sub    esp,0x3c
c0102975:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0102977:	8d 7d c7             	lea    edi,[ebp-0x39]
c010297a:	8d 75 c7             	lea    esi,[ebp-0x39]
c010297d:	b1 11                	mov    cl,0x11
c010297f:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0102981:	bf 02 00 00 80       	mov    edi,0x80000002
c0102986:	eb 30                	jmp    c01029b8 <cpu_info+0x56>
c0102988:	89 f8                	mov    eax,edi
c010298a:	31 c9                	xor    ecx,ecx
c010298c:	0f a2                	cpuid  
c010298e:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c0102991:	47                   	inc    edi
c0102992:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c0102995:	52                   	push   edx
c0102996:	52                   	push   edx
c0102997:	56                   	push   esi
c0102998:	6a 07                	push   0x7
c010299a:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010299d:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c01029a0:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c01029a3:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c01029a6:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c01029a9:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c01029ac:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c01029b0:	e8 04 0c 00 00       	call   c01035b9 <put_str>
c01029b5:	83 c4 10             	add    esp,0x10
c01029b8:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c01029be:	75 c8                	jne    c0102988 <cpu_info+0x26>
c01029c0:	8d 65 f4             	lea    esp,[ebp-0xc]
c01029c3:	5b                   	pop    ebx
c01029c4:	5e                   	pop    esi
c01029c5:	5f                   	pop    edi
c01029c6:	5d                   	pop    ebp
c01029c7:	c3                   	ret    

c01029c8 <wait_keyboard_ready>:
c01029c8:	55                   	push   ebp
c01029c9:	ba 64 00 00 00       	mov    edx,0x64
c01029ce:	89 e5                	mov    ebp,esp
c01029d0:	ec                   	in     al,dx
c01029d1:	a8 02                	test   al,0x2
c01029d3:	75 fb                	jne    c01029d0 <wait_keyboard_ready+0x8>
c01029d5:	5d                   	pop    ebp
c01029d6:	c3                   	ret    

c01029d7 <init_keyboard>:
c01029d7:	55                   	push   ebp
c01029d8:	89 e5                	mov    ebp,esp
c01029da:	83 ec 08             	sub    esp,0x8
c01029dd:	e8 e6 ff ff ff       	call   c01029c8 <wait_keyboard_ready>
c01029e2:	ba 64 00 00 00       	mov    edx,0x64
c01029e7:	b8 60 00 00 00       	mov    eax,0x60
c01029ec:	ee                   	out    dx,al
c01029ed:	e8 d6 ff ff ff       	call   c01029c8 <wait_keyboard_ready>
c01029f2:	ba 60 00 00 00       	mov    edx,0x60
c01029f7:	b8 47 00 00 00       	mov    eax,0x47
c01029fc:	ee                   	out    dx,al
c01029fd:	6a 40                	push   0x40
c01029ff:	6a 08                	push   0x8
c0102a01:	68 4c 8b 10 c0       	push   0xc0108b4c
c0102a06:	68 48 09 12 c0       	push   0xc0120948
c0102a0b:	e8 f4 05 00 00       	call   c0103004 <init_fifo>
c0102a10:	83 c4 10             	add    esp,0x10
c0102a13:	c9                   	leave  
c0102a14:	c3                   	ret    

c0102a15 <intr0x21_handler>:
c0102a15:	55                   	push   ebp
c0102a16:	b8 20 00 00 00       	mov    eax,0x20
c0102a1b:	89 e5                	mov    ebp,esp
c0102a1d:	89 c2                	mov    edx,eax
c0102a1f:	53                   	push   ebx
c0102a20:	83 ec 14             	sub    esp,0x14
c0102a23:	ee                   	out    dx,al
c0102a24:	8b 0d 8c 8b 10 c0    	mov    ecx,DWORD PTR ds:0xc0108b8c
c0102a2a:	b2 60                	mov    dl,0x60
c0102a2c:	8b 1d 90 8b 10 c0    	mov    ebx,DWORD PTR ds:0xc0108b90
c0102a32:	ec                   	in     al,dx
c0102a33:	66 3d e0 00          	cmp    ax,0xe0
c0102a37:	75 0f                	jne    c0102a48 <intr0x21_handler+0x33>
c0102a39:	c7 05 94 8b 10 c0 01 	mov    DWORD PTR ds:0xc0108b94,0x1
c0102a40:	00 00 00 
c0102a43:	e9 87 01 00 00       	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102a48:	83 3d 94 8b 10 c0 01 	cmp    DWORD PTR ds:0xc0108b94,0x1
c0102a4f:	75 0e                	jne    c0102a5f <intr0x21_handler+0x4a>
c0102a51:	66 0d 00 e0          	or     ax,0xe000
c0102a55:	c7 05 94 8b 10 c0 00 	mov    DWORD PTR ds:0xc0108b94,0x0
c0102a5c:	00 00 00 
c0102a5f:	a8 80                	test   al,0x80
c0102a61:	74 61                	je     c0102ac4 <intr0x21_handler+0xaf>
c0102a63:	24 7f                	and    al,0x7f
c0102a65:	66 83 f8 36          	cmp    ax,0x36
c0102a69:	74 3b                	je     c0102aa6 <intr0x21_handler+0x91>
c0102a6b:	77 12                	ja     c0102a7f <intr0x21_handler+0x6a>
c0102a6d:	66 83 f8 1d          	cmp    ax,0x1d
c0102a71:	74 24                	je     c0102a97 <intr0x21_handler+0x82>
c0102a73:	66 83 f8 2a          	cmp    ax,0x2a
c0102a77:	0f 85 52 01 00 00    	jne    c0102bcf <intr0x21_handler+0x1ba>
c0102a7d:	eb 27                	jmp    c0102aa6 <intr0x21_handler+0x91>
c0102a7f:	66 3d 1d e0          	cmp    ax,0xe01d
c0102a83:	74 12                	je     c0102a97 <intr0x21_handler+0x82>
c0102a85:	66 3d 38 e0          	cmp    ax,0xe038
c0102a89:	74 2a                	je     c0102ab5 <intr0x21_handler+0xa0>
c0102a8b:	66 83 f8 38          	cmp    ax,0x38
c0102a8f:	0f 85 3a 01 00 00    	jne    c0102bcf <intr0x21_handler+0x1ba>
c0102a95:	eb 1e                	jmp    c0102ab5 <intr0x21_handler+0xa0>
c0102a97:	c7 05 98 8b 10 c0 00 	mov    DWORD PTR ds:0xc0108b98,0x0
c0102a9e:	00 00 00 
c0102aa1:	e9 29 01 00 00       	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102aa6:	c7 05 8c 8b 10 c0 00 	mov    DWORD PTR ds:0xc0108b8c,0x0
c0102aad:	00 00 00 
c0102ab0:	e9 1a 01 00 00       	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102ab5:	c7 05 9c 8b 10 c0 00 	mov    DWORD PTR ds:0xc0108b9c,0x0
c0102abc:	00 00 00 
c0102abf:	e9 0b 01 00 00       	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102ac4:	8d 50 ff             	lea    edx,[eax-0x1]
c0102ac7:	66 83 fa 39          	cmp    dx,0x39
c0102acb:	76 10                	jbe    c0102add <intr0x21_handler+0xc8>
c0102acd:	66 3d 38 e0          	cmp    ax,0xe038
c0102ad1:	74 0a                	je     c0102add <intr0x21_handler+0xc8>
c0102ad3:	66 3d 1d e0          	cmp    ax,0xe01d
c0102ad7:	0f 85 f2 00 00 00    	jne    c0102bcf <intr0x21_handler+0x1ba>
c0102add:	66 83 f8 29          	cmp    ax,0x29
c0102ae1:	74 2d                	je     c0102b10 <intr0x21_handler+0xfb>
c0102ae3:	66 83 f8 0d          	cmp    ax,0xd
c0102ae7:	76 27                	jbe    c0102b10 <intr0x21_handler+0xfb>
c0102ae9:	66 83 f8 1b          	cmp    ax,0x1b
c0102aed:	74 21                	je     c0102b10 <intr0x21_handler+0xfb>
c0102aef:	66 83 f8 1a          	cmp    ax,0x1a
c0102af3:	74 1b                	je     c0102b10 <intr0x21_handler+0xfb>
c0102af5:	66 83 f8 27          	cmp    ax,0x27
c0102af9:	74 15                	je     c0102b10 <intr0x21_handler+0xfb>
c0102afb:	66 83 f8 2b          	cmp    ax,0x2b
c0102aff:	74 0f                	je     c0102b10 <intr0x21_handler+0xfb>
c0102b01:	66 83 f8 28          	cmp    ax,0x28
c0102b05:	74 09                	je     c0102b10 <intr0x21_handler+0xfb>
c0102b07:	8d 50 cd             	lea    edx,[eax-0x33]
c0102b0a:	66 83 fa 02          	cmp    dx,0x2
c0102b0e:	77 06                	ja     c0102b16 <intr0x21_handler+0x101>
c0102b10:	49                   	dec    ecx
c0102b11:	0f 94 c2             	sete   dl
c0102b14:	eb 0f                	jmp    c0102b25 <intr0x21_handler+0x110>
c0102b16:	85 db                	test   ebx,ebx
c0102b18:	74 06                	je     c0102b20 <intr0x21_handler+0x10b>
c0102b1a:	31 d2                	xor    edx,edx
c0102b1c:	85 c9                	test   ecx,ecx
c0102b1e:	75 08                	jne    c0102b28 <intr0x21_handler+0x113>
c0102b20:	09 cb                	or     ebx,ecx
c0102b22:	0f 95 c2             	setne  dl
c0102b25:	0f b6 d2             	movzx  edx,dl
c0102b28:	66 25 ff 00          	and    ax,0xff
c0102b2c:	0f b7 c8             	movzx  ecx,ax
c0102b2f:	8a 94 4a dc 86 10 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fef7924]
c0102b36:	84 d2                	test   dl,dl
c0102b38:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c0102b3b:	74 26                	je     c0102b63 <intr0x21_handler+0x14e>
c0102b3d:	83 ec 0c             	sub    esp,0xc
c0102b40:	68 48 09 12 c0       	push   0xc0120948
c0102b45:	e8 3e 07 00 00       	call   c0103288 <fifo_fill>
c0102b4a:	83 c4 10             	add    esp,0x10
c0102b4d:	85 c0                	test   eax,eax
c0102b4f:	75 7e                	jne    c0102bcf <intr0x21_handler+0x1ba>
c0102b51:	51                   	push   ecx
c0102b52:	51                   	push   ecx
c0102b53:	8d 45 f7             	lea    eax,[ebp-0x9]
c0102b56:	50                   	push   eax
c0102b57:	68 48 09 12 c0       	push   0xc0120948
c0102b5c:	e8 0d 05 00 00       	call   c010306e <fifo_put>
c0102b61:	eb 69                	jmp    c0102bcc <intr0x21_handler+0x1b7>
c0102b63:	66 83 f8 36          	cmp    ax,0x36
c0102b67:	74 2a                	je     c0102b93 <intr0x21_handler+0x17e>
c0102b69:	77 0e                	ja     c0102b79 <intr0x21_handler+0x164>
c0102b6b:	66 83 f8 1d          	cmp    ax,0x1d
c0102b6f:	74 16                	je     c0102b87 <intr0x21_handler+0x172>
c0102b71:	66 83 f8 2a          	cmp    ax,0x2a
c0102b75:	75 47                	jne    c0102bbe <intr0x21_handler+0x1a9>
c0102b77:	eb 1a                	jmp    c0102b93 <intr0x21_handler+0x17e>
c0102b79:	66 83 f8 38          	cmp    ax,0x38
c0102b7d:	74 20                	je     c0102b9f <intr0x21_handler+0x18a>
c0102b7f:	66 83 f8 3a          	cmp    ax,0x3a
c0102b83:	75 39                	jne    c0102bbe <intr0x21_handler+0x1a9>
c0102b85:	eb 24                	jmp    c0102bab <intr0x21_handler+0x196>
c0102b87:	c7 05 98 8b 10 c0 01 	mov    DWORD PTR ds:0xc0108b98,0x1
c0102b8e:	00 00 00 
c0102b91:	eb 3c                	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102b93:	c7 05 8c 8b 10 c0 01 	mov    DWORD PTR ds:0xc0108b8c,0x1
c0102b9a:	00 00 00 
c0102b9d:	eb 30                	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102b9f:	c7 05 9c 8b 10 c0 01 	mov    DWORD PTR ds:0xc0108b9c,0x1
c0102ba6:	00 00 00 
c0102ba9:	eb 24                	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102bab:	31 c0                	xor    eax,eax
c0102bad:	83 3d 90 8b 10 c0 00 	cmp    DWORD PTR ds:0xc0108b90,0x0
c0102bb4:	0f 94 c0             	sete   al
c0102bb7:	a3 90 8b 10 c0       	mov    ds:0xc0108b90,eax
c0102bbc:	eb 11                	jmp    c0102bcf <intr0x21_handler+0x1ba>
c0102bbe:	52                   	push   edx
c0102bbf:	52                   	push   edx
c0102bc0:	68 b0 86 10 c0       	push   0xc01086b0
c0102bc5:	6a 04                	push   0x4
c0102bc7:	e8 ed 09 00 00       	call   c01035b9 <put_str>
c0102bcc:	83 c4 10             	add    esp,0x10
c0102bcf:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102bd2:	c9                   	leave  
c0102bd3:	c3                   	ret    

c0102bd4 <init_mouse>:
c0102bd4:	55                   	push   ebp
c0102bd5:	89 e5                	mov    ebp,esp
c0102bd7:	83 ec 08             	sub    esp,0x8
c0102bda:	e8 e9 fd ff ff       	call   c01029c8 <wait_keyboard_ready>
c0102bdf:	ba 64 00 00 00       	mov    edx,0x64
c0102be4:	b8 d4 00 00 00       	mov    eax,0xd4
c0102be9:	ee                   	out    dx,al
c0102bea:	e8 d9 fd ff ff       	call   c01029c8 <wait_keyboard_ready>
c0102bef:	ba 60 00 00 00       	mov    edx,0x60
c0102bf4:	b8 f4 00 00 00       	mov    eax,0xf4
c0102bf9:	ee                   	out    dx,al
c0102bfa:	c7 05 a8 8b 10 c0 00 	mov    DWORD PTR ds:0xc0108ba8,0x0
c0102c01:	00 00 00 
c0102c04:	c9                   	leave  
c0102c05:	c3                   	ret    

c0102c06 <intr0x2c_handler>:
c0102c06:	55                   	push   ebp
c0102c07:	b8 20 00 00 00       	mov    eax,0x20
c0102c0c:	89 e5                	mov    ebp,esp
c0102c0e:	ba a0 00 00 00       	mov    edx,0xa0
c0102c13:	ee                   	out    dx,al
c0102c14:	89 c2                	mov    edx,eax
c0102c16:	ee                   	out    dx,al
c0102c17:	b2 60                	mov    dl,0x60
c0102c19:	ec                   	in     al,dx
c0102c1a:	8b 0d a8 8b 10 c0    	mov    ecx,DWORD PTR ds:0xc0108ba8
c0102c20:	88 c2                	mov    dl,al
c0102c22:	85 c9                	test   ecx,ecx
c0102c24:	75 17                	jne    c0102c3d <intr0x2c_handler+0x37>
c0102c26:	3c fa                	cmp    al,0xfa
c0102c28:	0f 85 d4 00 00 00    	jne    c0102d02 <intr0x2c_handler+0xfc>
c0102c2e:	c7 05 a8 8b 10 c0 01 	mov    DWORD PTR ds:0xc0108ba8,0x1
c0102c35:	00 00 00 
c0102c38:	e9 c5 00 00 00       	jmp    c0102d02 <intr0x2c_handler+0xfc>
c0102c3d:	8b 0d a8 8b 10 c0    	mov    ecx,DWORD PTR ds:0xc0108ba8
c0102c43:	49                   	dec    ecx
c0102c44:	75 23                	jne    c0102c69 <intr0x2c_handler+0x63>
c0102c46:	81 e2 c8 00 00 00    	and    edx,0xc8
c0102c4c:	83 fa 08             	cmp    edx,0x8
c0102c4f:	0f 85 ad 00 00 00    	jne    c0102d02 <intr0x2c_handler+0xfc>
c0102c55:	a2 a4 8b 10 c0       	mov    ds:0xc0108ba4,al
c0102c5a:	c7 05 a8 8b 10 c0 02 	mov    DWORD PTR ds:0xc0108ba8,0x2
c0102c61:	00 00 00 
c0102c64:	e9 99 00 00 00       	jmp    c0102d02 <intr0x2c_handler+0xfc>
c0102c69:	8b 15 a8 8b 10 c0    	mov    edx,DWORD PTR ds:0xc0108ba8
c0102c6f:	83 fa 02             	cmp    edx,0x2
c0102c72:	75 11                	jne    c0102c85 <intr0x2c_handler+0x7f>
c0102c74:	a2 a5 8b 10 c0       	mov    ds:0xc0108ba5,al
c0102c79:	c7 05 a8 8b 10 c0 03 	mov    DWORD PTR ds:0xc0108ba8,0x3
c0102c80:	00 00 00 
c0102c83:	eb 7d                	jmp    c0102d02 <intr0x2c_handler+0xfc>
c0102c85:	8b 15 a8 8b 10 c0    	mov    edx,DWORD PTR ds:0xc0108ba8
c0102c8b:	83 fa 03             	cmp    edx,0x3
c0102c8e:	75 72                	jne    c0102d02 <intr0x2c_handler+0xfc>
c0102c90:	a2 a6 8b 10 c0       	mov    ds:0xc0108ba6,al
c0102c95:	c7 05 a8 8b 10 c0 04 	mov    DWORD PTR ds:0xc0108ba8,0x4
c0102c9c:	00 00 00 
c0102c9f:	a0 a4 8b 10 c0       	mov    al,ds:0xc0108ba4
c0102ca4:	83 e0 07             	and    eax,0x7
c0102ca7:	a3 b4 8b 10 c0       	mov    ds:0xc0108bb4,eax
c0102cac:	a0 a5 8b 10 c0       	mov    al,ds:0xc0108ba5
c0102cb1:	0f b6 c0             	movzx  eax,al
c0102cb4:	a3 ac 8b 10 c0       	mov    ds:0xc0108bac,eax
c0102cb9:	a0 a6 8b 10 c0       	mov    al,ds:0xc0108ba6
c0102cbe:	0f b6 c0             	movzx  eax,al
c0102cc1:	a3 b0 8b 10 c0       	mov    ds:0xc0108bb0,eax
c0102cc6:	a0 a4 8b 10 c0       	mov    al,ds:0xc0108ba4
c0102ccb:	a8 10                	test   al,0x10
c0102ccd:	74 0f                	je     c0102cde <intr0x2c_handler+0xd8>
c0102ccf:	a1 ac 8b 10 c0       	mov    eax,ds:0xc0108bac
c0102cd4:	0d 00 ff ff ff       	or     eax,0xffffff00
c0102cd9:	a3 ac 8b 10 c0       	mov    ds:0xc0108bac,eax
c0102cde:	a0 a4 8b 10 c0       	mov    al,ds:0xc0108ba4
c0102ce3:	a8 20                	test   al,0x20
c0102ce5:	74 0f                	je     c0102cf6 <intr0x2c_handler+0xf0>
c0102ce7:	a1 b0 8b 10 c0       	mov    eax,ds:0xc0108bb0
c0102cec:	0d 00 ff ff ff       	or     eax,0xffffff00
c0102cf1:	a3 b0 8b 10 c0       	mov    ds:0xc0108bb0,eax
c0102cf6:	a1 b0 8b 10 c0       	mov    eax,ds:0xc0108bb0
c0102cfb:	f7 d8                	neg    eax
c0102cfd:	a3 b0 8b 10 c0       	mov    ds:0xc0108bb0,eax
c0102d02:	5d                   	pop    ebp
c0102d03:	c3                   	ret    

c0102d04 <get_mouse>:
c0102d04:	8b 15 a8 8b 10 c0    	mov    edx,DWORD PTR ds:0xc0108ba8
c0102d0a:	55                   	push   ebp
c0102d0b:	89 e5                	mov    ebp,esp
c0102d0d:	57                   	push   edi
c0102d0e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d11:	83 fa 04             	cmp    edx,0x4
c0102d14:	56                   	push   esi
c0102d15:	74 09                	je     c0102d20 <get_mouse+0x1c>
c0102d17:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0102d1e:	eb 18                	jmp    c0102d38 <get_mouse+0x34>
c0102d20:	c7 05 a8 8b 10 c0 01 	mov    DWORD PTR ds:0xc0108ba8,0x1
c0102d27:	00 00 00 
c0102d2a:	be a4 8b 10 c0       	mov    esi,0xc0108ba4
c0102d2f:	b9 05 00 00 00       	mov    ecx,0x5
c0102d34:	89 c7                	mov    edi,eax
c0102d36:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
c0102d38:	5e                   	pop    esi
c0102d39:	5f                   	pop    edi
c0102d3a:	5d                   	pop    ebp
c0102d3b:	c2 04 00             	ret    0x4
	...

c0102d40 <get_time>:
c0102d40:	55                   	push   ebp
c0102d41:	89 e5                	mov    ebp,esp
c0102d43:	57                   	push   edi
c0102d44:	56                   	push   esi
c0102d45:	be 70 00 00 00       	mov    esi,0x70
c0102d4a:	53                   	push   ebx
c0102d4b:	83 ec 1c             	sub    esp,0x1c
c0102d4e:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0102d51:	e8 e6 e2 ff ff       	call   c010103c <intr_get_status>
c0102d56:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0102d59:	b8 89 00 00 00       	mov    eax,0x89
c0102d5e:	89 f2                	mov    edx,esi
c0102d60:	ee                   	out    dx,al
c0102d61:	bb 71 00 00 00       	mov    ebx,0x71
c0102d66:	89 da                	mov    edx,ebx
c0102d68:	ec                   	in     al,dx
c0102d69:	89 c1                	mov    ecx,eax
c0102d6b:	89 f2                	mov    edx,esi
c0102d6d:	b8 b2 00 00 00       	mov    eax,0xb2
c0102d72:	ee                   	out    dx,al
c0102d73:	89 da                	mov    edx,ebx
c0102d75:	ec                   	in     al,dx
c0102d76:	c1 e0 08             	shl    eax,0x8
c0102d79:	89 f2                	mov    edx,esi
c0102d7b:	01 c1                	add    ecx,eax
c0102d7d:	b8 88 00 00 00       	mov    eax,0x88
c0102d82:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c0102d85:	ee                   	out    dx,al
c0102d86:	89 da                	mov    edx,ebx
c0102d88:	ec                   	in     al,dx
c0102d89:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c0102d8c:	89 f2                	mov    edx,esi
c0102d8e:	b8 87 00 00 00       	mov    eax,0x87
c0102d93:	ee                   	out    dx,al
c0102d94:	89 da                	mov    edx,ebx
c0102d96:	ec                   	in     al,dx
c0102d97:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c0102d9a:	89 f2                	mov    edx,esi
c0102d9c:	b8 84 00 00 00       	mov    eax,0x84
c0102da1:	ee                   	out    dx,al
c0102da2:	89 da                	mov    edx,ebx
c0102da4:	ec                   	in     al,dx
c0102da5:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c0102da8:	89 f2                	mov    edx,esi
c0102daa:	b8 82 00 00 00       	mov    eax,0x82
c0102daf:	ee                   	out    dx,al
c0102db0:	89 da                	mov    edx,ebx
c0102db2:	ec                   	in     al,dx
c0102db3:	b9 80 00 00 00       	mov    ecx,0x80
c0102db8:	89 f2                	mov    edx,esi
c0102dba:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c0102dbd:	89 c8                	mov    eax,ecx
c0102dbf:	ee                   	out    dx,al
c0102dc0:	89 da                	mov    edx,ebx
c0102dc2:	ec                   	in     al,dx
c0102dc3:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102dc6:	89 f2                	mov    edx,esi
c0102dc8:	89 07                	mov    DWORD PTR [edi],eax
c0102dca:	89 c8                	mov    eax,ecx
c0102dcc:	ee                   	out    dx,al
c0102dcd:	89 da                	mov    edx,ebx
c0102dcf:	ec                   	in     al,dx
c0102dd0:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c0102dd3:	75 84                	jne    c0102d59 <get_time+0x19>
c0102dd5:	b2 70                	mov    dl,0x70
c0102dd7:	31 c0                	xor    eax,eax
c0102dd9:	ee                   	out    dx,al
c0102dda:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0102ddd:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0102de0:	83 c4 1c             	add    esp,0x1c
c0102de3:	5b                   	pop    ebx
c0102de4:	5e                   	pop    esi
c0102de5:	5f                   	pop    edi
c0102de6:	5d                   	pop    ebp
c0102de7:	e9 d0 e3 ff ff       	jmp    c01011bc <intr_set_status>

c0102dec <init_pit>:
c0102dec:	55                   	push   ebp
c0102ded:	ba 43 00 00 00       	mov    edx,0x43
c0102df2:	89 e5                	mov    ebp,esp
c0102df4:	b8 34 00 00 00       	mov    eax,0x34
c0102df9:	ee                   	out    dx,al
c0102dfa:	b2 40                	mov    dl,0x40
c0102dfc:	b0 9c                	mov    al,0x9c
c0102dfe:	ee                   	out    dx,al
c0102dff:	b0 2e                	mov    al,0x2e
c0102e01:	ee                   	out    dx,al
c0102e02:	5d                   	pop    ebp
c0102e03:	c3                   	ret    

c0102e04 <intr0x20_handler>:
c0102e04:	55                   	push   ebp
c0102e05:	b8 20 00 00 00       	mov    eax,0x20
c0102e0a:	89 e5                	mov    ebp,esp
c0102e0c:	83 ec 08             	sub    esp,0x8
c0102e0f:	89 c2                	mov    edx,eax
c0102e11:	ee                   	out    dx,al
c0102e12:	e8 68 f2 ff ff       	call   c010207f <running_thread>
c0102e17:	8b 15 bc 8b 10 c0    	mov    edx,DWORD PTR ds:0xc0108bbc
c0102e1d:	42                   	inc    edx
c0102e1e:	89 15 bc 8b 10 c0    	mov    DWORD PTR ds:0xc0108bbc,edx
c0102e24:	8a 50 1d             	mov    dl,BYTE PTR [eax+0x1d]
c0102e27:	ff 40 20             	inc    DWORD PTR [eax+0x20]
c0102e2a:	84 d2                	test   dl,dl
c0102e2c:	75 06                	jne    c0102e34 <intr0x20_handler+0x30>
c0102e2e:	c9                   	leave  
c0102e2f:	e9 d8 f3 ff ff       	jmp    c010220c <schedule>
c0102e34:	4a                   	dec    edx
c0102e35:	88 50 1d             	mov    BYTE PTR [eax+0x1d],dl
c0102e38:	c9                   	leave  
c0102e39:	c3                   	ret    
	...

c0102e3c <syscall_test>:
c0102e3c:	55                   	push   ebp
c0102e3d:	b8 4d 00 00 00       	mov    eax,0x4d
c0102e42:	89 e5                	mov    ebp,esp
c0102e44:	5d                   	pop    ebp
c0102e45:	c3                   	ret    

c0102e46 <syscall_print>:
c0102e46:	55                   	push   ebp
c0102e47:	89 e5                	mov    ebp,esp
c0102e49:	5d                   	pop    ebp
c0102e4a:	e9 f6 08 00 00       	jmp    c0103745 <strlen>

c0102e4f <syscall_getpid>:
c0102e4f:	55                   	push   ebp
c0102e50:	89 e5                	mov    ebp,esp
c0102e52:	83 ec 08             	sub    esp,0x8
c0102e55:	e8 25 f2 ff ff       	call   c010207f <running_thread>
c0102e5a:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0102e5d:	c9                   	leave  
c0102e5e:	c3                   	ret    

c0102e5f <init_syscall>:
c0102e5f:	55                   	push   ebp
c0102e60:	89 e5                	mov    ebp,esp
c0102e62:	c7 05 8c 09 12 c0 3c 	mov    DWORD PTR ds:0xc012098c,0xc0102e3c
c0102e69:	2e 10 c0 
c0102e6c:	c7 05 90 09 12 c0 3c 	mov    DWORD PTR ds:0xc0120990,0xc0102e3c
c0102e73:	2e 10 c0 
c0102e76:	c7 05 94 09 12 c0 3c 	mov    DWORD PTR ds:0xc0120994,0xc0102e3c
c0102e7d:	2e 10 c0 
c0102e80:	c7 05 98 09 12 c0 3c 	mov    DWORD PTR ds:0xc0120998,0xc0102e3c
c0102e87:	2e 10 c0 
c0102e8a:	c7 05 ac 09 12 c0 4f 	mov    DWORD PTR ds:0xc01209ac,0xc0102e4f
c0102e91:	2e 10 c0 
c0102e94:	c7 05 b0 09 12 c0 46 	mov    DWORD PTR ds:0xc01209b0,0xc0102e46
c0102e9b:	2e 10 c0 
c0102e9e:	5d                   	pop    ebp
c0102e9f:	c3                   	ret    

c0102ea0 <bitmap_init>:
c0102ea0:	55                   	push   ebp
c0102ea1:	89 e5                	mov    ebp,esp
c0102ea3:	83 ec 0c             	sub    esp,0xc
c0102ea6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ea9:	ff 30                	push   DWORD PTR [eax]
c0102eab:	6a 00                	push   0x0
c0102ead:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0102eb0:	e8 a3 07 00 00       	call   c0103658 <memset>
c0102eb5:	83 c4 10             	add    esp,0x10
c0102eb8:	c9                   	leave  
c0102eb9:	c3                   	ret    

c0102eba <bitmap_scan_test>:
c0102eba:	55                   	push   ebp
c0102ebb:	89 e5                	mov    ebp,esp
c0102ebd:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102ec0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0102ec3:	5d                   	pop    ebp
c0102ec4:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0102ec7:	89 c8                	mov    eax,ecx
c0102ec9:	83 e1 07             	and    ecx,0x7
c0102ecc:	c1 e8 03             	shr    eax,0x3
c0102ecf:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c0102ed3:	ba 01 00 00 00       	mov    edx,0x1
c0102ed8:	d3 e2                	shl    edx,cl
c0102eda:	21 d0                	and    eax,edx
c0102edc:	c3                   	ret    

c0102edd <bitmap_alloc>:
c0102edd:	55                   	push   ebp
c0102ede:	89 e5                	mov    ebp,esp
c0102ee0:	57                   	push   edi
c0102ee1:	56                   	push   esi
c0102ee2:	31 f6                	xor    esi,esi
c0102ee4:	53                   	push   ebx
c0102ee5:	83 ec 1c             	sub    esp,0x1c
c0102ee8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102eeb:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0102eee:	eb 01                	jmp    c0102ef1 <bitmap_alloc+0x14>
c0102ef0:	46                   	inc    esi
c0102ef1:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c0102ef5:	75 04                	jne    c0102efb <bitmap_alloc+0x1e>
c0102ef7:	3b 33                	cmp    esi,DWORD PTR [ebx]
c0102ef9:	72 f5                	jb     c0102ef0 <bitmap_alloc+0x13>
c0102efb:	3b 33                	cmp    esi,DWORD PTR [ebx]
c0102efd:	72 19                	jb     c0102f18 <bitmap_alloc+0x3b>
c0102eff:	68 d4 87 10 c0       	push   0xc01087d4
c0102f04:	68 40 88 10 c0       	push   0xc0108840
c0102f09:	6a 2e                	push   0x2e
c0102f0b:	68 f8 87 10 c0       	push   0xc01087f8
c0102f10:	e8 7b d7 ff ff       	call   c0100690 <panic_spin>
c0102f15:	83 c4 10             	add    esp,0x10
c0102f18:	8b 13                	mov    edx,DWORD PTR [ebx]
c0102f1a:	83 c8 ff             	or     eax,0xffffffff
c0102f1d:	39 d6                	cmp    esi,edx
c0102f1f:	74 72                	je     c0102f93 <bitmap_alloc+0xb6>
c0102f21:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0102f24:	31 c9                	xor    ecx,ecx
c0102f26:	bf 01 00 00 00       	mov    edi,0x1
c0102f2b:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c0102f2e:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0102f31:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c0102f34:	eb 01                	jmp    c0102f37 <bitmap_alloc+0x5a>
c0102f36:	41                   	inc    ecx
c0102f37:	89 fe                	mov    esi,edi
c0102f39:	d3 e6                	shl    esi,cl
c0102f3b:	89 f2                	mov    edx,esi
c0102f3d:	84 d0                	test   al,dl
c0102f3f:	75 f5                	jne    c0102f36 <bitmap_alloc+0x59>
c0102f41:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c0102f44:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c0102f48:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0102f4b:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c0102f4e:	89 c8                	mov    eax,ecx
c0102f50:	74 41                	je     c0102f93 <bitmap_alloc+0xb6>
c0102f52:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c0102f59:	be 01 00 00 00       	mov    esi,0x1
c0102f5e:	29 cf                	sub    edi,ecx
c0102f60:	8d 51 01             	lea    edx,[ecx+0x1]
c0102f63:	eb 27                	jmp    c0102f8c <bitmap_alloc+0xaf>
c0102f65:	50                   	push   eax
c0102f66:	46                   	inc    esi
c0102f67:	50                   	push   eax
c0102f68:	52                   	push   edx
c0102f69:	53                   	push   ebx
c0102f6a:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c0102f6d:	e8 48 ff ff ff       	call   c0102eba <bitmap_scan_test>
c0102f72:	83 c4 10             	add    esp,0x10
c0102f75:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0102f78:	85 c0                	test   eax,eax
c0102f7a:	74 02                	je     c0102f7e <bitmap_alloc+0xa1>
c0102f7c:	31 f6                	xor    esi,esi
c0102f7e:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c0102f81:	75 07                	jne    c0102f8a <bitmap_alloc+0xad>
c0102f83:	29 f2                	sub    edx,esi
c0102f85:	8d 42 01             	lea    eax,[edx+0x1]
c0102f88:	eb 09                	jmp    c0102f93 <bitmap_alloc+0xb6>
c0102f8a:	4f                   	dec    edi
c0102f8b:	42                   	inc    edx
c0102f8c:	85 ff                	test   edi,edi
c0102f8e:	75 d5                	jne    c0102f65 <bitmap_alloc+0x88>
c0102f90:	83 c8 ff             	or     eax,0xffffffff
c0102f93:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102f96:	5b                   	pop    ebx
c0102f97:	5e                   	pop    esi
c0102f98:	5f                   	pop    edi
c0102f99:	5d                   	pop    ebp
c0102f9a:	c3                   	ret    

c0102f9b <bitmap_set>:
c0102f9b:	55                   	push   ebp
c0102f9c:	89 e5                	mov    ebp,esp
c0102f9e:	57                   	push   edi
c0102f9f:	56                   	push   esi
c0102fa0:	53                   	push   ebx
c0102fa1:	83 ec 0c             	sub    esp,0xc
c0102fa4:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c0102fa7:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102faa:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0102fad:	80 fb 01             	cmp    bl,0x1
c0102fb0:	76 19                	jbe    c0102fcb <bitmap_set+0x30>
c0102fb2:	68 05 88 10 c0       	push   0xc0108805
c0102fb7:	68 50 88 10 c0       	push   0xc0108850
c0102fbc:	6a 65                	push   0x65
c0102fbe:	68 f8 87 10 c0       	push   0xc01087f8
c0102fc3:	e8 c8 d6 ff ff       	call   c0100690 <panic_spin>
c0102fc8:	83 c4 10             	add    esp,0x10
c0102fcb:	89 fa                	mov    edx,edi
c0102fcd:	89 f9                	mov    ecx,edi
c0102fcf:	c1 ea 03             	shr    edx,0x3
c0102fd2:	83 e1 07             	and    ecx,0x7
c0102fd5:	84 db                	test   bl,bl
c0102fd7:	74 06                	je     c0102fdf <bitmap_set+0x44>
c0102fd9:	fe cb                	dec    bl
c0102fdb:	75 1e                	jne    c0102ffb <bitmap_set+0x60>
c0102fdd:	eb 10                	jmp    c0102fef <bitmap_set+0x54>
c0102fdf:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c0102fe2:	b8 01 00 00 00       	mov    eax,0x1
c0102fe7:	d3 e0                	shl    eax,cl
c0102fe9:	f7 d0                	not    eax
c0102feb:	20 02                	and    BYTE PTR [edx],al
c0102fed:	eb 0c                	jmp    c0102ffb <bitmap_set+0x60>
c0102fef:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c0102ff2:	b8 01 00 00 00       	mov    eax,0x1
c0102ff7:	d3 e0                	shl    eax,cl
c0102ff9:	08 02                	or     BYTE PTR [edx],al
c0102ffb:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102ffe:	5b                   	pop    ebx
c0102fff:	5e                   	pop    esi
c0103000:	5f                   	pop    edi
c0103001:	5d                   	pop    ebp
c0103002:	c3                   	ret    
	...

c0103004 <init_fifo>:
c0103004:	55                   	push   ebp
c0103005:	89 e5                	mov    ebp,esp
c0103007:	57                   	push   edi
c0103008:	56                   	push   esi
c0103009:	53                   	push   ebx
c010300a:	83 ec 28             	sub    esp,0x28
c010300d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103010:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0103013:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0103016:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0103019:	53                   	push   ebx
c010301a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010301d:	e8 39 ed ff ff       	call   c0101d5b <lock_init>
c0103022:	83 c4 10             	add    esp,0x10
c0103025:	83 fe 10             	cmp    esi,0x10
c0103028:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c010302f:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c0103036:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
c0103039:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010303c:	74 11                	je     c010304f <init_fifo+0x4b>
c010303e:	7f 05                	jg     c0103045 <init_fifo+0x41>
c0103040:	83 fe 08             	cmp    esi,0x8
c0103043:	eb 08                	jmp    c010304d <init_fifo+0x49>
c0103045:	83 fe 20             	cmp    esi,0x20
c0103048:	74 05                	je     c010304f <init_fifo+0x4b>
c010304a:	83 fe 40             	cmp    esi,0x40
c010304d:	75 03                	jne    c0103052 <init_fifo+0x4e>
c010304f:	89 7b 2c             	mov    DWORD PTR [ebx+0x2c],edi
c0103052:	89 43 34             	mov    DWORD PTR [ebx+0x34],eax
c0103055:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c0103058:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c010305f:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
c0103066:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103069:	5b                   	pop    ebx
c010306a:	5e                   	pop    esi
c010306b:	5f                   	pop    edi
c010306c:	5d                   	pop    ebp
c010306d:	c3                   	ret    

c010306e <fifo_put>:
c010306e:	55                   	push   ebp
c010306f:	89 e5                	mov    ebp,esp
c0103071:	57                   	push   edi
c0103072:	56                   	push   esi
c0103073:	53                   	push   ebx
c0103074:	83 ec 1c             	sub    esp,0x1c
c0103077:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010307a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c010307d:	e8 ca df ff ff       	call   c010104c <intr_disable>
c0103082:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0103085:	eb 28                	jmp    c01030af <fifo_put+0x41>
c0103087:	83 ec 0c             	sub    esp,0xc
c010308a:	53                   	push   ebx
c010308b:	e8 57 ee ff ff       	call   c0101ee7 <lock_acquire>
c0103090:	e8 ea ef ff ff       	call   c010207f <running_thread>
c0103095:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
c0103098:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c010309f:	e8 86 f2 ff ff       	call   c010232a <thread_block>
c01030a4:	89 1c 24             	mov    DWORD PTR [esp],ebx
c01030a7:	e8 96 ee ff ff       	call   c0101f42 <lock_release>
c01030ac:	83 c4 10             	add    esp,0x10
c01030af:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c01030b2:	85 c0                	test   eax,eax
c01030b4:	74 d1                	je     c0103087 <fifo_put+0x19>
c01030b6:	48                   	dec    eax
c01030b7:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c01030ba:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c01030bd:	83 f8 10             	cmp    eax,0x10
c01030c0:	74 28                	je     c01030ea <fifo_put+0x7c>
c01030c2:	83 f8 08             	cmp    eax,0x8
c01030c5:	74 23                	je     c01030ea <fifo_put+0x7c>
c01030c7:	83 f8 20             	cmp    eax,0x20
c01030ca:	74 1e                	je     c01030ea <fifo_put+0x7c>
c01030cc:	83 f8 40             	cmp    eax,0x40
c01030cf:	74 19                	je     c01030ea <fifo_put+0x7c>
c01030d1:	68 5c 88 10 c0       	push   0xc010885c
c01030d6:	68 d8 88 10 c0       	push   0xc01088d8
c01030db:	6a 3b                	push   0x3b
c01030dd:	68 a8 88 10 c0       	push   0xc01088a8
c01030e2:	e8 a9 d5 ff ff       	call   c0100690 <panic_spin>
c01030e7:	83 c4 10             	add    esp,0x10
c01030ea:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c01030ed:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c01030f0:	83 fa 10             	cmp    edx,0x10
c01030f3:	74 1f                	je     c0103114 <fifo_put+0xa6>
c01030f5:	7f 07                	jg     c01030fe <fifo_put+0x90>
c01030f7:	83 fa 08             	cmp    edx,0x8
c01030fa:	75 3d                	jne    c0103139 <fifo_put+0xcb>
c01030fc:	eb 0c                	jmp    c010310a <fifo_put+0x9c>
c01030fe:	83 fa 20             	cmp    edx,0x20
c0103101:	74 1d                	je     c0103120 <fifo_put+0xb2>
c0103103:	83 fa 40             	cmp    edx,0x40
c0103106:	75 31                	jne    c0103139 <fifo_put+0xcb>
c0103108:	eb 20                	jmp    c010312a <fifo_put+0xbc>
c010310a:	8a 0e                	mov    cl,BYTE PTR [esi]
c010310c:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010310f:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
c0103112:	eb 25                	jmp    c0103139 <fifo_put+0xcb>
c0103114:	66 8b 0e             	mov    cx,WORD PTR [esi]
c0103117:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010311a:	66 89 0c 42          	mov    WORD PTR [edx+eax*2],cx
c010311e:	eb 19                	jmp    c0103139 <fifo_put+0xcb>
c0103120:	8b 0e                	mov    ecx,DWORD PTR [esi]
c0103122:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0103125:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
c0103128:	eb 0f                	jmp    c0103139 <fifo_put+0xcb>
c010312a:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c010312d:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0103130:	8b 36                	mov    esi,DWORD PTR [esi]
c0103132:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c0103136:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c0103139:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c010313c:	40                   	inc    eax
c010313d:	99                   	cdq    
c010313e:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c0103141:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
c0103144:	85 c0                	test   eax,eax
c0103146:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
c0103149:	74 13                	je     c010315e <fifo_put+0xf0>
c010314b:	83 ec 0c             	sub    esp,0xc
c010314e:	50                   	push   eax
c010314f:	e8 21 f2 ff ff       	call   c0102375 <thread_unblock>
c0103154:	83 c4 10             	add    esp,0x10
c0103157:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c010315e:	83 ec 0c             	sub    esp,0xc
c0103161:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0103164:	e8 53 e0 ff ff       	call   c01011bc <intr_set_status>
c0103169:	8d 65 f4             	lea    esp,[ebp-0xc]
c010316c:	31 c0                	xor    eax,eax
c010316e:	5b                   	pop    ebx
c010316f:	5e                   	pop    esi
c0103170:	5f                   	pop    edi
c0103171:	5d                   	pop    ebp
c0103172:	c3                   	ret    

c0103173 <fifo_get>:
c0103173:	55                   	push   ebp
c0103174:	89 e5                	mov    ebp,esp
c0103176:	57                   	push   edi
c0103177:	56                   	push   esi
c0103178:	53                   	push   ebx
c0103179:	83 ec 0c             	sub    esp,0xc
c010317c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010317f:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0103182:	e8 c5 de ff ff       	call   c010104c <intr_disable>
c0103187:	89 c7                	mov    edi,eax
c0103189:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c010318c:	83 f8 10             	cmp    eax,0x10
c010318f:	74 4f                	je     c01031e0 <fifo_get+0x6d>
c0103191:	83 f8 08             	cmp    eax,0x8
c0103194:	74 4a                	je     c01031e0 <fifo_get+0x6d>
c0103196:	83 f8 20             	cmp    eax,0x20
c0103199:	74 45                	je     c01031e0 <fifo_get+0x6d>
c010319b:	83 f8 40             	cmp    eax,0x40
c010319e:	74 40                	je     c01031e0 <fifo_get+0x6d>
c01031a0:	68 5c 88 10 c0       	push   0xc010885c
c01031a5:	68 e4 88 10 c0       	push   0xc01088e4
c01031aa:	6a 5a                	push   0x5a
c01031ac:	68 a8 88 10 c0       	push   0xc01088a8
c01031b1:	e8 da d4 ff ff       	call   c0100690 <panic_spin>
c01031b6:	eb 25                	jmp    c01031dd <fifo_get+0x6a>
c01031b8:	83 ec 0c             	sub    esp,0xc
c01031bb:	53                   	push   ebx
c01031bc:	e8 26 ed ff ff       	call   c0101ee7 <lock_acquire>
c01031c1:	e8 b9 ee ff ff       	call   c010207f <running_thread>
c01031c6:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
c01031c9:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01031d0:	e8 55 f1 ff ff       	call   c010232a <thread_block>
c01031d5:	89 1c 24             	mov    DWORD PTR [esp],ebx
c01031d8:	e8 65 ed ff ff       	call   c0101f42 <lock_release>
c01031dd:	83 c4 10             	add    esp,0x10
c01031e0:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c01031e3:	3b 43 34             	cmp    eax,DWORD PTR [ebx+0x34]
c01031e6:	74 d0                	je     c01031b8 <fifo_get+0x45>
c01031e8:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c01031eb:	40                   	inc    eax
c01031ec:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c01031ef:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c01031f2:	83 fa 10             	cmp    edx,0x10
c01031f5:	74 1f                	je     c0103216 <fifo_get+0xa3>
c01031f7:	7f 07                	jg     c0103200 <fifo_get+0x8d>
c01031f9:	83 fa 08             	cmp    edx,0x8
c01031fc:	75 3e                	jne    c010323c <fifo_get+0xc9>
c01031fe:	eb 0c                	jmp    c010320c <fifo_get+0x99>
c0103200:	83 fa 20             	cmp    edx,0x20
c0103203:	74 1d                	je     c0103222 <fifo_get+0xaf>
c0103205:	83 fa 40             	cmp    edx,0x40
c0103208:	75 32                	jne    c010323c <fifo_get+0xc9>
c010320a:	eb 20                	jmp    c010322c <fifo_get+0xb9>
c010320c:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010320f:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c0103212:	88 06                	mov    BYTE PTR [esi],al
c0103214:	eb 26                	jmp    c010323c <fifo_get+0xc9>
c0103216:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0103219:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c010321d:	66 89 06             	mov    WORD PTR [esi],ax
c0103220:	eb 1a                	jmp    c010323c <fifo_get+0xc9>
c0103222:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0103225:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c0103228:	89 06                	mov    DWORD PTR [esi],eax
c010322a:	eb 10                	jmp    c010323c <fifo_get+0xc9>
c010322c:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010322f:	8d 14 c2             	lea    edx,[edx+eax*8]
c0103232:	8b 02                	mov    eax,DWORD PTR [edx]
c0103234:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0103237:	89 06                	mov    DWORD PTR [esi],eax
c0103239:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c010323c:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c010323f:	40                   	inc    eax
c0103240:	99                   	cdq    
c0103241:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c0103244:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c0103247:	85 c0                	test   eax,eax
c0103249:	89 53 3c             	mov    DWORD PTR [ebx+0x3c],edx
c010324c:	74 13                	je     c0103261 <fifo_get+0xee>
c010324e:	83 ec 0c             	sub    esp,0xc
c0103251:	50                   	push   eax
c0103252:	e8 1e f1 ff ff       	call   c0102375 <thread_unblock>
c0103257:	83 c4 10             	add    esp,0x10
c010325a:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c0103261:	83 ec 0c             	sub    esp,0xc
c0103264:	57                   	push   edi
c0103265:	e8 52 df ff ff       	call   c01011bc <intr_set_status>
c010326a:	8d 65 f4             	lea    esp,[ebp-0xc]
c010326d:	31 c0                	xor    eax,eax
c010326f:	5b                   	pop    ebx
c0103270:	5e                   	pop    esi
c0103271:	5f                   	pop    edi
c0103272:	5d                   	pop    ebp
c0103273:	c3                   	ret    

c0103274 <fifo_empty>:
c0103274:	55                   	push   ebp
c0103275:	89 e5                	mov    ebp,esp
c0103277:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010327a:	5d                   	pop    ebp
c010327b:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
c010327e:	39 50 38             	cmp    DWORD PTR [eax+0x38],edx
c0103281:	0f 94 c0             	sete   al
c0103284:	0f b6 c0             	movzx  eax,al
c0103287:	c3                   	ret    

c0103288 <fifo_fill>:
c0103288:	55                   	push   ebp
c0103289:	89 e5                	mov    ebp,esp
c010328b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010328e:	5d                   	pop    ebp
c010328f:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
c0103293:	0f 94 c0             	sete   al
c0103296:	0f b6 c0             	movzx  eax,al
c0103299:	c3                   	ret    
	...

c010329c <list_init>:
c010329c:	55                   	push   ebp
c010329d:	89 e5                	mov    ebp,esp
c010329f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01032a2:	8d 50 0c             	lea    edx,[eax+0xc]
c01032a5:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01032ab:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01032ae:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c01032b1:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c01032b8:	5d                   	pop    ebp
c01032b9:	c3                   	ret    

c01032ba <list_in>:
c01032ba:	55                   	push   ebp
c01032bb:	89 e5                	mov    ebp,esp
c01032bd:	56                   	push   esi
c01032be:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01032c1:	53                   	push   ebx
c01032c2:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c01032c5:	e8 82 dd ff ff       	call   c010104c <intr_disable>
c01032ca:	8b 13                	mov    edx,DWORD PTR [ebx]
c01032cc:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c01032cf:	8b 13                	mov    edx,DWORD PTR [ebx]
c01032d1:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c01032d4:	89 16                	mov    DWORD PTR [esi],edx
c01032d6:	89 33                	mov    DWORD PTR [ebx],esi
c01032d8:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c01032db:	5b                   	pop    ebx
c01032dc:	5e                   	pop    esi
c01032dd:	5d                   	pop    ebp
c01032de:	e9 d9 de ff ff       	jmp    c01011bc <intr_set_status>

c01032e3 <list_push>:
c01032e3:	55                   	push   ebp
c01032e4:	89 e5                	mov    ebp,esp
c01032e6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01032e9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01032ec:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c01032ef:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c01032f2:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c01032f5:	5d                   	pop    ebp
c01032f6:	e9 bf ff ff ff       	jmp    c01032ba <list_in>

c01032fb <list_append>:
c01032fb:	55                   	push   ebp
c01032fc:	89 e5                	mov    ebp,esp
c01032fe:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103301:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103304:	83 c2 0c             	add    edx,0xc
c0103307:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c010330a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c010330d:	5d                   	pop    ebp
c010330e:	e9 a7 ff ff ff       	jmp    c01032ba <list_in>

c0103313 <list_remove>:
c0103313:	55                   	push   ebp
c0103314:	89 e5                	mov    ebp,esp
c0103316:	53                   	push   ebx
c0103317:	50                   	push   eax
c0103318:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010331b:	e8 2c dd ff ff       	call   c010104c <intr_disable>
c0103320:	8b 13                	mov    edx,DWORD PTR [ebx]
c0103322:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103325:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c0103328:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c010332b:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c010332d:	89 0a                	mov    DWORD PTR [edx],ecx
c010332f:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0103332:	5a                   	pop    edx
c0103333:	5b                   	pop    ebx
c0103334:	5d                   	pop    ebp
c0103335:	e9 82 de ff ff       	jmp    c01011bc <intr_set_status>

c010333a <list_pop>:
c010333a:	55                   	push   ebp
c010333b:	89 e5                	mov    ebp,esp
c010333d:	53                   	push   ebx
c010333e:	83 ec 10             	sub    esp,0x10
c0103341:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103344:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c0103347:	53                   	push   ebx
c0103348:	e8 c6 ff ff ff       	call   c0103313 <list_remove>
c010334d:	89 d8                	mov    eax,ebx
c010334f:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0103352:	c9                   	leave  
c0103353:	c3                   	ret    

c0103354 <list_find>:
c0103354:	55                   	push   ebp
c0103355:	89 e5                	mov    ebp,esp
c0103357:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010335a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c010335d:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c0103360:	83 c2 0c             	add    edx,0xc
c0103363:	eb 07                	jmp    c010336c <list_find+0x18>
c0103365:	39 c8                	cmp    eax,ecx
c0103367:	74 0b                	je     c0103374 <list_find+0x20>
c0103369:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010336c:	39 d0                	cmp    eax,edx
c010336e:	75 f5                	jne    c0103365 <list_find+0x11>
c0103370:	31 c0                	xor    eax,eax
c0103372:	eb 05                	jmp    c0103379 <list_find+0x25>
c0103374:	b8 01 00 00 00       	mov    eax,0x1
c0103379:	5d                   	pop    ebp
c010337a:	c3                   	ret    

c010337b <list_traversal>:
c010337b:	55                   	push   ebp
c010337c:	89 e5                	mov    ebp,esp
c010337e:	57                   	push   edi
c010337f:	56                   	push   esi
c0103380:	53                   	push   ebx
c0103381:	83 ec 0c             	sub    esp,0xc
c0103384:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0103387:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c010338a:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c010338d:	83 c6 0c             	add    esi,0xc
c0103390:	eb 11                	jmp    c01033a3 <list_traversal+0x28>
c0103392:	51                   	push   ecx
c0103393:	51                   	push   ecx
c0103394:	57                   	push   edi
c0103395:	53                   	push   ebx
c0103396:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c0103399:	83 c4 10             	add    esp,0x10
c010339c:	85 c0                	test   eax,eax
c010339e:	75 09                	jne    c01033a9 <list_traversal+0x2e>
c01033a0:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c01033a3:	39 f3                	cmp    ebx,esi
c01033a5:	75 eb                	jne    c0103392 <list_traversal+0x17>
c01033a7:	31 db                	xor    ebx,ebx
c01033a9:	8d 65 f4             	lea    esp,[ebp-0xc]
c01033ac:	89 d8                	mov    eax,ebx
c01033ae:	5b                   	pop    ebx
c01033af:	5e                   	pop    esi
c01033b0:	5f                   	pop    edi
c01033b1:	5d                   	pop    ebp
c01033b2:	c3                   	ret    

c01033b3 <list_len>:
c01033b3:	55                   	push   ebp
c01033b4:	31 c0                	xor    eax,eax
c01033b6:	89 e5                	mov    ebp,esp
c01033b8:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c01033bb:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c01033be:	83 c1 0c             	add    ecx,0xc
c01033c1:	eb 04                	jmp    c01033c7 <list_len+0x14>
c01033c3:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c01033c6:	40                   	inc    eax
c01033c7:	39 ca                	cmp    edx,ecx
c01033c9:	75 f8                	jne    c01033c3 <list_len+0x10>
c01033cb:	5d                   	pop    ebp
c01033cc:	c3                   	ret    

c01033cd <list_empty>:
c01033cd:	55                   	push   ebp
c01033ce:	89 e5                	mov    ebp,esp
c01033d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01033d3:	5d                   	pop    ebp
c01033d4:	8d 50 0c             	lea    edx,[eax+0xc]
c01033d7:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c01033da:	0f 94 c0             	sete   al
c01033dd:	0f b6 c0             	movzx  eax,al
c01033e0:	c3                   	ret    
c01033e1:	00 00                	add    BYTE PTR [eax],al
	...

c01033e4 <itoa>:
c01033e4:	55                   	push   ebp
c01033e5:	89 e5                	mov    ebp,esp
c01033e7:	57                   	push   edi
c01033e8:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c01033eb:	56                   	push   esi
c01033ec:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01033ef:	53                   	push   ebx
c01033f0:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c01033f3:	31 db                	xor    ebx,ebx
c01033f5:	89 f0                	mov    eax,esi
c01033f7:	99                   	cdq    
c01033f8:	89 d0                	mov    eax,edx
c01033fa:	31 f0                	xor    eax,esi
c01033fc:	29 d0                	sub    eax,edx
c01033fe:	eb 02                	jmp    c0103402 <itoa+0x1e>
c0103400:	89 d3                	mov    ebx,edx
c0103402:	99                   	cdq    
c0103403:	f7 ff                	idiv   edi
c0103405:	8a 92 68 89 10 c0    	mov    dl,BYTE PTR [edx-0x3fef7698]
c010340b:	85 c0                	test   eax,eax
c010340d:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c0103410:	8d 53 01             	lea    edx,[ebx+0x1]
c0103413:	7f eb                	jg     c0103400 <itoa+0x1c>
c0103415:	85 f6                	test   esi,esi
c0103417:	79 07                	jns    c0103420 <itoa+0x3c>
c0103419:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c010341d:	8d 53 02             	lea    edx,[ebx+0x2]
c0103420:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c0103424:	89 c8                	mov    eax,ecx
c0103426:	eb 01                	jmp    c0103429 <itoa+0x45>
c0103428:	40                   	inc    eax
c0103429:	80 38 00             	cmp    BYTE PTR [eax],0x0
c010342c:	75 fa                	jne    c0103428 <itoa+0x44>
c010342e:	eb 09                	jmp    c0103439 <itoa+0x55>
c0103430:	8a 11                	mov    dl,BYTE PTR [ecx]
c0103432:	8a 18                	mov    bl,BYTE PTR [eax]
c0103434:	88 19                	mov    BYTE PTR [ecx],bl
c0103436:	41                   	inc    ecx
c0103437:	88 10                	mov    BYTE PTR [eax],dl
c0103439:	48                   	dec    eax
c010343a:	39 c8                	cmp    eax,ecx
c010343c:	77 f2                	ja     c0103430 <itoa+0x4c>
c010343e:	5b                   	pop    ebx
c010343f:	5e                   	pop    esi
c0103440:	5f                   	pop    edi
c0103441:	5d                   	pop    ebp
c0103442:	c3                   	ret    

c0103443 <utoa>:
c0103443:	55                   	push   ebp
c0103444:	89 e5                	mov    ebp,esp
c0103446:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103449:	56                   	push   esi
c010344a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c010344d:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0103450:	53                   	push   ebx
c0103451:	31 db                	xor    ebx,ebx
c0103453:	31 d2                	xor    edx,edx
c0103455:	f7 f6                	div    esi
c0103457:	8a 92 90 89 10 c0    	mov    dl,BYTE PTR [edx-0x3fef7670]
c010345d:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c0103460:	43                   	inc    ebx
c0103461:	85 c0                	test   eax,eax
c0103463:	75 ee                	jne    c0103453 <utoa+0x10>
c0103465:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c0103469:	89 c8                	mov    eax,ecx
c010346b:	eb 01                	jmp    c010346e <utoa+0x2b>
c010346d:	40                   	inc    eax
c010346e:	80 38 00             	cmp    BYTE PTR [eax],0x0
c0103471:	75 fa                	jne    c010346d <utoa+0x2a>
c0103473:	eb 09                	jmp    c010347e <utoa+0x3b>
c0103475:	8a 11                	mov    dl,BYTE PTR [ecx]
c0103477:	8a 18                	mov    bl,BYTE PTR [eax]
c0103479:	88 19                	mov    BYTE PTR [ecx],bl
c010347b:	41                   	inc    ecx
c010347c:	88 10                	mov    BYTE PTR [eax],dl
c010347e:	48                   	dec    eax
c010347f:	39 c8                	cmp    eax,ecx
c0103481:	77 f2                	ja     c0103475 <utoa+0x32>
c0103483:	5b                   	pop    ebx
c0103484:	5e                   	pop    esi
c0103485:	5d                   	pop    ebp
c0103486:	c3                   	ret    

c0103487 <roll_screen>:
c0103487:	55                   	push   ebp
c0103488:	89 e5                	mov    ebp,esp
c010348a:	53                   	push   ebx
c010348b:	83 3d 14 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c14,0x0
c0103492:	75 2c                	jne    c01034c0 <roll_screen+0x39>
c0103494:	a1 24 7c 00 c0       	mov    eax,ds:0xc0007c24
c0103499:	8b 0d 1c 7c 00 c0    	mov    ecx,DWORD PTR ds:0xc0007c1c
c010349f:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c01034a2:	31 c0                	xor    eax,eax
c01034a4:	eb 09                	jmp    c01034af <roll_screen+0x28>
c01034a6:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c01034aa:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c01034ae:	40                   	inc    eax
c01034af:	8b 15 28 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c28
c01034b5:	0f af 15 24 7c 00 c0 	imul   edx,DWORD PTR ds:0xc0007c24
c01034bc:	39 d0                	cmp    eax,edx
c01034be:	72 e6                	jb     c01034a6 <roll_screen+0x1f>
c01034c0:	5b                   	pop    ebx
c01034c1:	5d                   	pop    ebp
c01034c2:	c3                   	ret    

c01034c3 <get_cursor>:
c01034c3:	55                   	push   ebp
c01034c4:	ba d4 03 00 00       	mov    edx,0x3d4
c01034c9:	89 e5                	mov    ebp,esp
c01034cb:	b8 0e 00 00 00       	mov    eax,0xe
c01034d0:	53                   	push   ebx
c01034d1:	ee                   	out    dx,al
c01034d2:	bb d5 03 00 00       	mov    ebx,0x3d5
c01034d7:	89 da                	mov    edx,ebx
c01034d9:	ec                   	in     al,dx
c01034da:	89 c1                	mov    ecx,eax
c01034dc:	b2 d4                	mov    dl,0xd4
c01034de:	b8 0f 00 00 00       	mov    eax,0xf
c01034e3:	ee                   	out    dx,al
c01034e4:	89 da                	mov    edx,ebx
c01034e6:	ec                   	in     al,dx
c01034e7:	c1 e1 08             	shl    ecx,0x8
c01034ea:	09 c1                	or     ecx,eax
c01034ec:	89 c8                	mov    eax,ecx
c01034ee:	5b                   	pop    ebx
c01034ef:	5d                   	pop    ebp
c01034f0:	c3                   	ret    

c01034f1 <set_cursor>:
c01034f1:	55                   	push   ebp
c01034f2:	ba d4 03 00 00       	mov    edx,0x3d4
c01034f7:	89 e5                	mov    ebp,esp
c01034f9:	b8 0e 00 00 00       	mov    eax,0xe
c01034fe:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0103501:	ee                   	out    dx,al
c0103502:	0f b6 c5             	movzx  eax,ch
c0103505:	b2 d5                	mov    dl,0xd5
c0103507:	ee                   	out    dx,al
c0103508:	b8 0f 00 00 00       	mov    eax,0xf
c010350d:	b2 d4                	mov    dl,0xd4
c010350f:	ee                   	out    dx,al
c0103510:	0f b6 c1             	movzx  eax,cl
c0103513:	b2 d5                	mov    dl,0xd5
c0103515:	ee                   	out    dx,al
c0103516:	5d                   	pop    ebp
c0103517:	c3                   	ret    

c0103518 <put_char>:
c0103518:	55                   	push   ebp
c0103519:	89 e5                	mov    ebp,esp
c010351b:	53                   	push   ebx
c010351c:	51                   	push   ecx
c010351d:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c0103520:	83 3d 14 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c14,0x0
c0103527:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c010352a:	0f 85 85 00 00 00    	jne    c01035b5 <put_char+0x9d>
c0103530:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c0103533:	e8 8b ff ff ff       	call   c01034c3 <get_cursor>
c0103538:	80 fb 0d             	cmp    bl,0xd
c010353b:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c010353e:	77 31                	ja     c0103571 <put_char+0x59>
c0103540:	0f b6 d3             	movzx  edx,bl
c0103543:	ff 24 95 10 89 10 c0 	jmp    DWORD PTR [edx*4-0x3fef76f0]
c010354a:	8d 48 ff             	lea    ecx,[eax-0x1]
c010354d:	a1 1c 7c 00 c0       	mov    eax,ds:0xc0007c1c
c0103552:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c0103556:	eb 2f                	jmp    c0103587 <put_char+0x6f>
c0103558:	8b 1d 24 7c 00 c0    	mov    ebx,DWORD PTR ds:0xc0007c24
c010355e:	31 d2                	xor    edx,edx
c0103560:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c0103563:	f7 f3                	div    ebx
c0103565:	29 d1                	sub    ecx,edx
c0103567:	eb 1e                	jmp    c0103587 <put_char+0x6f>
c0103569:	8d 48 04             	lea    ecx,[eax+0x4]
c010356c:	83 e1 fc             	and    ecx,0xfffffffc
c010356f:	eb 16                	jmp    c0103587 <put_char+0x6f>
c0103571:	8b 15 1c 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c1c
c0103577:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c010357a:	8b 15 1c 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c1c
c0103580:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c0103584:	8d 48 01             	lea    ecx,[eax+0x1]
c0103587:	a1 28 7c 00 c0       	mov    eax,ds:0xc0007c28
c010358c:	0f af 05 24 7c 00 c0 	imul   eax,DWORD PTR ds:0xc0007c24
c0103593:	39 c1                	cmp    ecx,eax
c0103595:	72 13                	jb     c01035aa <put_char+0x92>
c0103597:	e8 eb fe ff ff       	call   c0103487 <roll_screen>
c010359c:	8b 0d 28 7c 00 c0    	mov    ecx,DWORD PTR ds:0xc0007c28
c01035a2:	49                   	dec    ecx
c01035a3:	0f af 0d 24 7c 00 c0 	imul   ecx,DWORD PTR ds:0xc0007c24
c01035aa:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c01035ad:	5a                   	pop    edx
c01035ae:	5b                   	pop    ebx
c01035af:	5d                   	pop    ebp
c01035b0:	e9 3c ff ff ff       	jmp    c01034f1 <set_cursor>
c01035b5:	58                   	pop    eax
c01035b6:	5b                   	pop    ebx
c01035b7:	5d                   	pop    ebp
c01035b8:	c3                   	ret    

c01035b9 <put_str>:
c01035b9:	55                   	push   ebp
c01035ba:	89 e5                	mov    ebp,esp
c01035bc:	56                   	push   esi
c01035bd:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c01035c1:	53                   	push   ebx
c01035c2:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c01035c5:	eb 0d                	jmp    c01035d4 <put_str+0x1b>
c01035c7:	0f b6 c0             	movzx  eax,al
c01035ca:	43                   	inc    ebx
c01035cb:	50                   	push   eax
c01035cc:	56                   	push   esi
c01035cd:	e8 46 ff ff ff       	call   c0103518 <put_char>
c01035d2:	58                   	pop    eax
c01035d3:	5a                   	pop    edx
c01035d4:	8a 03                	mov    al,BYTE PTR [ebx]
c01035d6:	84 c0                	test   al,al
c01035d8:	75 ed                	jne    c01035c7 <put_str+0xe>
c01035da:	8d 65 f8             	lea    esp,[ebp-0x8]
c01035dd:	5b                   	pop    ebx
c01035de:	5e                   	pop    esi
c01035df:	5d                   	pop    ebp
c01035e0:	c3                   	ret    

c01035e1 <put_uint>:
c01035e1:	55                   	push   ebp
c01035e2:	31 c0                	xor    eax,eax
c01035e4:	89 e5                	mov    ebp,esp
c01035e6:	b9 42 00 00 00       	mov    ecx,0x42
c01035eb:	57                   	push   edi
c01035ec:	53                   	push   ebx
c01035ed:	8d 7d b6             	lea    edi,[ebp-0x4a]
c01035f0:	83 ec 50             	sub    esp,0x50
c01035f3:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c01035f6:	f3 aa                	rep stos BYTE PTR es:[edi],al
c01035f8:	8d 7d b6             	lea    edi,[ebp-0x4a]
c01035fb:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c01035fe:	0f b6 db             	movzx  ebx,bl
c0103601:	57                   	push   edi
c0103602:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0103605:	e8 39 fe ff ff       	call   c0103443 <utoa>
c010360a:	57                   	push   edi
c010360b:	53                   	push   ebx
c010360c:	e8 a8 ff ff ff       	call   c01035b9 <put_str>
c0103611:	83 c4 14             	add    esp,0x14
c0103614:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103617:	5b                   	pop    ebx
c0103618:	5f                   	pop    edi
c0103619:	5d                   	pop    ebp
c010361a:	c3                   	ret    

c010361b <put_int>:
c010361b:	55                   	push   ebp
c010361c:	31 c0                	xor    eax,eax
c010361e:	89 e5                	mov    ebp,esp
c0103620:	b9 42 00 00 00       	mov    ecx,0x42
c0103625:	57                   	push   edi
c0103626:	53                   	push   ebx
c0103627:	8d 7d b6             	lea    edi,[ebp-0x4a]
c010362a:	83 ec 50             	sub    esp,0x50
c010362d:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0103630:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0103632:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0103635:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0103638:	0f b6 db             	movzx  ebx,bl
c010363b:	57                   	push   edi
c010363c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c010363f:	e8 a0 fd ff ff       	call   c01033e4 <itoa>
c0103644:	57                   	push   edi
c0103645:	53                   	push   ebx
c0103646:	e8 6e ff ff ff       	call   c01035b9 <put_str>
c010364b:	83 c4 14             	add    esp,0x14
c010364e:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103651:	5b                   	pop    ebx
c0103652:	5f                   	pop    edi
c0103653:	5d                   	pop    ebp
c0103654:	c3                   	ret    
c0103655:	00 00                	add    BYTE PTR [eax],al
	...

c0103658 <memset>:
c0103658:	55                   	push   ebp
c0103659:	89 e5                	mov    ebp,esp
c010365b:	56                   	push   esi
c010365c:	53                   	push   ebx
c010365d:	83 ec 10             	sub    esp,0x10
c0103660:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103663:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0103666:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c0103669:	85 db                	test   ebx,ebx
c010366b:	75 1f                	jne    c010368c <memset+0x34>
c010366d:	68 b8 89 10 c0       	push   0xc01089b8
c0103672:	68 30 8a 10 c0       	push   0xc0108a30
c0103677:	6a 0f                	push   0xf
c0103679:	68 c6 89 10 c0       	push   0xc01089c6
c010367e:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0103681:	e8 0a d0 ff ff       	call   c0100690 <panic_spin>
c0103686:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c0103689:	83 c4 10             	add    esp,0x10
c010368c:	31 c0                	xor    eax,eax
c010368e:	eb 04                	jmp    c0103694 <memset+0x3c>
c0103690:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c0103693:	40                   	inc    eax
c0103694:	39 f0                	cmp    eax,esi
c0103696:	75 f8                	jne    c0103690 <memset+0x38>
c0103698:	8d 65 f8             	lea    esp,[ebp-0x8]
c010369b:	5b                   	pop    ebx
c010369c:	5e                   	pop    esi
c010369d:	5d                   	pop    ebp
c010369e:	c3                   	ret    

c010369f <memcpy>:
c010369f:	55                   	push   ebp
c01036a0:	89 e5                	mov    ebp,esp
c01036a2:	57                   	push   edi
c01036a3:	56                   	push   esi
c01036a4:	53                   	push   ebx
c01036a5:	83 ec 0c             	sub    esp,0xc
c01036a8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01036ab:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01036ae:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c01036b1:	85 f6                	test   esi,esi
c01036b3:	74 04                	je     c01036b9 <memcpy+0x1a>
c01036b5:	85 db                	test   ebx,ebx
c01036b7:	75 19                	jne    c01036d2 <memcpy+0x33>
c01036b9:	68 d4 89 10 c0       	push   0xc01089d4
c01036be:	68 38 8a 10 c0       	push   0xc0108a38
c01036c3:	6a 22                	push   0x22
c01036c5:	68 c6 89 10 c0       	push   0xc01089c6
c01036ca:	e8 c1 cf ff ff       	call   c0100690 <panic_spin>
c01036cf:	83 c4 10             	add    esp,0x10
c01036d2:	31 c0                	xor    eax,eax
c01036d4:	eb 07                	jmp    c01036dd <memcpy+0x3e>
c01036d6:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c01036d9:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c01036dc:	40                   	inc    eax
c01036dd:	39 f8                	cmp    eax,edi
c01036df:	75 f5                	jne    c01036d6 <memcpy+0x37>
c01036e1:	8d 65 f4             	lea    esp,[ebp-0xc]
c01036e4:	5b                   	pop    ebx
c01036e5:	5e                   	pop    esi
c01036e6:	5f                   	pop    edi
c01036e7:	5d                   	pop    ebp
c01036e8:	c3                   	ret    

c01036e9 <memcmp>:
c01036e9:	55                   	push   ebp
c01036ea:	89 e5                	mov    ebp,esp
c01036ec:	56                   	push   esi
c01036ed:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01036f0:	53                   	push   ebx
c01036f1:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c01036f4:	85 db                	test   ebx,ebx
c01036f6:	74 04                	je     c01036fc <memcmp+0x13>
c01036f8:	85 f6                	test   esi,esi
c01036fa:	75 19                	jne    c0103715 <memcmp+0x2c>
c01036fc:	68 f3 89 10 c0       	push   0xc01089f3
c0103701:	68 40 8a 10 c0       	push   0xc0108a40
c0103706:	6a 3b                	push   0x3b
c0103708:	68 c6 89 10 c0       	push   0xc01089c6
c010370d:	e8 7e cf ff ff       	call   c0100690 <panic_spin>
c0103712:	83 c4 10             	add    esp,0x10
c0103715:	8a 13                	mov    dl,BYTE PTR [ebx]
c0103717:	83 c8 ff             	or     eax,0xffffffff
c010371a:	38 16                	cmp    BYTE PTR [esi],dl
c010371c:	72 06                	jb     c0103724 <memcmp+0x3b>
c010371e:	0f 97 c0             	seta   al
c0103721:	0f b6 c0             	movzx  eax,al
c0103724:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103727:	5b                   	pop    ebx
c0103728:	5e                   	pop    esi
c0103729:	5d                   	pop    ebp
c010372a:	c3                   	ret    

c010372b <strcpy>:
c010372b:	55                   	push   ebp
c010372c:	31 d2                	xor    edx,edx
c010372e:	89 e5                	mov    ebp,esp
c0103730:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103733:	53                   	push   ebx
c0103734:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103737:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c010373a:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c010373d:	42                   	inc    edx
c010373e:	84 c9                	test   cl,cl
c0103740:	75 f5                	jne    c0103737 <strcpy+0xc>
c0103742:	5b                   	pop    ebx
c0103743:	5d                   	pop    ebp
c0103744:	c3                   	ret    

c0103745 <strlen>:
c0103745:	55                   	push   ebp
c0103746:	31 c0                	xor    eax,eax
c0103748:	89 e5                	mov    ebp,esp
c010374a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010374d:	eb 01                	jmp    c0103750 <strlen+0xb>
c010374f:	40                   	inc    eax
c0103750:	80 3c 02 00          	cmp    BYTE PTR [edx+eax*1],0x0
c0103754:	75 f9                	jne    c010374f <strlen+0xa>
c0103756:	5d                   	pop    ebp
c0103757:	c3                   	ret    

c0103758 <vsprintf>:
c0103758:	55                   	push   ebp
c0103759:	89 e5                	mov    ebp,esp
c010375b:	57                   	push   edi
c010375c:	56                   	push   esi
c010375d:	53                   	push   ebx
c010375e:	83 ec 5c             	sub    esp,0x5c
c0103761:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0103764:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0103767:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010376a:	e9 9a 01 00 00       	jmp    c0103909 <vsprintf+0x1b1>
c010376f:	3c 25                	cmp    al,0x25
c0103771:	74 08                	je     c010377b <vsprintf+0x23>
c0103773:	88 03                	mov    BYTE PTR [ebx],al
c0103775:	43                   	inc    ebx
c0103776:	e9 8d 01 00 00       	jmp    c0103908 <vsprintf+0x1b0>
c010377b:	47                   	inc    edi
c010377c:	ba 01 00 00 00       	mov    edx,0x1
c0103781:	c6 45 c3 00          	mov    BYTE PTR [ebp-0x3d],0x0
c0103785:	c7 45 b0 01 00 00 00 	mov    DWORD PTR [ebp-0x50],0x1
c010378c:	c7 45 a8 00 00 00 00 	mov    DWORD PTR [ebp-0x58],0x0
c0103793:	8a 07                	mov    al,BYTE PTR [edi]
c0103795:	3c 2b                	cmp    al,0x2b
c0103797:	74 28                	je     c01037c1 <vsprintf+0x69>
c0103799:	7f 0a                	jg     c01037a5 <vsprintf+0x4d>
c010379b:	3c 20                	cmp    al,0x20
c010379d:	74 27                	je     c01037c6 <vsprintf+0x6e>
c010379f:	3c 23                	cmp    al,0x23
c01037a1:	75 19                	jne    c01037bc <vsprintf+0x64>
c01037a3:	eb 21                	jmp    c01037c6 <vsprintf+0x6e>
c01037a5:	3c 2d                	cmp    al,0x2d
c01037a7:	74 06                	je     c01037af <vsprintf+0x57>
c01037a9:	3c 30                	cmp    al,0x30
c01037ab:	75 0f                	jne    c01037bc <vsprintf+0x64>
c01037ad:	eb 04                	jmp    c01037b3 <vsprintf+0x5b>
c01037af:	31 d2                	xor    edx,edx
c01037b1:	eb 13                	jmp    c01037c6 <vsprintf+0x6e>
c01037b3:	c7 45 a8 01 00 00 00 	mov    DWORD PTR [ebp-0x58],0x1
c01037ba:	eb 0a                	jmp    c01037c6 <vsprintf+0x6e>
c01037bc:	4f                   	dec    edi
c01037bd:	31 c0                	xor    eax,eax
c01037bf:	eb 0a                	jmp    c01037cb <vsprintf+0x73>
c01037c1:	ba 01 00 00 00       	mov    edx,0x1
c01037c6:	b8 01 00 00 00       	mov    eax,0x1
c01037cb:	47                   	inc    edi
c01037cc:	85 c0                	test   eax,eax
c01037ce:	75 c3                	jne    c0103793 <vsprintf+0x3b>
c01037d0:	89 55 b0             	mov    DWORD PTR [ebp-0x50],edx
c01037d3:	c7 45 ac 00 00 00 00 	mov    DWORD PTR [ebp-0x54],0x0
c01037da:	eb 0f                	jmp    c01037eb <vsprintf+0x93>
c01037dc:	6b 55 ac 0a          	imul   edx,DWORD PTR [ebp-0x54],0xa
c01037e0:	0f be c0             	movsx  eax,al
c01037e3:	47                   	inc    edi
c01037e4:	8d 44 02 d0          	lea    eax,[edx+eax*1-0x30]
c01037e8:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
c01037eb:	8a 07                	mov    al,BYTE PTR [edi]
c01037ed:	8d 50 d0             	lea    edx,[eax-0x30]
c01037f0:	80 fa 09             	cmp    dl,0x9
c01037f3:	76 e7                	jbe    c01037dc <vsprintf+0x84>
c01037f5:	31 d2                	xor    edx,edx
c01037f7:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
c01037fb:	0f 95 c2             	setne  dl
c01037fe:	f7 da                	neg    edx
c0103800:	21 55 b0             	and    DWORD PTR [ebp-0x50],edx
c0103803:	3c 6f                	cmp    al,0x6f
c0103805:	74 3d                	je     c0103844 <vsprintf+0xec>
c0103807:	7f 12                	jg     c010381b <vsprintf+0xc3>
c0103809:	3c 63                	cmp    al,0x63
c010380b:	74 22                	je     c010382f <vsprintf+0xd7>
c010380d:	3c 64                	cmp    al,0x64
c010380f:	74 28                	je     c0103839 <vsprintf+0xe1>
c0103811:	3c 25                	cmp    al,0x25
c0103813:	0f 85 8b 00 00 00    	jne    c01038a4 <vsprintf+0x14c>
c0103819:	eb 0e                	jmp    c0103829 <vsprintf+0xd1>
c010381b:	3c 73                	cmp    al,0x73
c010381d:	74 4e                	je     c010386d <vsprintf+0x115>
c010381f:	3c 78                	cmp    al,0x78
c0103821:	74 67                	je     c010388a <vsprintf+0x132>
c0103823:	3c 70                	cmp    al,0x70
c0103825:	75 7d                	jne    c01038a4 <vsprintf+0x14c>
c0103827:	eb 26                	jmp    c010384f <vsprintf+0xf7>
c0103829:	c6 03 25             	mov    BYTE PTR [ebx],0x25
c010382c:	43                   	inc    ebx
c010382d:	eb 75                	jmp    c01038a4 <vsprintf+0x14c>
c010382f:	8b 06                	mov    eax,DWORD PTR [esi]
c0103831:	83 c6 04             	add    esi,0x4
c0103834:	88 03                	mov    BYTE PTR [ebx],al
c0103836:	43                   	inc    ebx
c0103837:	eb 6b                	jmp    c01038a4 <vsprintf+0x14c>
c0103839:	8d 46 04             	lea    eax,[esi+0x4]
c010383c:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c010383f:	50                   	push   eax
c0103840:	6a 0a                	push   0xa
c0103842:	eb 4f                	jmp    c0103893 <vsprintf+0x13b>
c0103844:	8d 46 04             	lea    eax,[esi+0x4]
c0103847:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c010384a:	50                   	push   eax
c010384b:	6a 08                	push   0x8
c010384d:	eb 44                	jmp    c0103893 <vsprintf+0x13b>
c010384f:	8d 46 04             	lea    eax,[esi+0x4]
c0103852:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0103855:	50                   	push   eax
c0103856:	6a 10                	push   0x10
c0103858:	8d 45 c5             	lea    eax,[ebp-0x3b]
c010385b:	50                   	push   eax
c010385c:	ff 36                	push   DWORD PTR [esi]
c010385e:	c6 45 c3 30          	mov    BYTE PTR [ebp-0x3d],0x30
c0103862:	c6 45 c4 78          	mov    BYTE PTR [ebp-0x3c],0x78
c0103866:	e8 d8 fb ff ff       	call   c0103443 <utoa>
c010386b:	eb 31                	jmp    c010389e <vsprintf+0x146>
c010386d:	8d 46 04             	lea    eax,[esi+0x4]
c0103870:	8b 36                	mov    esi,DWORD PTR [esi]
c0103872:	51                   	push   ecx
c0103873:	51                   	push   ecx
c0103874:	56                   	push   esi
c0103875:	53                   	push   ebx
c0103876:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0103879:	e8 ad fe ff ff       	call   c010372b <strcpy>
c010387e:	89 34 24             	mov    DWORD PTR [esp],esi
c0103881:	e8 bf fe ff ff       	call   c0103745 <strlen>
c0103886:	01 c3                	add    ebx,eax
c0103888:	eb 14                	jmp    c010389e <vsprintf+0x146>
c010388a:	8d 46 04             	lea    eax,[esi+0x4]
c010388d:	52                   	push   edx
c010388e:	6a 10                	push   0x10
c0103890:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0103893:	8d 45 c3             	lea    eax,[ebp-0x3d]
c0103896:	50                   	push   eax
c0103897:	ff 36                	push   DWORD PTR [esi]
c0103899:	e8 46 fb ff ff       	call   c01033e4 <itoa>
c010389e:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
c01038a1:	83 c4 10             	add    esp,0x10
c01038a4:	83 ec 0c             	sub    esp,0xc
c01038a7:	8d 45 c3             	lea    eax,[ebp-0x3d]
c01038aa:	50                   	push   eax
c01038ab:	e8 95 fe ff ff       	call   c0103745 <strlen>
c01038b0:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
c01038b3:	83 c4 10             	add    esp,0x10
c01038b6:	8a 4d b0             	mov    cl,BYTE PTR [ebp-0x50]
c01038b9:	29 c2                	sub    edx,eax
c01038bb:	eb 10                	jmp    c01038cd <vsprintf+0x175>
c01038bd:	83 7d a8 01          	cmp    DWORD PTR [ebp-0x58],0x1
c01038c1:	19 c0                	sbb    eax,eax
c01038c3:	4a                   	dec    edx
c01038c4:	83 e0 f0             	and    eax,0xfffffff0
c01038c7:	83 c0 30             	add    eax,0x30
c01038ca:	88 03                	mov    BYTE PTR [ebx],al
c01038cc:	43                   	inc    ebx
c01038cd:	85 d2                	test   edx,edx
c01038cf:	7e 04                	jle    c01038d5 <vsprintf+0x17d>
c01038d1:	84 c9                	test   cl,cl
c01038d3:	75 e8                	jne    c01038bd <vsprintf+0x165>
c01038d5:	50                   	push   eax
c01038d6:	50                   	push   eax
c01038d7:	8d 45 c3             	lea    eax,[ebp-0x3d]
c01038da:	50                   	push   eax
c01038db:	53                   	push   ebx
c01038dc:	89 55 a4             	mov    DWORD PTR [ebp-0x5c],edx
c01038df:	e8 47 fe ff ff       	call   c010372b <strcpy>
c01038e4:	8d 45 c3             	lea    eax,[ebp-0x3d]
c01038e7:	89 04 24             	mov    DWORD PTR [esp],eax
c01038ea:	e8 56 fe ff ff       	call   c0103745 <strlen>
c01038ef:	83 c4 10             	add    esp,0x10
c01038f2:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c01038f5:	01 c3                	add    ebx,eax
c01038f7:	eb 05                	jmp    c01038fe <vsprintf+0x1a6>
c01038f9:	c6 03 20             	mov    BYTE PTR [ebx],0x20
c01038fc:	4a                   	dec    edx
c01038fd:	43                   	inc    ebx
c01038fe:	85 d2                	test   edx,edx
c0103900:	7e 06                	jle    c0103908 <vsprintf+0x1b0>
c0103902:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
c0103906:	74 f1                	je     c01038f9 <vsprintf+0x1a1>
c0103908:	47                   	inc    edi
c0103909:	8a 07                	mov    al,BYTE PTR [edi]
c010390b:	84 c0                	test   al,al
c010390d:	0f 85 5c fe ff ff    	jne    c010376f <vsprintf+0x17>
c0103913:	c6 03 00             	mov    BYTE PTR [ebx],0x0
c0103916:	83 ec 0c             	sub    esp,0xc
c0103919:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c010391c:	e8 24 fe ff ff       	call   c0103745 <strlen>
c0103921:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103924:	5b                   	pop    ebx
c0103925:	5e                   	pop    esi
c0103926:	5f                   	pop    edi
c0103927:	5d                   	pop    ebp
c0103928:	c3                   	ret    

c0103929 <sprintf>:
c0103929:	55                   	push   ebp
c010392a:	89 e5                	mov    ebp,esp
c010392c:	83 ec 0c             	sub    esp,0xc
c010392f:	8d 45 10             	lea    eax,[ebp+0x10]
c0103932:	50                   	push   eax
c0103933:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0103936:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0103939:	e8 1a fe ff ff       	call   c0103758 <vsprintf>
c010393e:	c9                   	leave  
c010393f:	c3                   	ret    

c0103940 <viewctl_init>:
c0103940:	55                   	push   ebp
c0103941:	89 e5                	mov    ebp,esp
c0103943:	57                   	push   edi
c0103944:	56                   	push   esi
c0103945:	53                   	push   ebx
c0103946:	83 ec 68             	sub    esp,0x68
c0103949:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c010394c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010394f:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
c0103952:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0103955:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
c010395c:	50                   	push   eax
c010395d:	89 55 a4             	mov    DWORD PTR [ebp-0x5c],edx
c0103960:	e8 b2 d8 ff ff       	call   c0101217 <sys_malloc>
c0103965:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c0103968:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
c010396b:	c1 e7 02             	shl    edi,0x2
c010396e:	0f af fe             	imul   edi,esi
c0103971:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
c0103974:	8d 75 a8             	lea    esi,[ebp-0x58]
c0103977:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
c010397a:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x0
c0103981:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
c0103984:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103987:	89 3c 24             	mov    DWORD PTR [esp],edi
c010398a:	89 df                	mov    edi,ebx
c010398c:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010398f:	e8 83 d8 ff ff       	call   c0101217 <sys_malloc>
c0103994:	89 34 24             	mov    DWORD PTR [esp],esi
c0103997:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010399a:	e8 bc e3 ff ff       	call   c0101d5b <lock_init>
c010399f:	b9 10 00 00 00       	mov    ecx,0x10
c01039a4:	89 d8                	mov    eax,ebx
c01039a6:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
c01039a8:	8d 65 f4             	lea    esp,[ebp-0xc]
c01039ab:	5b                   	pop    ebx
c01039ac:	5e                   	pop    esi
c01039ad:	5f                   	pop    edi
c01039ae:	5d                   	pop    ebp
c01039af:	c2 04 00             	ret    0x4

c01039b2 <viewblock_init>:
c01039b2:	55                   	push   ebp
c01039b3:	89 e5                	mov    ebp,esp
c01039b5:	57                   	push   edi
c01039b6:	56                   	push   esi
c01039b7:	53                   	push   ebx
c01039b8:	83 ec 18             	sub    esp,0x18
c01039bb:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c01039be:	6a 1c                	push   0x1c
c01039c0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01039c3:	e8 4f d8 ff ff       	call   c0101217 <sys_malloc>
c01039c8:	83 c4 10             	add    esp,0x10
c01039cb:	85 c0                	test   eax,eax
c01039cd:	89 c3                	mov    ebx,eax
c01039cf:	74 4e                	je     c0103a1f <viewblock_init+0x6d>
c01039d1:	8d 04 bd 00 00 00 00 	lea    eax,[edi*4+0x0]
c01039d8:	83 ec 0c             	sub    esp,0xc
c01039db:	0f af c6             	imul   eax,esi
c01039de:	50                   	push   eax
c01039df:	e8 33 d8 ff ff       	call   c0101217 <sys_malloc>
c01039e4:	83 c4 10             	add    esp,0x10
c01039e7:	85 c0                	test   eax,eax
c01039e9:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
c01039ec:	75 10                	jne    c01039fe <viewblock_init+0x4c>
c01039ee:	83 ec 0c             	sub    esp,0xc
c01039f1:	53                   	push   ebx
c01039f2:	31 db                	xor    ebx,ebx
c01039f4:	e8 36 da ff ff       	call   c010142f <sys_free>
c01039f9:	83 c4 10             	add    esp,0x10
c01039fc:	eb 21                	jmp    c0103a1f <viewblock_init+0x6d>
c01039fe:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0103a04:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
c0103a0b:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c0103a12:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c0103a19:	89 7b 14             	mov    DWORD PTR [ebx+0x14],edi
c0103a1c:	89 73 18             	mov    DWORD PTR [ebx+0x18],esi
c0103a1f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103a22:	89 d8                	mov    eax,ebx
c0103a24:	5b                   	pop    ebx
c0103a25:	5e                   	pop    esi
c0103a26:	5f                   	pop    edi
c0103a27:	5d                   	pop    ebp
c0103a28:	c3                   	ret    

c0103a29 <viewInsert>:
c0103a29:	55                   	push   ebp
c0103a2a:	89 e5                	mov    ebp,esp
c0103a2c:	56                   	push   esi
c0103a2d:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0103a30:	53                   	push   ebx
c0103a31:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103a34:	83 ec 0c             	sub    esp,0xc
c0103a37:	53                   	push   ebx
c0103a38:	e8 aa e4 ff ff       	call   c0101ee7 <lock_acquire>
c0103a3d:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
c0103a40:	83 c4 10             	add    esp,0x10
c0103a43:	39 43 28             	cmp    DWORD PTR [ebx+0x28],eax
c0103a46:	7e 14                	jle    c0103a5c <viewInsert+0x33>
c0103a48:	89 1e                	mov    DWORD PTR [esi],ebx
c0103a4a:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0103a4d:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c0103a50:	89 34 90             	mov    DWORD PTR [eax+edx*4],esi
c0103a53:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
c0103a56:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
c0103a59:	ff 43 2c             	inc    DWORD PTR [ebx+0x2c]
c0103a5c:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0103a5f:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103a62:	5b                   	pop    ebx
c0103a63:	5e                   	pop    esi
c0103a64:	5d                   	pop    ebp
c0103a65:	e9 d8 e4 ff ff       	jmp    c0101f42 <lock_release>

c0103a6a <view_reflushsub>:
c0103a6a:	55                   	push   ebp
c0103a6b:	89 e5                	mov    ebp,esp
c0103a6d:	57                   	push   edi
c0103a6e:	56                   	push   esi
c0103a6f:	53                   	push   ebx
c0103a70:	83 ec 34             	sub    esp,0x34
c0103a73:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103a76:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c0103a79:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103a7c:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0103a7f:	89 de                	mov    esi,ebx
c0103a81:	f7 d6                	not    esi
c0103a83:	c1 fe 1f             	sar    esi,0x1f
c0103a86:	21 de                	and    esi,ebx
c0103a88:	89 cb                	mov    ebx,ecx
c0103a8a:	f7 d3                	not    ebx
c0103a8c:	c1 fb 1f             	sar    ebx,0x1f
c0103a8f:	21 cb                	and    ebx,ecx
c0103a91:	8b 4a 34             	mov    ecx,DWORD PTR [edx+0x34]
c0103a94:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
c0103a97:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
c0103a9a:	89 75 d4             	mov    DWORD PTR [ebp-0x2c],esi
c0103a9d:	39 cb                	cmp    ebx,ecx
c0103a9f:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
c0103aa2:	7e 03                	jle    c0103aa7 <view_reflushsub+0x3d>
c0103aa4:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
c0103aa7:	8b 75 18             	mov    esi,DWORD PTR [ebp+0x18]
c0103aaa:	8b 4a 38             	mov    ecx,DWORD PTR [edx+0x38]
c0103aad:	89 75 dc             	mov    DWORD PTR [ebp-0x24],esi
c0103ab0:	39 ce                	cmp    esi,ecx
c0103ab2:	7e 03                	jle    c0103ab7 <view_reflushsub+0x4d>
c0103ab4:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
c0103ab7:	8d 3c 85 00 00 00 00 	lea    edi,[eax*4+0x0]
c0103abe:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0103ac1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0103ac4:	e9 af 00 00 00       	jmp    c0103b78 <view_reflushsub+0x10e>
c0103ac9:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103acc:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
c0103acf:	8b 7d d8             	mov    edi,DWORD PTR [ebp-0x28]
c0103ad2:	8b 5d d0             	mov    ebx,DWORD PTR [ebp-0x30]
c0103ad5:	8b 04 08             	mov    eax,DWORD PTR [eax+ecx*1]
c0103ad8:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
c0103adb:	2b 78 0c             	sub    edi,DWORD PTR [eax+0xc]
c0103ade:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
c0103ae1:	2b 48 0c             	sub    ecx,DWORD PTR [eax+0xc]
c0103ae4:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c0103ae7:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
c0103aea:	29 f3                	sub    ebx,esi
c0103aec:	29 f7                	sub    edi,esi
c0103aee:	89 ce                	mov    esi,ecx
c0103af0:	f7 d6                	not    esi
c0103af2:	c1 fe 1f             	sar    esi,0x1f
c0103af5:	21 ce                	and    esi,ecx
c0103af7:	89 d9                	mov    ecx,ebx
c0103af9:	f7 d1                	not    ecx
c0103afb:	c1 f9 1f             	sar    ecx,0x1f
c0103afe:	21 d9                	and    ecx,ebx
c0103b00:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
c0103b03:	39 5d ec             	cmp    DWORD PTR [ebp-0x14],ebx
c0103b06:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
c0103b09:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
c0103b0c:	76 03                	jbe    c0103b11 <view_reflushsub+0xa7>
c0103b0e:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
c0103b11:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
c0103b14:	39 5d e8             	cmp    DWORD PTR [ebp-0x18],ebx
c0103b17:	76 53                	jbe    c0103b6c <view_reflushsub+0x102>
c0103b19:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
c0103b1c:	eb 4e                	jmp    c0103b6c <view_reflushsub+0x102>
c0103b1e:	8b 58 10             	mov    ebx,DWORD PTR [eax+0x10]
c0103b21:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
c0103b24:	01 cb                	add    ebx,ecx
c0103b26:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
c0103b29:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
c0103b2c:	eb 35                	jmp    c0103b63 <view_reflushsub+0xf9>
c0103b2e:	8b 7d c8             	mov    edi,DWORD PTR [ebp-0x38]
c0103b31:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c0103b34:	0f af 7a 34          	imul   edi,DWORD PTR [edx+0x34]
c0103b38:	01 de                	add    esi,ebx
c0103b3a:	01 fe                	add    esi,edi
c0103b3c:	89 75 cc             	mov    DWORD PTR [ebp-0x34],esi
c0103b3f:	8b 72 3c             	mov    esi,DWORD PTR [edx+0x3c]
c0103b42:	8b 7d cc             	mov    edi,DWORD PTR [ebp-0x34]
c0103b45:	3b 04 be             	cmp    eax,DWORD PTR [esi+edi*4]
c0103b48:	75 18                	jne    c0103b62 <view_reflushsub+0xf8>
c0103b4a:	8b 7d c0             	mov    edi,DWORD PTR [ebp-0x40]
c0103b4d:	0f af 78 14          	imul   edi,DWORD PTR [eax+0x14]
c0103b51:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0103b54:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
c0103b57:	01 df                	add    edi,ebx
c0103b59:	8b 34 be             	mov    esi,DWORD PTR [esi+edi*4]
c0103b5c:	8b 7a 30             	mov    edi,DWORD PTR [edx+0x30]
c0103b5f:	89 34 8f             	mov    DWORD PTR [edi+ecx*4],esi
c0103b62:	43                   	inc    ebx
c0103b63:	3b 5d ec             	cmp    ebx,DWORD PTR [ebp-0x14]
c0103b66:	7c c6                	jl     c0103b2e <view_reflushsub+0xc4>
c0103b68:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
c0103b6b:	41                   	inc    ecx
c0103b6c:	3b 4d e8             	cmp    ecx,DWORD PTR [ebp-0x18]
c0103b6f:	7c ad                	jl     c0103b1e <view_reflushsub+0xb4>
c0103b71:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
c0103b74:	83 45 f0 04          	add    DWORD PTR [ebp-0x10],0x4
c0103b78:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
c0103b7b:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c0103b7e:	0f 8e 45 ff ff ff    	jle    c0103ac9 <view_reflushsub+0x5f>
c0103b84:	83 c4 34             	add    esp,0x34
c0103b87:	5b                   	pop    ebx
c0103b88:	5e                   	pop    esi
c0103b89:	5f                   	pop    edi
c0103b8a:	5d                   	pop    ebp
c0103b8b:	c3                   	ret    

c0103b8c <view_reflush>:
c0103b8c:	55                   	push   ebp
c0103b8d:	89 e5                	mov    ebp,esp
c0103b8f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b92:	53                   	push   ebx
c0103b93:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c0103b96:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
c0103b99:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
c0103b9c:	53                   	push   ebx
c0103b9d:	53                   	push   ebx
c0103b9e:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
c0103ba1:	01 cb                	add    ebx,ecx
c0103ba3:	53                   	push   ebx
c0103ba4:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
c0103ba7:	03 4d 10             	add    ecx,DWORD PTR [ebp+0x10]
c0103baa:	01 d3                	add    ebx,edx
c0103bac:	03 55 0c             	add    edx,DWORD PTR [ebp+0xc]
c0103baf:	53                   	push   ebx
c0103bb0:	51                   	push   ecx
c0103bb1:	52                   	push   edx
c0103bb2:	ff 30                	push   DWORD PTR [eax]
c0103bb4:	e8 b1 fe ff ff       	call   c0103a6a <view_reflushsub>
c0103bb9:	83 c4 1c             	add    esp,0x1c
c0103bbc:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0103bbf:	c9                   	leave  
c0103bc0:	c3                   	ret    

c0103bc1 <view_reflushmap>:
c0103bc1:	55                   	push   ebp
c0103bc2:	89 e5                	mov    ebp,esp
c0103bc4:	57                   	push   edi
c0103bc5:	56                   	push   esi
c0103bc6:	53                   	push   ebx
c0103bc7:	83 ec 2c             	sub    esp,0x2c
c0103bca:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103bcd:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c0103bd0:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103bd3:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0103bd6:	89 de                	mov    esi,ebx
c0103bd8:	f7 d6                	not    esi
c0103bda:	c1 fe 1f             	sar    esi,0x1f
c0103bdd:	21 de                	and    esi,ebx
c0103bdf:	89 cb                	mov    ebx,ecx
c0103be1:	f7 d3                	not    ebx
c0103be3:	c1 fb 1f             	sar    ebx,0x1f
c0103be6:	21 cb                	and    ebx,ecx
c0103be8:	8b 4a 34             	mov    ecx,DWORD PTR [edx+0x34]
c0103beb:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
c0103bee:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
c0103bf1:	89 75 d4             	mov    DWORD PTR [ebp-0x2c],esi
c0103bf4:	39 cb                	cmp    ebx,ecx
c0103bf6:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c0103bf9:	7e 03                	jle    c0103bfe <view_reflushmap+0x3d>
c0103bfb:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
c0103bfe:	8b 75 18             	mov    esi,DWORD PTR [ebp+0x18]
c0103c01:	8b 4a 38             	mov    ecx,DWORD PTR [edx+0x38]
c0103c04:	89 75 d8             	mov    DWORD PTR [ebp-0x28],esi
c0103c07:	39 ce                	cmp    esi,ecx
c0103c09:	7e 03                	jle    c0103c0e <view_reflushmap+0x4d>
c0103c0b:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
c0103c0e:	8d 3c 85 00 00 00 00 	lea    edi,[eax*4+0x0]
c0103c15:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0103c18:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0103c1b:	e9 ab 00 00 00       	jmp    c0103ccb <view_reflushmap+0x10a>
c0103c20:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103c23:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
c0103c26:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
c0103c29:	8b 5d d0             	mov    ebx,DWORD PTR [ebp-0x30]
c0103c2c:	8b 04 08             	mov    eax,DWORD PTR [eax+ecx*1]
c0103c2f:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
c0103c32:	2b 78 0c             	sub    edi,DWORD PTR [eax+0xc]
c0103c35:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
c0103c38:	2b 48 0c             	sub    ecx,DWORD PTR [eax+0xc]
c0103c3b:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c0103c3e:	8b 7d d8             	mov    edi,DWORD PTR [ebp-0x28]
c0103c41:	29 f3                	sub    ebx,esi
c0103c43:	29 f7                	sub    edi,esi
c0103c45:	89 ce                	mov    esi,ecx
c0103c47:	f7 d6                	not    esi
c0103c49:	c1 fe 1f             	sar    esi,0x1f
c0103c4c:	21 ce                	and    esi,ecx
c0103c4e:	89 d9                	mov    ecx,ebx
c0103c50:	f7 d1                	not    ecx
c0103c52:	c1 f9 1f             	sar    ecx,0x1f
c0103c55:	21 d9                	and    ecx,ebx
c0103c57:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
c0103c5a:	39 5d ec             	cmp    DWORD PTR [ebp-0x14],ebx
c0103c5d:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
c0103c60:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
c0103c63:	76 03                	jbe    c0103c68 <view_reflushmap+0xa7>
c0103c65:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
c0103c68:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
c0103c6b:	39 5d e8             	cmp    DWORD PTR [ebp-0x18],ebx
c0103c6e:	76 4f                	jbe    c0103cbf <view_reflushmap+0xfe>
c0103c70:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
c0103c73:	eb 4a                	jmp    c0103cbf <view_reflushmap+0xfe>
c0103c75:	8b 58 10             	mov    ebx,DWORD PTR [eax+0x10]
c0103c78:	01 cb                	add    ebx,ecx
c0103c7a:	89 5d cc             	mov    DWORD PTR [ebp-0x34],ebx
c0103c7d:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
c0103c80:	eb 37                	jmp    c0103cb9 <view_reflushmap+0xf8>
c0103c82:	8b 78 14             	mov    edi,DWORD PTR [eax+0x14]
c0103c85:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c0103c88:	0f af f9             	imul   edi,ecx
c0103c8b:	89 75 c8             	mov    DWORD PTR [ebp-0x38],esi
c0103c8e:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0103c91:	01 df                	add    edi,ebx
c0103c93:	8b 34 be             	mov    esi,DWORD PTR [esi+edi*4]
c0103c96:	81 e6 00 00 00 ff    	and    esi,0xff000000
c0103c9c:	81 fe 00 00 00 ff    	cmp    esi,0xff000000
c0103ca2:	74 14                	je     c0103cb8 <view_reflushmap+0xf7>
c0103ca4:	8b 75 cc             	mov    esi,DWORD PTR [ebp-0x34]
c0103ca7:	8b 7d c8             	mov    edi,DWORD PTR [ebp-0x38]
c0103caa:	0f af 72 34          	imul   esi,DWORD PTR [edx+0x34]
c0103cae:	01 df                	add    edi,ebx
c0103cb0:	01 f7                	add    edi,esi
c0103cb2:	8b 72 3c             	mov    esi,DWORD PTR [edx+0x3c]
c0103cb5:	89 04 be             	mov    DWORD PTR [esi+edi*4],eax
c0103cb8:	43                   	inc    ebx
c0103cb9:	3b 5d ec             	cmp    ebx,DWORD PTR [ebp-0x14]
c0103cbc:	7c c4                	jl     c0103c82 <view_reflushmap+0xc1>
c0103cbe:	41                   	inc    ecx
c0103cbf:	3b 4d e8             	cmp    ecx,DWORD PTR [ebp-0x18]
c0103cc2:	7c b1                	jl     c0103c75 <view_reflushmap+0xb4>
c0103cc4:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
c0103cc7:	83 45 f0 04          	add    DWORD PTR [ebp-0x10],0x4
c0103ccb:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
c0103cce:	3b 7a 2c             	cmp    edi,DWORD PTR [edx+0x2c]
c0103cd1:	0f 8c 49 ff ff ff    	jl     c0103c20 <view_reflushmap+0x5f>
c0103cd7:	83 c4 2c             	add    esp,0x2c
c0103cda:	5b                   	pop    ebx
c0103cdb:	5e                   	pop    esi
c0103cdc:	5f                   	pop    edi
c0103cdd:	5d                   	pop    ebp
c0103cde:	c3                   	ret    

c0103cdf <viewSlide>:
c0103cdf:	55                   	push   ebp
c0103ce0:	89 e5                	mov    ebp,esp
c0103ce2:	57                   	push   edi
c0103ce3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103ce6:	56                   	push   esi
c0103ce7:	53                   	push   ebx
c0103ce8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103ceb:	8b 73 0c             	mov    esi,DWORD PTR [ebx+0xc]
c0103cee:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
c0103cf1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103cf4:	8b 7b 10             	mov    edi,DWORD PTR [ebx+0x10]
c0103cf7:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
c0103cfa:	6a 00                	push   0x0
c0103cfc:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
c0103cff:	01 f8                	add    eax,edi
c0103d01:	50                   	push   eax
c0103d02:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c0103d05:	01 f0                	add    eax,esi
c0103d07:	50                   	push   eax
c0103d08:	57                   	push   edi
c0103d09:	56                   	push   esi
c0103d0a:	ff 33                	push   DWORD PTR [ebx]
c0103d0c:	e8 b0 fe ff ff       	call   c0103bc1 <view_reflushmap>
c0103d11:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103d14:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103d17:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c0103d1a:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103d1d:	01 d1                	add    ecx,edx
c0103d1f:	51                   	push   ecx
c0103d20:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103d23:	01 c1                	add    ecx,eax
c0103d25:	51                   	push   ecx
c0103d26:	52                   	push   edx
c0103d27:	50                   	push   eax
c0103d28:	ff 33                	push   DWORD PTR [ebx]
c0103d2a:	e8 92 fe ff ff       	call   c0103bc1 <view_reflushmap>
c0103d2f:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
c0103d32:	83 c4 30             	add    esp,0x30
c0103d35:	48                   	dec    eax
c0103d36:	50                   	push   eax
c0103d37:	6a 00                	push   0x0
c0103d39:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
c0103d3c:	01 f8                	add    eax,edi
c0103d3e:	50                   	push   eax
c0103d3f:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c0103d42:	01 f0                	add    eax,esi
c0103d44:	50                   	push   eax
c0103d45:	57                   	push   edi
c0103d46:	56                   	push   esi
c0103d47:	ff 33                	push   DWORD PTR [ebx]
c0103d49:	e8 1c fd ff ff       	call   c0103a6a <view_reflushsub>
c0103d4e:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103d51:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103d54:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103d57:	51                   	push   ecx
c0103d58:	51                   	push   ecx
c0103d59:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103d5c:	01 d1                	add    ecx,edx
c0103d5e:	51                   	push   ecx
c0103d5f:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103d62:	01 c1                	add    ecx,eax
c0103d64:	51                   	push   ecx
c0103d65:	52                   	push   edx
c0103d66:	50                   	push   eax
c0103d67:	ff 33                	push   DWORD PTR [ebx]
c0103d69:	e8 fc fc ff ff       	call   c0103a6a <view_reflushsub>
c0103d6e:	83 c4 38             	add    esp,0x38
c0103d71:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103d74:	5b                   	pop    ebx
c0103d75:	5e                   	pop    esi
c0103d76:	5f                   	pop    edi
c0103d77:	5d                   	pop    ebp
c0103d78:	c3                   	ret    

c0103d79 <viewUpdown>:
c0103d79:	55                   	push   ebp
c0103d7a:	89 e5                	mov    ebp,esp
c0103d7c:	57                   	push   edi
c0103d7d:	56                   	push   esi
c0103d7e:	53                   	push   ebx
c0103d7f:	83 ec 08             	sub    esp,0x8
c0103d82:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103d85:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103d88:	8b 33                	mov    esi,DWORD PTR [ebx]
c0103d8a:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
c0103d8d:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
c0103d90:	39 c2                	cmp    edx,eax
c0103d92:	7f 03                	jg     c0103d97 <viewUpdown+0x1e>
c0103d94:	8d 42 ff             	lea    eax,[edx-0x1]
c0103d97:	89 c2                	mov    edx,eax
c0103d99:	f7 d2                	not    edx
c0103d9b:	c1 fa 1f             	sar    edx,0x1f
c0103d9e:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
c0103da1:	21 45 f0             	and    DWORD PTR [ebp-0x10],eax
c0103da4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103da7:	39 c7                	cmp    edi,eax
c0103da9:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c0103dac:	7e 5d                	jle    c0103e0b <viewUpdown+0x92>
c0103dae:	8d 14 bd 00 00 00 00 	lea    edx,[edi*4+0x0]
c0103db5:	89 f8                	mov    eax,edi
c0103db7:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
c0103dba:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
c0103dbd:	8b 5c 11 fc          	mov    ebx,DWORD PTR [ecx+edx*1-0x4]
c0103dc1:	89 1c 11             	mov    DWORD PTR [ecx+edx*1],ebx
c0103dc4:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
c0103dc7:	8b 0c 11             	mov    ecx,DWORD PTR [ecx+edx*1]
c0103dca:	83 ea 04             	sub    edx,0x4
c0103dcd:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
c0103dd0:	48                   	dec    eax
c0103dd1:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0103dd4:	75 e4                	jne    c0103dba <viewUpdown+0x41>
c0103dd6:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
c0103dd9:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
c0103ddc:	89 1c 82             	mov    DWORD PTR [edx+eax*4],ebx
c0103ddf:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103de2:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103de5:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103de8:	41                   	inc    ecx
c0103de9:	51                   	push   ecx
c0103dea:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103ded:	01 d1                	add    ecx,edx
c0103def:	51                   	push   ecx
c0103df0:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103df3:	01 c1                	add    ecx,eax
c0103df5:	51                   	push   ecx
c0103df6:	52                   	push   edx
c0103df7:	50                   	push   eax
c0103df8:	56                   	push   esi
c0103df9:	e8 c3 fd ff ff       	call   c0103bc1 <view_reflushmap>
c0103dfe:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103e01:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103e04:	57                   	push   edi
c0103e05:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103e08:	41                   	inc    ecx
c0103e09:	eb 5a                	jmp    c0103e65 <viewUpdown+0xec>
c0103e0b:	7d 70                	jge    c0103e7d <viewUpdown+0x104>
c0103e0d:	8d 04 bd 00 00 00 00 	lea    eax,[edi*4+0x0]
c0103e14:	eb 03                	jmp    c0103e19 <viewUpdown+0xa0>
c0103e16:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e19:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
c0103e1c:	8d 48 04             	lea    ecx,[eax+0x4]
c0103e1f:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
c0103e22:	8b 4c 02 04          	mov    ecx,DWORD PTR [edx+eax*1+0x4]
c0103e26:	89 0c 02             	mov    DWORD PTR [edx+eax*1],ecx
c0103e29:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
c0103e2c:	8b 04 02             	mov    eax,DWORD PTR [edx+eax*1]
c0103e2f:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
c0103e32:	47                   	inc    edi
c0103e33:	3b 7d f0             	cmp    edi,DWORD PTR [ebp-0x10]
c0103e36:	75 de                	jne    c0103e16 <viewUpdown+0x9d>
c0103e38:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
c0103e3b:	89 1c b8             	mov    DWORD PTR [eax+edi*4],ebx
c0103e3e:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103e41:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103e44:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c0103e47:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103e4a:	01 d1                	add    ecx,edx
c0103e4c:	51                   	push   ecx
c0103e4d:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103e50:	01 c1                	add    ecx,eax
c0103e52:	51                   	push   ecx
c0103e53:	52                   	push   edx
c0103e54:	50                   	push   eax
c0103e55:	56                   	push   esi
c0103e56:	e8 66 fd ff ff       	call   c0103bc1 <view_reflushmap>
c0103e5b:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103e5e:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103e61:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103e64:	51                   	push   ecx
c0103e65:	51                   	push   ecx
c0103e66:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103e69:	01 d1                	add    ecx,edx
c0103e6b:	51                   	push   ecx
c0103e6c:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103e6f:	01 c1                	add    ecx,eax
c0103e71:	51                   	push   ecx
c0103e72:	52                   	push   edx
c0103e73:	50                   	push   eax
c0103e74:	56                   	push   esi
c0103e75:	e8 f0 fb ff ff       	call   c0103a6a <view_reflushsub>
c0103e7a:	83 c4 34             	add    esp,0x34
c0103e7d:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103e80:	5b                   	pop    ebx
c0103e81:	5e                   	pop    esi
c0103e82:	5f                   	pop    edi
c0103e83:	5d                   	pop    ebp
c0103e84:	c3                   	ret    

c0103e85 <viewRemove>:
c0103e85:	55                   	push   ebp
c0103e86:	89 e5                	mov    ebp,esp
c0103e88:	56                   	push   esi
c0103e89:	53                   	push   ebx
c0103e8a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103e8d:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c0103e90:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
c0103e97:	eb 19                	jmp    c0103eb2 <viewRemove+0x2d>
c0103e99:	8b 49 24             	mov    ecx,DWORD PTR [ecx+0x24]
c0103e9c:	8b 74 01 fc          	mov    esi,DWORD PTR [ecx+eax*1-0x4]
c0103ea0:	89 34 01             	mov    DWORD PTR [ecx+eax*1],esi
c0103ea3:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c0103ea5:	8b 49 24             	mov    ecx,DWORD PTR [ecx+0x24]
c0103ea8:	8b 0c 01             	mov    ecx,DWORD PTR [ecx+eax*1]
c0103eab:	83 c0 04             	add    eax,0x4
c0103eae:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
c0103eb1:	42                   	inc    edx
c0103eb2:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c0103eb4:	8b 71 2c             	mov    esi,DWORD PTR [ecx+0x2c]
c0103eb7:	4e                   	dec    esi
c0103eb8:	39 f2                	cmp    edx,esi
c0103eba:	7c dd                	jl     c0103e99 <viewRemove+0x14>
c0103ebc:	89 71 2c             	mov    DWORD PTR [ecx+0x2c],esi
c0103ebf:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103ec2:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103ec5:	6a 00                	push   0x0
c0103ec7:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103eca:	01 d1                	add    ecx,edx
c0103ecc:	51                   	push   ecx
c0103ecd:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103ed0:	01 c1                	add    ecx,eax
c0103ed2:	51                   	push   ecx
c0103ed3:	52                   	push   edx
c0103ed4:	50                   	push   eax
c0103ed5:	ff 33                	push   DWORD PTR [ebx]
c0103ed7:	e8 e5 fc ff ff       	call   c0103bc1 <view_reflushmap>
c0103edc:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103edf:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103ee2:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c0103ee5:	6a 00                	push   0x0
c0103ee7:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103eea:	01 d1                	add    ecx,edx
c0103eec:	51                   	push   ecx
c0103eed:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103ef0:	01 c1                	add    ecx,eax
c0103ef2:	51                   	push   ecx
c0103ef3:	52                   	push   edx
c0103ef4:	50                   	push   eax
c0103ef5:	ff 33                	push   DWORD PTR [ebx]
c0103ef7:	e8 6e fb ff ff       	call   c0103a6a <view_reflushsub>
c0103efc:	83 c4 34             	add    esp,0x34
c0103eff:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
c0103f06:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0103f0c:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103f0f:	5b                   	pop    ebx
c0103f10:	5e                   	pop    esi
c0103f11:	5d                   	pop    ebp
c0103f12:	c3                   	ret    

c0103f13 <view_free>:
c0103f13:	55                   	push   ebp
c0103f14:	89 e5                	mov    ebp,esp
c0103f16:	53                   	push   ebx
c0103f17:	51                   	push   ecx
c0103f18:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103f1b:	83 3b 00             	cmp    DWORD PTR [ebx],0x0
c0103f1e:	74 07                	je     c0103f27 <view_free+0x14>
c0103f20:	53                   	push   ebx
c0103f21:	e8 5f ff ff ff       	call   c0103e85 <viewRemove>
c0103f26:	5a                   	pop    edx
c0103f27:	83 ec 0c             	sub    esp,0xc
c0103f2a:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0103f2d:	e8 fd d4 ff ff       	call   c010142f <sys_free>
c0103f32:	83 c4 10             	add    esp,0x10
c0103f35:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0103f38:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0103f3b:	c9                   	leave  
c0103f3c:	e9 ee d4 ff ff       	jmp    c010142f <sys_free>

c0103f41 <viewFill>:
c0103f41:	55                   	push   ebp
c0103f42:	89 e5                	mov    ebp,esp
c0103f44:	57                   	push   edi
c0103f45:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103f48:	56                   	push   esi
c0103f49:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0103f4c:	53                   	push   ebx
c0103f4d:	8b 7d 20             	mov    edi,DWORD PTR [ebp+0x20]
c0103f50:	83 3d 14 7c 00 c0 01 	cmp    DWORD PTR ds:0xc0007c14,0x1
c0103f57:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0103f5a:	75 37                	jne    c0103f93 <viewFill+0x52>
c0103f5c:	89 da                	mov    edx,ebx
c0103f5e:	81 e2 00 00 00 ff    	and    edx,0xff000000
c0103f64:	81 fa 00 00 00 ff    	cmp    edx,0xff000000
c0103f6a:	74 27                	je     c0103f93 <viewFill+0x52>
c0103f6c:	8d 34 8d 00 00 00 00 	lea    esi,[ecx*4+0x0]
c0103f73:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103f76:	0f af c8             	imul   ecx,eax
c0103f79:	8d 0c 8a             	lea    ecx,[edx+ecx*4]
c0103f7c:	eb 0c                	jmp    c0103f8a <viewFill+0x49>
c0103f7e:	89 1c 91             	mov    DWORD PTR [ecx+edx*4],ebx
c0103f81:	42                   	inc    edx
c0103f82:	3b 55 1c             	cmp    edx,DWORD PTR [ebp+0x1c]
c0103f85:	7e f7                	jle    c0103f7e <viewFill+0x3d>
c0103f87:	40                   	inc    eax
c0103f88:	01 f1                	add    ecx,esi
c0103f8a:	39 f8                	cmp    eax,edi
c0103f8c:	7f 05                	jg     c0103f93 <viewFill+0x52>
c0103f8e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0103f91:	eb ef                	jmp    c0103f82 <viewFill+0x41>
c0103f93:	5b                   	pop    ebx
c0103f94:	5e                   	pop    esi
c0103f95:	5f                   	pop    edi
c0103f96:	5d                   	pop    ebp
c0103f97:	c3                   	ret    

c0103f98 <vput_char>:
c0103f98:	55                   	push   ebp
c0103f99:	89 e5                	mov    ebp,esp
c0103f9b:	0f be 45 1c          	movsx  eax,BYTE PTR [ebp+0x1c]
c0103f9f:	57                   	push   edi
c0103fa0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103fa3:	56                   	push   esi
c0103fa4:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0103fa7:	53                   	push   ebx
c0103fa8:	c1 e0 04             	shl    eax,0x4
c0103fab:	83 3d 14 7c 00 c0 01 	cmp    DWORD PTR ds:0xc0007c14,0x1
c0103fb2:	8d b8 fc 42 10 c0    	lea    edi,[eax-0x3fefbd04]
c0103fb8:	75 63                	jne    c010401d <vput_char+0x85>
c0103fba:	8d 34 8d 00 00 00 00 	lea    esi,[ecx*4+0x0]
c0103fc1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fc4:	31 db                	xor    ebx,ebx
c0103fc6:	0f af 4d 14          	imul   ecx,DWORD PTR [ebp+0x14]
c0103fca:	03 4d 10             	add    ecx,DWORD PTR [ebp+0x10]
c0103fcd:	8d 44 88 1c          	lea    eax,[eax+ecx*4+0x1c]
c0103fd1:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c0103fd4:	84 c9                	test   cl,cl
c0103fd6:	79 03                	jns    c0103fdb <vput_char+0x43>
c0103fd8:	89 50 e4             	mov    DWORD PTR [eax-0x1c],edx
c0103fdb:	0f b6 c9             	movzx  ecx,cl
c0103fde:	f6 c1 40             	test   cl,0x40
c0103fe1:	74 03                	je     c0103fe6 <vput_char+0x4e>
c0103fe3:	89 50 e8             	mov    DWORD PTR [eax-0x18],edx
c0103fe6:	f6 c1 20             	test   cl,0x20
c0103fe9:	74 03                	je     c0103fee <vput_char+0x56>
c0103feb:	89 50 ec             	mov    DWORD PTR [eax-0x14],edx
c0103fee:	f6 c1 10             	test   cl,0x10
c0103ff1:	74 03                	je     c0103ff6 <vput_char+0x5e>
c0103ff3:	89 50 f0             	mov    DWORD PTR [eax-0x10],edx
c0103ff6:	f6 c1 08             	test   cl,0x8
c0103ff9:	74 03                	je     c0103ffe <vput_char+0x66>
c0103ffb:	89 50 f4             	mov    DWORD PTR [eax-0xc],edx
c0103ffe:	f6 c1 04             	test   cl,0x4
c0104001:	74 03                	je     c0104006 <vput_char+0x6e>
c0104003:	89 50 f8             	mov    DWORD PTR [eax-0x8],edx
c0104006:	f6 c1 02             	test   cl,0x2
c0104009:	74 03                	je     c010400e <vput_char+0x76>
c010400b:	89 50 fc             	mov    DWORD PTR [eax-0x4],edx
c010400e:	80 e1 01             	and    cl,0x1
c0104011:	74 02                	je     c0104015 <vput_char+0x7d>
c0104013:	89 10                	mov    DWORD PTR [eax],edx
c0104015:	43                   	inc    ebx
c0104016:	01 f0                	add    eax,esi
c0104018:	83 fb 10             	cmp    ebx,0x10
c010401b:	75 b4                	jne    c0103fd1 <vput_char+0x39>
c010401d:	5b                   	pop    ebx
c010401e:	5e                   	pop    esi
c010401f:	5f                   	pop    edi
c0104020:	5d                   	pop    ebp
c0104021:	c3                   	ret    

c0104022 <vput_str>:
c0104022:	55                   	push   ebp
c0104023:	89 e5                	mov    ebp,esp
c0104025:	57                   	push   edi
c0104026:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
c0104029:	56                   	push   esi
c010402a:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
c010402d:	53                   	push   ebx
c010402e:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0104031:	eb 2b                	jmp    c010405e <vput_str+0x3c>
c0104033:	3c 0a                	cmp    al,0xa
c0104035:	74 04                	je     c010403b <vput_str+0x19>
c0104037:	3c 0d                	cmp    al,0xd
c0104039:	75 08                	jne    c0104043 <vput_str+0x21>
c010403b:	83 c6 10             	add    esi,0x10
c010403e:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0104041:	eb 1a                	jmp    c010405d <vput_str+0x3b>
c0104043:	0f be c0             	movsx  eax,al
c0104046:	50                   	push   eax
c0104047:	ff 75 18             	push   DWORD PTR [ebp+0x18]
c010404a:	56                   	push   esi
c010404b:	53                   	push   ebx
c010404c:	83 c3 08             	add    ebx,0x8
c010404f:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0104052:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0104055:	e8 3e ff ff ff       	call   c0103f98 <vput_char>
c010405a:	83 c4 18             	add    esp,0x18
c010405d:	47                   	inc    edi
c010405e:	8a 07                	mov    al,BYTE PTR [edi]
c0104060:	84 c0                	test   al,al
c0104062:	75 cf                	jne    c0104033 <vput_str+0x11>
c0104064:	8d 65 f4             	lea    esp,[ebp-0xc]
c0104067:	5b                   	pop    ebx
c0104068:	5e                   	pop    esi
c0104069:	5f                   	pop    edi
c010406a:	5d                   	pop    ebp
c010406b:	c3                   	ret    

c010406c <init_screen>:
c010406c:	55                   	push   ebp
c010406d:	89 e5                	mov    ebp,esp
c010406f:	57                   	push   edi
c0104070:	bf b8 09 12 c0       	mov    edi,0xc01209b8
c0104075:	56                   	push   esi
c0104076:	53                   	push   ebx
c0104077:	83 ec 68             	sub    esp,0x68
c010407a:	68 00 02 00 00       	push   0x200
c010407f:	ff 35 28 7c 00 c0    	push   DWORD PTR ds:0xc0007c28
c0104085:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c010408b:	8d 75 a8             	lea    esi,[ebp-0x58]
c010408e:	68 00 00 00 e0       	push   0xe0000000
c0104093:	56                   	push   esi
c0104094:	e8 a7 f8 ff ff       	call   c0103940 <viewctl_init>
c0104099:	b9 10 00 00 00       	mov    ecx,0x10
c010409e:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
c01040a0:	31 ff                	xor    edi,edi
c01040a2:	58                   	pop    eax
c01040a3:	ff 35 28 7c 00 c0    	push   DWORD PTR ds:0xc0007c28
c01040a9:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01040af:	e8 fe f8 ff ff       	call   c01039b2 <viewblock_init>
c01040b4:	83 c4 18             	add    esp,0x18
c01040b7:	50                   	push   eax
c01040b8:	68 b8 09 12 c0       	push   0xc01209b8
c01040bd:	a3 b4 09 12 c0       	mov    ds:0xc01209b4,eax
c01040c2:	e8 62 f9 ff ff       	call   c0103a29 <viewInsert>
c01040c7:	a1 24 7c 00 c0       	mov    eax,ds:0xc0007c24
c01040cc:	83 c4 10             	add    esp,0x10
c01040cf:	d1 e8                	shr    eax,1
c01040d1:	2d 96 00 00 00       	sub    eax,0x96
c01040d6:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
c01040d9:	8b 1d 28 7c 00 c0    	mov    ebx,DWORD PTR ds:0xc0007c28
c01040df:	89 7d a4             	mov    DWORD PTR [ebp-0x5c],edi
c01040e2:	d1 eb                	shr    ebx,1
c01040e4:	81 eb 96 00 00 00    	sub    ebx,0x96
c01040ea:	89 df                	mov    edi,ebx
c01040ec:	eb 53                	jmp    c0104141 <init_screen+0xd5>
c01040ee:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c01040f1:	8d 56 14             	lea    edx,[esi+0x14]
c01040f4:	80 bc 18 58 41 10 c0 	cmp    BYTE PTR [eax+ebx*1-0x3fefbea8],0x23
c01040fb:	23 
c01040fc:	75 0e                	jne    c010410c <init_screen+0xa0>
c01040fe:	50                   	push   eax
c01040ff:	ff 75 a0             	push   DWORD PTR [ebp-0x60]
c0104102:	52                   	push   edx
c0104103:	57                   	push   edi
c0104104:	56                   	push   esi
c0104105:	68 ff ff ff 00       	push   0xffffff
c010410a:	eb 09                	jmp    c0104115 <init_screen+0xa9>
c010410c:	50                   	push   eax
c010410d:	ff 75 a0             	push   DWORD PTR [ebp-0x60]
c0104110:	52                   	push   edx
c0104111:	57                   	push   edi
c0104112:	56                   	push   esi
c0104113:	6a 00                	push   0x0
c0104115:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c010411b:	43                   	inc    ebx
c010411c:	83 c6 14             	add    esi,0x14
c010411f:	68 00 00 00 e0       	push   0xe0000000
c0104124:	e8 18 fe ff ff       	call   c0103f41 <viewFill>
c0104129:	83 c4 20             	add    esp,0x20
c010412c:	83 fb 0f             	cmp    ebx,0xf
c010412f:	75 bd                	jne    c01040ee <init_screen+0x82>
c0104131:	83 45 a4 0f          	add    DWORD PTR [ebp-0x5c],0xf
c0104135:	81 7d a4 e1 00 00 00 	cmp    DWORD PTR [ebp-0x5c],0xe1
c010413c:	74 10                	je     c010414e <init_screen+0xe2>
c010413e:	8b 7d a0             	mov    edi,DWORD PTR [ebp-0x60]
c0104141:	8d 47 14             	lea    eax,[edi+0x14]
c0104144:	8b 75 9c             	mov    esi,DWORD PTR [ebp-0x64]
c0104147:	31 db                	xor    ebx,ebx
c0104149:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
c010414c:	eb a0                	jmp    c01040ee <init_screen+0x82>
c010414e:	8d 65 f4             	lea    esp,[ebp-0xc]
c0104151:	5b                   	pop    ebx
c0104152:	5e                   	pop    esi
c0104153:	5f                   	pop    edi
c0104154:	5d                   	pop    ebp
c0104155:	c3                   	ret    

Disassembly of section .data:

c0104158 <PencilLogo>:
c0104158:	20 20                	and    BYTE PTR [eax],ah
c010415a:	20 20                	and    BYTE PTR [eax],ah
c010415c:	20 20                	and    BYTE PTR [eax],ah
c010415e:	20 20                	and    BYTE PTR [eax],ah
c0104160:	20 20                	and    BYTE PTR [eax],ah
c0104162:	20 20                	and    BYTE PTR [eax],ah
c0104164:	20 20                	and    BYTE PTR [eax],ah
c0104166:	20 20                	and    BYTE PTR [eax],ah
c0104168:	23 23                	and    esp,DWORD PTR [ebx]
c010416a:	23 23                	and    esp,DWORD PTR [ebx]
c010416c:	23 23                	and    esp,DWORD PTR [ebx]
c010416e:	23 23                	and    esp,DWORD PTR [ebx]
c0104170:	23 23                	and    esp,DWORD PTR [ebx]
c0104172:	23 23                	and    esp,DWORD PTR [ebx]
c0104174:	23 20                	and    esp,DWORD PTR [eax]
c0104176:	20 23                	and    BYTE PTR [ebx],ah
c0104178:	20 20                	and    BYTE PTR [eax],ah
c010417a:	20 20                	and    BYTE PTR [eax],ah
c010417c:	20 20                	and    BYTE PTR [eax],ah
c010417e:	20 20                	and    BYTE PTR [eax],ah
c0104180:	20 20                	and    BYTE PTR [eax],ah
c0104182:	20 23                	and    BYTE PTR [ebx],ah
c0104184:	20 20                	and    BYTE PTR [eax],ah
c0104186:	23 20                	and    esp,DWORD PTR [eax]
c0104188:	20 20                	and    BYTE PTR [eax],ah
c010418a:	20 20                	and    BYTE PTR [eax],ah
c010418c:	20 20                	and    BYTE PTR [eax],ah
c010418e:	20 20                	and    BYTE PTR [eax],ah
c0104190:	20 20                	and    BYTE PTR [eax],ah
c0104192:	23 20                	and    esp,DWORD PTR [eax]
c0104194:	20 23                	and    BYTE PTR [ebx],ah
c0104196:	20 20                	and    BYTE PTR [eax],ah
c0104198:	20 20                	and    BYTE PTR [eax],ah
c010419a:	20 20                	and    BYTE PTR [eax],ah
c010419c:	20 20                	and    BYTE PTR [eax],ah
c010419e:	20 20                	and    BYTE PTR [eax],ah
c01041a0:	20 23                	and    BYTE PTR [ebx],ah
c01041a2:	20 20                	and    BYTE PTR [eax],ah
c01041a4:	23 20                	and    esp,DWORD PTR [eax]
c01041a6:	20 20                	and    BYTE PTR [eax],ah
c01041a8:	23 23                	and    esp,DWORD PTR [ebx]
c01041aa:	23 23                	and    esp,DWORD PTR [ebx]
c01041ac:	23 20                	and    esp,DWORD PTR [eax]
c01041ae:	20 20                	and    BYTE PTR [eax],ah
c01041b0:	23 20                	and    esp,DWORD PTR [eax]
c01041b2:	20 23                	and    BYTE PTR [ebx],ah
c01041b4:	20 20                	and    BYTE PTR [eax],ah
c01041b6:	20 23                	and    BYTE PTR [ebx],ah
c01041b8:	20 20                	and    BYTE PTR [eax],ah
c01041ba:	20 23                	and    BYTE PTR [ebx],ah
c01041bc:	20 20                	and    BYTE PTR [eax],ah
c01041be:	20 23                	and    BYTE PTR [ebx],ah
c01041c0:	20 20                	and    BYTE PTR [eax],ah
c01041c2:	23 20                	and    esp,DWORD PTR [eax]
c01041c4:	20 20                	and    BYTE PTR [eax],ah
c01041c6:	23 20                	and    esp,DWORD PTR [eax]
c01041c8:	20 20                	and    BYTE PTR [eax],ah
c01041ca:	23 20                	and    esp,DWORD PTR [eax]
c01041cc:	20 20                	and    BYTE PTR [eax],ah
c01041ce:	23 20                	and    esp,DWORD PTR [eax]
c01041d0:	20 23                	and    BYTE PTR [ebx],ah
c01041d2:	20 20                	and    BYTE PTR [eax],ah
c01041d4:	20 23                	and    BYTE PTR [ebx],ah
c01041d6:	20 20                	and    BYTE PTR [eax],ah
c01041d8:	20 23                	and    BYTE PTR [ebx],ah
c01041da:	20 20                	and    BYTE PTR [eax],ah
c01041dc:	20 23                	and    BYTE PTR [ebx],ah
c01041de:	20 20                	and    BYTE PTR [eax],ah
c01041e0:	23 23                	and    esp,DWORD PTR [ebx]
c01041e2:	23 23                	and    esp,DWORD PTR [ebx]
c01041e4:	23 23                	and    esp,DWORD PTR [ebx]
c01041e6:	23 23                	and    esp,DWORD PTR [ebx]
c01041e8:	23 20                	and    esp,DWORD PTR [eax]
c01041ea:	20 20                	and    BYTE PTR [eax],ah
c01041ec:	23 20                	and    esp,DWORD PTR [eax]
c01041ee:	20 23                	and    BYTE PTR [ebx],ah
c01041f0:	23 20                	and    esp,DWORD PTR [eax]
c01041f2:	20 23                	and    BYTE PTR [ebx],ah
c01041f4:	20 20                	and    BYTE PTR [eax],ah
c01041f6:	20 20                	and    BYTE PTR [eax],ah
c01041f8:	20 20                	and    BYTE PTR [eax],ah
c01041fa:	20 23                	and    BYTE PTR [ebx],ah
c01041fc:	20 20                	and    BYTE PTR [eax],ah
c01041fe:	23 20                	and    esp,DWORD PTR [eax]
c0104200:	23 20                	and    esp,DWORD PTR [eax]
c0104202:	23 20                	and    esp,DWORD PTR [eax]
c0104204:	20 20                	and    BYTE PTR [eax],ah
c0104206:	20 20                	and    BYTE PTR [eax],ah
c0104208:	20 20                	and    BYTE PTR [eax],ah
c010420a:	23 20                	and    esp,DWORD PTR [eax]
c010420c:	20 23                	and    BYTE PTR [ebx],ah
c010420e:	20 20                	and    BYTE PTR [eax],ah
c0104210:	23 23                	and    esp,DWORD PTR [ebx]
c0104212:	20 20                	and    BYTE PTR [eax],ah
c0104214:	20 20                	and    BYTE PTR [eax],ah
c0104216:	20 20                	and    BYTE PTR [eax],ah
c0104218:	20 23                	and    BYTE PTR [ebx],ah
c010421a:	20 20                	and    BYTE PTR [eax],ah
c010421c:	23 23                	and    esp,DWORD PTR [ebx]
c010421e:	23 23                	and    esp,DWORD PTR [ebx]
c0104220:	23 23                	and    esp,DWORD PTR [ebx]
c0104222:	23 23                	and    esp,DWORD PTR [ebx]
c0104224:	23 23                	and    esp,DWORD PTR [ebx]
c0104226:	23 23                	and    esp,DWORD PTR [ebx]
c0104228:	23 20                	and    esp,DWORD PTR [eax]
c010422a:	20 20                	and    BYTE PTR [eax],ah
c010422c:	20 20                	and    BYTE PTR [eax],ah
c010422e:	20 20                	and    BYTE PTR [eax],ah
c0104230:	20 20                	and    BYTE PTR [eax],ah
c0104232:	20 20                	and    BYTE PTR [eax],ah
c0104234:	20 20                	and    BYTE PTR [eax],ah
c0104236:	20 20                	and    BYTE PTR [eax],ah
c0104238:	20 00                	and    BYTE PTR [eax],al
	...

c010423c <intr_entry_table>:
c010423c:	94                   	xchg   esp,eax
c010423d:	07                   	pop    es
c010423e:	10 c0                	adc    al,al
c0104240:	b7 07                	mov    bh,0x7
c0104242:	10 c0                	adc    al,al
c0104244:	da 07                	fiadd  DWORD PTR [edi]
c0104246:	10 c0                	adc    al,al
c0104248:	fd                   	std    
c0104249:	07                   	pop    es
c010424a:	10 c0                	adc    al,al
c010424c:	20 08                	and    BYTE PTR [eax],cl
c010424e:	10 c0                	adc    al,al
c0104250:	43                   	inc    ebx
c0104251:	08 10                	or     BYTE PTR [eax],dl
c0104253:	c0 66 08 10          	shl    BYTE PTR [esi+0x8],0x10
c0104257:	c0 89 08 10 c0 ac 08 	ror    BYTE PTR [ecx-0x533feff8],0x8
c010425e:	10 c0                	adc    al,al
c0104260:	cb                   	retf   
c0104261:	08 10                	or     BYTE PTR [eax],dl
c0104263:	c0 ee 08             	shr    dh,0x8
c0104266:	10 c0                	adc    al,al
c0104268:	0d 09 10 c0 2c       	or     eax,0x2cc01009
c010426d:	09 10                	or     DWORD PTR [eax],edx
c010426f:	c0 4f 09 10          	ror    BYTE PTR [edi+0x9],0x10
c0104273:	c0 6e 09 10          	shr    BYTE PTR [esi+0x9],0x10
c0104277:	c0 8d 09 10 c0 b0 09 	ror    BYTE PTR [ebp-0x4f3feff7],0x9
c010427e:	10 c0                	adc    al,al
c0104280:	d3 09                	ror    DWORD PTR [ecx],cl
c0104282:	10 c0                	adc    al,al
c0104284:	f2 09 10             	repnz or DWORD PTR [eax],edx
c0104287:	c0 15 0a 10 c0 38 0a 	rcl    BYTE PTR ds:0x38c0100a,0xa
c010428e:	10 c0                	adc    al,al
c0104290:	5b                   	pop    ebx
c0104291:	0a 10                	or     dl,BYTE PTR [eax]
c0104293:	c0 7e 0a 10          	sar    BYTE PTR [esi+0xa],0x10
c0104297:	c0 a1 0a 10 c0 c4 0a 	shl    BYTE PTR [ecx-0x3b3feff6],0xa
c010429e:	10 c0                	adc    al,al
c01042a0:	e3 0a                	jecxz  c01042ac <intr_entry_table+0x70>
c01042a2:	10 c0                	adc    al,al
c01042a4:	06                   	push   es
c01042a5:	0b 10                	or     edx,DWORD PTR [eax]
c01042a7:	c0 25 0b 10 c0 44 0b 	shl    BYTE PTR ds:0x44c0100b,0xb
c01042ae:	10 c0                	adc    al,al
c01042b0:	67 0b 10             	or     edx,DWORD PTR [bx+si]
c01042b3:	c0 86 0b 10 c0 a5 0b 	rol    BYTE PTR [esi-0x5a3feff5],0xb
c01042ba:	10 c0                	adc    al,al
c01042bc:	c8 0b 10 c0          	enter  0x100b,0xc0
c01042c0:	eb 0b                	jmp    c01042cd <intr_entry_table+0x91>
c01042c2:	10 c0                	adc    al,al
c01042c4:	0e                   	push   cs
c01042c5:	0c 10                	or     al,0x10
c01042c7:	c0                   	(bad)  
c01042c8:	31 0c 10             	xor    DWORD PTR [eax+edx*1],ecx
c01042cb:	c0 54 0c 10 c0       	rcl    BYTE PTR [esp+ecx*1+0x10],0xc0
c01042d0:	77 0c                	ja     c01042de <intr_entry_table+0xa2>
c01042d2:	10 c0                	adc    al,al
c01042d4:	9a 0c 10 c0 bd 0c 10 	call   0x100c:0xbdc0100c
c01042db:	c0 e0 0c             	shl    al,0xc
c01042de:	10 c0                	adc    al,al
c01042e0:	03 0d 10 c0 26 0d    	add    ecx,DWORD PTR ds:0xd26c010
c01042e6:	10 c0                	adc    al,al
c01042e8:	49                   	dec    ecx
c01042e9:	0d 10 c0 6c 0d       	or     eax,0xd6cc010
c01042ee:	10 c0                	adc    al,al
c01042f0:	8f                   	(bad)  
c01042f1:	0d 10 c0 b2 0d       	or     eax,0xdb2c010
c01042f6:	10 c0                	adc    al,al
c01042f8:	d5 0d                	aad    0xd
c01042fa:	10 c0                	adc    al,al

c01042fc <PKnFont>:
	...
c010450c:	00 10                	add    BYTE PTR [eax],dl
c010450e:	10 10                	adc    BYTE PTR [eax],dl
c0104510:	10 10                	adc    BYTE PTR [eax],dl
c0104512:	10 10                	adc    BYTE PTR [eax],dl
c0104514:	10 10                	adc    BYTE PTR [eax],dl
c0104516:	00 00                	add    BYTE PTR [eax],al
c0104518:	10 10                	adc    BYTE PTR [eax],dl
c010451a:	00 00                	add    BYTE PTR [eax],al
c010451c:	28 28                	sub    BYTE PTR [eax],ch
c010451e:	28 00                	sub    BYTE PTR [eax],al
	...
c010452c:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c0104530:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0104534:	44                   	inc    esp
c0104535:	44                   	inc    esp
c0104536:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c010453a:	00 00                	add    BYTE PTR [eax],al
c010453c:	10 3a                	adc    BYTE PTR [edx],bh
c010453e:	56                   	push   esi
c010453f:	92                   	xchg   edx,eax
c0104540:	92                   	xchg   edx,eax
c0104541:	90                   	nop
c0104542:	50                   	push   eax
c0104543:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c0104546:	92                   	xchg   edx,eax
c0104547:	92                   	xchg   edx,eax
c0104548:	d4 b8                	aam    0xb8
c010454a:	10 10                	adc    BYTE PTR [eax],dl
c010454c:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c0104552:	10 10                	adc    BYTE PTR [eax],dl
c0104554:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c0104557:	52                   	push   edx
c0104558:	92                   	xchg   edx,eax
c0104559:	8c 00                	mov    WORD PTR [eax],es
c010455b:	00 00                	add    BYTE PTR [eax],al
c010455d:	70 88                	jo     c01044e7 <PKnFont+0x1eb>
c010455f:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c0104565:	92                   	xchg   edx,eax
c0104566:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c010456d:	08 10                	or     BYTE PTR [eax],dl
	...
c010457b:	00 02                	add    BYTE PTR [edx],al
c010457d:	04 08                	add    al,0x8
c010457f:	08 10                	or     BYTE PTR [eax],dl
c0104581:	10 10                	adc    BYTE PTR [eax],dl
c0104583:	10 10                	adc    BYTE PTR [eax],dl
c0104585:	10 10                	adc    BYTE PTR [eax],dl
c0104587:	08 08                	or     BYTE PTR [eax],cl
c0104589:	04 02                	add    al,0x2
c010458b:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c0104591:	10 10                	adc    BYTE PTR [eax],dl
c0104593:	10 10                	adc    BYTE PTR [eax],dl
c0104595:	10 10                	adc    BYTE PTR [eax],dl
c0104597:	20 20                	and    BYTE PTR [eax],ah
c0104599:	40                   	inc    eax
c010459a:	80 00 00             	add    BYTE PTR [eax],0x0
c010459d:	00 00                	add    BYTE PTR [eax],al
c010459f:	00 00                	add    BYTE PTR [eax],al
c01045a1:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c01045a7:	10 00                	adc    BYTE PTR [eax],al
	...
c01045b1:	10 10                	adc    BYTE PTR [eax],dl
c01045b3:	10 fe                	adc    dh,bh
c01045b5:	10 10                	adc    BYTE PTR [eax],dl
c01045b7:	10 00                	adc    BYTE PTR [eax],al
	...
c01045c5:	00 00                	add    BYTE PTR [eax],al
c01045c7:	18 18                	sbb    BYTE PTR [eax],bl
c01045c9:	08 08                	or     BYTE PTR [eax],cl
c01045cb:	10 00                	adc    BYTE PTR [eax],al
c01045cd:	00 00                	add    BYTE PTR [eax],al
c01045cf:	00 00                	add    BYTE PTR [eax],al
c01045d1:	00 00                	add    BYTE PTR [eax],al
c01045d3:	00 fe                	add    dh,bh
	...
c01045e5:	00 00                	add    BYTE PTR [eax],al
c01045e7:	00 18                	add    BYTE PTR [eax],bl
c01045e9:	18 00                	sbb    BYTE PTR [eax],al
c01045eb:	00 02                	add    BYTE PTR [edx],al
c01045ed:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c01045f0:	08 08                	or     BYTE PTR [eax],cl
c01045f2:	08 10                	or     BYTE PTR [eax],dl
c01045f4:	10 20                	adc    BYTE PTR [eax],ah
c01045f6:	20 40 40             	and    BYTE PTR [eax+0x40],al
c01045f9:	40                   	inc    eax
c01045fa:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c0104601:	42                   	inc    edx
c0104602:	42                   	inc    edx
c0104603:	42                   	inc    edx
c0104604:	42                   	inc    edx
c0104605:	42                   	inc    edx
c0104606:	42                   	inc    edx
c0104607:	24 24                	and    al,0x24
c0104609:	18 00                	sbb    BYTE PTR [eax],al
c010460b:	00 00                	add    BYTE PTR [eax],al
c010460d:	08 18                	or     BYTE PTR [eax],bl
c010460f:	28 08                	sub    BYTE PTR [eax],cl
c0104611:	08 08                	or     BYTE PTR [eax],cl
c0104613:	08 08                	or     BYTE PTR [eax],cl
c0104615:	08 08                	or     BYTE PTR [eax],cl
c0104617:	08 08                	or     BYTE PTR [eax],cl
c0104619:	3e 00 00             	add    BYTE PTR ds:[eax],al
c010461c:	00 18                	add    BYTE PTR [eax],bl
c010461e:	24 42                	and    al,0x42
c0104620:	42                   	inc    edx
c0104621:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c0104624:	10 20                	adc    BYTE PTR [eax],ah
c0104626:	20 40 40             	and    BYTE PTR [eax+0x40],al
c0104629:	7e 00                	jle    c010462b <PKnFont+0x32f>
c010462b:	00 00                	add    BYTE PTR [eax],al
c010462d:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c0104630:	02 02                	add    al,BYTE PTR [edx]
c0104632:	04 18                	add    al,0x18
c0104634:	04 02                	add    al,0x2
c0104636:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c0104639:	18 00                	sbb    BYTE PTR [eax],al
c010463b:	00 00                	add    BYTE PTR [eax],al
c010463d:	0c 0c                	or     al,0xc
c010463f:	0c 14                	or     al,0x14
c0104641:	14 14                	adc    al,0x14
c0104643:	24 24                	and    al,0x24
c0104645:	44                   	inc    esp
c0104646:	7e 04                	jle    c010464c <PKnFont+0x350>
c0104648:	04 1e                	add    al,0x1e
c010464a:	00 00                	add    BYTE PTR [eax],al
c010464c:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c0104650:	40                   	inc    eax
c0104651:	58                   	pop    eax
c0104652:	64 02 02             	add    al,BYTE PTR fs:[edx]
c0104655:	02 02                	add    al,BYTE PTR [edx]
c0104657:	42                   	inc    edx
c0104658:	24 18                	and    al,0x18
c010465a:	00 00                	add    BYTE PTR [eax],al
c010465c:	00 18                	add    BYTE PTR [eax],bl
c010465e:	24 42                	and    al,0x42
c0104660:	40                   	inc    eax
c0104661:	58                   	pop    eax
c0104662:	64 42                	fs inc edx
c0104664:	42                   	inc    edx
c0104665:	42                   	inc    edx
c0104666:	42                   	inc    edx
c0104667:	42                   	inc    edx
c0104668:	24 18                	and    al,0x18
c010466a:	00 00                	add    BYTE PTR [eax],al
c010466c:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c010466f:	42                   	inc    edx
c0104670:	04 04                	add    al,0x4
c0104672:	08 08                	or     BYTE PTR [eax],cl
c0104674:	08 10                	or     BYTE PTR [eax],dl
c0104676:	10 10                	adc    BYTE PTR [eax],dl
c0104678:	10 38                	adc    BYTE PTR [eax],bh
c010467a:	00 00                	add    BYTE PTR [eax],al
c010467c:	00 18                	add    BYTE PTR [eax],bl
c010467e:	24 42                	and    al,0x42
c0104680:	42                   	inc    edx
c0104681:	42                   	inc    edx
c0104682:	24 18                	and    al,0x18
c0104684:	24 42                	and    al,0x42
c0104686:	42                   	inc    edx
c0104687:	42                   	inc    edx
c0104688:	24 18                	and    al,0x18
c010468a:	00 00                	add    BYTE PTR [eax],al
c010468c:	00 18                	add    BYTE PTR [eax],bl
c010468e:	24 42                	and    al,0x42
c0104690:	42                   	inc    edx
c0104691:	42                   	inc    edx
c0104692:	42                   	inc    edx
c0104693:	42                   	inc    edx
c0104694:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c0104697:	42                   	inc    edx
c0104698:	24 18                	and    al,0x18
c010469a:	00 00                	add    BYTE PTR [eax],al
c010469c:	00 00                	add    BYTE PTR [eax],al
c010469e:	00 00                	add    BYTE PTR [eax],al
c01046a0:	00 18                	add    BYTE PTR [eax],bl
c01046a2:	18 00                	sbb    BYTE PTR [eax],al
c01046a4:	00 00                	add    BYTE PTR [eax],al
c01046a6:	00 00                	add    BYTE PTR [eax],al
c01046a8:	18 18                	sbb    BYTE PTR [eax],bl
c01046aa:	00 00                	add    BYTE PTR [eax],al
c01046ac:	00 00                	add    BYTE PTR [eax],al
c01046ae:	00 00                	add    BYTE PTR [eax],al
c01046b0:	00 18                	add    BYTE PTR [eax],bl
c01046b2:	18 00                	sbb    BYTE PTR [eax],al
c01046b4:	00 00                	add    BYTE PTR [eax],al
c01046b6:	00 18                	add    BYTE PTR [eax],bl
c01046b8:	18 08                	sbb    BYTE PTR [eax],cl
c01046ba:	08 10                	or     BYTE PTR [eax],dl
c01046bc:	00 02                	add    BYTE PTR [edx],al
c01046be:	04 08                	add    al,0x8
c01046c0:	10 20                	adc    BYTE PTR [eax],ah
c01046c2:	40                   	inc    eax
c01046c3:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c01046ca:	02 00                	add    al,BYTE PTR [eax]
c01046cc:	00 00                	add    BYTE PTR [eax],al
c01046ce:	00 00                	add    BYTE PTR [eax],al
c01046d0:	00 00                	add    BYTE PTR [eax],al
c01046d2:	fe 00                	inc    BYTE PTR [eax]
c01046d4:	00 fe                	add    dh,bh
c01046d6:	00 00                	add    BYTE PTR [eax],al
c01046d8:	00 00                	add    BYTE PTR [eax],al
c01046da:	00 00                	add    BYTE PTR [eax],al
c01046dc:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c01046e2:	04 02                	add    al,0x2
c01046e4:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c01046e7:	10 20                	adc    BYTE PTR [eax],ah
c01046e9:	40                   	inc    eax
c01046ea:	80 00 00             	add    BYTE PTR [eax],0x0
c01046ed:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c01046f1:	82                   	(bad)  
c01046f2:	04 08                	add    al,0x8
c01046f4:	10 10                	adc    BYTE PTR [eax],dl
c01046f6:	00 00                	add    BYTE PTR [eax],al
c01046f8:	18 18                	sbb    BYTE PTR [eax],bl
c01046fa:	00 00                	add    BYTE PTR [eax],al
c01046fc:	00 38                	add    BYTE PTR [eax],bh
c01046fe:	44                   	inc    esp
c01046ff:	82                   	(bad)  
c0104700:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c0104707:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c010470b:	00 00                	add    BYTE PTR [eax],al
c010470d:	18 18                	sbb    BYTE PTR [eax],bl
c010470f:	18 18                	sbb    BYTE PTR [eax],bl
c0104711:	24 24                	and    al,0x24
c0104713:	24 24                	and    al,0x24
c0104715:	7e 42                	jle    c0104759 <PKnFont+0x45d>
c0104717:	42                   	inc    edx
c0104718:	42                   	inc    edx
c0104719:	e7 00                	out    0x0,eax
c010471b:	00 00                	add    BYTE PTR [eax],al
c010471d:	f0 48                	lock dec eax
c010471f:	44                   	inc    esp
c0104720:	44                   	inc    esp
c0104721:	44                   	inc    esp
c0104722:	48                   	dec    eax
c0104723:	78 44                	js     c0104769 <PKnFont+0x46d>
c0104725:	42                   	inc    edx
c0104726:	42                   	inc    edx
c0104727:	42                   	inc    edx
c0104728:	44                   	inc    esp
c0104729:	f8                   	clc    
c010472a:	00 00                	add    BYTE PTR [eax],al
c010472c:	00 3a                	add    BYTE PTR [edx],bh
c010472e:	46                   	inc    esi
c010472f:	42                   	inc    edx
c0104730:	82                   	(bad)  
c0104731:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c0104738:	44                   	inc    esp
c0104739:	38 00                	cmp    BYTE PTR [eax],al
c010473b:	00 00                	add    BYTE PTR [eax],al
c010473d:	f8                   	clc    
c010473e:	44                   	inc    esp
c010473f:	44                   	inc    esp
c0104740:	42                   	inc    edx
c0104741:	42                   	inc    edx
c0104742:	42                   	inc    edx
c0104743:	42                   	inc    edx
c0104744:	42                   	inc    edx
c0104745:	42                   	inc    edx
c0104746:	42                   	inc    edx
c0104747:	44                   	inc    esp
c0104748:	44                   	inc    esp
c0104749:	f8                   	clc    
c010474a:	00 00                	add    BYTE PTR [eax],al
c010474c:	00 fe                	add    dh,bh
c010474e:	42                   	inc    edx
c010474f:	42                   	inc    edx
c0104750:	40                   	inc    eax
c0104751:	40                   	inc    eax
c0104752:	44                   	inc    esp
c0104753:	7c 44                	jl     c0104799 <PKnFont+0x49d>
c0104755:	40                   	inc    eax
c0104756:	40                   	inc    eax
c0104757:	42                   	inc    edx
c0104758:	42                   	inc    edx
c0104759:	fe 00                	inc    BYTE PTR [eax]
c010475b:	00 00                	add    BYTE PTR [eax],al
c010475d:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c0104760:	40                   	inc    eax
c0104761:	40                   	inc    eax
c0104762:	44                   	inc    esp
c0104763:	7c 44                	jl     c01047a9 <PKnFont+0x4ad>
c0104765:	44                   	inc    esp
c0104766:	40                   	inc    eax
c0104767:	40                   	inc    eax
c0104768:	40                   	inc    eax
c0104769:	f0 00 00             	lock add BYTE PTR [eax],al
c010476c:	00 3a                	add    BYTE PTR [edx],bh
c010476e:	46                   	inc    esi
c010476f:	42                   	inc    edx
c0104770:	82                   	(bad)  
c0104771:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c0104778:	46                   	inc    esi
c0104779:	38 00                	cmp    BYTE PTR [eax],al
c010477b:	00 00                	add    BYTE PTR [eax],al
c010477d:	e7 42                	out    0x42,eax
c010477f:	42                   	inc    edx
c0104780:	42                   	inc    edx
c0104781:	42                   	inc    edx
c0104782:	42                   	inc    edx
c0104783:	7e 42                	jle    c01047c7 <PKnFont+0x4cb>
c0104785:	42                   	inc    edx
c0104786:	42                   	inc    edx
c0104787:	42                   	inc    edx
c0104788:	42                   	inc    edx
c0104789:	e7 00                	out    0x0,eax
c010478b:	00 00                	add    BYTE PTR [eax],al
c010478d:	7c 10                	jl     c010479f <PKnFont+0x4a3>
c010478f:	10 10                	adc    BYTE PTR [eax],dl
c0104791:	10 10                	adc    BYTE PTR [eax],dl
c0104793:	10 10                	adc    BYTE PTR [eax],dl
c0104795:	10 10                	adc    BYTE PTR [eax],dl
c0104797:	10 10                	adc    BYTE PTR [eax],dl
c0104799:	7c 00                	jl     c010479b <PKnFont+0x49f>
c010479b:	00 00                	add    BYTE PTR [eax],al
c010479d:	1f                   	pop    ds
c010479e:	04 04                	add    al,0x4
c01047a0:	04 04                	add    al,0x4
c01047a2:	04 04                	add    al,0x4
c01047a4:	04 04                	add    al,0x4
c01047a6:	04 04                	add    al,0x4
c01047a8:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c01047ab:	00 00                	add    BYTE PTR [eax],al
c01047ad:	e7 42                	out    0x42,eax
c01047af:	44                   	inc    esp
c01047b0:	48                   	dec    eax
c01047b1:	50                   	push   eax
c01047b2:	50                   	push   eax
c01047b3:	60                   	pusha  
c01047b4:	50                   	push   eax
c01047b5:	50                   	push   eax
c01047b6:	48                   	dec    eax
c01047b7:	44                   	inc    esp
c01047b8:	42                   	inc    edx
c01047b9:	e7 00                	out    0x0,eax
c01047bb:	00 00                	add    BYTE PTR [eax],al
c01047bd:	f0 40                	lock inc eax
c01047bf:	40                   	inc    eax
c01047c0:	40                   	inc    eax
c01047c1:	40                   	inc    eax
c01047c2:	40                   	inc    eax
c01047c3:	40                   	inc    eax
c01047c4:	40                   	inc    eax
c01047c5:	40                   	inc    eax
c01047c6:	40                   	inc    eax
c01047c7:	42                   	inc    edx
c01047c8:	42                   	inc    edx
c01047c9:	fe 00                	inc    BYTE PTR [eax]
c01047cb:	00 00                	add    BYTE PTR [eax],al
c01047cd:	c3                   	ret    
c01047ce:	42                   	inc    edx
c01047cf:	66 66 66 5a          	data16 data16 pop dx
c01047d3:	5a                   	pop    edx
c01047d4:	5a                   	pop    edx
c01047d5:	42                   	inc    edx
c01047d6:	42                   	inc    edx
c01047d7:	42                   	inc    edx
c01047d8:	42                   	inc    edx
c01047d9:	e7 00                	out    0x0,eax
c01047db:	00 00                	add    BYTE PTR [eax],al
c01047dd:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c01047e4:	4a                   	dec    edx
c01047e5:	4a                   	dec    edx
c01047e6:	4a                   	dec    edx
c01047e7:	46                   	inc    esi
c01047e8:	46                   	inc    esi
c01047e9:	e2 00                	loop   c01047eb <PKnFont+0x4ef>
c01047eb:	00 00                	add    BYTE PTR [eax],al
c01047ed:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c01047f1:	82                   	(bad)  
c01047f2:	82                   	(bad)  
c01047f3:	82                   	(bad)  
c01047f4:	82                   	(bad)  
c01047f5:	82                   	(bad)  
c01047f6:	82                   	(bad)  
c01047f7:	82                   	(bad)  
c01047f8:	44                   	inc    esp
c01047f9:	38 00                	cmp    BYTE PTR [eax],al
c01047fb:	00 00                	add    BYTE PTR [eax],al
c01047fd:	f8                   	clc    
c01047fe:	44                   	inc    esp
c01047ff:	42                   	inc    edx
c0104800:	42                   	inc    edx
c0104801:	42                   	inc    edx
c0104802:	44                   	inc    esp
c0104803:	78 40                	js     c0104845 <PKnFont+0x549>
c0104805:	40                   	inc    eax
c0104806:	40                   	inc    eax
c0104807:	40                   	inc    eax
c0104808:	40                   	inc    eax
c0104809:	f0 00 00             	lock add BYTE PTR [eax],al
c010480c:	00 38                	add    BYTE PTR [eax],bh
c010480e:	44                   	inc    esp
c010480f:	82                   	(bad)  
c0104810:	82                   	(bad)  
c0104811:	82                   	(bad)  
c0104812:	82                   	(bad)  
c0104813:	82                   	(bad)  
c0104814:	82                   	(bad)  
c0104815:	82                   	(bad)  
c0104816:	92                   	xchg   edx,eax
c0104817:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c010481b:	00 00                	add    BYTE PTR [eax],al
c010481d:	fc                   	cld    
c010481e:	42                   	inc    edx
c010481f:	42                   	inc    edx
c0104820:	42                   	inc    edx
c0104821:	42                   	inc    edx
c0104822:	7c 44                	jl     c0104868 <PKnFont+0x56c>
c0104824:	42                   	inc    edx
c0104825:	42                   	inc    edx
c0104826:	42                   	inc    edx
c0104827:	42                   	inc    edx
c0104828:	42                   	inc    edx
c0104829:	e7 00                	out    0x0,eax
c010482b:	00 00                	add    BYTE PTR [eax],al
c010482d:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c0104830:	82                   	(bad)  
c0104831:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c0104835:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c010483b:	00 00                	add    BYTE PTR [eax],al
c010483d:	fe                   	(bad)  
c010483e:	92                   	xchg   edx,eax
c010483f:	92                   	xchg   edx,eax
c0104840:	10 10                	adc    BYTE PTR [eax],dl
c0104842:	10 10                	adc    BYTE PTR [eax],dl
c0104844:	10 10                	adc    BYTE PTR [eax],dl
c0104846:	10 10                	adc    BYTE PTR [eax],dl
c0104848:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c010484c:	00 e7                	add    bh,ah
c010484e:	42                   	inc    edx
c010484f:	42                   	inc    edx
c0104850:	42                   	inc    edx
c0104851:	42                   	inc    edx
c0104852:	42                   	inc    edx
c0104853:	42                   	inc    edx
c0104854:	42                   	inc    edx
c0104855:	42                   	inc    edx
c0104856:	42                   	inc    edx
c0104857:	42                   	inc    edx
c0104858:	24 3c                	and    al,0x3c
c010485a:	00 00                	add    BYTE PTR [eax],al
c010485c:	00 e7                	add    bh,ah
c010485e:	42                   	inc    edx
c010485f:	42                   	inc    edx
c0104860:	42                   	inc    edx
c0104861:	42                   	inc    edx
c0104862:	24 24                	and    al,0x24
c0104864:	24 24                	and    al,0x24
c0104866:	18 18                	sbb    BYTE PTR [eax],bl
c0104868:	18 18                	sbb    BYTE PTR [eax],bl
c010486a:	00 00                	add    BYTE PTR [eax],al
c010486c:	00 e7                	add    bh,ah
c010486e:	42                   	inc    edx
c010486f:	42                   	inc    edx
c0104870:	42                   	inc    edx
c0104871:	5a                   	pop    edx
c0104872:	5a                   	pop    edx
c0104873:	5a                   	pop    edx
c0104874:	5a                   	pop    edx
c0104875:	24 24                	and    al,0x24
c0104877:	24 24                	and    al,0x24
c0104879:	24 00                	and    al,0x0
c010487b:	00 00                	add    BYTE PTR [eax],al
c010487d:	e7 42                	out    0x42,eax
c010487f:	42                   	inc    edx
c0104880:	24 24                	and    al,0x24
c0104882:	24 18                	and    al,0x18
c0104884:	24 24                	and    al,0x24
c0104886:	24 42                	and    al,0x42
c0104888:	42                   	inc    edx
c0104889:	e7 00                	out    0x0,eax
c010488b:	00 00                	add    BYTE PTR [eax],al
c010488d:	ee                   	out    dx,al
c010488e:	44                   	inc    esp
c010488f:	44                   	inc    esp
c0104890:	44                   	inc    esp
c0104891:	28 28                	sub    BYTE PTR [eax],ch
c0104893:	28 10                	sub    BYTE PTR [eax],dl
c0104895:	10 10                	adc    BYTE PTR [eax],dl
c0104897:	10 10                	adc    BYTE PTR [eax],dl
c0104899:	7c 00                	jl     c010489b <PKnFont+0x59f>
c010489b:	00 00                	add    BYTE PTR [eax],al
c010489d:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c01048a4:	20 20                	and    BYTE PTR [eax],ah
c01048a6:	40                   	inc    eax
c01048a7:	42                   	inc    edx
c01048a8:	82                   	(bad)  
c01048a9:	fe 00                	inc    BYTE PTR [eax]
c01048ab:	00 00                	add    BYTE PTR [eax],al
c01048ad:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c01048b0:	20 20                	and    BYTE PTR [eax],ah
c01048b2:	20 20                	and    BYTE PTR [eax],ah
c01048b4:	20 20                	and    BYTE PTR [eax],ah
c01048b6:	20 20                	and    BYTE PTR [eax],ah
c01048b8:	20 20                	and    BYTE PTR [eax],ah
c01048ba:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c01048c1:	20 20                	and    BYTE PTR [eax],ah
c01048c3:	10 10                	adc    BYTE PTR [eax],dl
c01048c5:	08 08                	or     BYTE PTR [eax],cl
c01048c7:	04 04                	add    al,0x4
c01048c9:	04 02                	add    al,0x2
c01048cb:	02 00                	add    al,BYTE PTR [eax]
c01048cd:	7c 04                	jl     c01048d3 <PKnFont+0x5d7>
c01048cf:	04 04                	add    al,0x4
c01048d1:	04 04                	add    al,0x4
c01048d3:	04 04                	add    al,0x4
c01048d5:	04 04                	add    al,0x4
c01048d7:	04 04                	add    al,0x4
c01048d9:	04 7c                	add    al,0x7c
c01048db:	00 00                	add    BYTE PTR [eax],al
c01048dd:	10 28                	adc    BYTE PTR [eax],ch
c01048df:	44                   	inc    esp
c01048e0:	82                   	(bad)  
	...
c01048f9:	00 fe                	add    dh,bh
c01048fb:	00 10                	add    BYTE PTR [eax],dl
c01048fd:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c0104910:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c0104913:	04 3c                	add    al,0x3c
c0104915:	44                   	inc    esp
c0104916:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c010491d:	40                   	inc    eax
c010491e:	40                   	inc    eax
c010491f:	40                   	inc    eax
c0104920:	40                   	inc    eax
c0104921:	58                   	pop    eax
c0104922:	64 42                	fs inc edx
c0104924:	42                   	inc    edx
c0104925:	42                   	inc    edx
c0104926:	42                   	inc    edx
c0104927:	42                   	inc    edx
c0104928:	64 58                	fs pop eax
c010492a:	00 00                	add    BYTE PTR [eax],al
c010492c:	00 00                	add    BYTE PTR [eax],al
c010492e:	00 00                	add    BYTE PTR [eax],al
c0104930:	00 30                	add    BYTE PTR [eax],dh
c0104932:	4c                   	dec    esp
c0104933:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c010493a:	00 00                	add    BYTE PTR [eax],al
c010493c:	0c 04                	or     al,0x4
c010493e:	04 04                	add    al,0x4
c0104940:	04 34                	add    al,0x34
c0104942:	4c                   	dec    esp
c0104943:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c010494a:	00 00                	add    BYTE PTR [eax],al
c010494c:	00 00                	add    BYTE PTR [eax],al
c010494e:	00 00                	add    BYTE PTR [eax],al
c0104950:	00 38                	add    BYTE PTR [eax],bh
c0104952:	44                   	inc    esp
c0104953:	82                   	(bad)  
c0104954:	82                   	(bad)  
c0104955:	fc                   	cld    
c0104956:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c010495d:	10 10                	adc    BYTE PTR [eax],dl
c010495f:	10 10                	adc    BYTE PTR [eax],dl
c0104961:	7c 10                	jl     c0104973 <PKnFont+0x677>
c0104963:	10 10                	adc    BYTE PTR [eax],dl
c0104965:	10 10                	adc    BYTE PTR [eax],dl
c0104967:	10 10                	adc    BYTE PTR [eax],dl
c0104969:	7c 00                	jl     c010496b <PKnFont+0x66f>
c010496b:	00 00                	add    BYTE PTR [eax],al
c010496d:	00 00                	add    BYTE PTR [eax],al
c010496f:	00 00                	add    BYTE PTR [eax],al
c0104971:	36 4c                	ss dec esp
c0104973:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c010497a:	04 38                	add    al,0x38
c010497c:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c0104980:	40                   	inc    eax
c0104981:	58                   	pop    eax
c0104982:	64 42                	fs inc edx
c0104984:	42                   	inc    edx
c0104985:	42                   	inc    edx
c0104986:	42                   	inc    edx
c0104987:	42                   	inc    edx
c0104988:	42                   	inc    edx
c0104989:	e3 00                	jecxz  c010498b <PKnFont+0x68f>
c010498b:	00 00                	add    BYTE PTR [eax],al
c010498d:	10 10                	adc    BYTE PTR [eax],dl
c010498f:	00 00                	add    BYTE PTR [eax],al
c0104991:	30 10                	xor    BYTE PTR [eax],dl
c0104993:	10 10                	adc    BYTE PTR [eax],dl
c0104995:	10 10                	adc    BYTE PTR [eax],dl
c0104997:	10 10                	adc    BYTE PTR [eax],dl
c0104999:	38 00                	cmp    BYTE PTR [eax],al
c010499b:	00 00                	add    BYTE PTR [eax],al
c010499d:	04 04                	add    al,0x4
c010499f:	00 00                	add    BYTE PTR [eax],al
c01049a1:	0c 04                	or     al,0x4
c01049a3:	04 04                	add    al,0x4
c01049a5:	04 04                	add    al,0x4
c01049a7:	04 04                	add    al,0x4
c01049a9:	08 08                	or     BYTE PTR [eax],cl
c01049ab:	30 c0                	xor    al,al
c01049ad:	40                   	inc    eax
c01049ae:	40                   	inc    eax
c01049af:	40                   	inc    eax
c01049b0:	40                   	inc    eax
c01049b1:	4e                   	dec    esi
c01049b2:	44                   	inc    esp
c01049b3:	48                   	dec    eax
c01049b4:	50                   	push   eax
c01049b5:	60                   	pusha  
c01049b6:	50                   	push   eax
c01049b7:	48                   	dec    eax
c01049b8:	44                   	inc    esp
c01049b9:	e6 00                	out    0x0,al
c01049bb:	00 30                	add    BYTE PTR [eax],dh
c01049bd:	10 10                	adc    BYTE PTR [eax],dl
c01049bf:	10 10                	adc    BYTE PTR [eax],dl
c01049c1:	10 10                	adc    BYTE PTR [eax],dl
c01049c3:	10 10                	adc    BYTE PTR [eax],dl
c01049c5:	10 10                	adc    BYTE PTR [eax],dl
c01049c7:	10 10                	adc    BYTE PTR [eax],dl
c01049c9:	38 00                	cmp    BYTE PTR [eax],al
c01049cb:	00 00                	add    BYTE PTR [eax],al
c01049cd:	00 00                	add    BYTE PTR [eax],al
c01049cf:	00 00                	add    BYTE PTR [eax],al
c01049d1:	f6                   	(bad)  
c01049d2:	49                   	dec    ecx
c01049d3:	49                   	dec    ecx
c01049d4:	49                   	dec    ecx
c01049d5:	49                   	dec    ecx
c01049d6:	49                   	dec    ecx
c01049d7:	49                   	dec    ecx
c01049d8:	49                   	dec    ecx
c01049d9:	db 00                	fild   DWORD PTR [eax]
c01049db:	00 00                	add    BYTE PTR [eax],al
c01049dd:	00 00                	add    BYTE PTR [eax],al
c01049df:	00 00                	add    BYTE PTR [eax],al
c01049e1:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c01049e5:	42                   	inc    edx
c01049e6:	42                   	inc    edx
c01049e7:	42                   	inc    edx
c01049e8:	42                   	inc    edx
c01049e9:	e3 00                	jecxz  c01049eb <PKnFont+0x6ef>
c01049eb:	00 00                	add    BYTE PTR [eax],al
c01049ed:	00 00                	add    BYTE PTR [eax],al
c01049ef:	00 00                	add    BYTE PTR [eax],al
c01049f1:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c01049f5:	82                   	(bad)  
c01049f6:	82                   	(bad)  
c01049f7:	82                   	(bad)  
c01049f8:	44                   	inc    esp
c01049f9:	38 00                	cmp    BYTE PTR [eax],al
c01049fb:	00 00                	add    BYTE PTR [eax],al
c01049fd:	00 00                	add    BYTE PTR [eax],al
c01049ff:	00 d8                	add    al,bl
c0104a01:	64 42                	fs inc edx
c0104a03:	42                   	inc    edx
c0104a04:	42                   	inc    edx
c0104a05:	42                   	inc    edx
c0104a06:	42                   	inc    edx
c0104a07:	64 58                	fs pop eax
c0104a09:	40                   	inc    eax
c0104a0a:	40                   	inc    eax
c0104a0b:	e0 00                	loopne c0104a0d <PKnFont+0x711>
c0104a0d:	00 00                	add    BYTE PTR [eax],al
c0104a0f:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c0104a12:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c0104a19:	04 04                	add    al,0x4
c0104a1b:	0e                   	push   cs
c0104a1c:	00 00                	add    BYTE PTR [eax],al
c0104a1e:	00 00                	add    BYTE PTR [eax],al
c0104a20:	00 dc                	add    ah,bl
c0104a22:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c0104a25:	40                   	inc    eax
c0104a26:	40                   	inc    eax
c0104a27:	40                   	inc    eax
c0104a28:	40                   	inc    eax
c0104a29:	e0 00                	loopne c0104a2b <PKnFont+0x72f>
c0104a2b:	00 00                	add    BYTE PTR [eax],al
c0104a2d:	00 00                	add    BYTE PTR [eax],al
c0104a2f:	00 00                	add    BYTE PTR [eax],al
c0104a31:	7a 86                	jp     c01049b9 <PKnFont+0x6bd>
c0104a33:	82                   	(bad)  
c0104a34:	c0 38 06             	sar    BYTE PTR [eax],0x6
c0104a37:	82                   	(bad)  
c0104a38:	c2 bc 00             	ret    0xbc
c0104a3b:	00 00                	add    BYTE PTR [eax],al
c0104a3d:	00 10                	add    BYTE PTR [eax],dl
c0104a3f:	10 10                	adc    BYTE PTR [eax],dl
c0104a41:	7c 10                	jl     c0104a53 <PKnFont+0x757>
c0104a43:	10 10                	adc    BYTE PTR [eax],dl
c0104a45:	10 10                	adc    BYTE PTR [eax],dl
c0104a47:	10 10                	adc    BYTE PTR [eax],dl
c0104a49:	0e                   	push   cs
c0104a4a:	00 00                	add    BYTE PTR [eax],al
c0104a4c:	00 00                	add    BYTE PTR [eax],al
c0104a4e:	00 00                	add    BYTE PTR [eax],al
c0104a50:	00 c6                	add    dh,al
c0104a52:	42                   	inc    edx
c0104a53:	42                   	inc    edx
c0104a54:	42                   	inc    edx
c0104a55:	42                   	inc    edx
c0104a56:	42                   	inc    edx
c0104a57:	42                   	inc    edx
c0104a58:	46                   	inc    esi
c0104a59:	3b 00                	cmp    eax,DWORD PTR [eax]
c0104a5b:	00 00                	add    BYTE PTR [eax],al
c0104a5d:	00 00                	add    BYTE PTR [eax],al
c0104a5f:	00 00                	add    BYTE PTR [eax],al
c0104a61:	e7 42                	out    0x42,eax
c0104a63:	42                   	inc    edx
c0104a64:	42                   	inc    edx
c0104a65:	24 24                	and    al,0x24
c0104a67:	24 18                	and    al,0x18
c0104a69:	18 00                	sbb    BYTE PTR [eax],al
c0104a6b:	00 00                	add    BYTE PTR [eax],al
c0104a6d:	00 00                	add    BYTE PTR [eax],al
c0104a6f:	00 00                	add    BYTE PTR [eax],al
c0104a71:	e7 42                	out    0x42,eax
c0104a73:	42                   	inc    edx
c0104a74:	5a                   	pop    edx
c0104a75:	5a                   	pop    edx
c0104a76:	5a                   	pop    edx
c0104a77:	24 24                	and    al,0x24
c0104a79:	24 00                	and    al,0x0
c0104a7b:	00 00                	add    BYTE PTR [eax],al
c0104a7d:	00 00                	add    BYTE PTR [eax],al
c0104a7f:	00 00                	add    BYTE PTR [eax],al
c0104a81:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c0104a86:	28 28                	sub    BYTE PTR [eax],ch
c0104a88:	44                   	inc    esp
c0104a89:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0104a8c:	00 00                	add    BYTE PTR [eax],al
c0104a8e:	00 00                	add    BYTE PTR [eax],al
c0104a90:	00 e7                	add    bh,ah
c0104a92:	42                   	inc    edx
c0104a93:	42                   	inc    edx
c0104a94:	24 24                	and    al,0x24
c0104a96:	24 18                	and    al,0x18
c0104a98:	18 10                	sbb    BYTE PTR [eax],dl
c0104a9a:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0104a9d:	00 00                	add    BYTE PTR [eax],al
c0104a9f:	00 00                	add    BYTE PTR [eax],al
c0104aa1:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c0104aa7:	42                   	inc    edx
c0104aa8:	82                   	(bad)  
c0104aa9:	fe 00                	inc    BYTE PTR [eax]
c0104aab:	00 00                	add    BYTE PTR [eax],al
c0104aad:	06                   	push   es
c0104aae:	08 10                	or     BYTE PTR [eax],dl
c0104ab0:	10 10                	adc    BYTE PTR [eax],dl
c0104ab2:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c0104ab5:	10 10                	adc    BYTE PTR [eax],dl
c0104ab7:	10 08                	adc    BYTE PTR [eax],cl
c0104ab9:	06                   	push   es
c0104aba:	00 00                	add    BYTE PTR [eax],al
c0104abc:	10 10                	adc    BYTE PTR [eax],dl
c0104abe:	10 10                	adc    BYTE PTR [eax],dl
c0104ac0:	10 10                	adc    BYTE PTR [eax],dl
c0104ac2:	10 10                	adc    BYTE PTR [eax],dl
c0104ac4:	10 10                	adc    BYTE PTR [eax],dl
c0104ac6:	10 10                	adc    BYTE PTR [eax],dl
c0104ac8:	10 10                	adc    BYTE PTR [eax],dl
c0104aca:	10 10                	adc    BYTE PTR [eax],dl
c0104acc:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c0104acf:	08 08                	or     BYTE PTR [eax],cl
c0104ad1:	08 08                	or     BYTE PTR [eax],cl
c0104ad3:	06                   	push   es
c0104ad4:	08 08                	or     BYTE PTR [eax],cl
c0104ad6:	08 08                	or     BYTE PTR [eax],cl
c0104ad8:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0104adb:	00 00                	add    BYTE PTR [eax],al
c0104add:	72 8c                	jb     c0104a6b <PKnFont+0x76f>
	...
c01052fb:	00 20                	add    BYTE PTR [eax],ah
c01052fd:	20 20                	and    BYTE PTR [eax],ah
c01052ff:	20 20                	and    BYTE PTR [eax],ah
c0105301:	20 20                	and    BYTE PTR [eax],ah
c0105303:	20 20                	and    BYTE PTR [eax],ah
c0105305:	20 20                	and    BYTE PTR [eax],ah
c0105307:	20 20                	and    BYTE PTR [eax],ah
c0105309:	20 20                	and    BYTE PTR [eax],ah
c010530b:	20 23                	and    BYTE PTR [ebx],ah
c010530d:	23 23                	and    esp,DWORD PTR [ebx]
c010530f:	23 23                	and    esp,DWORD PTR [ebx]
c0105311:	23 23                	and    esp,DWORD PTR [ebx]
c0105313:	23 23                	and    esp,DWORD PTR [ebx]
c0105315:	23 23                	and    esp,DWORD PTR [ebx]
c0105317:	23 23                	and    esp,DWORD PTR [ebx]
c0105319:	20 20                	and    BYTE PTR [eax],ah
c010531b:	23 20                	and    esp,DWORD PTR [eax]
c010531d:	20 20                	and    BYTE PTR [eax],ah
c010531f:	20 20                	and    BYTE PTR [eax],ah
c0105321:	20 20                	and    BYTE PTR [eax],ah
c0105323:	20 20                	and    BYTE PTR [eax],ah
c0105325:	20 20                	and    BYTE PTR [eax],ah
c0105327:	23 20                	and    esp,DWORD PTR [eax]
c0105329:	20 23                	and    BYTE PTR [ebx],ah
c010532b:	20 20                	and    BYTE PTR [eax],ah
c010532d:	20 20                	and    BYTE PTR [eax],ah
c010532f:	20 20                	and    BYTE PTR [eax],ah
c0105331:	20 20                	and    BYTE PTR [eax],ah
c0105333:	20 20                	and    BYTE PTR [eax],ah
c0105335:	20 23                	and    BYTE PTR [ebx],ah
c0105337:	20 20                	and    BYTE PTR [eax],ah
c0105339:	23 20                	and    esp,DWORD PTR [eax]
c010533b:	20 20                	and    BYTE PTR [eax],ah
c010533d:	20 20                	and    BYTE PTR [eax],ah
c010533f:	20 20                	and    BYTE PTR [eax],ah
c0105341:	20 20                	and    BYTE PTR [eax],ah
c0105343:	20 20                	and    BYTE PTR [eax],ah
c0105345:	23 20                	and    esp,DWORD PTR [eax]
c0105347:	20 23                	and    BYTE PTR [ebx],ah
c0105349:	20 20                	and    BYTE PTR [eax],ah
c010534b:	20 23                	and    BYTE PTR [ebx],ah
c010534d:	23 23                	and    esp,DWORD PTR [ebx]
c010534f:	23 23                	and    esp,DWORD PTR [ebx]
c0105351:	20 20                	and    BYTE PTR [eax],ah
c0105353:	20 23                	and    BYTE PTR [ebx],ah
c0105355:	20 20                	and    BYTE PTR [eax],ah
c0105357:	23 20                	and    esp,DWORD PTR [eax]
c0105359:	20 20                	and    BYTE PTR [eax],ah
c010535b:	23 20                	and    esp,DWORD PTR [eax]
c010535d:	20 20                	and    BYTE PTR [eax],ah
c010535f:	23 20                	and    esp,DWORD PTR [eax]
c0105361:	20 20                	and    BYTE PTR [eax],ah
c0105363:	23 20                	and    esp,DWORD PTR [eax]
c0105365:	20 23                	and    BYTE PTR [ebx],ah
c0105367:	20 20                	and    BYTE PTR [eax],ah
c0105369:	20 23                	and    BYTE PTR [ebx],ah
c010536b:	20 20                	and    BYTE PTR [eax],ah
c010536d:	20 23                	and    BYTE PTR [ebx],ah
c010536f:	20 20                	and    BYTE PTR [eax],ah
c0105371:	20 23                	and    BYTE PTR [ebx],ah
c0105373:	20 20                	and    BYTE PTR [eax],ah
c0105375:	23 20                	and    esp,DWORD PTR [eax]
c0105377:	20 20                	and    BYTE PTR [eax],ah
c0105379:	23 20                	and    esp,DWORD PTR [eax]
c010537b:	20 20                	and    BYTE PTR [eax],ah
c010537d:	23 20                	and    esp,DWORD PTR [eax]
c010537f:	20 20                	and    BYTE PTR [eax],ah
c0105381:	23 20                	and    esp,DWORD PTR [eax]
c0105383:	20 23                	and    BYTE PTR [ebx],ah
c0105385:	23 23                	and    esp,DWORD PTR [ebx]
c0105387:	23 23                	and    esp,DWORD PTR [ebx]
c0105389:	23 23                	and    esp,DWORD PTR [ebx]
c010538b:	23 23                	and    esp,DWORD PTR [ebx]
c010538d:	20 20                	and    BYTE PTR [eax],ah
c010538f:	20 23                	and    BYTE PTR [ebx],ah
c0105391:	20 20                	and    BYTE PTR [eax],ah
c0105393:	23 23                	and    esp,DWORD PTR [ebx]
c0105395:	20 20                	and    BYTE PTR [eax],ah
c0105397:	23 20                	and    esp,DWORD PTR [eax]
c0105399:	20 20                	and    BYTE PTR [eax],ah
c010539b:	20 20                	and    BYTE PTR [eax],ah
c010539d:	20 20                	and    BYTE PTR [eax],ah
c010539f:	23 20                	and    esp,DWORD PTR [eax]
c01053a1:	20 23                	and    BYTE PTR [ebx],ah
c01053a3:	20 23                	and    BYTE PTR [ebx],ah
c01053a5:	20 23                	and    BYTE PTR [ebx],ah
c01053a7:	20 20                	and    BYTE PTR [eax],ah
c01053a9:	20 20                	and    BYTE PTR [eax],ah
c01053ab:	20 20                	and    BYTE PTR [eax],ah
c01053ad:	20 23                	and    BYTE PTR [ebx],ah
c01053af:	20 20                	and    BYTE PTR [eax],ah
c01053b1:	23 20                	and    esp,DWORD PTR [eax]
c01053b3:	20 23                	and    BYTE PTR [ebx],ah
c01053b5:	23 20                	and    esp,DWORD PTR [eax]
c01053b7:	20 20                	and    BYTE PTR [eax],ah
c01053b9:	20 20                	and    BYTE PTR [eax],ah
c01053bb:	20 20                	and    BYTE PTR [eax],ah
c01053bd:	23 20                	and    esp,DWORD PTR [eax]
c01053bf:	20 23                	and    BYTE PTR [ebx],ah
c01053c1:	23 23                	and    esp,DWORD PTR [ebx]
c01053c3:	23 23                	and    esp,DWORD PTR [ebx]
c01053c5:	23 23                	and    esp,DWORD PTR [ebx]
c01053c7:	23 23                	and    esp,DWORD PTR [ebx]
c01053c9:	23 23                	and    esp,DWORD PTR [ebx]
c01053cb:	23 23                	and    esp,DWORD PTR [ebx]
c01053cd:	20 20                	and    BYTE PTR [eax],ah
c01053cf:	20 20                	and    BYTE PTR [eax],ah
c01053d1:	20 20                	and    BYTE PTR [eax],ah
c01053d3:	20 20                	and    BYTE PTR [eax],ah
c01053d5:	20 20                	and    BYTE PTR [eax],ah
c01053d7:	20 20                	and    BYTE PTR [eax],ah
c01053d9:	20 20                	and    BYTE PTR [eax],ah
c01053db:	20 20                	and    BYTE PTR [eax],ah

Disassembly of section .eh_frame:

c01053e0 <.eh_frame>:
c01053e0:	10 00                	adc    BYTE PTR [eax],al
c01053e2:	00 00                	add    BYTE PTR [eax],al
c01053e4:	00 00                	add    BYTE PTR [eax],al
c01053e6:	00 00                	add    BYTE PTR [eax],al
c01053e8:	01 00                	add    DWORD PTR [eax],eax
c01053ea:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c01053ee:	04 04                	add    al,0x4
c01053f0:	88 01                	mov    BYTE PTR [ecx],al
c01053f2:	00 00                	add    BYTE PTR [eax],al
c01053f4:	18 00                	sbb    BYTE PTR [eax],al
c01053f6:	00 00                	add    BYTE PTR [eax],al
c01053f8:	18 00                	sbb    BYTE PTR [eax],al
c01053fa:	00 00                	add    BYTE PTR [eax],al
c01053fc:	20 00                	and    BYTE PTR [eax],al
c01053fe:	10 c0                	adc    al,al
c0105400:	1d 00 00 00 41       	sbb    eax,0x41000000
c0105405:	0e                   	push   cs
c0105406:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c010540c:	41                   	inc    ecx
c010540d:	83 03 00             	add    DWORD PTR [ebx],0x0
c0105410:	18 00                	sbb    BYTE PTR [eax],al
c0105412:	00 00                	add    BYTE PTR [eax],al
c0105414:	34 00                	xor    al,0x0
c0105416:	00 00                	add    BYTE PTR [eax],al
c0105418:	3d 00 10 c0 19       	cmp    eax,0x19c01000
c010541d:	00 00                	add    BYTE PTR [eax],al
c010541f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105422:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105428:	46                   	inc    esi
c0105429:	83 03 00             	add    DWORD PTR [ebx],0x0
c010542c:	a8 00                	test   al,0x0
c010542e:	00 00                	add    BYTE PTR [eax],al
c0105430:	50                   	push   eax
c0105431:	00 00                	add    BYTE PTR [eax],al
c0105433:	00 56 00             	add    BYTE PTR [esi+0x0],dl
c0105436:	10 c0                	adc    al,al
c0105438:	65 01 00             	add    DWORD PTR gs:[eax],eax
c010543b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010543e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105444:	46                   	inc    esi
c0105445:	2e 08 83 05 86 04 87 	or     BYTE PTR cs:[ebx-0x78fb79fb],al
c010544c:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c010544f:	0c 42                	or     al,0x42
c0105451:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105455:	00 02                	add    BYTE PTR [edx],al
c0105457:	79 2e                	jns    c0105487 <_edata+0xaa>
c0105459:	04 04                	add    al,0x4
c010545b:	05 00 00 00 2e       	add    eax,0x2e000000
c0105460:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c0105464:	42                   	inc    edx
c0105465:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105469:	14 45                	adc    al,0x45
c010546b:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c010546f:	1c 43                	sbb    al,0x43
c0105471:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105475:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105478:	0c 46                	or     al,0x46
c010547a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010547e:	04 04                	add    al,0x4
c0105480:	02 00                	add    al,BYTE PTR [eax]
c0105482:	00 00                	add    BYTE PTR [eax],al
c0105484:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105488:	0c 46                	or     al,0x46
c010548a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010548e:	0c 41                	or     al,0x41
c0105490:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105494:	0c 45                	or     al,0x45
c0105496:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010549a:	0c 46                	or     al,0x46
c010549c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01054a0:	0c 41                	or     al,0x41
c01054a2:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c01054a6:	04 04                	add    al,0x4
c01054a8:	0b 00                	or     eax,DWORD PTR [eax]
c01054aa:	00 00                	add    BYTE PTR [eax],al
c01054ac:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01054b0:	0c 41                	or     al,0x41
c01054b2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01054b6:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c01054b9:	04 04                	add    al,0x4
c01054bb:	01 00                	add    DWORD PTR [eax],eax
c01054bd:	00 00                	add    BYTE PTR [eax],al
c01054bf:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01054c3:	0c 41                	or     al,0x41
c01054c5:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c01054c9:	0c 43                	or     al,0x43
c01054cb:	2e 00 02             	add    BYTE PTR cs:[edx],al
c01054ce:	41                   	inc    ecx
c01054cf:	2e 04 04             	cs add al,0x4
c01054d2:	02 00                	add    al,BYTE PTR [eax]
c01054d4:	00 00                	add    BYTE PTR [eax],al
c01054d6:	2e 00 7c 00 00       	add    BYTE PTR cs:[eax+eax*1+0x0],bh
c01054db:	00 fc                	add    ah,bh
c01054dd:	00 00                	add    BYTE PTR [eax],al
c01054df:	00 bb 01 10 c0 94    	add    BYTE PTR [ebx-0x6b3fefff],bh
c01054e5:	00 00                	add    BYTE PTR [eax],al
c01054e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01054ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01054f0:	43                   	inc    ebx
c01054f1:	83 05 86 04 87 03 48 	add    DWORD PTR ds:0x3870486,0x48
c01054f8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01054fc:	0c 42                	or     al,0x42
c01054fe:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105502:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0105505:	0c 45                	or     al,0x45
c0105507:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010550b:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c010550e:	04 04                	add    al,0x4
c0105510:	01 00                	add    DWORD PTR [eax],eax
c0105512:	00 00                	add    BYTE PTR [eax],al
c0105514:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105518:	0c 45                	or     al,0x45
c010551a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010551e:	0c 45                	or     al,0x45
c0105520:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105524:	0c 42                	or     al,0x42
c0105526:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010552a:	0c 41                	or     al,0x41
c010552c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105530:	0c 45                	or     al,0x45
c0105532:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0105536:	14 41                	adc    al,0x41
c0105538:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c010553c:	1c 45                	sbb    al,0x45
c010553e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105542:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0105545:	04 04                	add    al,0x4
c0105547:	04 00                	add    al,0x0
c0105549:	00 00                	add    BYTE PTR [eax],al
c010554b:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010554f:	0c 42                	or     al,0x42
c0105551:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105555:	00 00                	add    BYTE PTR [eax],al
c0105557:	00 94 01 00 00 7c 01 	add    BYTE PTR [ecx+eax*1+0x17c0000],dl
c010555e:	00 00                	add    BYTE PTR [eax],al
c0105560:	4f                   	dec    edi
c0105561:	02 10                	add    dl,BYTE PTR [eax]
c0105563:	c0 4f 02 00          	ror    BYTE PTR [edi+0x2],0x0
c0105567:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010556a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105570:	42                   	inc    edx
c0105571:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0105574:	03 46 2e             	add    eax,DWORD PTR [esi+0x2e]
c0105577:	08 83 05 47 2e 0c    	or     BYTE PTR [ebx+0xc2e4705],al
c010557d:	43                   	inc    ebx
c010557e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105582:	04 04                	add    al,0x4
c0105584:	0a 00                	or     al,BYTE PTR [eax]
c0105586:	00 00                	add    BYTE PTR [eax],al
c0105588:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c010558d:	42                   	inc    edx
c010558e:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105592:	14 45                	adc    al,0x45
c0105594:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c0105598:	1c 43                	sbb    al,0x43
c010559a:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010559e:	04 04                	add    al,0x4
c01055a0:	02 00                	add    al,BYTE PTR [eax]
c01055a2:	00 00                	add    BYTE PTR [eax],al
c01055a4:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01055a8:	0c 42                	or     al,0x42
c01055aa:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01055ae:	14 45                	adc    al,0x45
c01055b0:	2e 18 43 2e          	sbb    BYTE PTR cs:[ebx+0x2e],al
c01055b4:	1c 43                	sbb    al,0x43
c01055b6:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01055ba:	04 04                	add    al,0x4
c01055bc:	02 00                	add    al,BYTE PTR [eax]
c01055be:	00 00                	add    BYTE PTR [eax],al
c01055c0:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01055c4:	0c 42                	or     al,0x42
c01055c6:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01055ca:	14 45                	adc    al,0x45
c01055cc:	2e 18 43 2e          	sbb    BYTE PTR cs:[ebx+0x2e],al
c01055d0:	1c 43                	sbb    al,0x43
c01055d2:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01055d6:	00 52 2e             	add    BYTE PTR [edx+0x2e],dl
c01055d9:	04 04                	add    al,0x4
c01055db:	03 00                	add    eax,DWORD PTR [eax]
c01055dd:	00 00                	add    BYTE PTR [eax],al
c01055df:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c01055e4:	41                   	inc    ecx
c01055e5:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01055e9:	14 45                	adc    al,0x45
c01055eb:	2e 18 43 2e          	sbb    BYTE PTR cs:[ebx+0x2e],al
c01055ef:	1c 43                	sbb    al,0x43
c01055f1:	2e 20 51 2e          	and    BYTE PTR cs:[ecx+0x2e],dl
c01055f5:	00 6a 2e             	add    BYTE PTR [edx+0x2e],ch
c01055f8:	04 04                	add    al,0x4
c01055fa:	02 00                	add    al,BYTE PTR [eax]
c01055fc:	00 00                	add    BYTE PTR [eax],al
c01055fe:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105602:	0c 42                	or     al,0x42
c0105604:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105608:	14 45                	adc    al,0x45
c010560a:	2e 18 43 2e          	sbb    BYTE PTR cs:[ebx+0x2e],al
c010560e:	1c 43                	sbb    al,0x43
c0105610:	2e 20 4b 2e          	and    BYTE PTR cs:[ebx+0x2e],cl
c0105614:	04 04                	add    al,0x4
c0105616:	02 00                	add    al,BYTE PTR [eax]
c0105618:	00 00                	add    BYTE PTR [eax],al
c010561a:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010561e:	0c 42                	or     al,0x42
c0105620:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105624:	14 45                	adc    al,0x45
c0105626:	2e 18 43 2e          	sbb    BYTE PTR cs:[ebx+0x2e],al
c010562a:	1c 43                	sbb    al,0x43
c010562c:	2e 20 4b 2e          	and    BYTE PTR cs:[ebx+0x2e],cl
c0105630:	04 04                	add    al,0x4
c0105632:	0a 00                	or     al,BYTE PTR [eax]
c0105634:	00 00                	add    BYTE PTR [eax],al
c0105636:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c010563b:	41                   	inc    ecx
c010563c:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0105640:	14 45                	adc    al,0x45
c0105642:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c0105646:	1c 43                	sbb    al,0x43
c0105648:	2e 20 4b 2e          	and    BYTE PTR cs:[ebx+0x2e],cl
c010564c:	04 04                	add    al,0x4
c010564e:	0a 00                	or     al,BYTE PTR [eax]
c0105650:	00 00                	add    BYTE PTR [eax],al
c0105652:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0105657:	41                   	inc    ecx
c0105658:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c010565c:	14 45                	adc    al,0x45
c010565e:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c0105662:	1c 43                	sbb    al,0x43
c0105664:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105668:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c010566b:	0c 45                	or     al,0x45
c010566d:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c0105671:	04 04                	add    al,0x4
c0105673:	07                   	pop    es
c0105674:	00 00                	add    BYTE PTR [eax],al
c0105676:	00 2e                	add    BYTE PTR [esi],ch
c0105678:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010567b:	0c 41                	or     al,0x41
c010567d:	2e 10 5c 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],bl
c0105682:	41                   	inc    ecx
c0105683:	2e 04 04             	cs add al,0x4
c0105686:	06                   	push   es
c0105687:	00 00                	add    BYTE PTR [eax],al
c0105689:	00 2e                	add    BYTE PTR [esi],ch
c010568b:	08 43 2e             	or     BYTE PTR [ebx+0x2e],al
c010568e:	0c 43                	or     al,0x43
c0105690:	2e 10 43 2e          	adc    BYTE PTR cs:[ebx+0x2e],al
c0105694:	14 43                	adc    al,0x43
c0105696:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c010569a:	1c 41                	sbb    al,0x41
c010569c:	2e 20 4b 2e          	and    BYTE PTR cs:[ebx+0x2e],cl
c01056a0:	04 04                	add    al,0x4
c01056a2:	0a 00                	or     al,BYTE PTR [eax]
c01056a4:	00 00                	add    BYTE PTR [eax],al
c01056a6:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c01056ab:	41                   	inc    ecx
c01056ac:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c01056b0:	14 45                	adc    al,0x45
c01056b2:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c01056b6:	1c 43                	sbb    al,0x43
c01056b8:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01056bc:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c01056c0:	45                   	inc    ebp
c01056c1:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c01056c5:	14 47                	adc    al,0x47
c01056c7:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c01056cb:	1c 43                	sbb    al,0x43
c01056cd:	2e 20 4b 2e          	and    BYTE PTR cs:[ebx+0x2e],cl
c01056d1:	0c 4a                	or     al,0x4a
c01056d3:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c01056d7:	14 41                	adc    al,0x41
c01056d9:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c01056dd:	1c 41                	sbb    al,0x41
c01056df:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01056e3:	00 4c 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],cl
c01056e7:	4a                   	dec    edx
c01056e8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01056ec:	00 00                	add    BYTE PTR [eax],al
c01056ee:	00 00                	add    BYTE PTR [eax],al
c01056f0:	80 01 00             	add    BYTE PTR [ecx],0x0
c01056f3:	00 14 03             	add    BYTE PTR [ebx+eax*1],dl
c01056f6:	00 00                	add    BYTE PTR [eax],al
c01056f8:	9e                   	sahf   
c01056f9:	04 10                	add    al,0x10
c01056fb:	c0                   	(bad)  
c01056fc:	f1                   	icebp  
c01056fd:	01 00                	add    DWORD PTR [eax],eax
c01056ff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105702:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105708:	41                   	inc    ecx
c0105709:	83 03 49             	add    DWORD PTR [ebx],0x49
c010570c:	2e 04 04             	cs add al,0x4
c010570f:	01 00                	add    DWORD PTR [eax],eax
c0105711:	00 00                	add    BYTE PTR [eax],al
c0105713:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105717:	0c 42                	or     al,0x42
c0105719:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010571d:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0105720:	0c 42                	or     al,0x42
c0105722:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c0105726:	0c 41                	or     al,0x41
c0105728:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010572c:	0c 42                	or     al,0x42
c010572e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105732:	0c 41                	or     al,0x41
c0105734:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105738:	0c 42                	or     al,0x42
c010573a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010573e:	0c 41                	or     al,0x41
c0105740:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105744:	0c 42                	or     al,0x42
c0105746:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010574a:	0c 41                	or     al,0x41
c010574c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105750:	0c 42                	or     al,0x42
c0105752:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105756:	04 04                	add    al,0x4
c0105758:	02 00                	add    al,BYTE PTR [eax]
c010575a:	00 00                	add    BYTE PTR [eax],al
c010575c:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c0105760:	0c 42                	or     al,0x42
c0105762:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105766:	0c 41                	or     al,0x41
c0105768:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010576c:	0c 42                	or     al,0x42
c010576e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105772:	04 04                	add    al,0x4
c0105774:	02 00                	add    al,BYTE PTR [eax]
c0105776:	00 00                	add    BYTE PTR [eax],al
c0105778:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c010577c:	0c 42                	or     al,0x42
c010577e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105782:	0c 41                	or     al,0x41
c0105784:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105788:	0c 42                	or     al,0x42
c010578a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010578e:	0c 41                	or     al,0x41
c0105790:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105794:	0c 42                	or     al,0x42
c0105796:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010579a:	0c 41                	or     al,0x41
c010579c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01057a0:	0c 42                	or     al,0x42
c01057a2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01057a6:	04 04                	add    al,0x4
c01057a8:	02 00                	add    al,BYTE PTR [eax]
c01057aa:	00 00                	add    BYTE PTR [eax],al
c01057ac:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c01057b0:	0c 42                	or     al,0x42
c01057b2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01057b6:	0c 41                	or     al,0x41
c01057b8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01057bc:	0c 42                	or     al,0x42
c01057be:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01057c2:	0c 41                	or     al,0x41
c01057c4:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c01057c8:	0c 45                	or     al,0x45
c01057ca:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01057ce:	14 42                	adc    al,0x42
c01057d0:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c01057d4:	1c 43                	sbb    al,0x43
c01057d6:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01057da:	0c 46                	or     al,0x46
c01057dc:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01057e0:	14 46                	adc    al,0x46
c01057e2:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c01057e6:	1c 41                	sbb    al,0x41
c01057e8:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01057ec:	08 4a 2e             	or     BYTE PTR [edx+0x2e],cl
c01057ef:	0c 45                	or     al,0x45
c01057f1:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01057f5:	14 42                	adc    al,0x42
c01057f7:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c01057fb:	1c 43                	sbb    al,0x43
c01057fd:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105801:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c0105804:	0c 45                	or     al,0x45
c0105806:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c010580a:	14 42                	adc    al,0x42
c010580c:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105810:	1c 43                	sbb    al,0x43
c0105812:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c0105816:	0c 42                	or     al,0x42
c0105818:	2e 10 43 2e          	adc    BYTE PTR cs:[ebx+0x2e],al
c010581c:	14 42                	adc    al,0x42
c010581e:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0105822:	1c 41                	sbb    al,0x41
c0105824:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105828:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c010582b:	04 04                	add    al,0x4
c010582d:	05 00 00 00 2e       	add    eax,0x2e000000
c0105832:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105835:	0c 45                	or     al,0x45
c0105837:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c010583b:	14 45                	adc    al,0x45
c010583d:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0105841:	1c 45                	sbb    al,0x45
c0105843:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105847:	00 42 2e             	add    BYTE PTR [edx+0x2e],al
c010584a:	04 04                	add    al,0x4
c010584c:	05 00 00 00 2e       	add    eax,0x2e000000
c0105851:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105854:	0c 45                	or     al,0x45
c0105856:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010585a:	0c 41                	or     al,0x41
c010585c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105860:	0c 45                	or     al,0x45
c0105862:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105866:	0c 41                	or     al,0x41
c0105868:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010586c:	0c 45                	or     al,0x45
c010586e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105872:	00 00                	add    BYTE PTR [eax],al
c0105874:	5c                   	pop    esp
c0105875:	00 00                	add    BYTE PTR [eax],al
c0105877:	00 98 04 00 00 90    	add    BYTE PTR [eax-0x6ffffffc],bl
c010587d:	06                   	push   es
c010587e:	10 c0                	adc    al,al
c0105880:	64 00 00             	add    BYTE PTR fs:[eax],al
c0105883:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105886:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010588c:	47                   	inc    edi
c010588d:	83 03 48             	add    DWORD PTR [ebx],0x48
c0105890:	2e 0c 42             	cs or  al,0x42
c0105893:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c0105898:	41                   	inc    ecx
c0105899:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c010589d:	0c 43                	or     al,0x43
c010589f:	2e 10 43 2e          	adc    BYTE PTR cs:[ebx+0x2e],al
c01058a3:	14 43                	adc    al,0x43
c01058a5:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c01058a9:	1c 41                	sbb    al,0x41
c01058ab:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01058af:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c01058b2:	0c 42                	or     al,0x42
c01058b4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01058b8:	0c 41                	or     al,0x41
c01058ba:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01058be:	0c 45                	or     al,0x45
c01058c0:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01058c4:	14 42                	adc    al,0x42
c01058c6:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c01058ca:	1c 45                	sbb    al,0x45
c01058cc:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01058d0:	00 00                	add    BYTE PTR [eax],al
c01058d2:	00 00                	add    BYTE PTR [eax],al
c01058d4:	40                   	inc    eax
c01058d5:	00 00                	add    BYTE PTR [eax],al
c01058d7:	00 f8                	add    al,bh
c01058d9:	04 00                	add    al,0x0
c01058db:	00 f4                	add    ah,dh
c01058dd:	06                   	push   es
c01058de:	10 c0                	adc    al,al
c01058e0:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01058e3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01058e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01058ec:	43                   	inc    ebx
c01058ed:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01058f1:	0c 42                	or     al,0x42
c01058f3:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01058f7:	0c 41                	or     al,0x41
c01058f9:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01058fd:	0c 42                	or     al,0x42
c01058ff:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105903:	0c 41                	or     al,0x41
c0105905:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105909:	0c 42                	or     al,0x42
c010590b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010590f:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0105912:	0c 04                	or     al,0x4
c0105914:	04 00                	add    al,0x0
c0105916:	00 00                	add    BYTE PTR [eax],al
c0105918:	24 00                	and    al,0x0
c010591a:	00 00                	add    BYTE PTR [eax],al
c010591c:	3c 05                	cmp    al,0x5
c010591e:	00 00                	add    BYTE PTR [eax],al
c0105920:	24 07                	and    al,0x7
c0105922:	10 c0                	adc    al,al
c0105924:	53                   	push   ebx
c0105925:	00 00                	add    BYTE PTR [eax],al
c0105927:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010592a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105930:	43                   	inc    ebx
c0105931:	2e 0c 45             	cs or  al,0x45
c0105934:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c0105937:	46                   	inc    esi
c0105938:	2e 00 41 c5          	add    BYTE PTR cs:[ecx-0x3b],al
c010593c:	0c 04                	or     al,0x4
c010593e:	04 00                	add    al,0x0
c0105940:	1c 00                	sbb    al,0x0
c0105942:	00 00                	add    BYTE PTR [eax],al
c0105944:	64 05 00 00 24 0e    	fs add eax,0xe240000
c010594a:	10 c0                	adc    al,al
c010594c:	10 00                	adc    BYTE PTR [eax],al
c010594e:	00 00                	add    BYTE PTR [eax],al
c0105950:	41                   	inc    ecx
c0105951:	0e                   	push   cs
c0105952:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0105958:	47                   	inc    edi
c0105959:	0c 04                	or     al,0x4
c010595b:	04 c5                	add    al,0xc5
c010595d:	00 00                	add    BYTE PTR [eax],al
c010595f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105962:	00 00                	add    BYTE PTR [eax],al
c0105964:	84 05 00 00 34 0e    	test   BYTE PTR ds:0xe340000,al
c010596a:	10 c0                	adc    al,al
c010596c:	3d 00 00 00 41       	cmp    eax,0x41000000
c0105971:	0e                   	push   cs
c0105972:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0105978:	74 0c                	je     c0105986 <_edata+0x5a9>
c010597a:	04 04                	add    al,0x4
c010597c:	c5 00                	lds    eax,FWORD PTR [eax]
c010597e:	00 00                	add    BYTE PTR [eax],al
c0105980:	1c 00                	sbb    al,0x0
c0105982:	00 00                	add    BYTE PTR [eax],al
c0105984:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0105985:	05 00 00 71 0e       	add    eax,0xe710000
c010598a:	10 c0                	adc    al,al
c010598c:	9e                   	sahf   
c010598d:	00 00                	add    BYTE PTR [eax],al
c010598f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105992:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105998:	02 98 0c 04 04 c5    	add    bl,BYTE PTR [eax-0x3afbfbf4]
c010599e:	00 00                	add    BYTE PTR [eax],al
c01059a0:	20 00                	and    BYTE PTR [eax],al
c01059a2:	00 00                	add    BYTE PTR [eax],al
c01059a4:	c4 05 00 00 0f 0f    	les    eax,FWORD PTR ds:0xf0f0000
c01059aa:	10 c0                	adc    al,al
c01059ac:	2c 00                	sub    al,0x0
c01059ae:	00 00                	add    BYTE PTR [eax],al
c01059b0:	41                   	inc    ecx
c01059b1:	0e                   	push   cs
c01059b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01059b8:	44                   	inc    esp
c01059b9:	83 03 63             	add    DWORD PTR [ebx],0x63
c01059bc:	c3                   	ret    
c01059bd:	41                   	inc    ecx
c01059be:	0c 04                	or     al,0x4
c01059c0:	04 c5                	add    al,0xc5
c01059c2:	00 00                	add    BYTE PTR [eax],al
c01059c4:	1c 00                	sbb    al,0x0
c01059c6:	00 00                	add    BYTE PTR [eax],al
c01059c8:	e8 05 00 00 3b       	call   fb1059d2 <_kernel_end+0x3afe4fda>
c01059cd:	0f 10 c0             	movups xmm0,xmm0
c01059d0:	cd 00                	int    0x0
c01059d2:	00 00                	add    BYTE PTR [eax],al
c01059d4:	41                   	inc    ecx
c01059d5:	0e                   	push   cs
c01059d6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01059dc:	02 c9                	add    cl,cl
c01059de:	0c 04                	or     al,0x4
c01059e0:	04 c5                	add    al,0xc5
c01059e2:	00 00                	add    BYTE PTR [eax],al
c01059e4:	1c 00                	sbb    al,0x0
c01059e6:	00 00                	add    BYTE PTR [eax],al
c01059e8:	08 06                	or     BYTE PTR [esi],al
c01059ea:	00 00                	add    BYTE PTR [eax],al
c01059ec:	08 10                	or     BYTE PTR [eax],dl
c01059ee:	10 c0                	adc    al,al
c01059f0:	34 00                	xor    al,0x0
c01059f2:	00 00                	add    BYTE PTR [eax],al
c01059f4:	41                   	inc    ecx
c01059f5:	0e                   	push   cs
c01059f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01059fc:	70 c5                	jo     c01059c3 <_edata+0x5e6>
c01059fe:	0c 04                	or     al,0x4
c0105a00:	04 00                	add    al,0x0
c0105a02:	00 00                	add    BYTE PTR [eax],al
c0105a04:	1c 00                	sbb    al,0x0
c0105a06:	00 00                	add    BYTE PTR [eax],al
c0105a08:	28 06                	sub    BYTE PTR [esi],al
c0105a0a:	00 00                	add    BYTE PTR [eax],al
c0105a0c:	3c 10                	cmp    al,0x10
c0105a0e:	10 c0                	adc    al,al
c0105a10:	10 00                	adc    BYTE PTR [eax],al
c0105a12:	00 00                	add    BYTE PTR [eax],al
c0105a14:	41                   	inc    ecx
c0105a15:	0e                   	push   cs
c0105a16:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105a1c:	4c                   	dec    esp
c0105a1d:	0c 04                	or     al,0x4
c0105a1f:	04 c5                	add    al,0xc5
c0105a21:	00 00                	add    BYTE PTR [eax],al
c0105a23:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105a26:	00 00                	add    BYTE PTR [eax],al
c0105a28:	48                   	dec    eax
c0105a29:	06                   	push   es
c0105a2a:	00 00                	add    BYTE PTR [eax],al
c0105a2c:	4c                   	dec    esp
c0105a2d:	10 10                	adc    BYTE PTR [eax],dl
c0105a2f:	c0 14 00 00          	rcl    BYTE PTR [eax+eax*1],0x0
c0105a33:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105a36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105a3c:	50                   	push   eax
c0105a3d:	0c 04                	or     al,0x4
c0105a3f:	04 c5                	add    al,0xc5
c0105a41:	00 00                	add    BYTE PTR [eax],al
c0105a43:	00 ec                	add    ah,ch
c0105a45:	00 00                	add    BYTE PTR [eax],al
c0105a47:	00 68 06             	add    BYTE PTR [eax+0x6],ch
c0105a4a:	00 00                	add    BYTE PTR [eax],al
c0105a4c:	60                   	pusha  
c0105a4d:	10 10                	adc    BYTE PTR [eax],dl
c0105a4f:	c0 45 01 00          	rol    BYTE PTR [ebp+0x1],0x0
c0105a53:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105a56:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105a5c:	48                   	dec    eax
c0105a5d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0105a61:	57                   	push   edi
c0105a62:	2e 0c 42             	cs or  al,0x42
c0105a65:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105a69:	04 04                	add    al,0x4
c0105a6b:	07                   	pop    es
c0105a6c:	00 00                	add    BYTE PTR [eax],al
c0105a6e:	00 2e                	add    BYTE PTR [esi],ch
c0105a70:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c0105a74:	42                   	inc    edx
c0105a75:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105a79:	14 45                	adc    al,0x45
c0105a7b:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c0105a7f:	1c 45                	sbb    al,0x45
c0105a81:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105a85:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105a88:	0c 45                	or     al,0x45
c0105a8a:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105a8e:	14 42                	adc    al,0x42
c0105a90:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105a94:	1c 45                	sbb    al,0x45
c0105a96:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105a9a:	08 4a 2e             	or     BYTE PTR [edx+0x2e],cl
c0105a9d:	0c 43                	or     al,0x43
c0105a9f:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0105aa3:	14 45                	adc    al,0x45
c0105aa5:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c0105aa9:	1c 41                	sbb    al,0x41
c0105aab:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105aaf:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c0105ab2:	0c 42                	or     al,0x42
c0105ab4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105ab8:	0c 41                	or     al,0x41
c0105aba:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105abe:	0c 45                	or     al,0x45
c0105ac0:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105ac4:	14 42                	adc    al,0x42
c0105ac6:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105aca:	1c 45                	sbb    al,0x45
c0105acc:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105ad0:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0105ad3:	04 04                	add    al,0x4
c0105ad5:	01 00                	add    DWORD PTR [eax],eax
c0105ad7:	00 00                	add    BYTE PTR [eax],al
c0105ad9:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105add:	0c 42                	or     al,0x42
c0105adf:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105ae3:	0c 41                	or     al,0x41
c0105ae5:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105ae9:	0c 45                	or     al,0x45
c0105aeb:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c0105aef:	14 42                	adc    al,0x42
c0105af1:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105af5:	1c 45                	sbb    al,0x45
c0105af7:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105afb:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c0105afe:	04 04                	add    al,0x4
c0105b00:	01 00                	add    DWORD PTR [eax],eax
c0105b02:	00 00                	add    BYTE PTR [eax],al
c0105b04:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105b08:	0c 41                	or     al,0x41
c0105b0a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105b0e:	0c 41                	or     al,0x41
c0105b10:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105b14:	0c 42                	or     al,0x42
c0105b16:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105b1a:	0c 41                	or     al,0x41
c0105b1c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105b20:	0c 45                	or     al,0x45
c0105b22:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c0105b26:	14 42                	adc    al,0x42
c0105b28:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105b2c:	1c 45                	sbb    al,0x45
c0105b2e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105b32:	00 00                	add    BYTE PTR [eax],al
c0105b34:	1c 00                	sbb    al,0x0
c0105b36:	00 00                	add    BYTE PTR [eax],al
c0105b38:	58                   	pop    eax
c0105b39:	07                   	pop    es
c0105b3a:	00 00                	add    BYTE PTR [eax],al
c0105b3c:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
c0105b3d:	11 10                	adc    DWORD PTR [eax],edx
c0105b3f:	c0 17 00             	rcl    BYTE PTR [edi],0x0
c0105b42:	00 00                	add    BYTE PTR [eax],al
c0105b44:	41                   	inc    ecx
c0105b45:	0e                   	push   cs
c0105b46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b4c:	53                   	push   ebx
c0105b4d:	0c 04                	or     al,0x4
c0105b4f:	04 c5                	add    al,0xc5
c0105b51:	00 00                	add    BYTE PTR [eax],al
c0105b53:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0105b56:	00 00                	add    BYTE PTR [eax],al
c0105b58:	78 07                	js     c0105b61 <_edata+0x784>
c0105b5a:	00 00                	add    BYTE PTR [eax],al
c0105b5c:	bc 11 10 c0 15       	mov    esp,0x15c01011
c0105b61:	00 00                	add    BYTE PTR [eax],al
c0105b63:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105b66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b6c:	47                   	inc    edi
c0105b6d:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c0105b70:	04 c5                	add    al,0xc5
c0105b72:	45                   	inc    ebp
c0105b73:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c0105b76:	04 04                	add    al,0x4
c0105b78:	c5 00                	lds    eax,FWORD PTR [eax]
c0105b7a:	00 00                	add    BYTE PTR [eax],al
c0105b7c:	34 00                	xor    al,0x0
c0105b7e:	00 00                	add    BYTE PTR [eax],al
c0105b80:	a0 07 00 00 d4       	mov    al,ds:0xd4000007
c0105b85:	11 10                	adc    DWORD PTR [eax],edx
c0105b87:	c0 43 00 00          	rol    BYTE PTR [ebx+0x0],0x0
c0105b8b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105b8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b94:	41                   	inc    ecx
c0105b95:	87 03                	xchg   DWORD PTR [ebx],eax
c0105b97:	47                   	inc    edi
c0105b98:	83 05 86 04 04 17 00 	add    DWORD PTR ds:0x17040486,0x0
c0105b9f:	00 00                	add    BYTE PTR [eax],al
c0105ba1:	2e 0c 4e             	cs or  al,0x4e
c0105ba4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105ba8:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0105bab:	41                   	inc    ecx
c0105bac:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105bb0:	0c 04                	or     al,0x4
c0105bb2:	04 c5                	add    al,0xc5
c0105bb4:	e8 00 00 00 d8       	call   98105bb9 <AR_CODE32+0x980f9b21>
c0105bb9:	07                   	pop    es
c0105bba:	00 00                	add    BYTE PTR [eax],al
c0105bbc:	17                   	pop    ss
c0105bbd:	12 10                	adc    dl,BYTE PTR [eax]
c0105bbf:	c0 18 02             	rcr    BYTE PTR [eax],0x2
c0105bc2:	00 00                	add    BYTE PTR [eax],al
c0105bc4:	41                   	inc    ecx
c0105bc5:	0e                   	push   cs
c0105bc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105bcc:	46                   	inc    esi
c0105bcd:	2e 0c 83             	cs or  al,0x83
c0105bd0:	05 86 04 87 03       	add    eax,0x3870486
c0105bd5:	45                   	inc    ebp
c0105bd6:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c0105bda:	00 02                	add    BYTE PTR [edx],al
c0105bdc:	49                   	dec    ecx
c0105bdd:	2e 0c 41             	cs or  al,0x41
c0105be0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105be4:	00 50 2e             	add    BYTE PTR [eax+0x2e],dl
c0105be7:	0c 45                	or     al,0x45
c0105be9:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105bed:	00 57 2e             	add    BYTE PTR [edi+0x2e],dl
c0105bf0:	0c 47                	or     al,0x47
c0105bf2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105bf6:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105bf9:	04 04                	add    al,0x4
c0105bfb:	01 00                	add    DWORD PTR [eax],eax
c0105bfd:	00 00                	add    BYTE PTR [eax],al
c0105bff:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105c03:	0c 41                	or     al,0x41
c0105c05:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c09:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105c0c:	0c 47                	or     al,0x47
c0105c0e:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c0105c12:	00 7f 2e             	add    BYTE PTR [edi+0x2e],bh
c0105c15:	04 04                	add    al,0x4
c0105c17:	01 00                	add    DWORD PTR [eax],eax
c0105c19:	00 00                	add    BYTE PTR [eax],al
c0105c1b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105c1f:	0c 46                	or     al,0x46
c0105c21:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c25:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105c28:	04 04                	add    al,0x4
c0105c2a:	05 00 00 00 2e       	add    eax,0x2e000000
c0105c2f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105c32:	0c 45                	or     al,0x45
c0105c34:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c38:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105c3b:	04 04                	add    al,0x4
c0105c3d:	01 00                	add    DWORD PTR [eax],eax
c0105c3f:	00 00                	add    BYTE PTR [eax],al
c0105c41:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105c45:	0c 46                	or     al,0x46
c0105c47:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c4b:	00 4e 2e             	add    BYTE PTR [esi+0x2e],cl
c0105c4e:	0c 46                	or     al,0x46
c0105c50:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c54:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0105c57:	0c 43                	or     al,0x43
c0105c59:	2e 10 53 2e          	adc    BYTE PTR cs:[ebx+0x2e],dl
c0105c5d:	0c 42                	or     al,0x42
c0105c5f:	2e 00 43 2e          	add    BYTE PTR cs:[ebx+0x2e],al
c0105c63:	0c 45                	or     al,0x45
c0105c65:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c0105c69:	0c 41                	or     al,0x41
c0105c6b:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c0105c6f:	0c 41                	or     al,0x41
c0105c71:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105c75:	00 4c 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],cl
c0105c79:	41                   	inc    ecx
c0105c7a:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0105c7e:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105c81:	04 04                	add    al,0x4
c0105c83:	06                   	push   es
c0105c84:	00 00                	add    BYTE PTR [eax],al
c0105c86:	00 2e                	add    BYTE PTR [esi],ch
c0105c88:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105c8b:	0c 41                	or     al,0x41
c0105c8d:	2e 10 69 2e          	adc    BYTE PTR cs:[ecx+0x2e],ch
c0105c91:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c0105c94:	41                   	inc    ecx
c0105c95:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105c99:	0c 04                	or     al,0x4
c0105c9b:	04 c5                	add    al,0xc5
c0105c9d:	00 00                	add    BYTE PTR [eax],al
c0105c9f:	00 a8 00 00 00 c4    	add    BYTE PTR [eax-0x3c000000],ch
c0105ca5:	08 00                	or     BYTE PTR [eax],al
c0105ca7:	00 2f                	add    BYTE PTR [edi],ch
c0105ca9:	14 10                	adc    al,0x10
c0105cab:	c0 13 01             	rcl    BYTE PTR [ebx],0x1
c0105cae:	00 00                	add    BYTE PTR [eax],al
c0105cb0:	41                   	inc    ecx
c0105cb1:	0e                   	push   cs
c0105cb2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105cb8:	46                   	inc    esi
c0105cb9:	2e 0c 83             	cs or  al,0x83
c0105cbc:	05 86 04 87 03       	add    eax,0x3870486
c0105cc1:	48                   	dec    eax
c0105cc2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105cc6:	00 70 2e             	add    BYTE PTR [eax+0x2e],dh
c0105cc9:	0c 43                	or     al,0x43
c0105ccb:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c0105ccf:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0105cd2:	04 04                	add    al,0x4
c0105cd4:	03 00                	add    eax,DWORD PTR [eax]
c0105cd6:	00 00                	add    BYTE PTR [eax],al
c0105cd8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105cdc:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105cdf:	04 04                	add    al,0x4
c0105ce1:	04 00                	add    al,0x0
c0105ce3:	00 00                	add    BYTE PTR [eax],al
c0105ce5:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105ce9:	0c 41                	or     al,0x41
c0105ceb:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105cef:	00 53 2e             	add    BYTE PTR [ebx+0x2e],dl
c0105cf2:	04 04                	add    al,0x4
c0105cf4:	01 00                	add    DWORD PTR [eax],eax
c0105cf6:	00 00                	add    BYTE PTR [eax],al
c0105cf8:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105cfc:	0c 41                	or     al,0x41
c0105cfe:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d02:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105d05:	04 04                	add    al,0x4
c0105d07:	05 00 00 00 2e       	add    eax,0x2e000000
c0105d0c:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105d0f:	0c 45                	or     al,0x45
c0105d11:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d15:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0105d18:	0c 42                	or     al,0x42
c0105d1a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d1e:	00 5c 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],bl
c0105d22:	04 02                	add    al,0x2
c0105d24:	00 00                	add    BYTE PTR [eax],al
c0105d26:	00 2e                	add    BYTE PTR [esi],ch
c0105d28:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c0105d2b:	0c 43                	or     al,0x43
c0105d2d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d31:	00 47 0a             	add    BYTE PTR [edi+0xa],al
c0105d34:	c3                   	ret    
c0105d35:	41                   	inc    ecx
c0105d36:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105d3a:	0c 04                	or     al,0x4
c0105d3c:	04 c5                	add    al,0xc5
c0105d3e:	45                   	inc    ebp
c0105d3f:	0b 44 c3 41          	or     eax,DWORD PTR [ebx+eax*8+0x41]
c0105d43:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105d47:	0c 04                	or     al,0x4
c0105d49:	04 c5                	add    al,0xc5
c0105d4b:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c0105d4f:	00 70 09             	add    BYTE PTR [eax+0x9],dh
c0105d52:	00 00                	add    BYTE PTR [eax],al
c0105d54:	44                   	inc    esp
c0105d55:	15 10 c0 7f 00       	adc    eax,0x7fc010
c0105d5a:	00 00                	add    BYTE PTR [eax],al
c0105d5c:	41                   	inc    ecx
c0105d5d:	0e                   	push   cs
c0105d5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105d64:	46                   	inc    esi
c0105d65:	2e 0c 83             	cs or  al,0x83
c0105d68:	05 86 04 87 03       	add    eax,0x3870486
c0105d6d:	4a                   	dec    edx
c0105d6e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d72:	00 65 2e             	add    BYTE PTR [ebp+0x2e],ah
c0105d75:	04 04                	add    al,0x4
c0105d77:	05 00 00 00 2e       	add    eax,0x2e000000
c0105d7c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105d7f:	0c 45                	or     al,0x45
c0105d81:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d85:	00 4c 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],cl
c0105d89:	04 05                	add    al,0x5
c0105d8b:	00 00                	add    BYTE PTR [eax],al
c0105d8d:	00 2e                	add    BYTE PTR [esi],ch
c0105d8f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105d92:	0c 45                	or     al,0x45
c0105d94:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d98:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0105d9b:	41                   	inc    ecx
c0105d9c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105da0:	0c 04                	or     al,0x4
c0105da2:	04 c5                	add    al,0xc5
c0105da4:	24 00                	and    al,0x0
c0105da6:	00 00                	add    BYTE PTR [eax],al
c0105da8:	c8 09 00 00          	enter  0x9,0x0
c0105dac:	c3                   	ret    
c0105dad:	15 10 c0 21 00       	adc    eax,0x21c010
c0105db2:	00 00                	add    BYTE PTR [eax],al
c0105db4:	41                   	inc    ecx
c0105db5:	0e                   	push   cs
c0105db6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105dbc:	47                   	inc    edi
c0105dbd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0105dc1:	52                   	push   edx
c0105dc2:	c3                   	ret    
c0105dc3:	41                   	inc    ecx
c0105dc4:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105dc8:	04 c5                	add    al,0xc5
c0105dca:	00 00                	add    BYTE PTR [eax],al
c0105dcc:	1c 00                	sbb    al,0x0
c0105dce:	00 00                	add    BYTE PTR [eax],al
c0105dd0:	f0 09 00             	lock or DWORD PTR [eax],eax
c0105dd3:	00 e4                	add    ah,ah
c0105dd5:	15 10 c0 12 00       	adc    eax,0x12c010
c0105dda:	00 00                	add    BYTE PTR [eax],al
c0105ddc:	41                   	inc    ecx
c0105ddd:	0e                   	push   cs
c0105dde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105de4:	44                   	inc    esp
c0105de5:	0c 04                	or     al,0x4
c0105de7:	04 c5                	add    al,0xc5
c0105de9:	00 00                	add    BYTE PTR [eax],al
c0105deb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105dee:	00 00                	add    BYTE PTR [eax],al
c0105df0:	10 0a                	adc    BYTE PTR [edx],cl
c0105df2:	00 00                	add    BYTE PTR [eax],al
c0105df4:	f6 15 10 c0 22 00    	not    BYTE PTR ds:0x22c010
c0105dfa:	00 00                	add    BYTE PTR [eax],al
c0105dfc:	41                   	inc    ecx
c0105dfd:	0e                   	push   cs
c0105dfe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105e04:	44                   	inc    esp
c0105e05:	0c 04                	or     al,0x4
c0105e07:	04 c5                	add    al,0xc5
c0105e09:	00 00                	add    BYTE PTR [eax],al
c0105e0b:	00 28                	add    BYTE PTR [eax],ch
c0105e0d:	00 00                	add    BYTE PTR [eax],al
c0105e0f:	00 30                	add    BYTE PTR [eax],dh
c0105e11:	0a 00                	or     al,BYTE PTR [eax]
c0105e13:	00 18                	add    BYTE PTR [eax],bl
c0105e15:	16                   	push   ss
c0105e16:	10 c0                	adc    al,al
c0105e18:	22 00                	and    al,BYTE PTR [eax]
c0105e1a:	00 00                	add    BYTE PTR [eax],al
c0105e1c:	41                   	inc    ecx
c0105e1d:	0e                   	push   cs
c0105e1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105e24:	41                   	inc    ecx
c0105e25:	83 03 44             	add    DWORD PTR [ebx],0x44
c0105e28:	2e 04 04             	cs add al,0x4
c0105e2b:	0c 00                	or     al,0x0
c0105e2d:	00 00                	add    BYTE PTR [eax],al
c0105e2f:	2e 00 4d c5          	add    BYTE PTR cs:[ebp-0x3b],cl
c0105e33:	0c 04                	or     al,0x4
c0105e35:	04 c3                	add    al,0xc3
c0105e37:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c0105e3b:	00 5c 0a 00          	add    BYTE PTR [edx+ecx*1+0x0],bl
c0105e3f:	00 3a                	add    BYTE PTR [edx],bh
c0105e41:	16                   	push   ss
c0105e42:	10 c0                	adc    al,al
c0105e44:	a0 00 00 00 41       	mov    al,ds:0x41000000
c0105e49:	0e                   	push   cs
c0105e4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105e50:	46                   	inc    esi
c0105e51:	2e 0c 83             	cs or  al,0x83
c0105e54:	05 86 04 87 03       	add    eax,0x3870486
c0105e59:	47                   	inc    edi
c0105e5a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105e5e:	00 02                	add    BYTE PTR [edx],al
c0105e60:	59                   	pop    ecx
c0105e61:	2e 0c 41             	cs or  al,0x41
c0105e64:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105e68:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c0105e6b:	0c 41                	or     al,0x41
c0105e6d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e71:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c0105e74:	41                   	inc    ecx
c0105e75:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105e79:	0c 04                	or     al,0x4
c0105e7b:	04 c5                	add    al,0xc5
c0105e7d:	00 00                	add    BYTE PTR [eax],al
c0105e7f:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c0105e83:	00 a4 0a 00 00 da 16 	add    BYTE PTR [edx+ecx*1+0x16da0000],ah
c0105e8a:	10 c0                	adc    al,al
c0105e8c:	72 00                	jb     c0105e8e <_edata+0xab1>
c0105e8e:	00 00                	add    BYTE PTR [eax],al
c0105e90:	41                   	inc    ecx
c0105e91:	0e                   	push   cs
c0105e92:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105e98:	46                   	inc    esi
c0105e99:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c0105ea0:	2e 04 04             	cs add al,0x4
c0105ea3:	13 00                	adc    eax,DWORD PTR [eax]
c0105ea5:	00 00                	add    BYTE PTR [eax],al
c0105ea7:	2e 00 51 2e          	add    BYTE PTR cs:[ecx+0x2e],dl
c0105eab:	04 04                	add    al,0x4
c0105ead:	04 00                	add    al,0x0
c0105eaf:	00 00                	add    BYTE PTR [eax],al
c0105eb1:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105eb5:	0c 45                	or     al,0x45
c0105eb7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105ebb:	04 04                	add    al,0x4
c0105ebd:	11 00                	adc    DWORD PTR [eax],eax
c0105ebf:	00 00                	add    BYTE PTR [eax],al
c0105ec1:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105ec5:	0c 41                	or     al,0x41
c0105ec7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105ecb:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c0105ece:	41                   	inc    ecx
c0105ecf:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105ed3:	0c 04                	or     al,0x4
c0105ed5:	04 c5                	add    al,0xc5
c0105ed7:	00 60 00             	add    BYTE PTR [eax+0x0],ah
c0105eda:	00 00                	add    BYTE PTR [eax],al
c0105edc:	fc                   	cld    
c0105edd:	0a 00                	or     al,BYTE PTR [eax]
c0105edf:	00 4c 17 10          	add    BYTE PTR [edi+edx*1+0x10],cl
c0105ee3:	c0                   	(bad)  
c0105ee4:	72 00                	jb     c0105ee6 <_edata+0xb09>
c0105ee6:	00 00                	add    BYTE PTR [eax],al
c0105ee8:	41                   	inc    ecx
c0105ee9:	0e                   	push   cs
c0105eea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105ef0:	46                   	inc    esi
c0105ef1:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c0105ef8:	2e 04 04             	cs add al,0x4
c0105efb:	01 00                	add    DWORD PTR [eax],eax
c0105efd:	00 00                	add    BYTE PTR [eax],al
c0105eff:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105f03:	0c 45                	or     al,0x45
c0105f05:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105f09:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0105f0c:	04 04                	add    al,0x4
c0105f0e:	01 00                	add    DWORD PTR [eax],eax
c0105f10:	00 00                	add    BYTE PTR [eax],al
c0105f12:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105f16:	0c 43                	or     al,0x43
c0105f18:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105f1c:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0105f1f:	04 04                	add    al,0x4
c0105f21:	02 00                	add    al,BYTE PTR [eax]
c0105f23:	00 00                	add    BYTE PTR [eax],al
c0105f25:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105f29:	0c 41                	or     al,0x41
c0105f2b:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105f2f:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c0105f32:	41                   	inc    ecx
c0105f33:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105f37:	0c 04                	or     al,0x4
c0105f39:	04 c5                	add    al,0xc5
c0105f3b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105f3e:	00 00                	add    BYTE PTR [eax],al
c0105f40:	60                   	pusha  
c0105f41:	0b 00                	or     eax,DWORD PTR [eax]
c0105f43:	00 be 17 10 c0 34    	add    BYTE PTR [esi+0x34c01017],bh
c0105f49:	00 00                	add    BYTE PTR [eax],al
c0105f4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105f4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105f54:	44                   	inc    esp
c0105f55:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c0105f5c:	42                   	inc    edx
c0105f5d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105f61:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0105f64:	04 04                	add    al,0x4
c0105f66:	01 00                	add    DWORD PTR [eax],eax
c0105f68:	00 00                	add    BYTE PTR [eax],al
c0105f6a:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105f6e:	0c 41                	or     al,0x41
c0105f70:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105f74:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0105f78:	04 04                	add    al,0x4
c0105f7a:	c3                   	ret    
c0105f7b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105f7e:	00 00                	add    BYTE PTR [eax],al
c0105f80:	a0 0b 00 00 f2       	mov    al,ds:0xf200000b
c0105f85:	17                   	pop    ss
c0105f86:	10 c0                	adc    al,al
c0105f88:	34 00                	xor    al,0x0
c0105f8a:	00 00                	add    BYTE PTR [eax],al
c0105f8c:	41                   	inc    ecx
c0105f8d:	0e                   	push   cs
c0105f8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105f94:	44                   	inc    esp
c0105f95:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c0105f9c:	42                   	inc    edx
c0105f9d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105fa1:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0105fa4:	04 04                	add    al,0x4
c0105fa6:	01 00                	add    DWORD PTR [eax],eax
c0105fa8:	00 00                	add    BYTE PTR [eax],al
c0105faa:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105fae:	0c 41                	or     al,0x41
c0105fb0:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105fb4:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0105fb8:	04 04                	add    al,0x4
c0105fba:	c3                   	ret    
c0105fbb:	00 98 00 00 00 e0    	add    BYTE PTR [eax-0x20000000],bl
c0105fc1:	0b 00                	or     eax,DWORD PTR [eax]
c0105fc3:	00 26                	add    BYTE PTR [esi],ah
c0105fc5:	18 10                	sbb    BYTE PTR [eax],dl
c0105fc7:	c0 ab 00 00 00 41 0e 	shr    BYTE PTR [ebx+0x41000000],0xe
c0105fce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105fd4:	41                   	inc    ecx
c0105fd5:	87 03                	xchg   DWORD PTR [ebx],eax
c0105fd7:	4a                   	dec    edx
c0105fd8:	83 05 86 04 04 22 00 	add    DWORD PTR ds:0x22040486,0x0
c0105fdf:	00 00                	add    BYTE PTR [eax],al
c0105fe1:	2e 04 04             	cs add al,0x4
c0105fe4:	04 00                	add    al,0x0
c0105fe6:	00 00                	add    BYTE PTR [eax],al
c0105fe8:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105fec:	0c 41                	or     al,0x41
c0105fee:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105ff2:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0105ff5:	04 04                	add    al,0x4
c0105ff7:	01 00                	add    DWORD PTR [eax],eax
c0105ff9:	00 00                	add    BYTE PTR [eax],al
c0105ffb:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105fff:	0c 45                	or     al,0x45
c0106001:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0106005:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0106008:	04 04                	add    al,0x4
c010600a:	05 00 00 00 2e       	add    eax,0x2e000000
c010600f:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106012:	0c 45                	or     al,0x45
c0106014:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0106018:	0c 41                	or     al,0x41
c010601a:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010601e:	0c 41                	or     al,0x41
c0106020:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106024:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0106027:	04 04                	add    al,0x4
c0106029:	05 00 00 00 2e       	add    eax,0x2e000000
c010602e:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106031:	0c 45                	or     al,0x45
c0106033:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106037:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010603a:	04 04                	add    al,0x4
c010603c:	01 00                	add    DWORD PTR [eax],eax
c010603e:	00 00                	add    BYTE PTR [eax],al
c0106040:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106044:	0c 41                	or     al,0x41
c0106046:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c010604a:	41                   	inc    ecx
c010604b:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010604f:	0c 04                	or     al,0x4
c0106051:	04 c5                	add    al,0xc5
c0106053:	41                   	inc    ecx
c0106054:	13 03                	adc    eax,DWORD PTR [ebx]
c0106056:	2e 00 4c 00 00       	add    BYTE PTR cs:[eax+eax*1+0x0],cl
c010605b:	00 7c 0c 00          	add    BYTE PTR [esp+ecx*1+0x0],bh
c010605f:	00 d1                	add    cl,dl
c0106061:	18 10                	sbb    BYTE PTR [eax],dl
c0106063:	c0                   	(bad)  
c0106064:	72 01                	jb     c0106067 <_edata+0xc8a>
c0106066:	00 00                	add    BYTE PTR [eax],al
c0106068:	41                   	inc    ecx
c0106069:	0e                   	push   cs
c010606a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106070:	46                   	inc    esi
c0106071:	2e 0c 83             	cs or  al,0x83
c0106074:	05 86 04 87 03       	add    eax,0x3870486
c0106079:	47                   	inc    edi
c010607a:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c010607e:	00 02                	add    BYTE PTR [edx],al
c0106080:	b6 2e                	mov    dh,0x2e
c0106082:	0c 41                	or     al,0x41
c0106084:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106088:	00 02                	add    BYTE PTR [edx],al
c010608a:	60                   	pusha  
c010608b:	2e 04 04             	cs add al,0x4
c010608e:	05 00 00 00 2e       	add    eax,0x2e000000
c0106093:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106096:	0c 45                	or     al,0x45
c0106098:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c010609c:	00 49 c3             	add    BYTE PTR [ecx-0x3d],cl
c010609f:	41                   	inc    ecx
c01060a0:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01060a4:	0c 04                	or     al,0x4
c01060a6:	04 c5                	add    al,0xc5
c01060a8:	a0 00 00 00 cc       	mov    al,ds:0xcc000000
c01060ad:	0c 00                	or     al,0x0
c01060af:	00 43 1a             	add    BYTE PTR [ebx+0x1a],al
c01060b2:	10 c0                	adc    al,al
c01060b4:	61                   	popa   
c01060b5:	01 00                	add    DWORD PTR [eax],eax
c01060b7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01060ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01060c0:	46                   	inc    esi
c01060c1:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c01060c8:	73 2e                	jae    c01060f8 <_edata+0xd1b>
c01060ca:	04 04                	add    al,0x4
c01060cc:	05 00 00 00 2e       	add    eax,0x2e000000
c01060d1:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01060d4:	0c 45                	or     al,0x45
c01060d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01060da:	00 71 2e             	add    BYTE PTR [ecx+0x2e],dh
c01060dd:	04 04                	add    al,0x4
c01060df:	05 00 00 00 2e       	add    eax,0x2e000000
c01060e4:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c01060e8:	45                   	inc    ebp
c01060e9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01060ed:	04 04                	add    al,0x4
c01060ef:	05 00 00 00 2e       	add    eax,0x2e000000
c01060f4:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01060f7:	0c 47                	or     al,0x47
c01060f9:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c01060fd:	04 04                	add    al,0x4
c01060ff:	0b 00                	or     eax,DWORD PTR [eax]
c0106101:	00 00                	add    BYTE PTR [eax],al
c0106103:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0106108:	45                   	inc    ebp
c0106109:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010610d:	04 04                	add    al,0x4
c010610f:	01 00                	add    DWORD PTR [eax],eax
c0106111:	00 00                	add    BYTE PTR [eax],al
c0106113:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106117:	0c 45                	or     al,0x45
c0106119:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010611d:	04 04                	add    al,0x4
c010611f:	01 00                	add    DWORD PTR [eax],eax
c0106121:	00 00                	add    BYTE PTR [eax],al
c0106123:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106127:	0c 45                	or     al,0x45
c0106129:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010612d:	04 04                	add    al,0x4
c010612f:	05 00 00 00 2e       	add    eax,0x2e000000
c0106134:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106137:	0c 45                	or     al,0x45
c0106139:	2e 10 5a 2e          	adc    BYTE PTR cs:[edx+0x2e],bl
c010613d:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c0106141:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106145:	0c 04                	or     al,0x4
c0106147:	04 c5                	add    al,0xc5
c0106149:	00 00                	add    BYTE PTR [eax],al
c010614b:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c010614e:	00 00                	add    BYTE PTR [eax],al
c0106150:	70 0d                	jo     c010615f <_edata+0xd82>
c0106152:	00 00                	add    BYTE PTR [eax],al
c0106154:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0106155:	1b 10                	sbb    edx,DWORD PTR [eax]
c0106157:	c0 15 00 00 00 41 0e 	rcl    BYTE PTR ds:0x41000000,0xe
c010615e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106164:	43                   	inc    ebx
c0106165:	2e 04 04             	cs add al,0x4
c0106168:	06                   	push   es
c0106169:	00 00                	add    BYTE PTR [eax],al
c010616b:	00 2e                	add    BYTE PTR [esi],ch
c010616d:	00 48 c5             	add    BYTE PTR [eax-0x3b],cl
c0106170:	0c 04                	or     al,0x4
c0106172:	04 00                	add    al,0x0
c0106174:	2c 00                	sub    al,0x0
c0106176:	00 00                	add    BYTE PTR [eax],al
c0106178:	98                   	cwde   
c0106179:	0d 00 00 b9 1b       	or     eax,0x1bb90000
c010617e:	10 c0                	adc    al,al
c0106180:	2a 00                	sub    al,BYTE PTR [eax]
c0106182:	00 00                	add    BYTE PTR [eax],al
c0106184:	41                   	inc    ecx
c0106185:	0e                   	push   cs
c0106186:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c010618c:	54                   	push   esp
c010618d:	2e 04 04             	cs add al,0x4
c0106190:	02 00                	add    al,BYTE PTR [eax]
c0106192:	00 00                	add    BYTE PTR [eax],al
c0106194:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106198:	0c 41                	or     al,0x41
c010619a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010619e:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c01061a1:	0c 04                	or     al,0x4
c01061a3:	04 28                	add    al,0x28
c01061a5:	00 00                	add    BYTE PTR [eax],al
c01061a7:	00 c8                	add    al,cl
c01061a9:	0d 00 00 e3 1b       	or     eax,0x1be30000
c01061ae:	10 c0                	adc    al,al
c01061b0:	33 00                	xor    eax,DWORD PTR [eax]
c01061b2:	00 00                	add    BYTE PTR [eax],al
c01061b4:	41                   	inc    ecx
c01061b5:	0e                   	push   cs
c01061b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01061bc:	45                   	inc    ebp
c01061bd:	86 03                	xchg   BYTE PTR [ebx],al
c01061bf:	44                   	inc    esp
c01061c0:	83 04 04 20          	add    DWORD PTR [esp+eax*1],0x20
c01061c4:	00 00                	add    BYTE PTR [eax],al
c01061c6:	00 c3                	add    bl,al
c01061c8:	41                   	inc    ecx
c01061c9:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01061cd:	04 c5                	add    al,0xc5
c01061cf:	00 68 00             	add    BYTE PTR [eax+0x0],ch
c01061d2:	00 00                	add    BYTE PTR [eax],al
c01061d4:	f4                   	hlt    
c01061d5:	0d 00 00 16 1c       	or     eax,0x1c160000
c01061da:	10 c0                	adc    al,al
c01061dc:	00 01                	add    BYTE PTR [ecx],al
c01061de:	00 00                	add    BYTE PTR [eax],al
c01061e0:	41                   	inc    ecx
c01061e1:	0e                   	push   cs
c01061e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01061e8:	46                   	inc    esi
c01061e9:	83 05 86 04 87 03 5d 	add    DWORD PTR ds:0x3870486,0x5d
c01061f0:	2e 04 04             	cs add al,0x4
c01061f3:	05 00 00 00 2e       	add    eax,0x2e000000
c01061f8:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01061fb:	0c 45                	or     al,0x45
c01061fd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106201:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0106204:	0c 41                	or     al,0x41
c0106206:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010620a:	00 55 2e             	add    BYTE PTR [ebp+0x2e],dl
c010620d:	04 04                	add    al,0x4
c010620f:	05 00 00 00 2e       	add    eax,0x2e000000
c0106214:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106217:	0c 45                	or     al,0x45
c0106219:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010621d:	00 54 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],dl
c0106221:	42                   	inc    edx
c0106222:	2e 10 61 2e          	adc    BYTE PTR cs:[ecx+0x2e],ah
c0106226:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c0106229:	0c 42                	or     al,0x42
c010622b:	2e 10 61 2e          	adc    BYTE PTR cs:[ecx+0x2e],ah
c010622f:	00 5a c3             	add    BYTE PTR [edx-0x3d],bl
c0106232:	41                   	inc    ecx
c0106233:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106237:	0c 04                	or     al,0x4
c0106239:	04 c5                	add    al,0xc5
c010623b:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c010623f:	00 60 0e             	add    BYTE PTR [eax+0xe],ah
c0106242:	00 00                	add    BYTE PTR [eax],al
c0106244:	18 1d 10 c0 43 00    	sbb    BYTE PTR ds:0x43c010,bl
c010624a:	00 00                	add    BYTE PTR [eax],al
c010624c:	41                   	inc    ecx
c010624d:	0e                   	push   cs
c010624e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106254:	41                   	inc    ecx
c0106255:	86 03                	xchg   BYTE PTR [ebx],al
c0106257:	45                   	inc    ebp
c0106258:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c010625c:	00 00                	add    BYTE PTR [eax],al
c010625e:	00 2e                	add    BYTE PTR [esi],ch
c0106260:	0c 46                	or     al,0x46
c0106262:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0106266:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0106269:	04 04                	add    al,0x4
c010626b:	05 00 00 00 2e       	add    eax,0x2e000000
c0106270:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106273:	0c 45                	or     al,0x45
c0106275:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106279:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c010627d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106281:	04 c5                	add    al,0xc5
c0106283:	00 28                	add    BYTE PTR [eax],ch
c0106285:	00 00                	add    BYTE PTR [eax],al
c0106287:	00 a8 0e 00 00 5b    	add    BYTE PTR [eax+0x5b00000e],ch
c010628d:	1d 10 c0 26 00       	sbb    eax,0x26c010
c0106292:	00 00                	add    BYTE PTR [eax],al
c0106294:	41                   	inc    ecx
c0106295:	0e                   	push   cs
c0106296:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010629c:	43                   	inc    ebx
c010629d:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c01062a1:	0c 41                	or     al,0x41
c01062a3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01062a7:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c01062aa:	0c 04                	or     al,0x4
c01062ac:	04 00                	add    al,0x0
c01062ae:	00 00                	add    BYTE PTR [eax],al
c01062b0:	98                   	cwde   
c01062b1:	00 00                	add    BYTE PTR [eax],al
c01062b3:	00 d4                	add    ah,dl
c01062b5:	0e                   	push   cs
c01062b6:	00 00                	add    BYTE PTR [eax],al
c01062b8:	81 1d 10 c0 da 00 00 	sbb    DWORD PTR ds:0xdac010,0xe410000
c01062bf:	00 41 0e 
c01062c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01062c8:	46                   	inc    esi
c01062c9:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c01062d0:	2e 04 04             	cs add al,0x4
c01062d3:	04 00                	add    al,0x0
c01062d5:	00 00                	add    BYTE PTR [eax],al
c01062d7:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01062db:	0c 41                	or     al,0x41
c01062dd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01062e1:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01062e4:	04 04                	add    al,0x4
c01062e6:	05 00 00 00 2e       	add    eax,0x2e000000
c01062eb:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01062ee:	0c 45                	or     al,0x45
c01062f0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01062f4:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c01062f7:	04 04                	add    al,0x4
c01062f9:	04 00                	add    al,0x0
c01062fb:	00 00                	add    BYTE PTR [eax],al
c01062fd:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106301:	0c 41                	or     al,0x41
c0106303:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106307:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c010630a:	04 04                	add    al,0x4
c010630c:	05 00 00 00 2e       	add    eax,0x2e000000
c0106311:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106314:	0c 45                	or     al,0x45
c0106316:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010631a:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c010631d:	04 04                	add    al,0x4
c010631f:	04 00                	add    al,0x0
c0106321:	00 00                	add    BYTE PTR [eax],al
c0106323:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106327:	0c 41                	or     al,0x41
c0106329:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c010632e:	5a                   	pop    edx
c010632f:	2e 04 04             	cs add al,0x4
c0106332:	05 00 00 00 2e       	add    eax,0x2e000000
c0106337:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010633a:	0c 45                	or     al,0x45
c010633c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106340:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0106343:	41                   	inc    ecx
c0106344:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106348:	0c 04                	or     al,0x4
c010634a:	04 c5                	add    al,0xc5
c010634c:	64 00 00             	add    BYTE PTR fs:[eax],al
c010634f:	00 70 0f             	add    BYTE PTR [eax+0xf],dh
c0106352:	00 00                	add    BYTE PTR [eax],al
c0106354:	5b                   	pop    ebx
c0106355:	1e                   	push   ds
c0106356:	10 c0                	adc    al,al
c0106358:	8c 00                	mov    WORD PTR [eax],es
c010635a:	00 00                	add    BYTE PTR [eax],al
c010635c:	41                   	inc    ecx
c010635d:	0e                   	push   cs
c010635e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106364:	46                   	inc    esi
c0106365:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c010636c:	2e 04 04             	cs add al,0x4
c010636f:	05 00 00 00 2e       	add    eax,0x2e000000
c0106374:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106377:	0c 45                	or     al,0x45
c0106379:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010637d:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0106380:	0c 44                	or     al,0x44
c0106382:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106386:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0106389:	0c 41                	or     al,0x41
c010638b:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010638f:	0c 43                	or     al,0x43
c0106391:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106395:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c0106398:	04 04                	add    al,0x4
c010639a:	05 00 00 00 2e       	add    eax,0x2e000000
c010639f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01063a2:	0c 45                	or     al,0x45
c01063a4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01063a8:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c01063ab:	41                   	inc    ecx
c01063ac:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01063b0:	0c 04                	or     al,0x4
c01063b2:	04 c5                	add    al,0xc5
c01063b4:	40                   	inc    eax
c01063b5:	00 00                	add    BYTE PTR [eax],al
c01063b7:	00 d8                	add    al,bl
c01063b9:	0f 00 00             	sldt   WORD PTR [eax]
c01063bc:	e7 1e                	out    0x1e,eax
c01063be:	10 c0                	adc    al,al
c01063c0:	5b                   	pop    ebx
c01063c1:	00 00                	add    BYTE PTR [eax],al
c01063c3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01063c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01063cc:	42                   	inc    edx
c01063cd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01063d1:	51                   	push   ecx
c01063d2:	2e 0c 44             	cs or  al,0x44
c01063d5:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c01063d9:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c01063dc:	04 04                	add    al,0x4
c01063de:	05 00 00 00 2e       	add    eax,0x2e000000
c01063e3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01063e6:	0c 45                	or     al,0x45
c01063e8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01063ec:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c01063ef:	41                   	inc    ecx
c01063f0:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01063f4:	04 c5                	add    al,0xc5
c01063f6:	00 00                	add    BYTE PTR [eax],al
c01063f8:	54                   	push   esp
c01063f9:	00 00                	add    BYTE PTR [eax],al
c01063fb:	00 1c 10             	add    BYTE PTR [eax+edx*1],bl
c01063fe:	00 00                	add    BYTE PTR [eax],al
c0106400:	42                   	inc    edx
c0106401:	1f                   	pop    ds
c0106402:	10 c0                	adc    al,al
c0106404:	78 00                	js     c0106406 <_edata+0x1029>
c0106406:	00 00                	add    BYTE PTR [eax],al
c0106408:	41                   	inc    ecx
c0106409:	0e                   	push   cs
c010640a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106410:	42                   	inc    edx
c0106411:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0106415:	53                   	push   ebx
c0106416:	2e 04 04             	cs add al,0x4
c0106419:	05 00 00 00 2e       	add    eax,0x2e000000
c010641e:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106421:	0c 45                	or     al,0x45
c0106423:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106427:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c010642a:	c3                   	ret    
c010642b:	41                   	inc    ecx
c010642c:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106430:	04 c5                	add    al,0xc5
c0106432:	41                   	inc    ecx
c0106433:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c0106436:	04 04                	add    al,0x4
c0106438:	05 00 00 00 2e       	add    eax,0x2e000000
c010643d:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106440:	0c 45                	or     al,0x45
c0106442:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106446:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c0106449:	41                   	inc    ecx
c010644a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010644e:	04 c5                	add    al,0xc5
c0106450:	28 00                	sub    BYTE PTR [eax],al
c0106452:	00 00                	add    BYTE PTR [eax],al
c0106454:	74 10                	je     c0106466 <_edata+0x1089>
c0106456:	00 00                	add    BYTE PTR [eax],al
c0106458:	d1 1f                	rcr    DWORD PTR [edi],1
c010645a:	10 c0                	adc    al,al
c010645c:	1a 00                	sbb    al,BYTE PTR [eax]
c010645e:	00 00                	add    BYTE PTR [eax],al
c0106460:	41                   	inc    ecx
c0106461:	0e                   	push   cs
c0106462:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106468:	41                   	inc    ecx
c0106469:	86 03                	xchg   BYTE PTR [ebx],al
c010646b:	44                   	inc    esp
c010646c:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c0106470:	00 00                	add    BYTE PTR [eax],al
c0106472:	00 c3                	add    bl,al
c0106474:	41                   	inc    ecx
c0106475:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106479:	04 c5                	add    al,0xc5
c010647b:	00 40 00             	add    BYTE PTR [eax+0x0],al
c010647e:	00 00                	add    BYTE PTR [eax],al
c0106480:	a0 10 00 00 eb       	mov    al,ds:0xeb000010
c0106485:	1f                   	pop    ds
c0106486:	10 c0                	adc    al,al
c0106488:	94                   	xchg   esp,eax
c0106489:	00 00                	add    BYTE PTR [eax],al
c010648b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010648e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106494:	44                   	inc    esp
c0106495:	2e 04 83             	cs add al,0x83
c0106498:	03 4b 2e             	add    ecx,DWORD PTR [ebx+0x2e]
c010649b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010649e:	0c 41                	or     al,0x41
c01064a0:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c01064a4:	0c 41                	or     al,0x41
c01064a6:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01064aa:	0c 44                	or     al,0x44
c01064ac:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01064b0:	00 5b 2e             	add    BYTE PTR [ebx+0x2e],bl
c01064b3:	0c 45                	or     al,0x45
c01064b5:	2e 10 5f 2e          	adc    BYTE PTR cs:[edi+0x2e],bl
c01064b9:	00 66 c5             	add    BYTE PTR [esi-0x3b],ah
c01064bc:	0c 04                	or     al,0x4
c01064be:	04 c3                	add    al,0xc3
c01064c0:	1c 00                	sbb    al,0x0
c01064c2:	00 00                	add    BYTE PTR [eax],al
c01064c4:	e4 10                	in     al,0x10
c01064c6:	00 00                	add    BYTE PTR [eax],al
c01064c8:	7f 20                	jg     c01064ea <_edata+0x110d>
c01064ca:	10 c0                	adc    al,al
c01064cc:	0c 00                	or     al,0x0
c01064ce:	00 00                	add    BYTE PTR [eax],al
c01064d0:	41                   	inc    ecx
c01064d1:	0e                   	push   cs
c01064d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01064d8:	48                   	dec    eax
c01064d9:	0c 04                	or     al,0x4
c01064db:	04 c5                	add    al,0xc5
c01064dd:	00 00                	add    BYTE PTR [eax],al
c01064df:	00 40 00             	add    BYTE PTR [eax+0x0],al
c01064e2:	00 00                	add    BYTE PTR [eax],al
c01064e4:	04 11                	add    al,0x11
c01064e6:	00 00                	add    BYTE PTR [eax],al
c01064e8:	8b 20                	mov    esp,DWORD PTR [eax]
c01064ea:	10 c0                	adc    al,al
c01064ec:	6c                   	ins    BYTE PTR es:[edi],dx
c01064ed:	00 00                	add    BYTE PTR [eax],al
c01064ef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01064f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01064f8:	43                   	inc    ebx
c01064f9:	2e 0c 45             	cs or  al,0x45
c01064fc:	2e 10 6f 2e          	adc    BYTE PTR cs:[edi+0x2e],ch
c0106500:	04 04                	add    al,0x4
c0106502:	02 00                	add    al,BYTE PTR [eax]
c0106504:	00 00                	add    BYTE PTR [eax],al
c0106506:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010650a:	0c 41                	or     al,0x41
c010650c:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c0106510:	0c 41                	or     al,0x41
c0106512:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106516:	0c 45                	or     al,0x45
c0106518:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010651c:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c010651f:	0c 04                	or     al,0x4
c0106521:	04 00                	add    al,0x0
c0106523:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106526:	00 00                	add    BYTE PTR [eax],al
c0106528:	48                   	dec    eax
c0106529:	11 00                	adc    DWORD PTR [eax],eax
c010652b:	00 f7                	add    bh,dh
c010652d:	20 10                	and    BYTE PTR [eax],dl
c010652f:	c0 56 00 00          	rcl    BYTE PTR [esi+0x0],0x0
c0106533:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106536:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010653c:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c010653f:	04 04                	add    al,0x4
c0106541:	c5 00                	lds    eax,FWORD PTR [eax]
c0106543:	00 b8 00 00 00 68    	add    BYTE PTR [eax+0x68000000],bh
c0106549:	11 00                	adc    DWORD PTR [eax],eax
c010654b:	00 4d 21             	add    BYTE PTR [ebp+0x21],cl
c010654e:	10 c0                	adc    al,al
c0106550:	bf 00 00 00 41       	mov    edi,0x41000000
c0106555:	0e                   	push   cs
c0106556:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010655c:	41                   	inc    ecx
c010655d:	86 03                	xchg   BYTE PTR [ebx],al
c010655f:	47                   	inc    edi
c0106560:	2e 0c 42             	cs or  al,0x42
c0106563:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c010656a:	00 00                	add    BYTE PTR [eax],al
c010656c:	2e 04 04             	cs add al,0x4
c010656f:	01 00                	add    DWORD PTR [eax],eax
c0106571:	00 00                	add    BYTE PTR [eax],al
c0106573:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0106577:	0c 41                	or     al,0x41
c0106579:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c010657d:	04 04                	add    al,0x4
c010657f:	03 00                	add    eax,DWORD PTR [eax]
c0106581:	00 00                	add    BYTE PTR [eax],al
c0106583:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0106587:	0c 44                	or     al,0x44
c0106589:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c010658e:	41                   	inc    ecx
c010658f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106593:	0c 45                	or     al,0x45
c0106595:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106599:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c010659c:	04 04                	add    al,0x4
c010659e:	05 00 00 00 2e       	add    eax,0x2e000000
c01065a3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01065a6:	0c 45                	or     al,0x45
c01065a8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01065ac:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01065af:	04 04                	add    al,0x4
c01065b1:	01 00                	add    DWORD PTR [eax],eax
c01065b3:	00 00                	add    BYTE PTR [eax],al
c01065b5:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01065b9:	0c 45                	or     al,0x45
c01065bb:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c01065bf:	0c 41                	or     al,0x41
c01065c1:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01065c5:	0c 45                	or     al,0x45
c01065c7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01065cb:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01065ce:	04 04                	add    al,0x4
c01065d0:	05 00 00 00 2e       	add    eax,0x2e000000
c01065d5:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01065d8:	0c 45                	or     al,0x45
c01065da:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01065de:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01065e1:	04 04                	add    al,0x4
c01065e3:	01 00                	add    DWORD PTR [eax],eax
c01065e5:	00 00                	add    BYTE PTR [eax],al
c01065e7:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01065eb:	0c 45                	or     al,0x45
c01065ed:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c01065f1:	41                   	inc    ecx
c01065f2:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01065f6:	04 c5                	add    al,0xc5
c01065f8:	41                   	inc    ecx
c01065f9:	13 03                	adc    eax,DWORD PTR [ebx]
c01065fb:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01065fe:	00 00                	add    BYTE PTR [eax],al
c0106600:	b4 00                	mov    ah,0x0
c0106602:	00 00                	add    BYTE PTR [eax],al
c0106604:	24 12                	and    al,0x12
c0106606:	00 00                	add    BYTE PTR [eax],al
c0106608:	0c 22                	or     al,0x22
c010660a:	10 c0                	adc    al,al
c010660c:	1e                   	push   ds
c010660d:	01 00                	add    DWORD PTR [eax],eax
c010660f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106612:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106618:	42                   	inc    edx
c0106619:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010661d:	58                   	pop    eax
c010661e:	2e 04 04             	cs add al,0x4
c0106621:	05 00 00 00 2e       	add    eax,0x2e000000
c0106626:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106629:	0c 45                	or     al,0x45
c010662b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010662f:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0106632:	04 04                	add    al,0x4
c0106634:	01 00                	add    DWORD PTR [eax],eax
c0106636:	00 00                	add    BYTE PTR [eax],al
c0106638:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c010663d:	45                   	inc    ebp
c010663e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106642:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0106645:	04 04                	add    al,0x4
c0106647:	05 00 00 00 2e       	add    eax,0x2e000000
c010664c:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c010664f:	0c 45                	or     al,0x45
c0106651:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106655:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0106658:	04 04                	add    al,0x4
c010665a:	01 00                	add    DWORD PTR [eax],eax
c010665c:	00 00                	add    BYTE PTR [eax],al
c010665e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106662:	0c 45                	or     al,0x45
c0106664:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106668:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c010666b:	0c 45                	or     al,0x45
c010666d:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c0106671:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0106674:	04 04                	add    al,0x4
c0106676:	05 00 00 00 2e       	add    eax,0x2e000000
c010667b:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c010667e:	0c 45                	or     al,0x45
c0106680:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106684:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c0106687:	04 04                	add    al,0x4
c0106689:	05 00 00 00 2e       	add    eax,0x2e000000
c010668e:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106691:	0c 45                	or     al,0x45
c0106693:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106697:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c010669a:	0c 45                	or     al,0x45
c010669c:	2e 10 5d 2e          	adc    BYTE PTR cs:[ebp+0x2e],bl
c01066a0:	0c 41                	or     al,0x41
c01066a2:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01066a6:	0c 41                	or     al,0x41
c01066a8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01066ac:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c01066b0:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01066b4:	04 c5                	add    al,0xc5
c01066b6:	00 00                	add    BYTE PTR [eax],al
c01066b8:	38 00                	cmp    BYTE PTR [eax],al
c01066ba:	00 00                	add    BYTE PTR [eax],al
c01066bc:	dc 12                	fcom   QWORD PTR [edx]
c01066be:	00 00                	add    BYTE PTR [eax],al
c01066c0:	2a 23                	sub    ah,BYTE PTR [ebx]
c01066c2:	10 c0                	adc    al,al
c01066c4:	4b                   	dec    ebx
c01066c5:	00 00                	add    BYTE PTR [eax],al
c01066c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01066ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01066d0:	42                   	inc    edx
c01066d1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01066d5:	4d                   	dec    ebp
c01066d6:	2e 04 04             	cs add al,0x4
c01066d9:	05 00 00 00 2e       	add    eax,0x2e000000
c01066de:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01066e1:	0c 45                	or     al,0x45
c01066e3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01066e7:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c01066ea:	41                   	inc    ecx
c01066eb:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01066ef:	04 c5                	add    al,0xc5
c01066f1:	00 00                	add    BYTE PTR [eax],al
c01066f3:	00 88 00 00 00 18    	add    BYTE PTR [eax+0x18000000],cl
c01066f9:	13 00                	adc    eax,DWORD PTR [eax]
c01066fb:	00 75 23             	add    BYTE PTR [ebp+0x23],dh
c01066fe:	10 c0                	adc    al,al
c0106700:	a2 00 00 00 41       	mov    ds:0x41000000,al
c0106705:	0e                   	push   cs
c0106706:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010670c:	46                   	inc    esi
c010670d:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c0106714:	2e 04 04             	cs add al,0x4
c0106717:	01 00                	add    DWORD PTR [eax],eax
c0106719:	00 00                	add    BYTE PTR [eax],al
c010671b:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0106720:	45                   	inc    ebp
c0106721:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106725:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0106728:	04 04                	add    al,0x4
c010672a:	05 00 00 00 2e       	add    eax,0x2e000000
c010672f:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106732:	0c 45                	or     al,0x45
c0106734:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106738:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010673b:	04 04                	add    al,0x4
c010673d:	01 00                	add    DWORD PTR [eax],eax
c010673f:	00 00                	add    BYTE PTR [eax],al
c0106741:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106745:	0c 45                	or     al,0x45
c0106747:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010674b:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c010674e:	04 04                	add    al,0x4
c0106750:	05 00 00 00 2e       	add    eax,0x2e000000
c0106755:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106758:	0c 45                	or     al,0x45
c010675a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010675e:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0106761:	04 04                	add    al,0x4
c0106763:	01 00                	add    DWORD PTR [eax],eax
c0106765:	00 00                	add    BYTE PTR [eax],al
c0106767:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010676b:	0c 45                	or     al,0x45
c010676d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106771:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c0106774:	41                   	inc    ecx
c0106775:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106779:	0c 04                	or     al,0x4
c010677b:	04 c5                	add    al,0xc5
c010677d:	00 00                	add    BYTE PTR [eax],al
c010677f:	00 30                	add    BYTE PTR [eax],dh
c0106781:	00 00                	add    BYTE PTR [eax],al
c0106783:	00 a4 13 00 00 18 24 	add    BYTE PTR [ebx+edx*1+0x24180000],ah
c010678a:	10 c0                	adc    al,al
c010678c:	d8 00                	fadd   DWORD PTR [eax]
c010678e:	00 00                	add    BYTE PTR [eax],al
c0106790:	41                   	inc    ecx
c0106791:	0e                   	push   cs
c0106792:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106798:	43                   	inc    ebx
c0106799:	2e 04 04             	cs add al,0x4
c010679c:	02 00                	add    al,BYTE PTR [eax]
c010679e:	00 00                	add    BYTE PTR [eax],al
c01067a0:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01067a4:	0c 45                	or     al,0x45
c01067a6:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c01067a9:	c7                   	(bad)  
c01067aa:	2e 00 41 c5          	add    BYTE PTR cs:[ecx-0x3b],al
c01067ae:	0c 04                	or     al,0x4
c01067b0:	04 00                	add    al,0x0
c01067b2:	00 00                	add    BYTE PTR [eax],al
c01067b4:	1c 00                	sbb    al,0x0
c01067b6:	00 00                	add    BYTE PTR [eax],al
c01067b8:	d8 13                	fcom   DWORD PTR [ebx]
c01067ba:	00 00                	add    BYTE PTR [eax],al
c01067bc:	f0 24 10             	lock and al,0x10
c01067bf:	c0 12 00             	rcl    BYTE PTR [edx],0x0
c01067c2:	00 00                	add    BYTE PTR [eax],al
c01067c4:	41                   	inc    ecx
c01067c5:	0e                   	push   cs
c01067c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01067cc:	44                   	inc    esp
c01067cd:	0c 04                	or     al,0x4
c01067cf:	04 c5                	add    al,0xc5
c01067d1:	00 00                	add    BYTE PTR [eax],al
c01067d3:	00 38                	add    BYTE PTR [eax],bh
c01067d5:	00 00                	add    BYTE PTR [eax],al
c01067d7:	00 f8                	add    al,bh
c01067d9:	13 00                	adc    eax,DWORD PTR [eax]
c01067db:	00 04 25 10 c0 dd 00 	add    BYTE PTR [eiz*1+0xddc010],al
c01067e2:	00 00                	add    BYTE PTR [eax],al
c01067e4:	41                   	inc    ecx
c01067e5:	0e                   	push   cs
c01067e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01067ec:	42                   	inc    edx
c01067ed:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01067f1:	02 a5 2e 04 04 01    	add    ah,BYTE PTR [ebp+0x104042e]
c01067f7:	00 00                	add    BYTE PTR [eax],al
c01067f9:	00 2e                	add    BYTE PTR [esi],ch
c01067fb:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01067fe:	0c 42                	or     al,0x42
c0106800:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0106805:	44                   	inc    esp
c0106806:	c3                   	ret    
c0106807:	41                   	inc    ecx
c0106808:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010680c:	04 c5                	add    al,0xc5
c010680e:	00 00                	add    BYTE PTR [eax],al
c0106810:	3c 00                	cmp    al,0x0
c0106812:	00 00                	add    BYTE PTR [eax],al
c0106814:	34 14                	xor    al,0x14
c0106816:	00 00                	add    BYTE PTR [eax],al
c0106818:	e1 25                	loope  c010683f <_edata+0x1462>
c010681a:	10 c0                	adc    al,al
c010681c:	47                   	inc    edi
c010681d:	00 00                	add    BYTE PTR [eax],al
c010681f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106822:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106828:	41                   	inc    ecx
c0106829:	83 03 53             	add    DWORD PTR [ebx],0x53
c010682c:	2e 0c 41             	cs or  al,0x41
c010682f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106833:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0106836:	04 04                	add    al,0x4
c0106838:	05 00 00 00 2e       	add    eax,0x2e000000
c010683d:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106840:	0c 45                	or     al,0x45
c0106842:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106846:	00 47 c5             	add    BYTE PTR [edi-0x3b],al
c0106849:	0c 04                	or     al,0x4
c010684b:	04 c3                	add    al,0xc3
c010684d:	00 00                	add    BYTE PTR [eax],al
c010684f:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c0106853:	00 74 14 00          	add    BYTE PTR [esp+edx*1+0x0],dh
c0106857:	00 28                	add    BYTE PTR [eax],ch
c0106859:	26 10 c0             	es adc al,al
c010685c:	48                   	dec    eax
c010685d:	00 00                	add    BYTE PTR [eax],al
c010685f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106862:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106868:	42                   	inc    edx
c0106869:	83 03 4c             	add    DWORD PTR [ebx],0x4c
c010686c:	2e 04 04             	cs add al,0x4
c010686f:	05 00 00 00 2e       	add    eax,0x2e000000
c0106874:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106877:	0c 45                	or     al,0x45
c0106879:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010687d:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0106880:	0c 41                	or     al,0x41
c0106882:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106886:	00 4d 0a             	add    BYTE PTR [ebp+0xa],cl
c0106889:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010688c:	04 c3                	add    al,0xc3
c010688e:	45                   	inc    ebp
c010688f:	0b 44 c5 0c          	or     eax,DWORD PTR [ebp+eax*8+0xc]
c0106893:	04 04                	add    al,0x4
c0106895:	c3                   	ret    
c0106896:	00 00                	add    BYTE PTR [eax],al
c0106898:	4c                   	dec    esp
c0106899:	00 00                	add    BYTE PTR [eax],al
c010689b:	00 bc 14 00 00 70 26 	add    BYTE PTR [esp+edx*1+0x26700000],bh
c01068a2:	10 c0                	adc    al,al
c01068a4:	59                   	pop    ecx
c01068a5:	00 00                	add    BYTE PTR [eax],al
c01068a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01068aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01068b0:	44                   	inc    esp
c01068b1:	2e 0c 83             	cs or  al,0x83
c01068b4:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c01068b7:	10 48 2e             	adc    BYTE PTR [eax+0x2e],cl
c01068ba:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c01068bd:	04 04                	add    al,0x4
c01068bf:	01 00                	add    DWORD PTR [eax],eax
c01068c1:	00 00                	add    BYTE PTR [eax],al
c01068c3:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01068c7:	0c 42                	or     al,0x42
c01068c9:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c01068cd:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01068d0:	04 04                	add    al,0x4
c01068d2:	05 00 00 00 2e       	add    eax,0x2e000000
c01068d7:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01068da:	0c 47                	or     al,0x47
c01068dc:	2e 10 5b 2e          	adc    BYTE PTR cs:[ebx+0x2e],bl
c01068e0:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c01068e4:	04 04                	add    al,0x4
c01068e6:	c3                   	ret    
c01068e7:	00 48 00             	add    BYTE PTR [eax+0x0],cl
c01068ea:	00 00                	add    BYTE PTR [eax],al
c01068ec:	0c 15                	or     al,0x15
c01068ee:	00 00                	add    BYTE PTR [eax],al
c01068f0:	c9                   	leave  
c01068f1:	26 10 c0             	es adc al,al
c01068f4:	3e 00 00             	add    BYTE PTR ds:[eax],al
c01068f7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01068fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106900:	44                   	inc    esp
c0106901:	2e 0c 83             	cs or  al,0x83
c0106904:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c0106907:	10 4b 2e             	adc    BYTE PTR [ebx+0x2e],cl
c010690a:	04 04                	add    al,0x4
c010690c:	04 00                	add    al,0x0
c010690e:	00 00                	add    BYTE PTR [eax],al
c0106910:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106914:	0c 41                	or     al,0x41
c0106916:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010691a:	04 04                	add    al,0x4
c010691c:	05 00 00 00 2e       	add    eax,0x2e000000
c0106921:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106924:	0c 41                	or     al,0x41
c0106926:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010692a:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c010692e:	04 04                	add    al,0x4
c0106930:	c3                   	ret    
c0106931:	00 00                	add    BYTE PTR [eax],al
c0106933:	00 b4 00 00 00 58 15 	add    BYTE PTR [eax+eax*1+0x15580000],dh
c010693a:	00 00                	add    BYTE PTR [eax],al
c010693c:	07                   	pop    es
c010693d:	27                   	daa    
c010693e:	10 c0                	adc    al,al
c0106940:	e7 00                	out    0x0,eax
c0106942:	00 00                	add    BYTE PTR [eax],al
c0106944:	41                   	inc    ecx
c0106945:	0e                   	push   cs
c0106946:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010694c:	46                   	inc    esi
c010694d:	2e 0c 83             	cs or  al,0x83
c0106950:	05 86 04 87 03       	add    eax,0x3870486
c0106955:	45                   	inc    ebp
c0106956:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010695a:	04 04                	add    al,0x4
c010695c:	02 00                	add    al,BYTE PTR [eax]
c010695e:	00 00                	add    BYTE PTR [eax],al
c0106960:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106964:	0c 43                	or     al,0x43
c0106966:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c010696a:	04 04                	add    al,0x4
c010696c:	01 00                	add    DWORD PTR [eax],eax
c010696e:	00 00                	add    BYTE PTR [eax],al
c0106970:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106974:	0c 41                	or     al,0x41
c0106976:	2e 10 67 2e          	adc    BYTE PTR cs:[edi+0x2e],ah
c010697a:	0c 43                	or     al,0x43
c010697c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106980:	0c 45                	or     al,0x45
c0106982:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106986:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0106989:	04 04                	add    al,0x4
c010698b:	05 00 00 00 2e       	add    eax,0x2e000000
c0106990:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106993:	0c 45                	or     al,0x45
c0106995:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106999:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010699c:	04 04                	add    al,0x4
c010699e:	04 00                	add    al,0x0
c01069a0:	00 00                	add    BYTE PTR [eax],al
c01069a2:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01069a6:	0c 45                	or     al,0x45
c01069a8:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01069ac:	0c 41                	or     al,0x41
c01069ae:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01069b2:	0c 45                	or     al,0x45
c01069b4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01069b8:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01069bb:	04 04                	add    al,0x4
c01069bd:	05 00 00 00 2e       	add    eax,0x2e000000
c01069c2:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01069c5:	0c 45                	or     al,0x45
c01069c7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01069cb:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01069ce:	04 04                	add    al,0x4
c01069d0:	01 00                	add    DWORD PTR [eax],eax
c01069d2:	00 00                	add    BYTE PTR [eax],al
c01069d4:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01069d8:	0c 45                	or     al,0x45
c01069da:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01069de:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c01069e1:	41                   	inc    ecx
c01069e2:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01069e6:	0c 04                	or     al,0x4
c01069e8:	04 c5                	add    al,0xc5
c01069ea:	00 00                	add    BYTE PTR [eax],al
c01069ec:	24 00                	and    al,0x0
c01069ee:	00 00                	add    BYTE PTR [eax],al
c01069f0:	10 16                	adc    BYTE PTR [esi],dl
c01069f2:	00 00                	add    BYTE PTR [eax],al
c01069f4:	f0 27                	lock daa 
c01069f6:	10 c0                	adc    al,al
c01069f8:	15 00 00 00 41       	adc    eax,0x41000000
c01069fd:	0e                   	push   cs
c01069fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106a04:	43                   	inc    ebx
c0106a05:	2e 0c 45             	cs or  al,0x45
c0106a08:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106a0c:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0106a0f:	0c 04                	or     al,0x4
c0106a11:	04 00                	add    al,0x0
c0106a13:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0106a16:	00 00                	add    BYTE PTR [eax],al
c0106a18:	38 16                	cmp    BYTE PTR [esi],dl
c0106a1a:	00 00                	add    BYTE PTR [eax],al
c0106a1c:	05 28 10 c0 3e       	add    eax,0x3ec01028
c0106a21:	00 00                	add    BYTE PTR [eax],al
c0106a23:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106a26:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106a2c:	41                   	inc    ecx
c0106a2d:	86 03                	xchg   BYTE PTR [ebx],al
c0106a2f:	44                   	inc    esp
c0106a30:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0106a34:	00 00                	add    BYTE PTR [eax],al
c0106a36:	00 2e                	add    BYTE PTR [esi],ch
c0106a38:	0c 45                	or     al,0x45
c0106a3a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0106a3e:	0c 41                	or     al,0x41
c0106a40:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c0106a44:	0c 44                	or     al,0x44
c0106a46:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106a4a:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0106a4d:	41                   	inc    ecx
c0106a4e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106a52:	04 c5                	add    al,0xc5
c0106a54:	3c 00                	cmp    al,0x0
c0106a56:	00 00                	add    BYTE PTR [eax],al
c0106a58:	78 16                	js     c0106a70 <_edata+0x1693>
c0106a5a:	00 00                	add    BYTE PTR [eax],al
c0106a5c:	43                   	inc    ebx
c0106a5d:	28 10                	sub    BYTE PTR [eax],dl
c0106a5f:	c0 39 00             	sar    BYTE PTR [ecx],0x0
c0106a62:	00 00                	add    BYTE PTR [eax],al
c0106a64:	41                   	inc    ecx
c0106a65:	0e                   	push   cs
c0106a66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106a6c:	41                   	inc    ecx
c0106a6d:	86 03                	xchg   BYTE PTR [ebx],al
c0106a6f:	44                   	inc    esp
c0106a70:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0106a74:	00 00                	add    BYTE PTR [eax],al
c0106a76:	00 2e                	add    BYTE PTR [esi],ch
c0106a78:	0c 45                	or     al,0x45
c0106a7a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0106a7e:	0c 41                	or     al,0x41
c0106a80:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0106a85:	41                   	inc    ecx
c0106a86:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106a8a:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0106a8d:	41                   	inc    ecx
c0106a8e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106a92:	04 c5                	add    al,0xc5
c0106a94:	40                   	inc    eax
c0106a95:	00 00                	add    BYTE PTR [eax],al
c0106a97:	00 b8 16 00 00 7c    	add    BYTE PTR [eax+0x7c000016],bh
c0106a9d:	28 10                	sub    BYTE PTR [eax],dl
c0106a9f:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c0106aa3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106aa6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106aac:	46                   	inc    esi
c0106aad:	2e 0c 83             	cs or  al,0x83
c0106ab0:	05 86 04 87 03       	add    eax,0x3870486
c0106ab5:	4e                   	dec    esi
c0106ab6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106aba:	04 04                	add    al,0x4
c0106abc:	01 00                	add    DWORD PTR [eax],eax
c0106abe:	00 00                	add    BYTE PTR [eax],al
c0106ac0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106ac4:	0c 44                	or     al,0x44
c0106ac6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106aca:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0106acd:	41                   	inc    ecx
c0106ace:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106ad2:	0c 04                	or     al,0x4
c0106ad4:	04 c5                	add    al,0xc5
c0106ad6:	00 00                	add    BYTE PTR [eax],al
c0106ad8:	40                   	inc    eax
c0106ad9:	00 00                	add    BYTE PTR [eax],al
c0106adb:	00 fc                	add    ah,bh
c0106add:	16                   	push   ss
c0106ade:	00 00                	add    BYTE PTR [eax],al
c0106ae0:	bc 28 10 c0 40       	mov    esp,0x40c01028
c0106ae5:	00 00                	add    BYTE PTR [eax],al
c0106ae7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106aea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106af0:	46                   	inc    esi
c0106af1:	2e 0c 83             	cs or  al,0x83
c0106af4:	05 86 04 87 03       	add    eax,0x3870486
c0106af9:	4e                   	dec    esi
c0106afa:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106afe:	04 04                	add    al,0x4
c0106b00:	01 00                	add    DWORD PTR [eax],eax
c0106b02:	00 00                	add    BYTE PTR [eax],al
c0106b04:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106b08:	0c 44                	or     al,0x44
c0106b0a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106b0e:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0106b11:	41                   	inc    ecx
c0106b12:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106b16:	0c 04                	or     al,0x4
c0106b18:	04 c5                	add    al,0xc5
c0106b1a:	00 00                	add    BYTE PTR [eax],al
c0106b1c:	3c 00                	cmp    al,0x0
c0106b1e:	00 00                	add    BYTE PTR [eax],al
c0106b20:	40                   	inc    eax
c0106b21:	17                   	pop    ss
c0106b22:	00 00                	add    BYTE PTR [eax],al
c0106b24:	fc                   	cld    
c0106b25:	28 10                	sub    BYTE PTR [eax],dl
c0106b27:	c0 66 00 00          	shl    BYTE PTR [esi+0x0],0x0
c0106b2b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106b2e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106b34:	48                   	dec    eax
c0106b35:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c0106b3c:	2e 04 04             	cs add al,0x4
c0106b3f:	01 00                	add    DWORD PTR [eax],eax
c0106b41:	00 00                	add    BYTE PTR [eax],al
c0106b43:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106b47:	0c 42                	or     al,0x42
c0106b49:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c0106b4d:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c0106b51:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106b55:	0c 04                	or     al,0x4
c0106b57:	04 c5                	add    al,0xc5
c0106b59:	00 00                	add    BYTE PTR [eax],al
c0106b5b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0106b5e:	00 00                	add    BYTE PTR [eax],al
c0106b60:	80 17 00             	adc    BYTE PTR [edi],0x0
c0106b63:	00 62 29             	add    BYTE PTR [edx+0x29],ah
c0106b66:	10 c0                	adc    al,al
c0106b68:	66 00 00             	data16 add BYTE PTR [eax],al
c0106b6b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106b6e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106b74:	48                   	dec    eax
c0106b75:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c0106b7c:	2e 04 04             	cs add al,0x4
c0106b7f:	01 00                	add    DWORD PTR [eax],eax
c0106b81:	00 00                	add    BYTE PTR [eax],al
c0106b83:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106b87:	0c 42                	or     al,0x42
c0106b89:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c0106b8d:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c0106b91:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106b95:	0c 04                	or     al,0x4
c0106b97:	04 c5                	add    al,0xc5
c0106b99:	00 00                	add    BYTE PTR [eax],al
c0106b9b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106b9e:	00 00                	add    BYTE PTR [eax],al
c0106ba0:	c0 17 00             	rcl    BYTE PTR [edi],0x0
c0106ba3:	00 c8                	add    al,cl
c0106ba5:	29 10                	sub    DWORD PTR [eax],edx
c0106ba7:	c0 0f 00             	ror    BYTE PTR [edi],0x0
c0106baa:	00 00                	add    BYTE PTR [eax],al
c0106bac:	41                   	inc    ecx
c0106bad:	0e                   	push   cs
c0106bae:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106bb4:	46                   	inc    esi
c0106bb5:	0c 04                	or     al,0x4
c0106bb7:	04 c5                	add    al,0xc5
c0106bb9:	00 00                	add    BYTE PTR [eax],al
c0106bbb:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c0106bbe:	00 00                	add    BYTE PTR [eax],al
c0106bc0:	e0 17                	loopne c0106bd9 <_edata+0x17fc>
c0106bc2:	00 00                	add    BYTE PTR [eax],al
c0106bc4:	d7                   	xlat   BYTE PTR ds:[ebx]
c0106bc5:	29 10                	sub    DWORD PTR [eax],edx
c0106bc7:	c0 3e 00             	sar    BYTE PTR [esi],0x0
c0106bca:	00 00                	add    BYTE PTR [eax],al
c0106bcc:	41                   	inc    ecx
c0106bcd:	0e                   	push   cs
c0106bce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106bd4:	65 2e 04 04          	gs cs add al,0x4
c0106bd8:	02 00                	add    al,BYTE PTR [eax]
c0106bda:	00 00                	add    BYTE PTR [eax],al
c0106bdc:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106be0:	0c 45                	or     al,0x45
c0106be2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106be6:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0106be9:	0c 04                	or     al,0x4
c0106beb:	04 50                	add    al,0x50
c0106bed:	00 00                	add    BYTE PTR [eax],al
c0106bef:	00 10                	add    BYTE PTR [eax],dl
c0106bf1:	18 00                	sbb    BYTE PTR [eax],al
c0106bf3:	00 15 2a 10 c0 bf    	add    BYTE PTR ds:0xbfc0102a,dl
c0106bf9:	01 00                	add    DWORD PTR [eax],eax
c0106bfb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106bfe:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106c04:	46                   	inc    esi
c0106c05:	83 03 03             	add    DWORD PTR [ebx],0x3
c0106c08:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c0106c0d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106c11:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0106c14:	04 04                	add    al,0x4
c0106c16:	01 00                	add    DWORD PTR [eax],eax
c0106c18:	00 00                	add    BYTE PTR [eax],al
c0106c1a:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0106c1f:	45                   	inc    ebp
c0106c20:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0106c24:	00 02                	add    BYTE PTR [edx],al
c0106c26:	5c                   	pop    esp
c0106c27:	2e 04 04             	cs add al,0x4
c0106c2a:	01 00                	add    DWORD PTR [eax],eax
c0106c2c:	00 00                	add    BYTE PTR [eax],al
c0106c2e:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106c32:	0c 42                	or     al,0x42
c0106c34:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106c38:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0106c3c:	04 04                	add    al,0x4
c0106c3e:	c3                   	ret    
c0106c3f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106c42:	00 00                	add    BYTE PTR [eax],al
c0106c44:	64 18 00             	sbb    BYTE PTR fs:[eax],al
c0106c47:	00 d4                	add    ah,dl
c0106c49:	2b 10                	sub    edx,DWORD PTR [eax]
c0106c4b:	c0                   	(bad)  
c0106c4c:	32 00                	xor    al,BYTE PTR [eax]
c0106c4e:	00 00                	add    BYTE PTR [eax],al
c0106c50:	41                   	inc    ecx
c0106c51:	0e                   	push   cs
c0106c52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106c58:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106c59:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0106c5c:	04 00                	add    al,0x0
c0106c5e:	00 00                	add    BYTE PTR [eax],al
c0106c60:	1c 00                	sbb    al,0x0
c0106c62:	00 00                	add    BYTE PTR [eax],al
c0106c64:	84 18                	test   BYTE PTR [eax],bl
c0106c66:	00 00                	add    BYTE PTR [eax],al
c0106c68:	06                   	push   es
c0106c69:	2c 10                	sub    al,0x10
c0106c6b:	c0 fe 00             	sar    dh,0x0
c0106c6e:	00 00                	add    BYTE PTR [eax],al
c0106c70:	41                   	inc    ecx
c0106c71:	0e                   	push   cs
c0106c72:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106c78:	02 f5                	add    dh,ch
c0106c7a:	0c 04                	or     al,0x4
c0106c7c:	04 c5                	add    al,0xc5
c0106c7e:	00 00                	add    BYTE PTR [eax],al
c0106c80:	24 00                	and    al,0x0
c0106c82:	00 00                	add    BYTE PTR [eax],al
c0106c84:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0106c85:	18 00                	sbb    BYTE PTR [eax],al
c0106c87:	00 04 2d 10 c0 3a 00 	add    BYTE PTR [ebp*1+0x3ac010],al
c0106c8e:	00 00                	add    BYTE PTR [eax],al
c0106c90:	47                   	inc    edi
c0106c91:	0e                   	push   cs
c0106c92:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106c98:	48                   	dec    eax
c0106c99:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0106c9c:	03 64 c6 41          	add    esp,DWORD PTR [esi+eax*8+0x41]
c0106ca0:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c0106ca7:	00 28                	add    BYTE PTR [eax],ch
c0106ca9:	00 00                	add    BYTE PTR [eax],al
c0106cab:	00 cc                	add    ah,cl
c0106cad:	18 00                	sbb    BYTE PTR [eax],al
c0106caf:	00 40 2d             	add    BYTE PTR [eax+0x2d],al
c0106cb2:	10 c0                	adc    al,al
c0106cb4:	ac                   	lods   al,BYTE PTR ds:[esi]
c0106cb5:	00 00                	add    BYTE PTR [eax],al
c0106cb7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106cba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106cc0:	42                   	inc    edx
c0106cc1:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0106cc4:	03 49 83             	add    ecx,DWORD PTR [ecx-0x7d]
c0106cc7:	05 02 96 c3 41       	add    eax,0x41c39602
c0106ccc:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106cd0:	0c 04                	or     al,0x4
c0106cd2:	04 c5                	add    al,0xc5
c0106cd4:	1c 00                	sbb    al,0x0
c0106cd6:	00 00                	add    BYTE PTR [eax],al
c0106cd8:	f8                   	clc    
c0106cd9:	18 00                	sbb    BYTE PTR [eax],al
c0106cdb:	00 ec                	add    ah,ch
c0106cdd:	2d 10 c0 18 00       	sub    eax,0x18c010
c0106ce2:	00 00                	add    BYTE PTR [eax],al
c0106ce4:	41                   	inc    ecx
c0106ce5:	0e                   	push   cs
c0106ce6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106cec:	4f                   	dec    edi
c0106ced:	0c 04                	or     al,0x4
c0106cef:	04 c5                	add    al,0xc5
c0106cf1:	00 00                	add    BYTE PTR [eax],al
c0106cf3:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0106cf6:	00 00                	add    BYTE PTR [eax],al
c0106cf8:	18 19                	sbb    BYTE PTR [ecx],bl
c0106cfa:	00 00                	add    BYTE PTR [eax],al
c0106cfc:	04 2e                	add    al,0x2e
c0106cfe:	10 c0                	adc    al,al
c0106d00:	36 00 00             	add    BYTE PTR ss:[eax],al
c0106d03:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106d06:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106d0c:	63 0a                	arpl   WORD PTR [edx],cx
c0106d0e:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0106d11:	04 45                	add    al,0x45
c0106d13:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c0106d16:	0c 04                	or     al,0x4
c0106d18:	04 00                	add    al,0x0
c0106d1a:	00 00                	add    BYTE PTR [eax],al
c0106d1c:	1c 00                	sbb    al,0x0
c0106d1e:	00 00                	add    BYTE PTR [eax],al
c0106d20:	40                   	inc    eax
c0106d21:	19 00                	sbb    DWORD PTR [eax],eax
c0106d23:	00 3c 2e             	add    BYTE PTR [esi+ebp*1],bh
c0106d26:	10 c0                	adc    al,al
c0106d28:	0a 00                	or     al,BYTE PTR [eax]
c0106d2a:	00 00                	add    BYTE PTR [eax],al
c0106d2c:	41                   	inc    ecx
c0106d2d:	0e                   	push   cs
c0106d2e:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106d34:	41                   	inc    ecx
c0106d35:	0c 04                	or     al,0x4
c0106d37:	04 c5                	add    al,0xc5
c0106d39:	00 00                	add    BYTE PTR [eax],al
c0106d3b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106d3e:	00 00                	add    BYTE PTR [eax],al
c0106d40:	60                   	pusha  
c0106d41:	19 00                	sbb    DWORD PTR [eax],eax
c0106d43:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0106d46:	10 c0                	adc    al,al
c0106d48:	09 00                	or     DWORD PTR [eax],eax
c0106d4a:	00 00                	add    BYTE PTR [eax],al
c0106d4c:	41                   	inc    ecx
c0106d4d:	0e                   	push   cs
c0106d4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106d54:	41                   	inc    ecx
c0106d55:	0c 04                	or     al,0x4
c0106d57:	04 c5                	add    al,0xc5
c0106d59:	00 00                	add    BYTE PTR [eax],al
c0106d5b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106d5e:	00 00                	add    BYTE PTR [eax],al
c0106d60:	80 19 00             	sbb    BYTE PTR [ecx],0x0
c0106d63:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c0106d66:	10 c0                	adc    al,al
c0106d68:	10 00                	adc    BYTE PTR [eax],al
c0106d6a:	00 00                	add    BYTE PTR [eax],al
c0106d6c:	41                   	inc    ecx
c0106d6d:	0e                   	push   cs
c0106d6e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106d74:	4c                   	dec    esp
c0106d75:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0106d78:	04 00                	add    al,0x0
c0106d7a:	00 00                	add    BYTE PTR [eax],al
c0106d7c:	1c 00                	sbb    al,0x0
c0106d7e:	00 00                	add    BYTE PTR [eax],al
c0106d80:	a0 19 00 00 5f       	mov    al,ds:0x5f000019
c0106d85:	2e 10 c0             	cs adc al,al
c0106d88:	41                   	inc    ecx
c0106d89:	00 00                	add    BYTE PTR [eax],al
c0106d8b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106d8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106d94:	7d 0c                	jge    c0106da2 <_edata+0x19c5>
c0106d96:	04 04                	add    al,0x4
c0106d98:	c5 00                	lds    eax,FWORD PTR [eax]
c0106d9a:	00 00                	add    BYTE PTR [eax],al
c0106d9c:	2c 00                	sub    al,0x0
c0106d9e:	00 00                	add    BYTE PTR [eax],al
c0106da0:	c0 19 00             	rcr    BYTE PTR [ecx],0x0
c0106da3:	00 a0 2e 10 c0 1a    	add    BYTE PTR [eax+0x1ac0102e],ah
c0106da9:	00 00                	add    BYTE PTR [eax],al
c0106dab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106dae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106db4:	43                   	inc    ebx
c0106db5:	2e 04 04             	cs add al,0x4
c0106db8:	05 00 00 00 2e       	add    eax,0x2e000000
c0106dbd:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106dc0:	0c 43                	or     al,0x43
c0106dc2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106dc6:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0106dc9:	0c 04                	or     al,0x4
c0106dcb:	04 1c                	add    al,0x1c
c0106dcd:	00 00                	add    BYTE PTR [eax],al
c0106dcf:	00 f0                	add    al,dh
c0106dd1:	19 00                	sbb    DWORD PTR [eax],eax
c0106dd3:	00 ba 2e 10 c0 23    	add    BYTE PTR [edx+0x23c0102e],bh
c0106dd9:	00 00                	add    BYTE PTR [eax],al
c0106ddb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106dde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106de4:	47                   	inc    edi
c0106de5:	0c 04                	or     al,0x4
c0106de7:	04 c5                	add    al,0xc5
c0106de9:	00 00                	add    BYTE PTR [eax],al
c0106deb:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c0106dee:	00 00                	add    BYTE PTR [eax],al
c0106df0:	10 1a                	adc    BYTE PTR [edx],bl
c0106df2:	00 00                	add    BYTE PTR [eax],al
c0106df4:	dd 2e                	(bad)  [esi]
c0106df6:	10 c0                	adc    al,al
c0106df8:	be 00 00 00 41       	mov    esi,0x41000000
c0106dfd:	0e                   	push   cs
c0106dfe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106e04:	42                   	inc    edx
c0106e05:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0106e08:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c0106e0b:	05 5c 2e 04 04       	add    eax,0x4042e5c
c0106e10:	05 00 00 00 2e       	add    eax,0x2e000000
c0106e15:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106e18:	0c 45                	or     al,0x45
c0106e1a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106e1e:	00 02                	add    BYTE PTR [edx],al
c0106e20:	4e                   	dec    esi
c0106e21:	2e 04 04             	cs add al,0x4
c0106e24:	02 00                	add    al,BYTE PTR [eax]
c0106e26:	00 00                	add    BYTE PTR [eax],al
c0106e28:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106e2c:	0c 41                	or     al,0x41
c0106e2e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0106e32:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c0106e35:	41                   	inc    ecx
c0106e36:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106e3a:	0c 04                	or     al,0x4
c0106e3c:	04 c5                	add    al,0xc5
c0106e3e:	00 00                	add    BYTE PTR [eax],al
c0106e40:	3c 00                	cmp    al,0x0
c0106e42:	00 00                	add    BYTE PTR [eax],al
c0106e44:	64 1a 00             	sbb    al,BYTE PTR fs:[eax]
c0106e47:	00 9b 2f 10 c0 68    	add    BYTE PTR [ebx+0x68c0102f],bl
c0106e4d:	00 00                	add    BYTE PTR [eax],al
c0106e4f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106e52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106e58:	46                   	inc    esi
c0106e59:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c0106e60:	2e 04 04             	cs add al,0x4
c0106e63:	05 00 00 00 2e       	add    eax,0x2e000000
c0106e68:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106e6b:	0c 45                	or     al,0x45
c0106e6d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106e71:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c0106e75:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106e79:	0c 04                	or     al,0x4
c0106e7b:	04 c5                	add    al,0xc5
c0106e7d:	00 00                	add    BYTE PTR [eax],al
c0106e7f:	00 30                	add    BYTE PTR [eax],dh
c0106e81:	00 00                	add    BYTE PTR [eax],al
c0106e83:	00 a4 1a 00 00 04 30 	add    BYTE PTR [edx+ebx*1+0x30040000],ah
c0106e8a:	10 c0                	adc    al,al
c0106e8c:	6a 00                	push   0x0
c0106e8e:	00 00                	add    BYTE PTR [eax],al
c0106e90:	41                   	inc    ecx
c0106e91:	0e                   	push   cs
c0106e92:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106e98:	46                   	inc    esi
c0106e99:	2e 0c 83             	cs or  al,0x83
c0106e9c:	05 86 04 87 03       	add    eax,0x3870486
c0106ea1:	4d                   	dec    ebp
c0106ea2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0106ea6:	00 02                	add    BYTE PTR [edx],al
c0106ea8:	45                   	inc    ebp
c0106ea9:	c3                   	ret    
c0106eaa:	41                   	inc    ecx
c0106eab:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106eaf:	0c 04                	or     al,0x4
c0106eb1:	04 c5                	add    al,0xc5
c0106eb3:	00 58 00             	add    BYTE PTR [eax+0x0],bl
c0106eb6:	00 00                	add    BYTE PTR [eax],al
c0106eb8:	d8 1a                	fcomp  DWORD PTR [edx]
c0106eba:	00 00                	add    BYTE PTR [eax],al
c0106ebc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106ebd:	30 10                	xor    BYTE PTR [eax],dl
c0106ebf:	c0 05 01 00 00 41 0e 	rol    BYTE PTR ds:0x41000001,0xe
c0106ec6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106ecc:	46                   	inc    esi
c0106ecd:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c0106ed4:	2e 0c 41             	cs or  al,0x41
c0106ed7:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0106edc:	67 2e 04 04          	addr16 cs add al,0x4
c0106ee0:	05 00 00 00 2e       	add    eax,0x2e000000
c0106ee5:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106ee8:	0c 45                	or     al,0x45
c0106eea:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106eee:	00 02                	add    BYTE PTR [edx],al
c0106ef0:	64 2e 0c 41          	fs cs or al,0x41
c0106ef4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106ef8:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0106efb:	0c 43                	or     al,0x43
c0106efd:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0106f01:	41                   	inc    ecx
c0106f02:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106f06:	0c 04                	or     al,0x4
c0106f08:	04 c5                	add    al,0xc5
c0106f0a:	41                   	inc    ecx
c0106f0b:	13 03                	adc    eax,DWORD PTR [ebx]
c0106f0d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0106f10:	58                   	pop    eax
c0106f11:	00 00                	add    BYTE PTR [eax],al
c0106f13:	00 34 1b             	add    BYTE PTR [ebx+ebx*1],dh
c0106f16:	00 00                	add    BYTE PTR [eax],al
c0106f18:	73 31                	jae    c0106f4b <_edata+0x1b6e>
c0106f1a:	10 c0                	adc    al,al
c0106f1c:	01 01                	add    DWORD PTR [ecx],eax
c0106f1e:	00 00                	add    BYTE PTR [eax],al
c0106f20:	41                   	inc    ecx
c0106f21:	0e                   	push   cs
c0106f22:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106f28:	46                   	inc    esi
c0106f29:	83 05 86 04 87 03 69 	add    DWORD PTR ds:0x3870486,0x69
c0106f30:	2e 04 04             	cs add al,0x4
c0106f33:	05 00 00 00 2e       	add    eax,0x2e000000
c0106f38:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106f3b:	0c 45                	or     al,0x45
c0106f3d:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0106f41:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0106f44:	0c 41                	or     al,0x41
c0106f46:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0106f4b:	02 71 2e             	add    dh,BYTE PTR [ecx+0x2e]
c0106f4e:	0c 41                	or     al,0x41
c0106f50:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106f54:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0106f57:	0c 41                	or     al,0x41
c0106f59:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0106f5d:	41                   	inc    ecx
c0106f5e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106f62:	0c 04                	or     al,0x4
c0106f64:	04 c5                	add    al,0xc5
c0106f66:	41                   	inc    ecx
c0106f67:	13 03                	adc    eax,DWORD PTR [ebx]
c0106f69:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0106f6c:	1c 00                	sbb    al,0x0
c0106f6e:	00 00                	add    BYTE PTR [eax],al
c0106f70:	90                   	nop
c0106f71:	1b 00                	sbb    eax,DWORD PTR [eax]
c0106f73:	00 74 32 10          	add    BYTE PTR [edx+esi*1+0x10],dh
c0106f77:	c0 14 00 00          	rcl    BYTE PTR [eax+eax*1],0x0
c0106f7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106f7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106f84:	44                   	inc    esp
c0106f85:	0c 04                	or     al,0x4
c0106f87:	04 c5                	add    al,0xc5
c0106f89:	00 00                	add    BYTE PTR [eax],al
c0106f8b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106f8e:	00 00                	add    BYTE PTR [eax],al
c0106f90:	b0 1b                	mov    al,0x1b
c0106f92:	00 00                	add    BYTE PTR [eax],al
c0106f94:	88 32                	mov    BYTE PTR [edx],dh
c0106f96:	10 c0                	adc    al,al
c0106f98:	12 00                	adc    al,BYTE PTR [eax]
c0106f9a:	00 00                	add    BYTE PTR [eax],al
c0106f9c:	41                   	inc    ecx
c0106f9d:	0e                   	push   cs
c0106f9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106fa4:	44                   	inc    esp
c0106fa5:	0c 04                	or     al,0x4
c0106fa7:	04 c5                	add    al,0xc5
c0106fa9:	00 00                	add    BYTE PTR [eax],al
c0106fab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106fae:	00 00                	add    BYTE PTR [eax],al
c0106fb0:	d0 1b                	rcr    BYTE PTR [ebx],1
c0106fb2:	00 00                	add    BYTE PTR [eax],al
c0106fb4:	9c                   	pushf  
c0106fb5:	32 10                	xor    dl,BYTE PTR [eax]
c0106fb7:	c0 1e 00             	rcr    BYTE PTR [esi],0x0
c0106fba:	00 00                	add    BYTE PTR [eax],al
c0106fbc:	41                   	inc    ecx
c0106fbd:	0e                   	push   cs
c0106fbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106fc4:	5a                   	pop    edx
c0106fc5:	0c 04                	or     al,0x4
c0106fc7:	04 c5                	add    al,0xc5
c0106fc9:	00 00                	add    BYTE PTR [eax],al
c0106fcb:	00 28                	add    BYTE PTR [eax],ch
c0106fcd:	00 00                	add    BYTE PTR [eax],al
c0106fcf:	00 f0                	add    al,dh
c0106fd1:	1b 00                	sbb    eax,DWORD PTR [eax]
c0106fd3:	00 ba 32 10 c0 29    	add    BYTE PTR [edx+0x29c01032],bh
c0106fd9:	00 00                	add    BYTE PTR [eax],al
c0106fdb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106fde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106fe4:	41                   	inc    ecx
c0106fe5:	86 03                	xchg   BYTE PTR [ebx],al
c0106fe7:	44                   	inc    esp
c0106fe8:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c0106fec:	00 00                	add    BYTE PTR [eax],al
c0106fee:	00 c3                	add    bl,al
c0106ff0:	41                   	inc    ecx
c0106ff1:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106ff5:	04 c5                	add    al,0xc5
c0106ff7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106ffa:	00 00                	add    BYTE PTR [eax],al
c0106ffc:	1c 1c                	sbb    al,0x1c
c0106ffe:	00 00                	add    BYTE PTR [eax],al
c0107000:	e3 32                	jecxz  c0107034 <_edata+0x1c57>
c0107002:	10 c0                	adc    al,al
c0107004:	18 00                	sbb    BYTE PTR [eax],al
c0107006:	00 00                	add    BYTE PTR [eax],al
c0107008:	41                   	inc    ecx
c0107009:	0e                   	push   cs
c010700a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107010:	50                   	push   eax
c0107011:	0c 04                	or     al,0x4
c0107013:	04 c5                	add    al,0xc5
c0107015:	00 00                	add    BYTE PTR [eax],al
c0107017:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010701a:	00 00                	add    BYTE PTR [eax],al
c010701c:	3c 1c                	cmp    al,0x1c
c010701e:	00 00                	add    BYTE PTR [eax],al
c0107020:	fb                   	sti    
c0107021:	32 10                	xor    dl,BYTE PTR [eax]
c0107023:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c0107026:	00 00                	add    BYTE PTR [eax],al
c0107028:	41                   	inc    ecx
c0107029:	0e                   	push   cs
c010702a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107030:	50                   	push   eax
c0107031:	0c 04                	or     al,0x4
c0107033:	04 c5                	add    al,0xc5
c0107035:	00 00                	add    BYTE PTR [eax],al
c0107037:	00 20                	add    BYTE PTR [eax],ah
c0107039:	00 00                	add    BYTE PTR [eax],al
c010703b:	00 5c 1c 00          	add    BYTE PTR [esp+ebx*1+0x0],bl
c010703f:	00 13                	add    BYTE PTR [ebx],dl
c0107041:	33 10                	xor    edx,DWORD PTR [eax]
c0107043:	c0 27 00             	shl    BYTE PTR [edi],0x0
c0107046:	00 00                	add    BYTE PTR [eax],al
c0107048:	41                   	inc    ecx
c0107049:	0e                   	push   cs
c010704a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107050:	42                   	inc    edx
c0107051:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c0107054:	c3                   	ret    
c0107055:	41                   	inc    ecx
c0107056:	0c 04                	or     al,0x4
c0107058:	04 c5                	add    al,0xc5
c010705a:	00 00                	add    BYTE PTR [eax],al
c010705c:	28 00                	sub    BYTE PTR [eax],al
c010705e:	00 00                	add    BYTE PTR [eax],al
c0107060:	80 1c 00 00          	sbb    BYTE PTR [eax+eax*1],0x0
c0107064:	3a 33                	cmp    dh,BYTE PTR [ebx]
c0107066:	10 c0                	adc    al,al
c0107068:	1a 00                	sbb    al,BYTE PTR [eax]
c010706a:	00 00                	add    BYTE PTR [eax],al
c010706c:	41                   	inc    ecx
c010706d:	0e                   	push   cs
c010706e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107074:	44                   	inc    esp
c0107075:	2e 0c 83             	cs or  al,0x83
c0107078:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c010707b:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c010707e:	0c 04                	or     al,0x4
c0107080:	04 c3                	add    al,0xc3
c0107082:	41                   	inc    ecx
c0107083:	13 03                	adc    eax,DWORD PTR [ebx]
c0107085:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107088:	1c 00                	sbb    al,0x0
c010708a:	00 00                	add    BYTE PTR [eax],al
c010708c:	ac                   	lods   al,BYTE PTR ds:[esi]
c010708d:	1c 00                	sbb    al,0x0
c010708f:	00 54 33 10          	add    BYTE PTR [ebx+esi*1+0x10],dl
c0107093:	c0 27 00             	shl    BYTE PTR [edi],0x0
c0107096:	00 00                	add    BYTE PTR [eax],al
c0107098:	41                   	inc    ecx
c0107099:	0e                   	push   cs
c010709a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01070a0:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c01070a3:	04 c5                	add    al,0xc5
c01070a5:	00 00                	add    BYTE PTR [eax],al
c01070a7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c01070aa:	00 00                	add    BYTE PTR [eax],al
c01070ac:	cc                   	int3   
c01070ad:	1c 00                	sbb    al,0x0
c01070af:	00 7b 33             	add    BYTE PTR [ebx+0x33],bh
c01070b2:	10 c0                	adc    al,al
c01070b4:	38 00                	cmp    BYTE PTR [eax],al
c01070b6:	00 00                	add    BYTE PTR [eax],al
c01070b8:	41                   	inc    ecx
c01070b9:	0e                   	push   cs
c01070ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01070c0:	46                   	inc    esi
c01070c1:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c01070c8:	2e 04 04             	cs add al,0x4
c01070cb:	01 00                	add    DWORD PTR [eax],eax
c01070cd:	00 00                	add    BYTE PTR [eax],al
c01070cf:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01070d3:	0c 41                	or     al,0x41
c01070d5:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01070d9:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c01070dc:	41                   	inc    ecx
c01070dd:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01070e1:	0c 04                	or     al,0x4
c01070e3:	04 c5                	add    al,0xc5
c01070e5:	00 00                	add    BYTE PTR [eax],al
c01070e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01070ea:	00 00                	add    BYTE PTR [eax],al
c01070ec:	0c 1d                	or     al,0x1d
c01070ee:	00 00                	add    BYTE PTR [eax],al
c01070f0:	b3 33                	mov    bl,0x33
c01070f2:	10 c0                	adc    al,al
c01070f4:	1a 00                	sbb    al,BYTE PTR [eax]
c01070f6:	00 00                	add    BYTE PTR [eax],al
c01070f8:	41                   	inc    ecx
c01070f9:	0e                   	push   cs
c01070fa:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0107100:	54                   	push   esp
c0107101:	0c 04                	or     al,0x4
c0107103:	04 c5                	add    al,0xc5
c0107105:	00 00                	add    BYTE PTR [eax],al
c0107107:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010710a:	00 00                	add    BYTE PTR [eax],al
c010710c:	2c 1d                	sub    al,0x1d
c010710e:	00 00                	add    BYTE PTR [eax],al
c0107110:	cd 33                	int    0x33
c0107112:	10 c0                	adc    al,al
c0107114:	14 00                	adc    al,0x0
c0107116:	00 00                	add    BYTE PTR [eax],al
c0107118:	41                   	inc    ecx
c0107119:	0e                   	push   cs
c010711a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107120:	44                   	inc    esp
c0107121:	0c 04                	or     al,0x4
c0107123:	04 c5                	add    al,0xc5
c0107125:	00 00                	add    BYTE PTR [eax],al
c0107127:	00 28                	add    BYTE PTR [eax],ch
c0107129:	00 00                	add    BYTE PTR [eax],al
c010712b:	00 4c 1d 00          	add    BYTE PTR [ebp+ebx*1+0x0],cl
c010712f:	00 e4                	add    ah,ah
c0107131:	33 10                	xor    edx,DWORD PTR [eax]
c0107133:	c0 5f 00 00          	rcr    BYTE PTR [edi+0x0],0x0
c0107137:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010713a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107140:	45                   	inc    ebp
c0107141:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0107144:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c0107148:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c010714b:	41                   	inc    ecx
c010714c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107150:	0c 04                	or     al,0x4
c0107152:	04 c5                	add    al,0xc5
c0107154:	28 00                	sub    BYTE PTR [eax],al
c0107156:	00 00                	add    BYTE PTR [eax],al
c0107158:	78 1d                	js     c0107177 <_edata+0x1d9a>
c010715a:	00 00                	add    BYTE PTR [eax],al
c010715c:	43                   	inc    ebx
c010715d:	34 10                	xor    al,0x10
c010715f:	c0 44 00 00 00       	rol    BYTE PTR [eax+eax*1+0x0],0x0
c0107164:	41                   	inc    ecx
c0107165:	0e                   	push   cs
c0107166:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010716c:	44                   	inc    esp
c010716d:	86 03                	xchg   BYTE PTR [ebx],al
c010716f:	47                   	inc    edi
c0107170:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c0107174:	00 00                	add    BYTE PTR [eax],al
c0107176:	00 c3                	add    bl,al
c0107178:	41                   	inc    ecx
c0107179:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010717d:	04 c5                	add    al,0xc5
c010717f:	00 20                	add    BYTE PTR [eax],ah
c0107181:	00 00                	add    BYTE PTR [eax],al
c0107183:	00 a4 1d 00 00 87 34 	add    BYTE PTR [ebp+ebx*1+0x34870000],ah
c010718a:	10 c0                	adc    al,al
c010718c:	3c 00                	cmp    al,0x0
c010718e:	00 00                	add    BYTE PTR [eax],al
c0107190:	41                   	inc    ecx
c0107191:	0e                   	push   cs
c0107192:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107198:	41                   	inc    ecx
c0107199:	83 03 76             	add    DWORD PTR [ebx],0x76
c010719c:	c3                   	ret    
c010719d:	41                   	inc    ecx
c010719e:	0c 04                	or     al,0x4
c01071a0:	04 c5                	add    al,0xc5
c01071a2:	00 00                	add    BYTE PTR [eax],al
c01071a4:	20 00                	and    BYTE PTR [eax],al
c01071a6:	00 00                	add    BYTE PTR [eax],al
c01071a8:	c8 1d 00 00          	enter  0x1d,0x0
c01071ac:	c3                   	ret    
c01071ad:	34 10                	xor    al,0x10
c01071af:	c0 2e 00             	shr    BYTE PTR [esi],0x0
c01071b2:	00 00                	add    BYTE PTR [eax],al
c01071b4:	41                   	inc    ecx
c01071b5:	0e                   	push   cs
c01071b6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c01071bc:	46                   	inc    esi
c01071bd:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c01071c0:	c3                   	ret    
c01071c1:	41                   	inc    ecx
c01071c2:	0c 04                	or     al,0x4
c01071c4:	04 c5                	add    al,0xc5
c01071c6:	00 00                	add    BYTE PTR [eax],al
c01071c8:	1c 00                	sbb    al,0x0
c01071ca:	00 00                	add    BYTE PTR [eax],al
c01071cc:	ec                   	in     al,dx
c01071cd:	1d 00 00 f1 34       	sbb    eax,0x34f10000
c01071d2:	10 c0                	adc    al,al
c01071d4:	27                   	daa    
c01071d5:	00 00                	add    BYTE PTR [eax],al
c01071d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01071da:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c01071e0:	5e                   	pop    esi
c01071e1:	0c 04                	or     al,0x4
c01071e3:	04 c5                	add    al,0xc5
c01071e5:	00 00                	add    BYTE PTR [eax],al
c01071e7:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c01071ea:	00 00                	add    BYTE PTR [eax],al
c01071ec:	0c 1e                	or     al,0x1e
c01071ee:	00 00                	add    BYTE PTR [eax],al
c01071f0:	18 35 10 c0 a1 00    	sbb    BYTE PTR ds:0xa1c010,dh
c01071f6:	00 00                	add    BYTE PTR [eax],al
c01071f8:	41                   	inc    ecx
c01071f9:	0e                   	push   cs
c01071fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107200:	42                   	inc    edx
c0107201:	83 03 02             	add    DWORD PTR [ebx],0x2
c0107204:	92                   	xchg   edx,eax
c0107205:	0a c3                	or     al,bl
c0107207:	41                   	inc    ecx
c0107208:	0c 04                	or     al,0x4
c010720a:	04 c5                	add    al,0xc5
c010720c:	45                   	inc    ebp
c010720d:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c0107210:	41                   	inc    ecx
c0107211:	0c 04                	or     al,0x4
c0107213:	04 c5                	add    al,0xc5
c0107215:	00 00                	add    BYTE PTR [eax],al
c0107217:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c010721a:	00 00                	add    BYTE PTR [eax],al
c010721c:	3c 1e                	cmp    al,0x1e
c010721e:	00 00                	add    BYTE PTR [eax],al
c0107220:	b9 35 10 c0 28       	mov    ecx,0x28c01035
c0107225:	00 00                	add    BYTE PTR [eax],al
c0107227:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010722a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107230:	41                   	inc    ecx
c0107231:	86 03                	xchg   BYTE PTR [ebx],al
c0107233:	45                   	inc    ebp
c0107234:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c0107238:	00 00                	add    BYTE PTR [eax],al
c010723a:	00 2e                	add    BYTE PTR [esi],ch
c010723c:	04 04                	add    al,0x4
c010723e:	01 00                	add    DWORD PTR [eax],eax
c0107240:	00 00                	add    BYTE PTR [eax],al
c0107242:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c0107246:	04 04                	add    al,0x4
c0107248:	01 00                	add    DWORD PTR [eax],eax
c010724a:	00 00                	add    BYTE PTR [eax],al
c010724c:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c0107250:	41                   	inc    ecx
c0107251:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0107255:	04 c5                	add    al,0xc5
c0107257:	00 38                	add    BYTE PTR [eax],bh
c0107259:	00 00                	add    BYTE PTR [eax],al
c010725b:	00 7c 1e 00          	add    BYTE PTR [esi+ebx*1+0x0],bh
c010725f:	00 e1                	add    cl,ah
c0107261:	35 10 c0 3a 00       	xor    eax,0x3ac010
c0107266:	00 00                	add    BYTE PTR [eax],al
c0107268:	41                   	inc    ecx
c0107269:	0e                   	push   cs
c010726a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0107270:	47                   	inc    edi
c0107271:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c0107275:	51                   	push   ecx
c0107276:	2e 04 04             	cs add al,0x4
c0107279:	04 00                	add    al,0x0
c010727b:	00 00                	add    BYTE PTR [eax],al
c010727d:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0107281:	0c 46                	or     al,0x46
c0107283:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107287:	14 48                	adc    al,0x48
c0107289:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c010728e:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c0107295:	00 00                	add    BYTE PTR [eax],al
c0107297:	00 b8 1e 00 00 1b    	add    BYTE PTR [eax+0x1b00001e],bh
c010729d:	36 10 c0             	ss adc al,al
c01072a0:	3a 00                	cmp    al,BYTE PTR [eax]
c01072a2:	00 00                	add    BYTE PTR [eax],al
c01072a4:	41                   	inc    ecx
c01072a5:	0e                   	push   cs
c01072a6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c01072ac:	47                   	inc    edi
c01072ad:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c01072b1:	51                   	push   ecx
c01072b2:	2e 04 04             	cs add al,0x4
c01072b5:	04 00                	add    al,0x0
c01072b7:	00 00                	add    BYTE PTR [eax],al
c01072b9:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01072bd:	0c 46                	or     al,0x46
c01072bf:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01072c3:	14 48                	adc    al,0x48
c01072c5:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c01072ca:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c01072d1:	00 00                	add    BYTE PTR [eax],al
c01072d3:	00 f4                	add    ah,dh
c01072d5:	1e                   	push   ds
c01072d6:	00 00                	add    BYTE PTR [eax],al
c01072d8:	58                   	pop    eax
c01072d9:	36 10 c0             	ss adc al,al
c01072dc:	47                   	inc    edi
c01072dd:	00 00                	add    BYTE PTR [eax],al
c01072df:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01072e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01072e8:	45                   	inc    ebp
c01072e9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01072ed:	52                   	push   edx
c01072ee:	2e 04 04             	cs add al,0x4
c01072f1:	05 00 00 00 2e       	add    eax,0x2e000000
c01072f6:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01072f9:	0c 45                	or     al,0x45
c01072fb:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c01072ff:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c0107302:	41                   	inc    ecx
c0107303:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0107307:	04 c5                	add    al,0xc5
c0107309:	00 00                	add    BYTE PTR [eax],al
c010730b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c010730e:	00 00                	add    BYTE PTR [eax],al
c0107310:	30 1f                	xor    BYTE PTR [edi],bl
c0107312:	00 00                	add    BYTE PTR [eax],al
c0107314:	9f                   	lahf   
c0107315:	36 10 c0             	ss adc al,al
c0107318:	4a                   	dec    edx
c0107319:	00 00                	add    BYTE PTR [eax],al
c010731b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010731e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107324:	46                   	inc    esi
c0107325:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c010732c:	2e 04 04             	cs add al,0x4
c010732f:	05 00 00 00 2e       	add    eax,0x2e000000
c0107334:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0107337:	0c 45                	or     al,0x45
c0107339:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010733d:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0107340:	41                   	inc    ecx
c0107341:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107345:	0c 04                	or     al,0x4
c0107347:	04 c5                	add    al,0xc5
c0107349:	00 00                	add    BYTE PTR [eax],al
c010734b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c010734e:	00 00                	add    BYTE PTR [eax],al
c0107350:	70 1f                	jo     c0107371 <_edata+0x1f94>
c0107352:	00 00                	add    BYTE PTR [eax],al
c0107354:	e9 36 10 c0 42       	jmp    2d0838f <AR_CODE32+0x2cfc2f7>
c0107359:	00 00                	add    BYTE PTR [eax],al
c010735b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010735e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107364:	41                   	inc    ecx
c0107365:	86 03                	xchg   BYTE PTR [ebx],al
c0107367:	44                   	inc    esp
c0107368:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c010736c:	00 00                	add    BYTE PTR [eax],al
c010736e:	00 2e                	add    BYTE PTR [esi],ch
c0107370:	04 04                	add    al,0x4
c0107372:	05 00 00 00 2e       	add    eax,0x2e000000
c0107377:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010737a:	0c 45                	or     al,0x45
c010737c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0107380:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0107383:	41                   	inc    ecx
c0107384:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0107388:	04 c5                	add    al,0xc5
c010738a:	00 00                	add    BYTE PTR [eax],al
c010738c:	20 00                	and    BYTE PTR [eax],al
c010738e:	00 00                	add    BYTE PTR [eax],al
c0107390:	b0 1f                	mov    al,0x1f
c0107392:	00 00                	add    BYTE PTR [eax],al
c0107394:	2b 37                	sub    esi,DWORD PTR [edi]
c0107396:	10 c0                	adc    al,al
c0107398:	1a 00                	sbb    al,BYTE PTR [eax]
c010739a:	00 00                	add    BYTE PTR [eax],al
c010739c:	41                   	inc    ecx
c010739d:	0e                   	push   cs
c010739e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c01073a4:	44                   	inc    esp
c01073a5:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c01073a8:	c3                   	ret    
c01073a9:	41                   	inc    ecx
c01073aa:	0c 04                	or     al,0x4
c01073ac:	04 c5                	add    al,0xc5
c01073ae:	00 00                	add    BYTE PTR [eax],al
c01073b0:	1c 00                	sbb    al,0x0
c01073b2:	00 00                	add    BYTE PTR [eax],al
c01073b4:	d4 1f                	aam    0x1f
c01073b6:	00 00                	add    BYTE PTR [eax],al
c01073b8:	45                   	inc    ebp
c01073b9:	37                   	aaa    
c01073ba:	10 c0                	adc    al,al
c01073bc:	13 00                	adc    eax,DWORD PTR [eax]
c01073be:	00 00                	add    BYTE PTR [eax],al
c01073c0:	41                   	inc    ecx
c01073c1:	0e                   	push   cs
c01073c2:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c01073c8:	4d                   	dec    ebp
c01073c9:	0c 04                	or     al,0x4
c01073cb:	04 c5                	add    al,0xc5
c01073cd:	00 00                	add    BYTE PTR [eax],al
c01073cf:	00 a4 00 00 00 f4 1f 	add    BYTE PTR [eax+eax*1+0x1ff40000],ah
c01073d6:	00 00                	add    BYTE PTR [eax],al
c01073d8:	58                   	pop    eax
c01073d9:	37                   	aaa    
c01073da:	10 c0                	adc    al,al
c01073dc:	d1 01                	rol    DWORD PTR [ecx],1
c01073de:	00 00                	add    BYTE PTR [eax],al
c01073e0:	41                   	inc    ecx
c01073e1:	0e                   	push   cs
c01073e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01073e8:	46                   	inc    esi
c01073e9:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c01073f0:	df 2e                	fild   QWORD PTR [esi]
c01073f2:	04 04                	add    al,0x4
c01073f4:	02 00                	add    al,BYTE PTR [eax]
c01073f6:	00 00                	add    BYTE PTR [eax],al
c01073f8:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01073fc:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c01073ff:	04 04                	add    al,0x4
c0107401:	02 00                	add    al,BYTE PTR [eax]
c0107403:	00 00                	add    BYTE PTR [eax],al
c0107405:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0107409:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c010740c:	04 04                	add    al,0x4
c010740e:	02 00                	add    al,BYTE PTR [eax]
c0107410:	00 00                	add    BYTE PTR [eax],al
c0107412:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0107417:	42                   	inc    edx
c0107418:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c010741c:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c010741f:	04 04                	add    al,0x4
c0107421:	01 00                	add    DWORD PTR [eax],eax
c0107423:	00 00                	add    BYTE PTR [eax],al
c0107425:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0107429:	0c 41                	or     al,0x41
c010742b:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c0107430:	44                   	inc    esp
c0107431:	2e 04 04             	cs add al,0x4
c0107434:	02 00                	add    al,BYTE PTR [eax]
c0107436:	00 00                	add    BYTE PTR [eax],al
c0107438:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c010743c:	0c 42                	or     al,0x42
c010743e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0107442:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0107445:	0c 44                	or     al,0x44
c0107447:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010744b:	00 60 2e             	add    BYTE PTR [eax+0x2e],ah
c010744e:	04 04                	add    al,0x4
c0107450:	01 00                	add    DWORD PTR [eax],eax
c0107452:	00 00                	add    BYTE PTR [eax],al
c0107454:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0107459:	41                   	inc    ecx
c010745a:	2e 10 56 2e          	adc    BYTE PTR cs:[esi+0x2e],dl
c010745e:	00 67 2e             	add    BYTE PTR [edi+0x2e],ah
c0107461:	0c 43                	or     al,0x43
c0107463:	2e 10 49 c3          	adc    BYTE PTR cs:[ecx-0x3d],cl
c0107467:	41                   	inc    ecx
c0107468:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010746c:	0c 04                	or     al,0x4
c010746e:	04 c5                	add    al,0xc5
c0107470:	41                   	inc    ecx
c0107471:	13 03                	adc    eax,DWORD PTR [ebx]
c0107473:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107476:	00 00                	add    BYTE PTR [eax],al
c0107478:	30 00                	xor    BYTE PTR [eax],al
c010747a:	00 00                	add    BYTE PTR [eax],al
c010747c:	9c                   	pushf  
c010747d:	20 00                	and    BYTE PTR [eax],al
c010747f:	00 29                	add    BYTE PTR [ecx],ch
c0107481:	39 10                	cmp    DWORD PTR [eax],edx
c0107483:	c0 17 00             	rcl    BYTE PTR [edi],0x0
c0107486:	00 00                	add    BYTE PTR [eax],al
c0107488:	41                   	inc    ecx
c0107489:	0e                   	push   cs
c010748a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107490:	43                   	inc    ebx
c0107491:	2e 04 04             	cs add al,0x4
c0107494:	04 00                	add    al,0x0
c0107496:	00 00                	add    BYTE PTR [eax],al
c0107498:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c010749c:	0c 43                	or     al,0x43
c010749e:	2e 10 46 c5          	adc    BYTE PTR cs:[esi-0x3b],al
c01074a2:	0c 04                	or     al,0x4
c01074a4:	04 41                	add    al,0x41
c01074a6:	13 03                	adc    eax,DWORD PTR [ebx]
c01074a8:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01074ab:	00 34 00             	add    BYTE PTR [eax+eax*1],dh
c01074ae:	00 00                	add    BYTE PTR [eax],al
c01074b0:	d0 20                	shl    BYTE PTR [eax],1
c01074b2:	00 00                	add    BYTE PTR [eax],al
c01074b4:	40                   	inc    eax
c01074b5:	39 10                	cmp    DWORD PTR [eax],edx
c01074b7:	c0                   	(bad)  
c01074b8:	72 00                	jb     c01074ba <_edata+0x20dd>
c01074ba:	00 00                	add    BYTE PTR [eax],al
c01074bc:	41                   	inc    ecx
c01074bd:	0e                   	push   cs
c01074be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01074c4:	46                   	inc    esi
c01074c5:	2e 0c 83             	cs or  al,0x83
c01074c8:	05 86 04 87 03       	add    eax,0x3870486
c01074cd:	54                   	push   esp
c01074ce:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c01074d1:	4f                   	dec    edi
c01074d2:	c3                   	ret    
c01074d3:	41                   	inc    ecx
c01074d4:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01074d8:	0c 04                	or     al,0x4
c01074da:	04 c5                	add    al,0xc5
c01074dc:	43                   	inc    ebx
c01074dd:	13 03                	adc    eax,DWORD PTR [ebx]
c01074df:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01074e2:	00 00                	add    BYTE PTR [eax],al
c01074e4:	40                   	inc    eax
c01074e5:	00 00                	add    BYTE PTR [eax],al
c01074e7:	00 08                	add    BYTE PTR [eax],cl
c01074e9:	21 00                	and    DWORD PTR [eax],eax
c01074eb:	00 b2 39 10 c0 77    	add    BYTE PTR [edx+0x77c01039],dh
c01074f1:	00 00                	add    BYTE PTR [eax],al
c01074f3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01074f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01074fc:	46                   	inc    esi
c01074fd:	2e 0c 83             	cs or  al,0x83
c0107500:	05 86 04 87 03       	add    eax,0x3870486
c0107505:	45                   	inc    ebp
c0107506:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010750a:	00 50 2e             	add    BYTE PTR [eax+0x2e],dl
c010750d:	0c 44                	or     al,0x44
c010750f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0107513:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0107516:	0c 41                	or     al,0x41
c0107518:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c010751c:	00 69 c3             	add    BYTE PTR [ecx-0x3d],ch
c010751f:	41                   	inc    ecx
c0107520:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107524:	0c 04                	or     al,0x4
c0107526:	04 c5                	add    al,0xc5
c0107528:	30 00                	xor    BYTE PTR [eax],al
c010752a:	00 00                	add    BYTE PTR [eax],al
c010752c:	4c                   	dec    esp
c010752d:	21 00                	and    DWORD PTR [eax],eax
c010752f:	00 29                	add    BYTE PTR [ecx],ch
c0107531:	3a 10                	cmp    dl,BYTE PTR [eax]
c0107533:	c0 41 00 00          	rol    BYTE PTR [ecx+0x0],0x0
c0107537:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010753a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107540:	41                   	inc    ecx
c0107541:	86 03                	xchg   BYTE PTR [ebx],al
c0107543:	44                   	inc    esp
c0107544:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0107548:	00 00                	add    BYTE PTR [eax],al
c010754a:	00 2e                	add    BYTE PTR [esi],ch
c010754c:	0c 41                	or     al,0x41
c010754e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0107552:	00 60 c3             	add    BYTE PTR [eax-0x3d],ah
c0107555:	41                   	inc    ecx
c0107556:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010755a:	04 c5                	add    al,0xc5
c010755c:	28 00                	sub    BYTE PTR [eax],al
c010755e:	00 00                	add    BYTE PTR [eax],al
c0107560:	80 21 00             	and    BYTE PTR [ecx],0x0
c0107563:	00 6a 3a             	add    BYTE PTR [edx+0x3a],ch
c0107566:	10 c0                	adc    al,al
c0107568:	22 01                	and    al,BYTE PTR [ecx]
c010756a:	00 00                	add    BYTE PTR [eax],al
c010756c:	41                   	inc    ecx
c010756d:	0e                   	push   cs
c010756e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107574:	46                   	inc    esi
c0107575:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010757c:	15 01 c3 41 c6       	adc    eax,0xc641c301
c0107581:	41                   	inc    ecx
c0107582:	c7 41 0c 04 04 c5 3c 	mov    DWORD PTR [ecx+0xc],0x3cc50404
c0107589:	00 00                	add    BYTE PTR [eax],al
c010758b:	00 ac 21 00 00 8c 3b 	add    BYTE PTR [ecx+eiz*1+0x3b8c0000],ch
c0107592:	10 c0                	adc    al,al
c0107594:	35 00 00 00 41       	xor    eax,0x41000000
c0107599:	0e                   	push   cs
c010759a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01075a0:	44                   	inc    esp
c01075a1:	83 03 4a             	add    DWORD PTR [ebx],0x4a
c01075a4:	2e 04 04             	cs add al,0x4
c01075a7:	01 00                	add    DWORD PTR [eax],eax
c01075a9:	00 00                	add    BYTE PTR [eax],al
c01075ab:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c01075af:	0c 4c                	or     al,0x4c
c01075b1:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01075b5:	14 41                	adc    al,0x41
c01075b7:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c01075bb:	1c 48                	sbb    al,0x48
c01075bd:	2e 00 44 c5 0c       	add    BYTE PTR cs:[ebp+eax*8+0xc],al
c01075c2:	04 04                	add    al,0x4
c01075c4:	c3                   	ret    
c01075c5:	00 00                	add    BYTE PTR [eax],al
c01075c7:	00 28                	add    BYTE PTR [eax],ch
c01075c9:	00 00                	add    BYTE PTR [eax],al
c01075cb:	00 ec                	add    ah,ch
c01075cd:	21 00                	and    DWORD PTR [eax],eax
c01075cf:	00 c1                	add    cl,al
c01075d1:	3b 10                	cmp    edx,DWORD PTR [eax]
c01075d3:	c0 1e 01             	rcr    BYTE PTR [esi],0x1
c01075d6:	00 00                	add    BYTE PTR [eax],al
c01075d8:	41                   	inc    ecx
c01075d9:	0e                   	push   cs
c01075da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01075e0:	46                   	inc    esi
c01075e1:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c01075e8:	11 01                	adc    DWORD PTR [ecx],eax
c01075ea:	c3                   	ret    
c01075eb:	41                   	inc    ecx
c01075ec:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01075f0:	0c 04                	or     al,0x4
c01075f2:	04 c5                	add    al,0xc5
c01075f4:	84 00                	test   BYTE PTR [eax],al
c01075f6:	00 00                	add    BYTE PTR [eax],al
c01075f8:	18 22                	sbb    BYTE PTR [edx],ah
c01075fa:	00 00                	add    BYTE PTR [eax],al
c01075fc:	df 3c 10             	fistp  QWORD PTR [eax+edx*1]
c01075ff:	c0 9a 00 00 00 41 0e 	rcr    BYTE PTR [edx+0x41000000],0xe
c0107606:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010760c:	46                   	inc    esi
c010760d:	83 05 86 04 87 03 54 	add    DWORD PTR ds:0x3870486,0x54
c0107614:	2e 04 04             	cs add al,0x4
c0107617:	06                   	push   es
c0107618:	00 00                	add    BYTE PTR [eax],al
c010761a:	00 2e                	add    BYTE PTR [esi],ch
c010761c:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c010761f:	0c 41                	or     al,0x41
c0107621:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107625:	14 42                	adc    al,0x42
c0107627:	2e 18 4e 2e          	sbb    BYTE PTR cs:[esi+0x2e],cl
c010762b:	1c 46                	sbb    al,0x46
c010762d:	2e 20 46 2e          	and    BYTE PTR cs:[esi+0x2e],al
c0107631:	24 41                	and    al,0x41
c0107633:	2e 28 41 2e          	sub    BYTE PTR cs:[ecx+0x2e],al
c0107637:	2c 42                	sub    al,0x42
c0107639:	2e 30 4b 2e          	xor    BYTE PTR cs:[ebx+0x2e],cl
c010763d:	00 42 2e             	add    BYTE PTR [edx+0x2e],al
c0107640:	04 04                	add    al,0x4
c0107642:	02 00                	add    al,BYTE PTR [eax]
c0107644:	00 00                	add    BYTE PTR [eax],al
c0107646:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c010764a:	0c 46                	or     al,0x46
c010764c:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107650:	14 41                	adc    al,0x41
c0107652:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0107656:	1c 4f                	sbb    al,0x4f
c0107658:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c010765c:	24 46                	and    al,0x46
c010765e:	2e 28 46 2e          	sub    BYTE PTR cs:[esi+0x2e],al
c0107662:	2c 41                	sub    al,0x41
c0107664:	2e 30 41 2e          	xor    BYTE PTR cs:[ecx+0x2e],al
c0107668:	34 42                	xor    al,0x42
c010766a:	2e 38 48 2e          	cmp    BYTE PTR cs:[eax+0x2e],cl
c010766e:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c0107672:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107676:	0c 04                	or     al,0x4
c0107678:	04 c5                	add    al,0xc5
c010767a:	00 00                	add    BYTE PTR [eax],al
c010767c:	74 00                	je     c010767e <_edata+0x22a1>
c010767e:	00 00                	add    BYTE PTR [eax],al
c0107680:	a0 22 00 00 79       	mov    al,ds:0x79000022
c0107685:	3d 10 c0 0c 01       	cmp    eax,0x10cc010
c010768a:	00 00                	add    BYTE PTR [eax],al
c010768c:	41                   	inc    ecx
c010768d:	0e                   	push   cs
c010768e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107694:	46                   	inc    esi
c0107695:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c010769c:	68 2e 04 04 06       	push   0x604042e
c01076a1:	00 00                	add    BYTE PTR [eax],al
c01076a3:	00 2e                	add    BYTE PTR [esi],ch
c01076a5:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c01076a8:	0c 41                	or     al,0x41
c01076aa:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01076ae:	14 41                	adc    al,0x41
c01076b0:	2e 18 4c 2e 1c       	sbb    BYTE PTR cs:[esi+ebp*1+0x1c],cl
c01076b5:	46                   	inc    esi
c01076b6:	2e 00 7c 2e 04       	add    BYTE PTR cs:[esi+ebp*1+0x4],bh
c01076bb:	04 06                	add    al,0x6
c01076bd:	00 00                	add    BYTE PTR [eax],al
c01076bf:	00 2e                	add    BYTE PTR [esi],ch
c01076c1:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c01076c4:	0c 41                	or     al,0x41
c01076c6:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01076ca:	14 41                	adc    al,0x41
c01076cc:	2e 18 4f 2e          	sbb    BYTE PTR cs:[edi+0x2e],cl
c01076d0:	1c 41                	sbb    al,0x41
c01076d2:	2e 20 46 2e          	and    BYTE PTR cs:[esi+0x2e],al
c01076d6:	24 46                	and    al,0x46
c01076d8:	2e 28 41 2e          	sub    BYTE PTR cs:[ecx+0x2e],al
c01076dc:	2c 41                	sub    al,0x41
c01076de:	2e 30 41 2e          	xor    BYTE PTR cs:[ecx+0x2e],al
c01076e2:	34 48                	xor    al,0x48
c01076e4:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c01076e9:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01076ed:	0c 04                	or     al,0x4
c01076ef:	04 c5                	add    al,0xc5
c01076f1:	00 00                	add    BYTE PTR [eax],al
c01076f3:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c01076f6:	00 00                	add    BYTE PTR [eax],al
c01076f8:	18 23                	sbb    BYTE PTR [ebx],ah
c01076fa:	00 00                	add    BYTE PTR [eax],al
c01076fc:	85 3e                	test   DWORD PTR [esi],edi
c01076fe:	10 c0                	adc    al,al
c0107700:	8e 00                	mov    es,WORD PTR [eax]
c0107702:	00 00                	add    BYTE PTR [eax],al
c0107704:	41                   	inc    ecx
c0107705:	0e                   	push   cs
c0107706:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010770c:	42                   	inc    edx
c010770d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0107711:	7d 2e                	jge    c0107741 <_edata+0x2364>
c0107713:	04 04                	add    al,0x4
c0107715:	06                   	push   es
c0107716:	00 00                	add    BYTE PTR [eax],al
c0107718:	00 2e                	add    BYTE PTR [esi],ch
c010771a:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c010771d:	0c 41                	or     al,0x41
c010771f:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107723:	14 42                	adc    al,0x42
c0107725:	2e 18 4e 2e          	sbb    BYTE PTR cs:[esi+0x2e],cl
c0107729:	1c 42                	sbb    al,0x42
c010772b:	2e 20 46 2e          	and    BYTE PTR cs:[esi+0x2e],al
c010772f:	24 46                	and    al,0x46
c0107731:	2e 28 41 2e          	sub    BYTE PTR cs:[ecx+0x2e],al
c0107735:	2c 41                	sub    al,0x41
c0107737:	2e 30 42 2e          	xor    BYTE PTR cs:[edx+0x2e],al
c010773b:	34 48                	xor    al,0x48
c010773d:	2e 00 51 c3          	add    BYTE PTR cs:[ecx-0x3d],dl
c0107741:	41                   	inc    ecx
c0107742:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0107746:	04 c5                	add    al,0xc5
c0107748:	30 00                	xor    BYTE PTR [eax],al
c010774a:	00 00                	add    BYTE PTR [eax],al
c010774c:	6c                   	ins    BYTE PTR es:[edi],dx
c010774d:	23 00                	and    eax,DWORD PTR [eax]
c010774f:	00 13                	add    BYTE PTR [ebx],dl
c0107751:	3f                   	aas    
c0107752:	10 c0                	adc    al,al
c0107754:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107757:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010775a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107760:	42                   	inc    edx
c0107761:	83 03 49             	add    DWORD PTR [ebx],0x49
c0107764:	2e 04 04             	cs add al,0x4
c0107767:	06                   	push   es
c0107768:	00 00                	add    BYTE PTR [eax],al
c010776a:	00 2e                	add    BYTE PTR [esi],ch
c010776c:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c010776f:	0c 43                	or     al,0x43
c0107771:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0107775:	00 47 c5             	add    BYTE PTR [edi-0x3b],al
c0107778:	0c 04                	or     al,0x4
c010777a:	04 c3                	add    al,0xc3
c010777c:	28 00                	sub    BYTE PTR [eax],al
c010777e:	00 00                	add    BYTE PTR [eax],al
c0107780:	a0 23 00 00 41       	mov    al,ds:0x41000023
c0107785:	3f                   	aas    
c0107786:	10 c0                	adc    al,al
c0107788:	57                   	push   edi
c0107789:	00 00                	add    BYTE PTR [eax],al
c010778b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010778e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107794:	49                   	dec    ecx
c0107795:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c010779c:	47                   	inc    edi
c010779d:	c3                   	ret    
c010779e:	41                   	inc    ecx
c010779f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01077a3:	0c 04                	or     al,0x4
c01077a5:	04 c5                	add    al,0xc5
c01077a7:	00 28                	add    BYTE PTR [eax],ch
c01077a9:	00 00                	add    BYTE PTR [eax],al
c01077ab:	00 cc                	add    ah,cl
c01077ad:	23 00                	and    eax,DWORD PTR [eax]
c01077af:	00 98 3f 10 c0 8a    	add    BYTE PTR [eax-0x753fefc1],bl
c01077b5:	00 00                	add    BYTE PTR [eax],al
c01077b7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01077ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01077c0:	4d                   	dec    ebp
c01077c1:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c01077c8:	76 c3                	jbe    c010778d <_edata+0x23b0>
c01077ca:	41                   	inc    ecx
c01077cb:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01077cf:	0c 04                	or     al,0x4
c01077d1:	04 c5                	add    al,0xc5
c01077d3:	00 48 00             	add    BYTE PTR [eax+0x0],cl
c01077d6:	00 00                	add    BYTE PTR [eax],al
c01077d8:	f8                   	clc    
c01077d9:	23 00                	and    eax,DWORD PTR [eax]
c01077db:	00 22                	add    BYTE PTR [edx],ah
c01077dd:	40                   	inc    eax
c01077de:	10 c0                	adc    al,al
c01077e0:	4a                   	dec    edx
c01077e1:	00 00                	add    BYTE PTR [eax],al
c01077e3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01077e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01077ec:	41                   	inc    ecx
c01077ed:	87 03                	xchg   DWORD PTR [ebx],eax
c01077ef:	44                   	inc    esp
c01077f0:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c01077f3:	04 00                	add    al,0x0
c01077f5:	00 00                	add    BYTE PTR [eax],al
c01077f7:	83 05 59 2e 04 04 03 	add    DWORD PTR ds:0x4042e59,0x3
c01077fe:	00 00                	add    BYTE PTR [eax],al
c0107800:	00 2e                	add    BYTE PTR [esi],ch
c0107802:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c0107805:	0c 41                	or     al,0x41
c0107807:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010780b:	14 43                	adc    al,0x43
c010780d:	2e 18 48 2e          	sbb    BYTE PTR cs:[eax+0x2e],cl
c0107811:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0107814:	41                   	inc    ecx
c0107815:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107819:	0c 04                	or     al,0x4
c010781b:	04 c5                	add    al,0xc5
c010781d:	00 00                	add    BYTE PTR [eax],al
c010781f:	00 8c 00 00 00 44 24 	add    BYTE PTR [eax+eax*1+0x24440000],cl
c0107826:	00 00                	add    BYTE PTR [eax],al
c0107828:	6c                   	ins    BYTE PTR es:[edi],dx
c0107829:	40                   	inc    eax
c010782a:	10 c0                	adc    al,al
c010782c:	ea 00 00 00 41 0e 08 	jmp    0x80e:0x41000000
c0107833:	85 02                	test   DWORD PTR [edx],eax
c0107835:	42                   	inc    edx
c0107836:	0d 05 41 87 03       	or     eax,0x3874105
c010783b:	4a                   	dec    edx
c010783c:	2e 0c 83             	cs or  al,0x83
c010783f:	05 86 04 04 05       	add    eax,0x5040486
c0107844:	00 00                	add    BYTE PTR [eax],al
c0107846:	00 2e                	add    BYTE PTR [esi],ch
c0107848:	10 46 2e             	adc    BYTE PTR [esi+0x2e],al
c010784b:	14 46                	adc    al,0x46
c010784d:	2e 18 48 2e          	sbb    BYTE PTR cs:[eax+0x2e],cl
c0107851:	1c 41                	sbb    al,0x41
c0107853:	2e 20 45 2e          	and    BYTE PTR cs:[ebp+0x2e],al
c0107857:	1c 4a                	sbb    al,0x4a
c0107859:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c010785d:	1c 46                	sbb    al,0x46
c010785f:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0107863:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c0107866:	0c 45                	or     al,0x45
c0107868:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c010786c:	00 70 2e             	add    BYTE PTR [eax+0x2e],dh
c010786f:	04 04                	add    al,0x4
c0107871:	03 00                	add    eax,DWORD PTR [eax]
c0107873:	00 00                	add    BYTE PTR [eax],al
c0107875:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0107879:	0c 41                	or     al,0x41
c010787b:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c010787f:	14 45                	adc    al,0x45
c0107881:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0107885:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0107888:	04 04                	add    al,0x4
c010788a:	03 00                	add    eax,DWORD PTR [eax]
c010788c:	00 00                	add    BYTE PTR [eax],al
c010788e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0107892:	0c 41                	or     al,0x41
c0107894:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107898:	14 42                	adc    al,0x42
c010789a:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c010789e:	1c 49                	sbb    al,0x49
c01078a0:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01078a4:	00 66 c3             	add    BYTE PTR [esi-0x3d],ah
c01078a7:	41                   	inc    ecx
c01078a8:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01078ac:	0c 04                	or     al,0x4
c01078ae:	04 c5                	add    al,0xc5

Disassembly of section .rodata:

c01078b0 <_rodata>:
c01078b0:	68 65 6c 6c 6f       	push   0x6f6c6c65
c01078b5:	20 77 6f             	and    BYTE PTR [edi+0x6f],dh
c01078b8:	72 6c                	jb     c0107926 <_rodata+0x76>
c01078ba:	64 21 00             	and    DWORD PTR fs:[eax],eax
c01078bd:	0a 5b 55             	or     bl,BYTE PTR [ebx+0x55]
c01078c0:	73 65                	jae    c0107927 <_rodata+0x77>
c01078c2:	72 5d                	jb     c0107921 <_rodata+0x71>
c01078c4:	3a 00                	cmp    al,BYTE PTR [eax]
c01078c6:	5b                   	pop    ebx
c01078c7:	55                   	push   ebp
c01078c8:	73 65                	jae    c010792f <_rodata+0x7f>
c01078ca:	72 5d                	jb     c0107929 <_rodata+0x79>
c01078cc:	3a 00                	cmp    al,BYTE PTR [eax]
c01078ce:	25 30 34 78 2f       	and    eax,0x2f783430
c01078d3:	25 30 32 78 2f       	and    eax,0x2f783230
c01078d8:	25 30 32 78 20       	and    eax,0x20783230
c01078dd:	25 30 32 78 3a       	and    eax,0x3a783230
c01078e2:	25 30 32 78 00       	and    eax,0x783230
c01078e7:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c01078ea:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01078eb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01078ee:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01078f3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01078f5:	20 28                	and    BYTE PTR [eax],ch
c01078f7:	50                   	push   eax
c01078f8:	4b                   	dec    ebx
c01078f9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01078fa:	29 20                	sub    DWORD PTR [eax],esp
c01078fc:	76 65                	jbe    c0107963 <_rodata+0xb3>
c01078fe:	72 73                	jb     c0107973 <_rodata+0xc3>
c0107900:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0107907:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010790a:	74 65                	je     c0107971 <_rodata+0xc1>
c010790c:	73 74                	jae    c0107982 <_rodata+0xd2>
c010790e:	0a 00                	or     al,BYTE PTR [eax]
c0107910:	43                   	inc    ebx
c0107911:	50                   	push   eax
c0107912:	55                   	push   ebp
c0107913:	20 20                	and    BYTE PTR [eax],ah
c0107915:	20 20                	and    BYTE PTR [eax],ah
c0107917:	3a 00                	cmp    al,BYTE PTR [eax]
c0107919:	4d                   	dec    ebp
c010791a:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010791c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010791d:	72 79                	jb     c0107998 <_rodata+0xe8>
c010791f:	20 3a                	and    BYTE PTR [edx],bh
c0107921:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c0107924:	20 28                	and    BYTE PTR [eax],ch
c0107926:	20 00                	and    BYTE PTR [eax],al
c0107928:	4b                   	dec    ebx
c0107929:	42                   	inc    edx
c010792a:	20 29                	and    BYTE PTR [ecx],ch
c010792c:	20 00                	and    BYTE PTR [eax],al
c010792e:	44                   	inc    esp
c010792f:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c0107936:	00 56 69             	add    BYTE PTR [esi+0x69],dl
c0107939:	64 65 6f             	fs outs dx,DWORD PTR gs:[esi]
c010793c:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
c010793f:	64 65 3a 20          	fs cmp ah,BYTE PTR gs:[eax]
c0107943:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c0107946:	78 20                	js     c0107968 <_rodata+0xb8>
c0107948:	53                   	push   ebx
c0107949:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c010794c:	78 20                	js     c010796e <_rodata+0xbe>
c010794e:	3d 20 25 64 20       	cmp    eax,0x20642520
c0107953:	53                   	push   ebx
c0107954:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c0107957:	79 20                	jns    c0107979 <_rodata+0xc9>
c0107959:	3d 20 25 64 00       	cmp    eax,0x642520
c010795e:	43                   	inc    ebx
c010795f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107960:	70 79                	jo     c01079db <PKn_Version+0x13>
c0107962:	72 69                	jb     c01079cd <PKn_Version+0x5>
c0107964:	67 68 74 20 28 63    	addr16 push 0x63282074
c010796a:	29 20                	sub    DWORD PTR [eax],esp
c010796c:	32 30                	xor    dh,BYTE PTR [eax]
c010796e:	32 31                	xor    dh,BYTE PTR [ecx]
c0107970:	2d 32 30 32 32       	sub    eax,0x32323032
c0107975:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c0107978:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107979:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010797c:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107981:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107983:	20 64 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],ah
c0107987:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107989:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010798a:	70 65                	jo     c01079f1 <cursor.1495+0x9>
c010798c:	72 73                	jb     c0107a01 <cursor.1495+0x19>
c010798e:	2c 20                	sub    al,0x20
c0107990:	41                   	inc    ecx
c0107991:	6c                   	ins    BYTE PTR es:[edi],dx
c0107992:	6c                   	ins    BYTE PTR es:[edi],dx
c0107993:	20 72 69             	and    BYTE PTR [edx+0x69],dh
c0107996:	67 68 74 73 20 72    	addr16 push 0x72207374
c010799c:	65 73 65             	gs jae c0107a04 <cursor.1495+0x1c>
c010799f:	72 76                	jb     c0107a17 <cursor.1495+0x2f>
c01079a1:	65 64 2e 00 61 72    	gs fs add BYTE PTR cs:[ecx+0x72],ah
c01079a7:	67 5f                	addr16 pop edi
c01079a9:	41                   	inc    ecx
c01079aa:	20 00                	and    BYTE PTR [eax],al
c01079ac:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c01079b0:	73 68                	jae    c0107a1a <cursor.1495+0x32>
c01079b2:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01079b4:	6c                   	ins    BYTE PTR es:[edi],dx
c01079b5:	00 56 69             	add    BYTE PTR [esi+0x69],dl
c01079b8:	65 77 00             	gs ja  c01079bb <_rodata+0x10b>
c01079bb:	75 73                	jne    c0107a30 <cursor.1495+0x48>
c01079bd:	65 72 5f             	gs jb  c0107a1f <cursor.1495+0x37>
c01079c0:	70 72                	jo     c0107a34 <cursor.1495+0x4c>
c01079c2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01079c3:	67 00 00             	add    BYTE PTR [bx+si],al
	...

c01079c8 <PKn_Version>:
c01079c8:	50                   	push   eax
c01079c9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01079cb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01079ce:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01079d3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01079d5:	20 28                	and    BYTE PTR [eax],ch
c01079d7:	50                   	push   eax
c01079d8:	4b                   	dec    ebx
c01079d9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01079da:	29 20                	sub    DWORD PTR [eax],esp
c01079dc:	30 2e                	xor    BYTE PTR [esi],ch
c01079de:	30 2e                	xor    BYTE PTR [esi],ch
c01079e0:	31 20                	xor    DWORD PTR [eax],esp
c01079e2:	41                   	inc    ecx
c01079e3:	75 67                	jne    c0107a4c <cursor.1495+0x64>
c01079e5:	2e 00 00             	add    BYTE PTR cs:[eax],al

c01079e8 <cursor.1495>:
c01079e8:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01079ee:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01079f3:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01079f8:	2a 2a                	sub    ch,BYTE PTR [edx]
c01079fa:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01079ff:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a04:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107a09:	23 2a                	and    ebp,DWORD PTR [edx]
c0107a0b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a10:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a15:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0107a1a:	23 2a                	and    ebp,DWORD PTR [edx]
c0107a1c:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a21:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a26:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c0107a2b:	23 2a                	and    ebp,DWORD PTR [edx]
c0107a2d:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a32:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a37:	2d 2a 23 23 23       	sub    eax,0x2323232a
c0107a3c:	23 2a                	and    ebp,DWORD PTR [edx]
c0107a3e:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a43:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a48:	2a 23                	sub    ah,BYTE PTR [ebx]
c0107a4a:	23 23                	and    esp,DWORD PTR [ebx]
c0107a4c:	23 23                	and    esp,DWORD PTR [ebx]
c0107a4e:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0107a54:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107a59:	23 23                	and    esp,DWORD PTR [ebx]
c0107a5b:	23 23                	and    esp,DWORD PTR [ebx]
c0107a5d:	23 23                	and    esp,DWORD PTR [ebx]
c0107a5f:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0107a65:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0107a6a:	23 23                	and    esp,DWORD PTR [ebx]
c0107a6c:	23 23                	and    esp,DWORD PTR [ebx]
c0107a6e:	23 23                	and    esp,DWORD PTR [ebx]
c0107a70:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0107a76:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c0107a7b:	23 23                	and    esp,DWORD PTR [ebx]
c0107a7d:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107a7f:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107a81:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0107a87:	2d 2a 23 23 2a       	sub    eax,0x2a23232a
c0107a8c:	23 2a                	and    ebp,DWORD PTR [edx]
c0107a8e:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a93:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107a98:	2a 23                	sub    ah,BYTE PTR [ebx]
c0107a9a:	2a 2d 2a 23 2a 2d    	sub    ch,BYTE PTR ds:0x2d2a232a
c0107aa0:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107aa5:	2d 2d 2d 2a 2a       	sub    eax,0x2a2a2d2d
c0107aaa:	2d 2d 2a 23 2a       	sub    eax,0x2a232a2d
c0107aaf:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107ab4:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107ab9:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107abe:	23 2a                	and    ebp,DWORD PTR [edx]
c0107ac0:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107ac5:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107aca:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0107acf:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0107ad5:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107ada:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107adf:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107ae4:	2d 2d 2d 2d 0a       	sub    eax,0xa2d2d2d
c0107ae9:	20 45 72             	and    BYTE PTR [ebp+0x72],al
c0107aec:	72 6f                	jb     c0107b5d <cursor.1495+0x175>
c0107aee:	72 0a                	jb     c0107afa <cursor.1495+0x112>
c0107af0:	20 46 69             	and    BYTE PTR [esi+0x69],al
c0107af3:	6c                   	ins    BYTE PTR es:[edi],dx
c0107af4:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c0107af7:	20 20                	and    BYTE PTR [eax],ah
c0107af9:	20 20                	and    BYTE PTR [eax],ah
c0107afb:	20 20                	and    BYTE PTR [eax],ah
c0107afd:	20 25 73 0a 20 49    	and    BYTE PTR ds:0x49200a73,ah
c0107b03:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b04:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c0107b07:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b08:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c0107b0c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b0d:	3a 20                	cmp    ah,BYTE PTR [eax]
c0107b0f:	25 73 0a 20 4c       	and    eax,0x4c200a73
c0107b14:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c0107b1b:	20 20                	and    BYTE PTR [eax],ah
c0107b1d:	20 20                	and    BYTE PTR [eax],ah
c0107b1f:	20 25 64 0a 20 43    	and    BYTE PTR ds:0x43200a64,ah
c0107b25:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b26:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b27:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c0107b2e:	20 20 
c0107b30:	20 25 73 00 20 5b    	and    BYTE PTR ds:0x5b200073,ah
c0107b36:	20 4c 6f 67          	and    BYTE PTR [edi+ebp*2+0x67],cl
c0107b3a:	5d                   	pop    ebp
c0107b3b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0107b3e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b3f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107b42:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107b47:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107b49:	20 28                	and    BYTE PTR [eax],ch
c0107b4b:	50                   	push   eax
c0107b4c:	4b                   	dec    ebx
c0107b4d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b4e:	29 20                	sub    DWORD PTR [eax],esp
c0107b50:	30 2e                	xor    BYTE PTR [esi],ch
c0107b52:	30 2e                	xor    BYTE PTR [esi],ch
c0107b54:	31 20                	xor    DWORD PTR [eax],esp
c0107b56:	41                   	inc    ecx
c0107b57:	75 67                	jne    c0107bc0 <cursor.1495+0x1d8>
c0107b59:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107b5c:	69 6e 69 74 20 61 6c 	imul   ebp,DWORD PTR [esi+0x69],0x6c612074
c0107b63:	6c                   	ins    BYTE PTR es:[edi],dx
c0107b64:	00 69 6e             	add    BYTE PTR [ecx+0x6e],ch
c0107b67:	69 74 20 64 6f 6e 65 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x656e6f
c0107b6e:	00 
c0107b6f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0107b72:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b73:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107b76:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107b7b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107b7d:	20 28                	and    BYTE PTR [eax],ch
c0107b7f:	50                   	push   eax
c0107b80:	4b                   	dec    ebx
c0107b81:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b82:	29 20                	sub    DWORD PTR [eax],esp
c0107b84:	30 2e                	xor    BYTE PTR [esi],ch
c0107b86:	30 2e                	xor    BYTE PTR [esi],ch
c0107b88:	31 20                	xor    DWORD PTR [eax],esp
c0107b8a:	41                   	inc    ecx
c0107b8b:	75 67                	jne    c0107bf4 <cursor.1495+0x20c>
c0107b8d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107b90:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c0107b94:	44                   	inc    esp
c0107b95:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c0107b9c:	72 72                	jb     c0107c10 <cursor.1495+0x228>
c0107b9e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b9f:	72 00                	jb     c0107ba1 <cursor.1495+0x1b9>
c0107ba1:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c0107ba5:	44                   	inc    esp
c0107ba6:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c0107baa:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c0107bad:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0107bb0:	74 69                	je     c0107c1b <cursor.1495+0x233>
c0107bb2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107bb3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107bb4:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c0107bb7:	49                   	dec    ecx
c0107bb8:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c0107bbb:	74 65                	je     c0107c22 <cursor.1495+0x23a>
c0107bbd:	72 72                	jb     c0107c31 <cursor.1495+0x249>
c0107bbf:	75 70                	jne    c0107c31 <cursor.1495+0x249>
c0107bc1:	74 00                	je     c0107bc3 <cursor.1495+0x1db>
c0107bc3:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c0107bc6:	20 42 72             	and    BYTE PTR [edx+0x72],al
c0107bc9:	65 61                	gs popa 
c0107bcb:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c0107bcf:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107bd0:	74 20                	je     c0107bf2 <cursor.1495+0x20a>
c0107bd2:	45                   	inc    ebp
c0107bd3:	78 63                	js     c0107c38 <cursor.1495+0x250>
c0107bd5:	65 70 74             	gs jo  c0107c4c <cursor.1495+0x264>
c0107bd8:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c0107bdf:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c0107be2:	65 72 66             	gs jb  c0107c4b <cursor.1495+0x263>
c0107be5:	6c                   	ins    BYTE PTR es:[edi],dx
c0107be6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107be7:	77 20                	ja     c0107c09 <cursor.1495+0x221>
c0107be9:	45                   	inc    ebp
c0107bea:	78 63                	js     c0107c4f <cursor.1495+0x267>
c0107bec:	65 70 74             	gs jo  c0107c63 <cursor.1495+0x27b>
c0107bef:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c0107bf6:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c0107bf9:	55                   	push   ebp
c0107bfa:	4e                   	dec    esi
c0107bfb:	44                   	inc    esp
c0107bfc:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c0107bff:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107c00:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c0107c05:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c0107c08:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c0107c0e:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0107c11:	74 69                	je     c0107c7c <cursor.1495+0x294>
c0107c13:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107c14:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107c15:	00 23                	add    BYTE PTR [ebx],ah
c0107c17:	55                   	push   ebp
c0107c18:	44                   	inc    esp
c0107c19:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c0107c1c:	76 61                	jbe    c0107c7f <cursor.1495+0x297>
c0107c1e:	6c                   	ins    BYTE PTR es:[edi],dx
c0107c1f:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c0107c26:	64 
c0107c27:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c0107c2b:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0107c2e:	74 69                	je     c0107c99 <cursor.1495+0x2b1>
c0107c30:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107c31:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107c32:	00 23                	add    BYTE PTR [ebx],ah
c0107c34:	4e                   	dec    esi
c0107c35:	4d                   	dec    ebp
c0107c36:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c0107c3a:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c0107c41:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c0107c44:	61                   	popa   
c0107c45:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c0107c4c:	45 
c0107c4d:	78 63                	js     c0107cb2 <cursor.1495+0x2ca>
c0107c4f:	65 70 74             	gs jo  c0107cc6 <cursor.1495+0x2de>
c0107c52:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c0107c59:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c0107c5d:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c0107c61:	46                   	inc    esi
c0107c62:	61                   	popa   
c0107c63:	75 6c                	jne    c0107cd1 <cursor.1495+0x2e9>
c0107c65:	74 20                	je     c0107c87 <cursor.1495+0x29f>
c0107c67:	45                   	inc    ebp
c0107c68:	78 63                	js     c0107ccd <cursor.1495+0x2e5>
c0107c6a:	65 70 74             	gs jo  c0107ce1 <cursor.1495+0x2f9>
c0107c6d:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c0107c74:	72 6f                	jb     c0107ce5 <cursor.1495+0x2fd>
c0107c76:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c0107c79:	73 6f                	jae    c0107cea <cursor.1495+0x302>
c0107c7b:	72 20                	jb     c0107c9d <cursor.1495+0x2b5>
c0107c7d:	53                   	push   ebx
c0107c7e:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c0107c81:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107c83:	74 20                	je     c0107ca5 <cursor.1495+0x2bd>
c0107c85:	4f                   	dec    edi
c0107c86:	76 65                	jbe    c0107ced <cursor.1495+0x305>
c0107c88:	72 72                	jb     c0107cfc <cursor.1495+0x314>
c0107c8a:	75 6e                	jne    c0107cfa <cursor.1495+0x312>
c0107c8c:	00 23                	add    BYTE PTR [ebx],ah
c0107c8e:	54                   	push   esp
c0107c8f:	53                   	push   ebx
c0107c90:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c0107c93:	76 61                	jbe    c0107cf6 <cursor.1495+0x30e>
c0107c95:	6c                   	ins    BYTE PTR es:[edi],dx
c0107c96:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c0107c9d:	45 
c0107c9e:	78 63                	js     c0107d03 <cursor.1495+0x31b>
c0107ca0:	65 70 74             	gs jo  c0107d17 <cursor.1495+0x32f>
c0107ca3:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c0107caa:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c0107cad:	67 6d                	ins    DWORD PTR es:[di],dx
c0107caf:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107cb1:	74 20                	je     c0107cd3 <cursor.1495+0x2eb>
c0107cb3:	4e                   	dec    esi
c0107cb4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107cb5:	74 20                	je     c0107cd7 <cursor.1495+0x2ef>
c0107cb7:	50                   	push   eax
c0107cb8:	72 65                	jb     c0107d1f <cursor.1495+0x337>
c0107cba:	73 65                	jae    c0107d21 <cursor.1495+0x339>
c0107cbc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107cbd:	74 00                	je     c0107cbf <cursor.1495+0x2d7>
c0107cbf:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c0107cc2:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c0107cc5:	61                   	popa   
c0107cc6:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c0107cc9:	46                   	inc    esi
c0107cca:	61                   	popa   
c0107ccb:	75 6c                	jne    c0107d39 <cursor.1495+0x351>
c0107ccd:	74 20                	je     c0107cef <cursor.1495+0x307>
c0107ccf:	45                   	inc    ebp
c0107cd0:	78 63                	js     c0107d35 <cursor.1495+0x34d>
c0107cd2:	65 70 74             	gs jo  c0107d49 <cursor.1495+0x361>
c0107cd5:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c0107cdc:	20 47 65             	and    BYTE PTR [edi+0x65],al
c0107cdf:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107ce0:	65 72 61             	gs jb  c0107d44 <cursor.1495+0x35c>
c0107ce3:	6c                   	ins    BYTE PTR es:[edi],dx
c0107ce4:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c0107ce7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107ce8:	74 65                	je     c0107d4f <cursor.1495+0x367>
c0107cea:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c0107cee:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107cef:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c0107cf2:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0107cf5:	74 69                	je     c0107d60 <cursor.1495+0x378>
c0107cf7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107cf8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107cf9:	00 23                	add    BYTE PTR [ebx],ah
c0107cfb:	50                   	push   eax
c0107cfc:	46                   	inc    esi
c0107cfd:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c0107d00:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c0107d07:	74 20                	je     c0107d29 <cursor.1495+0x341>
c0107d09:	45                   	inc    ebp
c0107d0a:	78 63                	js     c0107d6f <cursor.1495+0x387>
c0107d0c:	65 70 74             	gs jo  c0107d83 <cursor.1495+0x39b>
c0107d0f:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c0107d16:	65 72 76             	gs jb  c0107d8f <cursor.1495+0x3a7>
c0107d19:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c0107d1d:	4d                   	dec    ebp
c0107d1e:	46                   	inc    esi
c0107d1f:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c0107d22:	37                   	aaa    
c0107d23:	20 46 50             	and    BYTE PTR [esi+0x50],al
c0107d26:	55                   	push   ebp
c0107d27:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c0107d2a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107d2b:	61                   	popa   
c0107d2c:	74 69                	je     c0107d97 <cursor.1495+0x3af>
c0107d2e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d2f:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c0107d35:	74 20                	je     c0107d57 <cursor.1495+0x36f>
c0107d37:	45                   	inc    ebp
c0107d38:	72 72                	jb     c0107dac <cursor.1495+0x3c4>
c0107d3a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107d3b:	72 00                	jb     c0107d3d <cursor.1495+0x355>
c0107d3d:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c0107d40:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c0107d43:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c0107d4a:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c0107d4d:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c0107d51:	45                   	inc    ebp
c0107d52:	78 63                	js     c0107db7 <cursor.1495+0x3cf>
c0107d54:	65 70 74             	gs jo  c0107dcb <cursor.1495+0x3e3>
c0107d57:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c0107d5e:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c0107d61:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c0107d64:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d65:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c0107d6b:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c0107d6e:	78 63                	js     c0107dd3 <cursor.1495+0x3eb>
c0107d70:	65 70 74             	gs jo  c0107de7 <cursor.1495+0x3ff>
c0107d73:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c0107d7a:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c0107d7d:	4d                   	dec    ebp
c0107d7e:	44                   	inc    esp
c0107d7f:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c0107d82:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107d83:	61                   	popa   
c0107d84:	74 69                	je     c0107def <cursor.1495+0x407>
c0107d86:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d87:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c0107d8d:	74 20                	je     c0107daf <cursor.1495+0x3c7>
c0107d8f:	45                   	inc    ebp
c0107d90:	78 63                	js     c0107df5 <cursor.1495+0x40d>
c0107d92:	65 70 74             	gs jo  c0107e09 <cursor.1495+0x421>
c0107d95:	69 6f 6e 00 53 6f 72 	imul   ebp,DWORD PTR [edi+0x6e],0x726f5300
c0107d9c:	72 79                	jb     c0107e17 <cursor.1495+0x42f>
c0107d9e:	2c 20                	sub    al,0x20
c0107da0:	61                   	popa   
c0107da1:	20 70 72             	and    BYTE PTR [eax+0x72],dh
c0107da4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107da5:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c0107da9:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c0107dac:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107dae:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c0107db2:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c0107db7:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c0107dba:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c0107dbe:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107dbf:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c0107dc2:	75 74                	jne    c0107e38 <cursor.1495+0x450>
c0107dc4:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c0107dc8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107dc9:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c0107dcd:	70 72                	jo     c0107e41 <cursor.1495+0x459>
c0107dcf:	65 76 65             	gs jbe c0107e37 <cursor.1495+0x44f>
c0107dd2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107dd3:	74 20                	je     c0107df5 <cursor.1495+0x40d>
c0107dd5:	64 61                	fs popa 
c0107dd7:	6d                   	ins    DWORD PTR es:[edi],dx
c0107dd8:	61                   	popa   
c0107dd9:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c0107dde:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c0107de1:	75 72                	jne    c0107e55 <cursor.1495+0x46d>
c0107de3:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c0107de6:	6d                   	ins    DWORD PTR es:[edi],dx
c0107de7:	70 75                	jo     c0107e5e <cursor.1495+0x476>
c0107de9:	74 65                	je     c0107e50 <cursor.1495+0x468>
c0107deb:	72 2e                	jb     c0107e1b <cursor.1495+0x433>
c0107ded:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c0107df0:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0107df4:	73 20                	jae    c0107e16 <cursor.1495+0x42e>
c0107df6:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c0107dfd:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c0107e03:	74 69                	je     c0107e6e <cursor.1495+0x486>
c0107e05:	6d                   	ins    DWORD PTR es:[edi],dx
c0107e06:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c0107e0a:	75 27                	jne    c0107e33 <cursor.1495+0x44b>
c0107e0c:	76 65                	jbe    c0107e73 <cursor.1495+0x48b>
c0107e0e:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c0107e11:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107e13:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0107e17:	73 20                	jae    c0107e39 <cursor.1495+0x451>
c0107e19:	73 74                	jae    c0107e8f <cursor.1495+0x4a7>
c0107e1b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107e1c:	70 20                	jo     c0107e3e <cursor.1495+0x456>
c0107e1e:	65 72 72             	gs jb  c0107e93 <cursor.1495+0x4ab>
c0107e21:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107e22:	72 20                	jb     c0107e44 <cursor.1495+0x45c>
c0107e24:	73 65                	jae    c0107e8b <cursor.1495+0x4a3>
c0107e26:	72 65                	jb     c0107e8d <cursor.1495+0x4a5>
c0107e28:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107e2a:	2c 20                	sub    al,0x20
c0107e2c:	72 65                	jb     c0107e93 <cursor.1495+0x4ab>
c0107e2e:	73 74                	jae    c0107ea4 <cursor.1495+0x4bc>
c0107e30:	61                   	popa   
c0107e31:	72 74                	jb     c0107ea7 <cursor.1495+0x4bf>
c0107e33:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c0107e36:	75 72                	jne    c0107eaa <cursor.1495+0x4c2>
c0107e38:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c0107e3b:	6d                   	ins    DWORD PTR es:[edi],dx
c0107e3c:	70 75                	jo     c0107eb3 <cursor.1495+0x4cb>
c0107e3e:	74 65                	je     c0107ea5 <cursor.1495+0x4bd>
c0107e40:	72 2e                	jb     c0107e70 <cursor.1495+0x488>
c0107e42:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c0107e45:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0107e49:	73 20                	jae    c0107e6b <cursor.1495+0x483>
c0107e4b:	73 63                	jae    c0107eb0 <cursor.1495+0x4c8>
c0107e4d:	72 65                	jb     c0107eb4 <cursor.1495+0x4cc>
c0107e4f:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107e51:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c0107e54:	70 65                	jo     c0107ebb <cursor.1495+0x4d3>
c0107e56:	72 73                	jb     c0107ecb <cursor.1495+0x4e3>
c0107e58:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c0107e5b:	61                   	popa   
c0107e5c:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c0107e63:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107e64:	77 20                	ja     c0107e86 <cursor.1495+0x49e>
c0107e66:	74 68                	je     c0107ed0 <cursor.1495+0x4e8>
c0107e68:	65 73 65             	gs jae c0107ed0 <cursor.1495+0x4e8>
c0107e6b:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c0107e6e:	65 70 73             	gs jo  c0107ee4 <cursor.1495+0x4fc>
c0107e71:	3a 0a                	cmp    cl,BYTE PTR [edx]
c0107e73:	20 31                	and    BYTE PTR [ecx],dh
c0107e75:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c0107e79:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c0107e7c:	6c                   	ins    BYTE PTR es:[edi],dx
c0107e7d:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c0107e81:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107e82:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107e85:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107e8a:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107e8c:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c0107e8f:	20 32                	and    BYTE PTR [edx],dh
c0107e91:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c0107e96:	75 67                	jne    c0107eff <cursor.1495+0x517>
c0107e98:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c0107e9b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107e9c:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107e9f:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107ea4:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107ea6:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c0107ea9:	20 76 69             	and    BYTE PTR [esi+0x69],dh
c0107eac:	72 74                	jb     c0107f22 <cursor.1495+0x53a>
c0107eae:	75 61                	jne    c0107f11 <cursor.1495+0x529>
c0107eb0:	6c                   	ins    BYTE PTR es:[edi],dx
c0107eb1:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c0107eb4:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c0107eb7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107eb8:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c0107ebc:	20 25 73 0a 20 69    	and    BYTE PTR ds:0x69200a73,ah
c0107ec2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107ec3:	74 72                	je     c0107f37 <cursor.1495+0x54f>
c0107ec5:	3a 20                	cmp    ah,BYTE PTR [eax]
c0107ec7:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c0107eca:	30 32                	xor    BYTE PTR [edx],dh
c0107ecc:	78 0a                	js     c0107ed8 <cursor.1495+0x4f0>
c0107ece:	20 43 53             	and    BYTE PTR [ebx+0x53],al
c0107ed1:	3a 45 49             	cmp    al,BYTE PTR [ebp+0x49]
c0107ed4:	50                   	push   eax
c0107ed5:	20 20                	and    BYTE PTR [eax],ah
c0107ed7:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c0107eda:	78 3a                	js     c0107f16 <cursor.1495+0x52e>
c0107edc:	25 30 38 70 0a       	and    eax,0xa703830
c0107ee1:	20 00                	and    BYTE PTR [eax],al
c0107ee3:	28 20                	sub    BYTE PTR [eax],ah
c0107ee5:	46                   	inc    esi
c0107ee6:	61                   	popa   
c0107ee7:	75 6c                	jne    c0107f55 <cursor.1495+0x56d>
c0107ee9:	74 20                	je     c0107f0b <cursor.1495+0x523>
c0107eeb:	61                   	popa   
c0107eec:	64 64 72 65          	fs fs jb c0107f55 <cursor.1495+0x56d>
c0107ef0:	73 73                	jae    c0107f65 <cursor.1495+0x57d>
c0107ef2:	3a 20                	cmp    ah,BYTE PTR [eax]
c0107ef4:	25 70 20 29 00       	and    eax,0x292070
c0107ef9:	00 00                	add    BYTE PTR [eax],al
c0107efb:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0107efe:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107eff:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107f02:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107f07:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107f09:	20 28                	and    BYTE PTR [eax],ch
c0107f0b:	50                   	push   eax
c0107f0c:	4b                   	dec    ebx
c0107f0d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107f0e:	29 20                	sub    DWORD PTR [eax],esp
c0107f10:	30 2e                	xor    BYTE PTR [esi],ch
c0107f12:	30 2e                	xor    BYTE PTR [esi],ch
c0107f14:	31 20                	xor    DWORD PTR [eax],esp
c0107f16:	41                   	inc    ecx
c0107f17:	75 67                	jne    c0107f80 <cursor.1495+0x598>
c0107f19:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107f1c:	4d                   	dec    ebp
c0107f1d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107f1f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107f20:	72 79                	jb     c0107f9b <cursor.1495+0x5b3>
c0107f22:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c0107f25:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f26:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107f27:	63 20                	arpl   WORD PTR [eax],sp
c0107f29:	00 61 6c             	add    BYTE PTR [ecx+0x6c],ah
c0107f2c:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f2d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107f2e:	63 20                	arpl   WORD PTR [eax],sp
c0107f30:	67 65 6e             	outs   dx,BYTE PTR gs:[si]
c0107f33:	65 72 61             	gs jb  c0107f97 <cursor.1495+0x5af>
c0107f36:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f37:	20 6d 65             	and    BYTE PTR [ebp+0x65],ch
c0107f3a:	6d                   	ins    DWORD PTR es:[edi],dx
c0107f3b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107f3c:	72 79                	jb     c0107fb7 <cursor.1495+0x5cf>
c0107f3e:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c0107f41:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107f43:	61                   	popa   
c0107f44:	20 69 73             	and    BYTE PTR [ecx+0x73],ch
c0107f47:	20 4e 55             	and    BYTE PTR [esi+0x55],cl
c0107f4a:	4c                   	dec    esp
c0107f4b:	4c                   	dec    esp
c0107f4c:	00 21                	add    BYTE PTR [ecx],ah
c0107f4e:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c0107f52:	74 5f                	je     c0107fb3 <cursor.1495+0x5cb>
c0107f54:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c0107f5a:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c0107f5d:	3e 64 65 73 63       	ds fs gs jae c0107fc5 <cursor.1495+0x5dd>
c0107f62:	2d 3e 66 72 65       	sub    eax,0x6572663e
c0107f67:	65 5f                	gs pop edi
c0107f69:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f6a:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c0107f71:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c0107f77:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c0107f7a:	29 00                	sub    DWORD PTR [eax],eax
c0107f7c:	6d                   	ins    DWORD PTR es:[edi],dx
c0107f7d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107f7f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107f80:	72 79                	jb     c0107ffb <__func__.1287+0x3>
c0107f82:	2f                   	das    
c0107f83:	61                   	popa   
c0107f84:	72 65                	jb     c0107feb <cursor.1495+0x603>
c0107f86:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107f87:	61                   	popa   
c0107f88:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c0107f8b:	61                   	popa   
c0107f8c:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f8d:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f8e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107f8f:	63 20                	arpl   WORD PTR [eax],sp
c0107f91:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f92:	61                   	popa   
c0107f93:	72 67                	jb     c0107ffc <__func__.1287+0x4>
c0107f95:	65 20 6d 65          	and    BYTE PTR gs:[ebp+0x65],ch
c0107f99:	6d                   	ins    DWORD PTR es:[edi],dx
c0107f9a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107f9b:	72 79                	jb     c0108016 <__func__.1301+0x12>
c0107f9d:	00 4d 65             	add    BYTE PTR [ebp+0x65],cl
c0107fa0:	6d                   	ins    DWORD PTR es:[edi],dx
c0107fa1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107fa2:	72 79                	jb     c010801d <__func__.1301+0x19>
c0107fa4:	20 46 72             	and    BYTE PTR [esi+0x72],al
c0107fa7:	65 65 00 6c 69 73    	gs add BYTE PTR gs:[ecx+ebp*2+0x73],ch
c0107fad:	74 5f                	je     c010800e <__func__.1301+0xa>
c0107faf:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c0107fb5:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c0107fb8:	3e 64 65 73 63       	ds fs gs jae c0108020 <__func__.1301+0x1c>
c0107fbd:	2d 3e 66 72 65       	sub    eax,0x6572663e
c0107fc2:	65 5f                	gs pop edi
c0107fc4:	6c                   	ins    BYTE PTR es:[edi],dx
c0107fc5:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c0107fcc:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c0107fd2:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c0107fd5:	00 00                	add    BYTE PTR [eax],al
c0107fd7:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0107fda:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107fdb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107fde:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107fe3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107fe5:	20 28                	and    BYTE PTR [eax],ch
c0107fe7:	50                   	push   eax
c0107fe8:	4b                   	dec    ebx
c0107fe9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107fea:	29 20                	sub    DWORD PTR [eax],esp
c0107fec:	30 2e                	xor    BYTE PTR [esi],ch
c0107fee:	30 2e                	xor    BYTE PTR [esi],ch
c0107ff0:	31 20                	xor    DWORD PTR [eax],esp
c0107ff2:	41                   	inc    ecx
c0107ff3:	75 67                	jne    c010805c <__func__.1301+0x58>
c0107ff5:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0107ff8 <__func__.1287>:
c0107ff8:	73 79                	jae    c0108073 <__func__.1301+0x6f>
c0107ffa:	73 5f                	jae    c010805b <__func__.1301+0x57>
c0107ffc:	6d                   	ins    DWORD PTR es:[edi],dx
c0107ffd:	61                   	popa   
c0107ffe:	6c                   	ins    BYTE PTR es:[edi],dx
c0107fff:	6c                   	ins    BYTE PTR es:[edi],dx
c0108000:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108001:	63 00                	arpl   WORD PTR [eax],ax
	...

c0108004 <__func__.1301>:
c0108004:	73 79                	jae    c010807f <__func__.1301+0x7b>
c0108006:	73 5f                	jae    c0108067 <__func__.1301+0x63>
c0108008:	66 72 65             	data16 jb c0108070 <__func__.1301+0x6c>
c010800b:	65 00 00             	add    BYTE PTR gs:[eax],al
c010800e:	00 00                	add    BYTE PTR [eax],al
c0108010:	70 61                	jo     c0108073 <__func__.1301+0x6f>
c0108012:	67 65 73 20          	addr16 gs jae c0108036 <__func__.1301+0x32>
c0108016:	21 3d 20 30 00 6d    	and    DWORD PTR ds:0x6d003020,edi
c010801c:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010801e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010801f:	72 79                	jb     c010809a <__func__.1301+0x96>
c0108021:	2f                   	das    
c0108022:	6d                   	ins    DWORD PTR es:[edi],dx
c0108023:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0108025:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108026:	72 79                	jb     c01080a1 <__func__.1301+0x9d>
c0108028:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010802b:	66 72 65             	data16 jb c0108093 <__func__.1301+0x8f>
c010802e:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c0108031:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0108036:	4c                   	dec    esp
c0108037:	00 67 65             	add    BYTE PTR [edi+0x65],ah
c010803a:	74 5f                	je     c010809b <__func__.1301+0x97>
c010803c:	61                   	popa   
c010803d:	5f                   	pop    edi
c010803e:	70 61                	jo     c01080a1 <__func__.1301+0x9d>
c0108040:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c0108044:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108045:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108046:	74 20                	je     c0108068 <__func__.1301+0x64>
c0108048:	61                   	popa   
c0108049:	6c                   	ins    BYTE PTR es:[edi],dx
c010804a:	6c                   	ins    BYTE PTR es:[edi],dx
c010804b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010804c:	77 20                	ja     c010806e <__func__.1301+0x6a>
c010804e:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c0108052:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108054:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c0108057:	6c                   	ins    BYTE PTR es:[edi],dx
c0108058:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108059:	63 20                	arpl   WORD PTR [eax],sp
c010805b:	75 73                	jne    c01080d0 <__func__.1301+0xcc>
c010805d:	65 72 73             	gs jb  c01080d3 <__func__.1301+0xcf>
c0108060:	70 61                	jo     c01080c3 <__func__.1301+0xbf>
c0108062:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c0108065:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108066:	72 20                	jb     c0108088 <__func__.1301+0x84>
c0108068:	75 73                	jne    c01080dd <__func__.1301+0xd9>
c010806a:	65 72 20             	gs jb  c010808d <__func__.1301+0x89>
c010806d:	61                   	popa   
c010806e:	6c                   	ins    BYTE PTR es:[edi],dx
c010806f:	6c                   	ins    BYTE PTR es:[edi],dx
c0108070:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108071:	63 20                	arpl   WORD PTR [eax],sp
c0108073:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c0108077:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108079:	73 70                	jae    c01080eb <__func__.1301+0xe7>
c010807b:	61                   	popa   
c010807c:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c010807f:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c0108082:	67 65 74 5f          	addr16 gs je c01080e5 <__func__.1301+0xe1>
c0108086:	61                   	popa   
c0108087:	5f                   	pop    edi
c0108088:	70 61                	jo     c01080eb <__func__.1301+0xe7>
c010808a:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c010808e:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c0108091:	67 65 5f             	addr16 gs pop edi
c0108094:	70 61                	jo     c01080f7 <__func__.1301+0xf3>
c0108096:	64 64 72 20          	fs fs jb c01080ba <__func__.1301+0xb6>
c010809a:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c01080a0:	4c                   	dec    esp
c01080a1:	00 50 61             	add    BYTE PTR [eax+0x61],dl
c01080a4:	67 65 20 46 72       	and    BYTE PTR gs:[bp+0x72],al
c01080a9:	65 65 20 45 72       	gs and BYTE PTR gs:[ebp+0x72],al
c01080ae:	72 6f                	jb     c010811f <__func__.1301+0x11b>
c01080b0:	72 20                	jb     c01080d2 <__func__.1301+0xce>
c01080b2:	21 00                	and    DWORD PTR [eax],eax
c01080b4:	4e                   	dec    esi
c01080b5:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01080b6:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c01080b9:	6d                   	ins    DWORD PTR es:[edi],dx
c01080ba:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01080bb:	72 79                	jb     c0108136 <__func__.1301+0x132>
c01080bd:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c01080c0:	61                   	popa   
c01080c1:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c01080c8:	00 
c01080c9:	66 72 65             	data16 jb c0108131 <__func__.1301+0x12d>
c01080cc:	65 5f                	gs pop edi
c01080ce:	70 67                	jo     c0108137 <__func__.1301+0x133>
c01080d0:	5f                   	pop    edi
c01080d1:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c01080d4:	20 3e                	and    BYTE PTR [esi],bh
c01080d6:	3d 20 31 20 26       	cmp    eax,0x26203120
c01080db:	26 20 28             	and    BYTE PTR es:[eax],ch
c01080de:	75 69                	jne    c0108149 <__func__.1301+0x145>
c01080e0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01080e1:	74 33                	je     c0108116 <__func__.1301+0x112>
c01080e3:	32 5f 74             	xor    bl,BYTE PTR [edi+0x74]
c01080e6:	29 70 76             	sub    DWORD PTR [eax+0x76],esi
c01080e9:	61                   	popa   
c01080ea:	64 64 72 20          	fs fs jb c010810e <__func__.1301+0x10a>
c01080ee:	25 20 50 47 5f       	and    eax,0x5f475020
c01080f3:	53                   	push   ebx
c01080f4:	49                   	dec    ecx
c01080f5:	5a                   	pop    edx
c01080f6:	45                   	inc    ebp
c01080f7:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c01080fd:	28 28                	sub    BYTE PTR [eax],ch
c01080ff:	70 74                	jo     c0108175 <__func__.1301+0x171>
c0108101:	72 5f                	jb     c0108162 <__func__.1301+0x15e>
c0108103:	74 29                	je     c010812e <__func__.1301+0x12a>
c0108105:	70 67                	jo     c010816e <__func__.1301+0x16a>
c0108107:	5f                   	pop    edi
c0108108:	70 61                	jo     c010816b <__func__.1301+0x167>
c010810a:	64 64 72 20          	fs fs jb c010812e <__func__.1301+0x12a>
c010810e:	25 20 50 47 5f       	and    eax,0x5f475020
c0108113:	53                   	push   ebx
c0108114:	49                   	dec    ecx
c0108115:	5a                   	pop    edx
c0108116:	45                   	inc    ebp
c0108117:	29 20                	sub    DWORD PTR [eax],esp
c0108119:	3d 3d 20 30 20       	cmp    eax,0x2030203d
c010811e:	26 26 20 28          	es and BYTE PTR es:[eax],ch
c0108122:	28 70 74             	sub    BYTE PTR [eax+0x74],dh
c0108125:	72 5f                	jb     c0108186 <__func__.1222+0xa>
c0108127:	74 29                	je     c0108152 <__func__.1301+0x14e>
c0108129:	70 67                	jo     c0108192 <__func__.1231+0xa>
c010812b:	5f                   	pop    edi
c010812c:	70 61                	jo     c010818f <__func__.1231+0x7>
c010812e:	64 64 72 29          	fs fs jb c010815b <__func__.1301+0x157>
c0108132:	20 3e                	and    BYTE PTR [esi],bh
c0108134:	3d 20 4b 45 52       	cmp    eax,0x52454b20
c0108139:	4e                   	dec    esi
c010813a:	45                   	inc    ebp
c010813b:	4c                   	dec    esp
c010813c:	5f                   	pop    edi
c010813d:	50                   	push   eax
c010813e:	41                   	inc    ecx
c010813f:	47                   	inc    edi
c0108140:	45                   	inc    ebp
c0108141:	5f                   	pop    edi
c0108142:	44                   	inc    esp
c0108143:	49                   	dec    ecx
c0108144:	52                   	push   edx
c0108145:	5f                   	pop    edi
c0108146:	54                   	push   esp
c0108147:	41                   	inc    ecx
c0108148:	42                   	inc    edx
c0108149:	4c                   	dec    esp
c010814a:	45                   	inc    ebp
c010814b:	5f                   	pop    edi
c010814c:	50                   	push   eax
c010814d:	4f                   	dec    edi
c010814e:	53                   	push   ebx
c010814f:	20 2b                	and    BYTE PTR [ebx],ch
c0108151:	20 30                	and    BYTE PTR [eax],dh
c0108153:	78 32                	js     c0108187 <__func__.1222+0xb>
c0108155:	30 30                	xor    BYTE PTR [eax],dh
c0108157:	30 30                	xor    BYTE PTR [eax],dh
c0108159:	30 00                	xor    BYTE PTR [eax],al
c010815b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010815e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010815f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108162:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108167:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108169:	20 28                	and    BYTE PTR [eax],ch
c010816b:	50                   	push   eax
c010816c:	4b                   	dec    ebx
c010816d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010816e:	29 20                	sub    DWORD PTR [eax],esp
c0108170:	30 2e                	xor    BYTE PTR [esi],ch
c0108172:	30 2e                	xor    BYTE PTR [esi],ch
c0108174:	31 20                	xor    DWORD PTR [eax],esp
c0108176:	41                   	inc    ecx
c0108177:	75 67                	jne    c01081e0 <__func__.1340+0x34>
c0108179:	2e 00 00             	add    BYTE PTR cs:[eax],al

c010817c <__func__.1222>:
c010817c:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c0108183:	6d                   	ins    DWORD PTR es:[edi],dx
c0108184:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108185:	72 79                	jb     c0108200 <__func__.1340+0x54>
	...

c0108188 <__func__.1231>:
c0108188:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c010818f:	6d                   	ins    DWORD PTR es:[edi],dx
c0108190:	6d                   	ins    DWORD PTR es:[edi],dx
c0108191:	61                   	popa   
c0108192:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c0108194 <__func__.1298>:
c0108194:	67 65 74 5f          	addr16 gs je c01081f7 <__func__.1340+0x4b>
c0108198:	61                   	popa   
c0108199:	5f                   	pop    edi
c010819a:	70 61                	jo     c01081fd <__func__.1340+0x51>
c010819c:	67 65 00 00          	add    BYTE PTR gs:[bx+si],al

c01081a0 <__func__.1318>:
c01081a0:	70 67                	jo     c0108209 <__func__.1340+0x5d>
c01081a2:	6d                   	ins    DWORD PTR es:[edi],dx
c01081a3:	61                   	popa   
c01081a4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01081a5:	5f                   	pop    edi
c01081a6:	66 72 65             	data16 jb c010820e <__func__.1340+0x62>
c01081a9:	65 00 00             	add    BYTE PTR gs:[eax],al

c01081ac <__func__.1340>:
c01081ac:	70 61                	jo     c010820f <__func__.1340+0x63>
c01081ae:	67 65 5f             	addr16 gs pop edi
c01081b1:	66 72 65             	data16 jb c0108219 <__func__.1340+0x6d>
c01081b4:	65 00 00             	add    BYTE PTR gs:[eax],al
c01081b7:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c01081ba:	65 6d                	gs ins DWORD PTR es:[edi],dx
c01081bc:	61                   	popa   
c01081bd:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c01081c2:	75 65                	jne    c0108229 <__func__.1340+0x7d>
c01081c4:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c01081ca:	6c                   	ins    BYTE PTR es:[edi],dx
c01081cb:	75 65                	jne    c0108232 <__func__.1340+0x86>
c01081cd:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c01081d1:	65 61                	gs popa 
c01081d3:	64 2f                	fs das 
c01081d5:	73 79                	jae    c0108250 <__func__.1340+0xa4>
c01081d7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01081d8:	63 2e                	arpl   WORD PTR [esi],bp
c01081da:	63 00                	arpl   WORD PTR [eax],ax
c01081dc:	21 28                	and    DWORD PTR [eax],ebp
c01081de:	6c                   	ins    BYTE PTR es:[edi],dx
c01081df:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c01081e6:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c01081e9:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c01081ec:	65 6d                	gs ins DWORD PTR es:[edi],dx
c01081ee:	61                   	popa   
c01081ef:	2d 3e 77 61 69       	sub    eax,0x6961773e
c01081f4:	74 65                	je     c010825b <__func__.1340+0xaf>
c01081f6:	72 73                	jb     c010826b <__func__.1340+0xbf>
c01081f8:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c01081fb:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c01081fe:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01081ff:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108200:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c0108207:	65 61                	gs popa 
c0108209:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010820c:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c0108211:	65 72 61             	gs jb  c0108275 <__func__.1340+0xc9>
c0108214:	6c                   	ins    BYTE PTR es:[edi],dx
c0108215:	5f                   	pop    edi
c0108216:	74 61                	je     c0108279 <__func__.1340+0xcd>
c0108218:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010821b:	29 00                	sub    DWORD PTR [eax],eax
c010821d:	73 65                	jae    c0108284 <__func__.1340+0xd8>
c010821f:	6d                   	ins    DWORD PTR es:[edi],dx
c0108220:	61                   	popa   
c0108221:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c0108225:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108226:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c010822a:	65 61                	gs popa 
c010822c:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c0108230:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108231:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c0108234:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c0108238:	73 20                	jae    c010825a <__func__.1340+0xae>
c010823a:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c010823d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010823e:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c0108241:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c0108244:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c010824b:	69 
c010824c:	73 74                	jae    c01082c2 <__func__.1340+0x116>
c010824e:	21 0a                	and    DWORD PTR [edx],ecx
c0108250:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c0108253:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0108255:	61                   	popa   
c0108256:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010825b:	75 65                	jne    c01082c2 <__func__.1340+0x116>
c010825d:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c0108263:	70 73                	jo     c01082d8 <__func__.1340+0x12c>
c0108265:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0108267:	61                   	popa   
c0108268:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010826d:	75 65                	jne    c01082d4 <__func__.1340+0x128>
c010826f:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c0108275:	70 6c                	jo     c01082e3 <__func__.1340+0x137>
c0108277:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108278:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010827b:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c0108281:	72 5f                	jb     c01082e2 <__func__.1340+0x136>
c0108283:	72 65                	jb     c01082ea <__func__.1340+0x13e>
c0108285:	70 65                	jo     c01082ec <__func__.1340+0x140>
c0108287:	61                   	popa   
c0108288:	74 5f                	je     c01082e9 <__func__.1340+0x13d>
c010828a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010828b:	72 20                	jb     c01082ad <__func__.1340+0x101>
c010828d:	3d 3d 20 30 00       	cmp    eax,0x30203d
c0108292:	70 6c                	jo     c0108300 <__func__.1118>
c0108294:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108295:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c0108298:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010829e:	72 20                	jb     c01082c0 <__func__.1340+0x114>
c01082a0:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c01082a5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082a6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082a7:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c01082ae:	65 61                	gs popa 
c01082b0:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c01082b3:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c01082b6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01082b7:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c01082ba:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c01082c0:	72 5f                	jb     c0108321 <__func__.1131+0xd>
c01082c2:	72 65                	jb     c0108329 <__func__.1135+0x5>
c01082c4:	70 65                	jo     c010832b <__func__.1135+0x7>
c01082c6:	61                   	popa   
c01082c7:	74 5f                	je     c0108328 <__func__.1135+0x4>
c01082c9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082ca:	72 20                	jb     c01082ec <__func__.1340+0x140>
c01082cc:	3d 3d 20 31 00       	cmp    eax,0x31203d
c01082d1:	00 00                	add    BYTE PTR [eax],al
c01082d3:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c01082d6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082d7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01082da:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01082df:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01082e1:	20 28                	and    BYTE PTR [eax],ch
c01082e3:	50                   	push   eax
c01082e4:	4b                   	dec    ebx
c01082e5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082e6:	29 20                	sub    DWORD PTR [eax],esp
c01082e8:	30 2e                	xor    BYTE PTR [esi],ch
c01082ea:	30 2e                	xor    BYTE PTR [esi],ch
c01082ec:	31 20                	xor    DWORD PTR [eax],esp
c01082ee:	41                   	inc    ecx
c01082ef:	75 67                	jne    c0108358 <__func__.1135+0x34>
c01082f1:	2e 00 00             	add    BYTE PTR cs:[eax],al

c01082f4 <__func__.1110>:
c01082f4:	73 65                	jae    c010835b <__func__.1135+0x37>
c01082f6:	6d                   	ins    DWORD PTR es:[edi],dx
c01082f7:	61                   	popa   
c01082f8:	5f                   	pop    edi
c01082f9:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c0108300 <__func__.1118>:
c0108300:	73 65                	jae    c0108367 <__func__.1135+0x43>
c0108302:	6d                   	ins    DWORD PTR es:[edi],dx
c0108303:	61                   	popa   
c0108304:	5f                   	pop    edi
c0108305:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c0108307:	77 6e                	ja     c0108377 <__func__.1135+0x53>
c0108309:	00 00                	add    BYTE PTR [eax],al
	...

c010830c <__func__.1126>:
c010830c:	73 65                	jae    c0108373 <__func__.1135+0x4f>
c010830e:	6d                   	ins    DWORD PTR es:[edi],dx
c010830f:	61                   	popa   
c0108310:	5f                   	pop    edi
c0108311:	75 70                	jne    c0108383 <__func__.1135+0x5f>
	...

c0108314 <__func__.1131>:
c0108314:	6c                   	ins    BYTE PTR es:[edi],dx
c0108315:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108316:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0108319:	61                   	popa   
c010831a:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c010831d:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c0108324 <__func__.1135>:
c0108324:	6c                   	ins    BYTE PTR es:[edi],dx
c0108325:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108326:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0108329:	72 65                	jb     c0108390 <__func__.1135+0x6c>
c010832b:	6c                   	ins    BYTE PTR es:[edi],dx
c010832c:	65 61                	gs popa 
c010832e:	73 65                	jae    c0108395 <__func__.1135+0x71>
c0108330:	00 00                	add    BYTE PTR [eax],al
c0108332:	00 00                	add    BYTE PTR [eax],al
c0108334:	4d                   	dec    ebp
c0108335:	61                   	popa   
c0108336:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c010833d:	61                   	popa   
c010833e:	64 00 21             	add    BYTE PTR fs:[ecx],ah
c0108341:	6c                   	ins    BYTE PTR es:[edi],dx
c0108342:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0108349:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010834c:	72 65                	jb     c01083b3 <__func__.1135+0x8f>
c010834e:	61                   	popa   
c010834f:	64 79 5f             	fs jns c01083b1 <__func__.1135+0x8d>
c0108352:	6c                   	ins    BYTE PTR es:[edi],dx
c0108353:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c010835a:	68 72 65 61 64       	push   0x64616572
c010835f:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c0108364:	65 72 61             	gs jb  c01083c8 <__func__.1135+0xa4>
c0108367:	6c                   	ins    BYTE PTR es:[edi],dx
c0108368:	5f                   	pop    edi
c0108369:	74 61                	je     c01083cc <__func__.1135+0xa8>
c010836b:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010836e:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c0108372:	65 61                	gs popa 
c0108374:	64 2f                	fs das 
c0108376:	74 68                	je     c01083e0 <__func__.1135+0xbc>
c0108378:	72 65                	jb     c01083df <__func__.1135+0xbb>
c010837a:	61                   	popa   
c010837b:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c010837f:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c0108383:	74 5f                	je     c01083e4 <__func__.1135+0xc0>
c0108385:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010838b:	61                   	popa   
c010838c:	6c                   	ins    BYTE PTR es:[edi],dx
c010838d:	6c                   	ins    BYTE PTR es:[edi],dx
c010838e:	5f                   	pop    edi
c010838f:	6c                   	ins    BYTE PTR es:[edi],dx
c0108390:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c0108397:	68 72 65 61 64       	push   0x64616572
c010839c:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c01083a1:	5f                   	pop    edi
c01083a2:	74 61                	je     c0108405 <__func__.1135+0xe1>
c01083a4:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c01083a7:	00 63 75             	add    BYTE PTR [ebx+0x75],ah
c01083aa:	72 5f                	jb     c010840b <__func__.1135+0xe7>
c01083ac:	74 68                	je     c0108416 <__func__.1135+0xf2>
c01083ae:	72 65                	jb     c0108415 <__func__.1135+0xf1>
c01083b0:	61                   	popa   
c01083b1:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c01083b7:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c01083ba:	6d                   	ins    DWORD PTR es:[edi],dx
c01083bb:	61                   	popa   
c01083bc:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c01083c3:	30 
c01083c4:	78 31                	js     c01083f7 <__func__.1135+0xd3>
c01083c6:	32 33                	xor    dh,BYTE PTR [ebx]
c01083c8:	34 35                	xor    al,0x35
c01083ca:	36 37                	ss aaa 
c01083cc:	38 00                	cmp    BYTE PTR [eax],al
c01083ce:	21 28                	and    DWORD PTR [eax],ebp
c01083d0:	6c                   	ins    BYTE PTR es:[edi],dx
c01083d1:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c01083d8:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c01083db:	72 65                	jb     c0108442 <__func__.1135+0x11e>
c01083dd:	61                   	popa   
c01083de:	64 79 5f             	fs jns c0108440 <__func__.1135+0x11c>
c01083e1:	6c                   	ins    BYTE PTR es:[edi],dx
c01083e2:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c01083e9:	75 72                	jne    c010845d <__func__.1135+0x139>
c01083eb:	5f                   	pop    edi
c01083ec:	74 68                	je     c0108456 <__func__.1135+0x132>
c01083ee:	72 65                	jb     c0108455 <__func__.1135+0x131>
c01083f0:	61                   	popa   
c01083f1:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c01083f7:	65 72 61             	gs jb  c010845b <__func__.1135+0x137>
c01083fa:	6c                   	ins    BYTE PTR es:[edi],dx
c01083fb:	5f                   	pop    edi
c01083fc:	74 61                	je     c010845f <__func__.1135+0x13b>
c01083fe:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0108401:	29 00                	sub    DWORD PTR [eax],eax
c0108403:	21 28                	and    DWORD PTR [eax],ebp
c0108405:	6c                   	ins    BYTE PTR es:[edi],dx
c0108406:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c010840d:	74 79                	je     c0108488 <__func__.1135+0x164>
c010840f:	28 26                	sub    BYTE PTR [esi],ah
c0108411:	72 65                	jb     c0108478 <__func__.1135+0x154>
c0108413:	61                   	popa   
c0108414:	64 79 5f             	fs jns c0108476 <__func__.1135+0x152>
c0108417:	6c                   	ins    BYTE PTR es:[edi],dx
c0108418:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c010841f:	65 61                	gs popa 
c0108421:	64 79 5f             	fs jns c0108483 <__func__.1135+0x15f>
c0108424:	6c                   	ins    BYTE PTR es:[edi],dx
c0108425:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c010842c:	6c                   	ins    BYTE PTR es:[edi],dx
c010842d:	2e 70 72             	cs jo  c01084a2 <__func__.1135+0x17e>
c0108430:	65 76 20             	gs jbe c0108453 <__func__.1135+0x12f>
c0108433:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c0108439:	61                   	popa   
c010843a:	64 79 5f             	fs jns c010849c <__func__.1135+0x178>
c010843d:	6c                   	ins    BYTE PTR es:[edi],dx
c010843e:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c0108445:	64 00 73 74          	add    BYTE PTR fs:[ebx+0x74],dh
c0108449:	61                   	popa   
c010844a:	74 75                	je     c01084c1 <__func__.1135+0x19d>
c010844c:	73 20                	jae    c010846e <__func__.1135+0x14a>
c010844e:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c0108454:	4b                   	dec    ebx
c0108455:	5f                   	pop    edi
c0108456:	52                   	push   edx
c0108457:	55                   	push   ebp
c0108458:	4e                   	dec    esi
c0108459:	4e                   	dec    esi
c010845a:	49                   	dec    ecx
c010845b:	4e                   	dec    esi
c010845c:	47                   	inc    edi
c010845d:	20 26                	and    BYTE PTR [esi],ah
c010845f:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c0108463:	61                   	popa   
c0108464:	74 75                	je     c01084db <__func__.1135+0x1b7>
c0108466:	73 20                	jae    c0108488 <__func__.1135+0x164>
c0108468:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c010846e:	4b                   	dec    ebx
c010846f:	5f                   	pop    edi
c0108470:	52                   	push   edx
c0108471:	45                   	inc    ebp
c0108472:	41                   	inc    ecx
c0108473:	44                   	inc    esp
c0108474:	59                   	pop    ecx
c0108475:	00 21                	add    BYTE PTR [ecx],ah
c0108477:	6c                   	ins    BYTE PTR es:[edi],dx
c0108478:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010847f:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0108482:	72 65                	jb     c01084e9 <__func__.1135+0x1c5>
c0108484:	61                   	popa   
c0108485:	64 79 5f             	fs jns c01084e7 <__func__.1135+0x1c3>
c0108488:	6c                   	ins    BYTE PTR es:[edi],dx
c0108489:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c0108490:	74 68                	je     c01084fa <__func__.1333+0x6>
c0108492:	72 65                	jb     c01084f9 <__func__.1333+0x5>
c0108494:	61                   	popa   
c0108495:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010849b:	65 72 61             	gs jb  c01084ff <__func__.1333+0xb>
c010849e:	6c                   	ins    BYTE PTR es:[edi],dx
c010849f:	5f                   	pop    edi
c01084a0:	74 61                	je     c0108503 <__func__.1333+0xf>
c01084a2:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c01084a5:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c01084a9:	65 61                	gs popa 
c01084ab:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c01084af:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c01084b3:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c01084b6:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c01084ba:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c01084be:	74 68                	je     c0108528 <__func__.1352+0x8>
c01084c0:	72 65                	jb     c0108527 <__func__.1352+0x7>
c01084c2:	61                   	popa   
c01084c3:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c01084c7:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c01084ca:	61                   	popa   
c01084cb:	64 79 20             	fs jns c01084ee <__func__.1135+0x1ca>
c01084ce:	6c                   	ins    BYTE PTR es:[edi],dx
c01084cf:	69 73 74 00 00 50 65 	imul   esi,DWORD PTR [ebx+0x74],0x65500000
c01084d6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01084d7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01084da:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01084df:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01084e1:	20 28                	and    BYTE PTR [eax],ch
c01084e3:	50                   	push   eax
c01084e4:	4b                   	dec    ebx
c01084e5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01084e6:	29 20                	sub    DWORD PTR [eax],esp
c01084e8:	30 2e                	xor    BYTE PTR [esi],ch
c01084ea:	30 2e                	xor    BYTE PTR [esi],ch
c01084ec:	31 20                	xor    DWORD PTR [eax],esp
c01084ee:	41                   	inc    ecx
c01084ef:	75 67                	jne    c0108558 <__func__.1352+0x38>
c01084f1:	2e 00 00             	add    BYTE PTR cs:[eax],al

c01084f4 <__func__.1333>:
c01084f4:	74 68                	je     c010855e <__func__.1352+0x3e>
c01084f6:	72 65                	jb     c010855d <__func__.1352+0x3d>
c01084f8:	61                   	popa   
c01084f9:	64 5f                	fs pop edi
c01084fb:	73 74                	jae    c0108571 <__func__.1352+0x51>
c01084fd:	61                   	popa   
c01084fe:	72 74                	jb     c0108574 <__func__.1352+0x54>
c0108500:	00 00                	add    BYTE PTR [eax],al
	...

c0108504 <__func__.1340>:
c0108504:	73 63                	jae    c0108569 <__func__.1352+0x49>
c0108506:	68 65 64 75 6c       	push   0x6c756465
c010850b:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c0108510 <__func__.1345>:
c0108510:	74 68                	je     c010857a <__func__.1352+0x5a>
c0108512:	72 65                	jb     c0108579 <__func__.1352+0x59>
c0108514:	61                   	popa   
c0108515:	64 5f                	fs pop edi
c0108517:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010851b:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c0108520 <__func__.1352>:
c0108520:	74 68                	je     c010858a <__func__.1352+0x6a>
c0108522:	72 65                	jb     c0108589 <__func__.1352+0x69>
c0108524:	61                   	popa   
c0108525:	64 5f                	fs pop edi
c0108527:	75 6e                	jne    c0108597 <__func__.1352+0x77>
c0108529:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010852d:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c0108530:	50                   	push   eax
c0108531:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108533:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108536:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010853b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010853d:	20 28                	and    BYTE PTR [eax],ch
c010853f:	50                   	push   eax
c0108540:	4b                   	dec    ebx
c0108541:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108542:	29 20                	sub    DWORD PTR [eax],esp
c0108544:	30 2e                	xor    BYTE PTR [esi],ch
c0108546:	30 2e                	xor    BYTE PTR [esi],ch
c0108548:	31 20                	xor    DWORD PTR [eax],esp
c010854a:	41                   	inc    ecx
c010854b:	75 67                	jne    c01085b4 <__func__.1352+0x94>
c010854d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0108550:	70 61                	jo     c01085b3 <__func__.1352+0x93>
c0108552:	67 65 5f             	addr16 gs pop edi
c0108555:	64 69 72 5f 74 61 62 	imul   esi,DWORD PTR fs:[edx+0x5f],0x6c626174
c010855c:	6c 
c010855d:	65 5f                	gs pop edi
c010855f:	70 6f                	jo     c01085d0 <__func__.1352+0xb0>
c0108561:	73 20                	jae    c0108583 <__func__.1352+0x63>
c0108563:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c0108569:	4c                   	dec    esp
c010856a:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c010856d:	65 72 70             	gs jb  c01085e0 <__func__.1352+0xc0>
c0108570:	72 6f                	jb     c01085e1 <__func__.1352+0xc1>
c0108572:	67 2f                	addr16 das 
c0108574:	70 72                	jo     c01085e8 <__func__.1352+0xc8>
c0108576:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108577:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010857a:	73 2e                	jae    c01085aa <__func__.1352+0x8a>
c010857c:	63 00                	arpl   WORD PTR [eax],ax
c010857e:	70 74                	jo     c01085f4 <__func__.1352+0xd4>
c0108580:	68 72 65 61 64       	push   0x64616572
c0108585:	20 21                	and    BYTE PTR [ecx],ah
c0108587:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010858c:	4c                   	dec    esp
c010858d:	00 63 72             	add    BYTE PTR [ebx+0x72],ah
c0108590:	65 61                	gs popa 
c0108592:	74 65                	je     c01085f9 <__func__.1352+0xd9>
c0108594:	5f                   	pop    edi
c0108595:	70 61                	jo     c01085f8 <__func__.1352+0xd8>
c0108597:	67 65 5f             	addr16 gs pop edi
c010859a:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c01085a1:	74 
c01085a2:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c01085a5:	72 6e                	jb     c0108615 <__func__.1352+0xf5>
c01085a7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01085a9:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c01085ac:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c01085b1:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x21000a21
c01085b8:	21 
c01085b9:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c01085bd:	74 5f                	je     c010861e <__func__.1352+0xfe>
c01085bf:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c01085c5:	61                   	popa   
c01085c6:	6c                   	ins    BYTE PTR es:[edi],dx
c01085c7:	6c                   	ins    BYTE PTR es:[edi],dx
c01085c8:	5f                   	pop    edi
c01085c9:	6c                   	ins    BYTE PTR es:[edi],dx
c01085ca:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c01085d1:	74 68                	je     c010863b <__func__.1325+0x3>
c01085d3:	72 65                	jb     c010863a <__func__.1325+0x2>
c01085d5:	61                   	popa   
c01085d6:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c01085dc:	5f                   	pop    edi
c01085dd:	74 61                	je     c0108640 <__func__.1325+0x8>
c01085df:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c01085e2:	29 00                	sub    DWORD PTR [eax],eax
c01085e4:	21 28                	and    DWORD PTR [eax],ebp
c01085e6:	6c                   	ins    BYTE PTR es:[edi],dx
c01085e7:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c01085ee:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c01085f1:	72 65                	jb     c0108658 <__func__.1329+0xc>
c01085f3:	61                   	popa   
c01085f4:	64 79 5f             	fs jns c0108656 <__func__.1329+0xa>
c01085f7:	6c                   	ins    BYTE PTR es:[edi],dx
c01085f8:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c01085ff:	74 68                	je     c0108669 <__func__.1344+0x9>
c0108601:	72 65                	jb     c0108668 <__func__.1344+0x8>
c0108603:	61                   	popa   
c0108604:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010860a:	65 72 61             	gs jb  c010866e <__func__.1344+0xe>
c010860d:	6c                   	ins    BYTE PTR es:[edi],dx
c010860e:	5f                   	pop    edi
c010860f:	74 61                	je     c0108672 <__func__.1344+0x12>
c0108611:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0108614:	29 00                	sub    DWORD PTR [eax],eax
c0108616:	00 00                	add    BYTE PTR [eax],al
c0108618:	50                   	push   eax
c0108619:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010861b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010861e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108623:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108625:	20 28                	and    BYTE PTR [eax],ch
c0108627:	50                   	push   eax
c0108628:	4b                   	dec    ebx
c0108629:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010862a:	29 20                	sub    DWORD PTR [eax],esp
c010862c:	30 2e                	xor    BYTE PTR [esi],ch
c010862e:	30 2e                	xor    BYTE PTR [esi],ch
c0108630:	31 20                	xor    DWORD PTR [eax],esp
c0108632:	41                   	inc    ecx
c0108633:	75 67                	jne    c010869c <__func__.1344+0x3c>
c0108635:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108638 <__func__.1325>:
c0108638:	70 61                	jo     c010869b <__func__.1344+0x3b>
c010863a:	67 65 5f             	addr16 gs pop edi
c010863d:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c0108644:	69 
c0108645:	76 61                	jbe    c01086a8 <__func__.1344+0x48>
c0108647:	74 65                	je     c01086ae <__func__.1344+0x4e>
c0108649:	00 00                	add    BYTE PTR [eax],al
	...

c010864c <__func__.1329>:
c010864c:	70 72                	jo     c01086c0 <__func__.1344+0x60>
c010864e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010864f:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c0108652:	73 5f                	jae    c01086b3 <__func__.1344+0x53>
c0108654:	61                   	popa   
c0108655:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c0108659:	61                   	popa   
c010865a:	74 65                	je     c01086c1 <__func__.1344+0x61>
c010865c:	00 00                	add    BYTE PTR [eax],al
	...

c0108660 <__func__.1344>:
c0108660:	70 72                	jo     c01086d4 <__func__.1344+0x74>
c0108662:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108663:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c0108666:	73 5f                	jae    c01086c7 <__func__.1344+0x67>
c0108668:	65 78 65             	gs js  c01086d0 <__func__.1344+0x70>
c010866b:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c010866e:	65 00 50 65          	add    BYTE PTR gs:[eax+0x65],dl
c0108672:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108673:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108676:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010867b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010867d:	20 28                	and    BYTE PTR [eax],ch
c010867f:	50                   	push   eax
c0108680:	4b                   	dec    ebx
c0108681:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108682:	29 20                	sub    DWORD PTR [eax],esp
c0108684:	30 2e                	xor    BYTE PTR [esi],ch
c0108686:	30 2e                	xor    BYTE PTR [esi],ch
c0108688:	31 20                	xor    DWORD PTR [eax],esp
c010868a:	41                   	inc    ecx
c010868b:	75 67                	jne    c01086f4 <keymap+0x18>
c010868d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0108690:	50                   	push   eax
c0108691:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108693:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108696:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010869b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010869d:	20 28                	and    BYTE PTR [eax],ch
c010869f:	50                   	push   eax
c01086a0:	4b                   	dec    ebx
c01086a1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01086a2:	29 20                	sub    DWORD PTR [eax],esp
c01086a4:	30 2e                	xor    BYTE PTR [esi],ch
c01086a6:	30 2e                	xor    BYTE PTR [esi],ch
c01086a8:	31 20                	xor    DWORD PTR [eax],esp
c01086aa:	41                   	inc    ecx
c01086ab:	75 67                	jne    c0108714 <keymap+0x38>
c01086ad:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01086b0:	75 6e                	jne    c0108720 <keymap+0x44>
c01086b2:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c01086b6:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c01086b9:	79 00                	jns    c01086bb <__func__.1344+0x5b>
c01086bb:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c01086be:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01086bf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01086c2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01086c7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01086c9:	20 28                	and    BYTE PTR [eax],ch
c01086cb:	50                   	push   eax
c01086cc:	4b                   	dec    ebx
c01086cd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01086ce:	29 20                	sub    DWORD PTR [eax],esp
c01086d0:	30 2e                	xor    BYTE PTR [esi],ch
c01086d2:	30 2e                	xor    BYTE PTR [esi],ch
c01086d4:	31 20                	xor    DWORD PTR [eax],esp
c01086d6:	41                   	inc    ecx
c01086d7:	75 67                	jne    c0108740 <keymap+0x64>
c01086d9:	2e 00 00             	add    BYTE PTR cs:[eax],al

c01086dc <keymap>:
c01086dc:	00 00                	add    BYTE PTR [eax],al
c01086de:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c01086e0:	31 21                	xor    DWORD PTR [ecx],esp
c01086e2:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c01086e5:	23 34 24             	and    esi,DWORD PTR [esp]
c01086e8:	35 25 36 5e 37       	xor    eax,0x375e3625
c01086ed:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c01086f0:	39 28                	cmp    DWORD PTR [eax],ebp
c01086f2:	30 29                	xor    BYTE PTR [ecx],ch
c01086f4:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c01086f9:	08 09                	or     BYTE PTR [ecx],cl
c01086fb:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c01086fe:	77 57                	ja     c0108757 <keymap+0x7b>
c0108700:	65 45                	gs inc ebp
c0108702:	72 52                	jb     c0108756 <keymap+0x7a>
c0108704:	74 54                	je     c010875a <keymap+0x7e>
c0108706:	79 59                	jns    c0108761 <keymap+0x85>
c0108708:	75 55                	jne    c010875f <keymap+0x83>
c010870a:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c0108711:	7b 5d                	jnp    c0108770 <keymap+0x94>
c0108713:	7d 0d                	jge    c0108722 <keymap+0x46>
c0108715:	0d 00 00 61 41       	or     eax,0x41610000
c010871a:	73 53                	jae    c010876f <keymap+0x93>
c010871c:	64 44                	fs inc esp
c010871e:	66 46                	inc    si
c0108720:	67 47                	addr16 inc edi
c0108722:	68 48 6a 4a 6b       	push   0x6b4a6a48
c0108727:	4b                   	dec    ebx
c0108728:	6c                   	ins    BYTE PTR es:[edi],dx
c0108729:	4c                   	dec    esp
c010872a:	3b 3a                	cmp    edi,DWORD PTR [edx]
c010872c:	27                   	daa    
c010872d:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c0108730:	00 00                	add    BYTE PTR [eax],al
c0108732:	5c                   	pop    esp
c0108733:	7c 7a                	jl     c01087af <keymap+0xd3>
c0108735:	5a                   	pop    edx
c0108736:	78 58                	js     c0108790 <keymap+0xb4>
c0108738:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c010873b:	56                   	push   esi
c010873c:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c010873f:	4e                   	dec    esi
c0108740:	6d                   	ins    DWORD PTR es:[edi],dx
c0108741:	4d                   	dec    ebp
c0108742:	2c 3c                	sub    al,0x3c
c0108744:	2e 3e 2f             	cs ds das 
c0108747:	3f                   	aas    
c0108748:	00 00                	add    BYTE PTR [eax],al
c010874a:	2a 2a                	sub    ch,BYTE PTR [edx]
c010874c:	00 00                	add    BYTE PTR [eax],al
c010874e:	20 20                	and    BYTE PTR [eax],ah
c0108750:	00 00                	add    BYTE PTR [eax],al
c0108752:	00 00                	add    BYTE PTR [eax],al
c0108754:	50                   	push   eax
c0108755:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108757:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010875a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010875f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108761:	20 28                	and    BYTE PTR [eax],ch
c0108763:	50                   	push   eax
c0108764:	4b                   	dec    ebx
c0108765:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108766:	29 20                	sub    DWORD PTR [eax],esp
c0108768:	30 2e                	xor    BYTE PTR [esi],ch
c010876a:	30 2e                	xor    BYTE PTR [esi],ch
c010876c:	31 20                	xor    DWORD PTR [eax],esp
c010876e:	41                   	inc    ecx
c010876f:	75 67                	jne    c01087d8 <keymap+0xfc>
c0108771:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0108774:	50                   	push   eax
c0108775:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108777:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010877a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010877f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108781:	20 28                	and    BYTE PTR [eax],ch
c0108783:	50                   	push   eax
c0108784:	4b                   	dec    ebx
c0108785:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108786:	29 20                	sub    DWORD PTR [eax],esp
c0108788:	30 2e                	xor    BYTE PTR [esi],ch
c010878a:	30 2e                	xor    BYTE PTR [esi],ch
c010878c:	31 20                	xor    DWORD PTR [eax],esp
c010878e:	41                   	inc    ecx
c010878f:	75 67                	jne    c01087f8 <keymap+0x11c>
c0108791:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0108794:	50                   	push   eax
c0108795:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108797:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010879a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010879f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01087a1:	20 28                	and    BYTE PTR [eax],ch
c01087a3:	50                   	push   eax
c01087a4:	4b                   	dec    ebx
c01087a5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01087a6:	29 20                	sub    DWORD PTR [eax],esp
c01087a8:	30 2e                	xor    BYTE PTR [esi],ch
c01087aa:	30 2e                	xor    BYTE PTR [esi],ch
c01087ac:	31 20                	xor    DWORD PTR [eax],esp
c01087ae:	41                   	inc    ecx
c01087af:	75 67                	jne    c0108818 <keymap+0x13c>
c01087b1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01087b4:	50                   	push   eax
c01087b5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01087b7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01087ba:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01087bf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01087c1:	20 28                	and    BYTE PTR [eax],ch
c01087c3:	50                   	push   eax
c01087c4:	4b                   	dec    ebx
c01087c5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01087c6:	29 20                	sub    DWORD PTR [eax],esp
c01087c8:	30 2e                	xor    BYTE PTR [esi],ch
c01087ca:	30 2e                	xor    BYTE PTR [esi],ch
c01087cc:	31 20                	xor    DWORD PTR [eax],esp
c01087ce:	41                   	inc    ecx
c01087cf:	75 67                	jne    c0108838 <keymap+0x15c>
c01087d1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01087d4:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c01087d7:	65 5f                	gs pop edi
c01087d9:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c01087e0:	20 28                	and    BYTE PTR [eax],ch
c01087e2:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c01087e6:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c01087eb:	70 5f                	jo     c010884c <__func__.868+0xc>
c01087ed:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c01087f0:	65 73 5f             	gs jae c0108852 <__func__.885+0x2>
c01087f3:	6c                   	ins    BYTE PTR es:[edi],dx
c01087f4:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01087f6:	29 00                	sub    DWORD PTR [eax],eax
c01087f8:	6c                   	ins    BYTE PTR es:[edi],dx
c01087f9:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c0108800:	61                   	popa   
c0108801:	70 2e                	jo     c0108831 <keymap+0x155>
c0108803:	63 00                	arpl   WORD PTR [eax],ax
c0108805:	76 61                	jbe    c0108868 <__func__.885+0x18>
c0108807:	6c                   	ins    BYTE PTR es:[edi],dx
c0108808:	75 65                	jne    c010886f <__func__.885+0x1f>
c010880a:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c0108810:	7c 7c                	jl     c010888e <__func__.885+0x3e>
c0108812:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c0108815:	6c                   	ins    BYTE PTR es:[edi],dx
c0108816:	75 65                	jne    c010887d <__func__.885+0x2d>
c0108818:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c010881e:	00 00                	add    BYTE PTR [eax],al
c0108820:	50                   	push   eax
c0108821:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108823:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108826:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010882b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010882d:	20 28                	and    BYTE PTR [eax],ch
c010882f:	50                   	push   eax
c0108830:	4b                   	dec    ebx
c0108831:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108832:	29 20                	sub    DWORD PTR [eax],esp
c0108834:	30 2e                	xor    BYTE PTR [esi],ch
c0108836:	30 2e                	xor    BYTE PTR [esi],ch
c0108838:	31 20                	xor    DWORD PTR [eax],esp
c010883a:	41                   	inc    ecx
c010883b:	75 67                	jne    c01088a4 <__func__.885+0x54>
c010883d:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108840 <__func__.868>:
c0108840:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c0108843:	6d                   	ins    DWORD PTR es:[edi],dx
c0108844:	61                   	popa   
c0108845:	70 5f                	jo     c01088a6 <__func__.885+0x56>
c0108847:	61                   	popa   
c0108848:	6c                   	ins    BYTE PTR es:[edi],dx
c0108849:	6c                   	ins    BYTE PTR es:[edi],dx
c010884a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010884b:	63 00                	arpl   WORD PTR [eax],ax
c010884d:	00 00                	add    BYTE PTR [eax],al
	...

c0108850 <__func__.885>:
c0108850:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c0108853:	6d                   	ins    DWORD PTR es:[edi],dx
c0108854:	61                   	popa   
c0108855:	70 5f                	jo     c01088b6 <__func__.885+0x66>
c0108857:	73 65                	jae    c01088be <__func__.885+0x6e>
c0108859:	74 00                	je     c010885b <__func__.885+0xb>
c010885b:	00 66 69             	add    BYTE PTR [esi+0x69],ah
c010885e:	66 6f                	outs   dx,WORD PTR ds:[esi]
c0108860:	2d 3e 74 79 70       	sub    eax,0x7079743e
c0108865:	65 20 3d 3d 20 38 20 	and    BYTE PTR gs:0x2038203d,bh
c010886c:	7c 7c                	jl     c01088ea <__func__.1166+0x6>
c010886e:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c0108871:	66 6f                	outs   dx,WORD PTR ds:[esi]
c0108873:	2d 3e 74 79 70       	sub    eax,0x7079743e
c0108878:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c010887f:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c0108883:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c0108889:	74 79                	je     c0108904 <__func__.1166+0x20>
c010888b:	70 65                	jo     c01088f2 <__func__.1166+0xe>
c010888d:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c0108893:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c0108897:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010889d:	74 79                	je     c0108918 <__func__.1166+0x34>
c010889f:	70 65                	jo     c0108906 <__func__.1166+0x22>
c01088a1:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c01088a7:	00 64 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],ah
c01088ab:	69 63 65 2f 66 69 66 	imul   esp,DWORD PTR [ebx+0x65],0x6669662f
c01088b2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01088b3:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c01088b6:	00 00                	add    BYTE PTR [eax],al
c01088b8:	50                   	push   eax
c01088b9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01088bb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01088be:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01088c3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01088c5:	20 28                	and    BYTE PTR [eax],ch
c01088c7:	50                   	push   eax
c01088c8:	4b                   	dec    ebx
c01088c9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01088ca:	29 20                	sub    DWORD PTR [eax],esp
c01088cc:	30 2e                	xor    BYTE PTR [esi],ch
c01088ce:	30 2e                	xor    BYTE PTR [esi],ch
c01088d0:	31 20                	xor    DWORD PTR [eax],esp
c01088d2:	41                   	inc    ecx
c01088d3:	75 67                	jne    c010893c <__func__.1166+0x58>
c01088d5:	2e 00 00             	add    BYTE PTR cs:[eax],al

c01088d8 <__func__.1155>:
c01088d8:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c01088de:	75 74                	jne    c0108954 <__func__.1166+0x70>
c01088e0:	00 00                	add    BYTE PTR [eax],al
	...

c01088e4 <__func__.1166>:
c01088e4:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c01088ea:	65 74 00             	gs je  c01088ed <__func__.1166+0x9>
c01088ed:	00 00                	add    BYTE PTR [eax],al
c01088ef:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c01088f2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01088f3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01088f6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01088fb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01088fd:	20 28                	and    BYTE PTR [eax],ch
c01088ff:	50                   	push   eax
c0108900:	4b                   	dec    ebx
c0108901:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108902:	29 20                	sub    DWORD PTR [eax],esp
c0108904:	30 2e                	xor    BYTE PTR [esi],ch
c0108906:	30 2e                	xor    BYTE PTR [esi],ch
c0108908:	31 20                	xor    DWORD PTR [eax],esp
c010890a:	41                   	inc    ecx
c010890b:	75 67                	jne    c0108974 <digits.1045+0xc>
c010890d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0108910:	b5 35                	mov    ch,0x35
c0108912:	10 c0                	adc    al,al
c0108914:	71 35                	jno    c010894b <__func__.1166+0x67>
c0108916:	10 c0                	adc    al,al
c0108918:	71 35                	jno    c010894f <__func__.1166+0x6b>
c010891a:	10 c0                	adc    al,al
c010891c:	71 35                	jno    c0108953 <__func__.1166+0x6f>
c010891e:	10 c0                	adc    al,al
c0108920:	71 35                	jno    c0108957 <__func__.1166+0x73>
c0108922:	10 c0                	adc    al,al
c0108924:	71 35                	jno    c010895b <__func__.1166+0x77>
c0108926:	10 c0                	adc    al,al
c0108928:	71 35                	jno    c010895f <__func__.1166+0x7b>
c010892a:	10 c0                	adc    al,al
c010892c:	71 35                	jno    c0108963 <__func__.1166+0x7f>
c010892e:	10 c0                	adc    al,al
c0108930:	4a                   	dec    edx
c0108931:	35 10 c0 69 35       	xor    eax,0x3569c010
c0108936:	10 c0                	adc    al,al
c0108938:	58                   	pop    eax
c0108939:	35 10 c0 71 35       	xor    eax,0x3571c010
c010893e:	10 c0                	adc    al,al
c0108940:	71 35                	jno    c0108977 <digits.1045+0xf>
c0108942:	10 c0                	adc    al,al
c0108944:	58                   	pop    eax
c0108945:	35 10 c0 50 65       	xor    eax,0x6550c010
c010894a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010894b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010894e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108953:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108955:	20 28                	and    BYTE PTR [eax],ch
c0108957:	50                   	push   eax
c0108958:	4b                   	dec    ebx
c0108959:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010895a:	29 20                	sub    DWORD PTR [eax],esp
c010895c:	30 2e                	xor    BYTE PTR [esi],ch
c010895e:	30 2e                	xor    BYTE PTR [esi],ch
c0108960:	31 20                	xor    DWORD PTR [eax],esp
c0108962:	41                   	inc    ecx
c0108963:	75 67                	jne    c01089cc <digits.1064+0x3c>
c0108965:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108968 <digits.1045>:
c0108968:	30 31                	xor    BYTE PTR [ecx],dh
c010896a:	32 33                	xor    dh,BYTE PTR [ebx]
c010896c:	34 35                	xor    al,0x35
c010896e:	36 37                	ss aaa 
c0108970:	38 39                	cmp    BYTE PTR [ecx],bh
c0108972:	41                   	inc    ecx
c0108973:	42                   	inc    edx
c0108974:	43                   	inc    ebx
c0108975:	44                   	inc    esp
c0108976:	45                   	inc    ebp
c0108977:	46                   	inc    esi
c0108978:	47                   	inc    edi
c0108979:	48                   	dec    eax
c010897a:	49                   	dec    ecx
c010897b:	4a                   	dec    edx
c010897c:	4b                   	dec    ebx
c010897d:	4c                   	dec    esp
c010897e:	4d                   	dec    ebp
c010897f:	4e                   	dec    esi
c0108980:	4f                   	dec    edi
c0108981:	50                   	push   eax
c0108982:	51                   	push   ecx
c0108983:	52                   	push   edx
c0108984:	53                   	push   ebx
c0108985:	54                   	push   esp
c0108986:	55                   	push   ebp
c0108987:	56                   	push   esi
c0108988:	57                   	push   edi
c0108989:	58                   	pop    eax
c010898a:	59                   	pop    ecx
c010898b:	5a                   	pop    edx
c010898c:	00 00                	add    BYTE PTR [eax],al
	...

c0108990 <digits.1064>:
c0108990:	30 31                	xor    BYTE PTR [ecx],dh
c0108992:	32 33                	xor    dh,BYTE PTR [ebx]
c0108994:	34 35                	xor    al,0x35
c0108996:	36 37                	ss aaa 
c0108998:	38 39                	cmp    BYTE PTR [ecx],bh
c010899a:	41                   	inc    ecx
c010899b:	42                   	inc    edx
c010899c:	43                   	inc    ebx
c010899d:	44                   	inc    esp
c010899e:	45                   	inc    ebp
c010899f:	46                   	inc    esi
c01089a0:	47                   	inc    edi
c01089a1:	48                   	dec    eax
c01089a2:	49                   	dec    ecx
c01089a3:	4a                   	dec    edx
c01089a4:	4b                   	dec    ebx
c01089a5:	4c                   	dec    esp
c01089a6:	4d                   	dec    ebp
c01089a7:	4e                   	dec    esi
c01089a8:	4f                   	dec    edi
c01089a9:	50                   	push   eax
c01089aa:	51                   	push   ecx
c01089ab:	52                   	push   edx
c01089ac:	53                   	push   ebx
c01089ad:	54                   	push   esp
c01089ae:	55                   	push   ebp
c01089af:	56                   	push   esi
c01089b0:	57                   	push   edi
c01089b1:	58                   	pop    eax
c01089b2:	59                   	pop    ecx
c01089b3:	5a                   	pop    edx
c01089b4:	00 00                	add    BYTE PTR [eax],al
c01089b6:	00 00                	add    BYTE PTR [eax],al
c01089b8:	64 73 74             	fs jae c0108a2f <digits.1064+0x9f>
c01089bb:	5f                   	pop    edi
c01089bc:	5f                   	pop    edi
c01089bd:	20 21                	and    BYTE PTR [ecx],ah
c01089bf:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c01089c4:	4c                   	dec    esp
c01089c5:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c01089c9:	63 2f                	arpl   WORD PTR [edi],bp
c01089cb:	73 74                	jae    c0108a41 <__func__.864+0x1>
c01089cd:	72 69                	jb     c0108a38 <__func__.852>
c01089cf:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01089d0:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c01089d4:	64 73 74             	fs jae c0108a4b <__func__.864+0xb>
c01089d7:	5f                   	pop    edi
c01089d8:	5f                   	pop    edi
c01089d9:	20 21                	and    BYTE PTR [ecx],ah
c01089db:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c01089e0:	4c                   	dec    esp
c01089e1:	20 26                	and    BYTE PTR [esi],ah
c01089e3:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c01089e7:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c01089ea:	20 21                	and    BYTE PTR [ecx],ah
c01089ec:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c01089f1:	4c                   	dec    esp
c01089f2:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c01089f5:	5f                   	pop    edi
c01089f6:	5f                   	pop    edi
c01089f7:	20 21                	and    BYTE PTR [ecx],ah
c01089f9:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c01089fe:	4c                   	dec    esp
c01089ff:	20 26                	and    BYTE PTR [esi],ah
c0108a01:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c0108a05:	5f                   	pop    edi
c0108a06:	5f                   	pop    edi
c0108a07:	20 21                	and    BYTE PTR [ecx],ah
c0108a09:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0108a0e:	4c                   	dec    esp
c0108a0f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0108a12:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108a13:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108a16:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108a1b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108a1d:	20 28                	and    BYTE PTR [eax],ch
c0108a1f:	50                   	push   eax
c0108a20:	4b                   	dec    ebx
c0108a21:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108a22:	29 20                	sub    DWORD PTR [eax],esp
c0108a24:	30 2e                	xor    BYTE PTR [esi],ch
c0108a26:	30 2e                	xor    BYTE PTR [esi],ch
c0108a28:	31 20                	xor    DWORD PTR [eax],esp
c0108a2a:	41                   	inc    ecx
c0108a2b:	75 67                	jne    c0108a94 <pid_lock>
c0108a2d:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108a30 <__func__.841>:
c0108a30:	6d                   	ins    DWORD PTR es:[edi],dx
c0108a31:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0108a33:	73 65                	jae    c0108a9a <pid_lock+0x6>
c0108a35:	74 00                	je     c0108a37 <__func__.841+0x7>
	...

c0108a38 <__func__.852>:
c0108a38:	6d                   	ins    DWORD PTR es:[edi],dx
c0108a39:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0108a3b:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c0108a40 <__func__.864>:
c0108a40:	6d                   	ins    DWORD PTR es:[edi],dx
c0108a41:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0108a43:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
c0108a46:	00 00                	add    BYTE PTR [eax],al
c0108a48:	50                   	push   eax
c0108a49:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108a4b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108a4e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108a53:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108a55:	20 28                	and    BYTE PTR [eax],ch
c0108a57:	50                   	push   eax
c0108a58:	4b                   	dec    ebx
c0108a59:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108a5a:	29 20                	sub    DWORD PTR [eax],esp
c0108a5c:	30 2e                	xor    BYTE PTR [esi],ch
c0108a5e:	30 2e                	xor    BYTE PTR [esi],ch
c0108a60:	31 20                	xor    DWORD PTR [eax],esp
c0108a62:	41                   	inc    ecx
c0108a63:	75 67                	jne    c0108acc <tss+0x10>
c0108a65:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0108a68:	50                   	push   eax
c0108a69:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108a6b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108a6e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108a73:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108a75:	20 28                	and    BYTE PTR [eax],ch
c0108a77:	50                   	push   eax
c0108a78:	4b                   	dec    ebx
c0108a79:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108a7a:	29 20                	sub    DWORD PTR [eax],esp
c0108a7c:	30 2e                	xor    BYTE PTR [esi],ch
c0108a7e:	30 2e                	xor    BYTE PTR [esi],ch
c0108a80:	31 20                	xor    DWORD PTR [eax],esp
c0108a82:	41                   	inc    ecx
c0108a83:	75 67                	jne    c0108aec <tss+0x30>
c0108a85:	2e                   	cs
	...

Disassembly of section .bss:

c0108a88 <_bss>:
c0108a88:	00 00                	add    BYTE PTR [eax],al
	...

c0108a8c <ta>:
c0108a8c:	00 00                	add    BYTE PTR [eax],al
	...

c0108a90 <user_pool_start>:
c0108a90:	00 00                	add    BYTE PTR [eax],al
	...

c0108a94 <pid_lock>:
	...

c0108ab8 <this_thread_tag>:
c0108ab8:	00 00                	add    BYTE PTR [eax],al
	...

c0108abc <tss>:
	...

c0108b28 <console_lock>:
	...

c0108b4c <buf>:
	...

c0108b8c <shift_status>:
c0108b8c:	00 00                	add    BYTE PTR [eax],al
	...

c0108b90 <casplock_status>:
c0108b90:	00 00                	add    BYTE PTR [eax],al
	...

c0108b94 <ext_scandcode>:
c0108b94:	00 00                	add    BYTE PTR [eax],al
	...

c0108b98 <ctrl_status>:
c0108b98:	00 00                	add    BYTE PTR [eax],al
	...

c0108b9c <alt_status>:
c0108b9c:	00 00                	add    BYTE PTR [eax],al
	...

c0108ba0 <i>:
c0108ba0:	00 00                	add    BYTE PTR [eax],al
	...

c0108ba4 <MouseData>:
	...

c0108bbc <ticks>:
c0108bbc:	00 00                	add    BYTE PTR [eax],al
	...

c0108bc0 <_ebss>:
	...

c0108cf8 <idt>:
	...

c0108f68 <idt_table>:
	...

c01090a0 <kvinfo>:
	...

c0110da0 <k_desc>:
	...

c0110e60 <user_pool>:
	...

c0110e9c <kernel_vaddr>:
	...

c0110ed8 <upinfo>:
	...

c0118bd8 <kpinfo>:
	...

c01208d8 <kernel_pool>:
	...

c0120914 <ready_list>:
	...

c012092c <all_list>:
	...

c0120944 <main_thread>:
c0120944:	00 00                	add    BYTE PTR [eax],al
	...

c0120948 <keybuf>:
	...

c012098c <syscall_table>:
	...

c01209b4 <background>:
c01209b4:	00 00                	add    BYTE PTR [eax],al
	...

c01209b8 <Screen_Ctl>:
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
