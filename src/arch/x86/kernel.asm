
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
c0007f13:	0f 01 15 d8 aa 00 c0 	lgdtd  ds:0xc000aad8
c0007f1a:	e9 05 00 00 00       	jmp    c0007f24 <kernel_main>
c0007f1f:	e9 fb ff ff ff       	jmp    c0007f1f <_start+0x1f>

c0007f24 <kernel_main>:
c0007f24:	55                   	push   ebp
c0007f25:	89 e5                	mov    ebp,esp
c0007f27:	53                   	push   ebx
c0007f28:	bb 23 00 00 00       	mov    ebx,0x23
c0007f2d:	50                   	push   eax
c0007f2e:	50                   	push   eax
c0007f2f:	50                   	push   eax
c0007f30:	6a 0a                	push   0xa
c0007f32:	6a 07                	push   0x7
c0007f34:	e8 eb 1f 00 00       	call   c0009f24 <put_char>
c0007f39:	83 c4 10             	add    esp,0x10
c0007f3c:	4b                   	dec    ebx
c0007f3d:	75 ef                	jne    c0007f2e <kernel_main+0xa>
c0007f3f:	83 ec 0c             	sub    esp,0xc
c0007f42:	6a 00                	push   0x0
c0007f44:	e8 b4 1f 00 00       	call   c0009efd <set_cursor>
c0007f49:	e8 82 0b 00 00       	call   c0008ad0 <init_all>
c0007f4e:	e8 b0 17 00 00       	call   c0009703 <intr_enable>
c0007f53:	58                   	pop    eax
c0007f54:	5a                   	pop    edx
c0007f55:	68 0c d3 00 c0       	push   0xc000d30c
c0007f5a:	6a 07                	push   0x7
c0007f5c:	e8 64 20 00 00       	call   c0009fc5 <put_str>
c0007f61:	59                   	pop    ecx
c0007f62:	5b                   	pop    ebx
c0007f63:	68 35 d3 00 c0       	push   0xc000d335
c0007f68:	6a 07                	push   0x7
c0007f6a:	e8 56 20 00 00       	call   c0009fc5 <put_str>
c0007f6f:	58                   	pop    eax
c0007f70:	5a                   	pop    edx
c0007f71:	68 6f d3 00 c0       	push   0xc000d36f
c0007f76:	6a 07                	push   0x7
c0007f78:	e8 48 20 00 00       	call   c0009fc5 <put_str>
c0007f7d:	e8 28 06 00 00       	call   c00085aa <cpu_info>
c0007f82:	59                   	pop    ecx
c0007f83:	5b                   	pop    ebx
c0007f84:	6a 0a                	push   0xa
c0007f86:	6a 07                	push   0x7
c0007f88:	e8 97 1f 00 00       	call   c0009f24 <put_char>
c0007f8d:	58                   	pop    eax
c0007f8e:	5a                   	pop    edx
c0007f8f:	68 78 d3 00 c0       	push   0xc000d378
c0007f94:	6a 07                	push   0x7
c0007f96:	e8 2a 20 00 00       	call   c0009fc5 <put_str>
c0007f9b:	83 c4 0c             	add    esp,0xc
c0007f9e:	6a 0a                	push   0xa
c0007fa0:	a1 00 7c 00 00       	mov    eax,ds:0x7c00
c0007fa5:	c1 e8 14             	shr    eax,0x14
c0007fa8:	50                   	push   eax
c0007fa9:	6a 07                	push   0x7
c0007fab:	e8 77 20 00 00       	call   c000a027 <put_int>
c0007fb0:	59                   	pop    ecx
c0007fb1:	5b                   	pop    ebx
c0007fb2:	68 81 d3 00 c0       	push   0xc000d381
c0007fb7:	6a 07                	push   0x7
c0007fb9:	e8 07 20 00 00       	call   c0009fc5 <put_str>
c0007fbe:	83 c4 0c             	add    esp,0xc
c0007fc1:	6a 0a                	push   0xa
c0007fc3:	a1 00 7c 00 00       	mov    eax,ds:0x7c00
c0007fc8:	c1 e8 0a             	shr    eax,0xa
c0007fcb:	50                   	push   eax
c0007fcc:	6a 07                	push   0x7
c0007fce:	e8 54 20 00 00       	call   c000a027 <put_int>
c0007fd3:	58                   	pop    eax
c0007fd4:	5a                   	pop    edx
c0007fd5:	68 87 d3 00 c0       	push   0xc000d387
c0007fda:	6a 07                	push   0x7
c0007fdc:	e8 e4 1f 00 00       	call   c0009fc5 <put_str>
c0007fe1:	59                   	pop    ecx
c0007fe2:	5b                   	pop    ebx
c0007fe3:	6a 0a                	push   0xa
c0007fe5:	6a 07                	push   0x7
c0007fe7:	e8 38 1f 00 00       	call   c0009f24 <put_char>
c0007fec:	58                   	pop    eax
c0007fed:	5a                   	pop    edx
c0007fee:	68 8d d3 00 c0       	push   0xc000d38d
c0007ff3:	6a 07                	push   0x7
c0007ff5:	e8 cb 1f 00 00       	call   c0009fc5 <put_str>
c0007ffa:	83 c4 0c             	add    esp,0xc
c0007ffd:	6a 0a                	push   0xa
c0007fff:	ff 35 08 7c 00 00    	push   DWORD PTR ds:0x7c08
c0008005:	6a 07                	push   0x7
c0008007:	e8 1b 20 00 00       	call   c000a027 <put_int>
c000800c:	59                   	pop    ecx
c000800d:	5b                   	pop    ebx
c000800e:	6a 0a                	push   0xa
c0008010:	6a 07                	push   0x7
c0008012:	e8 0d 1f 00 00       	call   c0009f24 <put_char>
c0008017:	c7 04 24 96 d3 00 c0 	mov    DWORD PTR [esp],0xc000d396
c000801e:	68 ff ff ff 00       	push   0xffffff
c0008023:	6a 14                	push   0x14
c0008025:	6a 14                	push   0x14
c0008027:	68 5c df 00 c0       	push   0xc000df5c
c000802c:	e8 65 0a 00 00       	call   c0008a96 <put_str_graphic>
c0008031:	83 c4 14             	add    esp,0x14
c0008034:	68 bd d3 00 c0       	push   0xc000d3bd
c0008039:	68 ff ff ff 00       	push   0xffffff
c000803e:	6a 28                	push   0x28
c0008040:	6a 14                	push   0x14
c0008042:	68 5c df 00 c0       	push   0xc000df5c
c0008047:	e8 4a 0a 00 00       	call   c0008a96 <put_str_graphic>
c000804c:	83 c4 18             	add    esp,0x18
c000804f:	68 f6 d3 00 c0       	push   0xc000d3f6
c0008054:	6a 07                	push   0x7
c0008056:	e8 6a 1f 00 00       	call   c0009fc5 <put_str>
c000805b:	58                   	pop    eax
c000805c:	5a                   	pop    edx
c000805d:	68 fb d3 00 c0       	push   0xc000d3fb
c0008062:	6a 07                	push   0x7
c0008064:	e8 5c 1f 00 00       	call   c0009fc5 <put_str>
c0008069:	e8 21 24 00 00       	call   c000a48f <running_thread>
c000806e:	83 c4 0c             	add    esp,0xc
c0008071:	6a 10                	push   0x10
c0008073:	50                   	push   eax
c0008074:	6a 07                	push   0x7
c0008076:	e8 72 1f 00 00       	call   c0009fed <put_uint>
c000807b:	59                   	pop    ecx
c000807c:	5b                   	pop    ebx
c000807d:	68 0c d4 00 c0       	push   0xc000d40c
c0008082:	6a 07                	push   0x7
c0008084:	e8 3c 1f 00 00       	call   c0009fc5 <put_str>
c0008089:	83 c4 10             	add    esp,0x10
c000808c:	eb fe                	jmp    c000808c <kernel_main+0x168>

c000808e <k_thread_a>:
c000808e:	55                   	push   ebp
c000808f:	89 e5                	mov    ebp,esp
c0008091:	57                   	push   edi
c0008092:	56                   	push   esi
c0008093:	53                   	push   ebx
c0008094:	83 ec 28             	sub    esp,0x28
c0008097:	c7 45 e2 30 30 30 30 	mov    DWORD PTR [ebp-0x1e],0x30303030
c000809e:	8d 5d e2             	lea    ebx,[ebp-0x1e]
c00080a1:	66 c7 45 e6 30 00    	mov    WORD PTR [ebp-0x1a],0x30
c00080a7:	8b 35 1c 7c 00 00    	mov    esi,DWORD PTR ds:0x7c1c
c00080ad:	68 44 df 00 c0       	push   0xc000df44
c00080b2:	e8 35 27 00 00       	call   c000a7ec <get_time>
c00080b7:	83 c4 10             	add    esp,0x10
c00080ba:	83 ee 22             	sub    esi,0x22
c00080bd:	8b 15 1c 7c 00 00    	mov    edx,DWORD PTR ds:0x7c1c
c00080c3:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c00080c8:	51                   	push   ecx
c00080c9:	8b 3d 44 df 00 c0    	mov    edi,DWORD PTR ds:0xc000df44
c00080cf:	51                   	push   ecx
c00080d0:	8d 4a f8             	lea    ecx,[edx-0x8]
c00080d3:	83 ea 26             	sub    edx,0x26
c00080d6:	51                   	push   ecx
c00080d7:	8d 48 f9             	lea    ecx,[eax-0x7]
c00080da:	2d d1 00 00 00       	sub    eax,0xd1
c00080df:	51                   	push   ecx
c00080e0:	52                   	push   edx
c00080e1:	50                   	push   eax
c00080e2:	68 84 84 84 00       	push   0x848484
c00080e7:	68 5c df 00 c0       	push   0xc000df5c
c00080ec:	e8 b7 07 00 00       	call   c00088a8 <RectangleFill>
c00080f1:	8b 15 1c 7c 00 00    	mov    edx,DWORD PTR ds:0x7c1c
c00080f7:	83 c4 18             	add    esp,0x18
c00080fa:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c00080ff:	8d 4a f5             	lea    ecx,[edx-0xb]
c0008102:	83 ea 29             	sub    edx,0x29
c0008105:	51                   	push   ecx
c0008106:	8d 48 f6             	lea    ecx,[eax-0xa]
c0008109:	2d d4 00 00 00       	sub    eax,0xd4
c000810e:	51                   	push   ecx
c000810f:	52                   	push   edx
c0008110:	50                   	push   eax
c0008111:	68 ff ff ff 00       	push   0xffffff
c0008116:	68 5c df 00 c0       	push   0xc000df5c
c000811b:	e8 88 07 00 00       	call   c00088a8 <RectangleFill>
c0008120:	a1 58 df 00 c0       	mov    eax,ds:0xc000df58
c0008125:	83 c4 1c             	add    esp,0x1c
c0008128:	6a 10                	push   0x10
c000812a:	53                   	push   ebx
c000812b:	50                   	push   eax
c000812c:	e8 bf 1c 00 00       	call   c0009df0 <itoa>
c0008131:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008134:	6a 00                	push   0x0
c0008136:	56                   	push   esi
c0008137:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c000813c:	2d ca 00 00 00       	sub    eax,0xca
c0008141:	50                   	push   eax
c0008142:	68 5c df 00 c0       	push   0xc000df5c
c0008147:	e8 4a 09 00 00       	call   c0008a96 <put_str_graphic>
c000814c:	83 c4 14             	add    esp,0x14
c000814f:	6a 2f                	push   0x2f
c0008151:	6a 00                	push   0x0
c0008153:	56                   	push   esi
c0008154:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0008159:	2d a2 00 00 00       	sub    eax,0xa2
c000815e:	50                   	push   eax
c000815f:	68 5c df 00 c0       	push   0xc000df5c
c0008164:	e8 a9 08 00 00       	call   c0008a12 <put_char_graphic>
c0008169:	a1 54 df 00 c0       	mov    eax,ds:0xc000df54
c000816e:	83 c4 1c             	add    esp,0x1c
c0008171:	6a 10                	push   0x10
c0008173:	53                   	push   ebx
c0008174:	50                   	push   eax
c0008175:	e8 76 1c 00 00       	call   c0009df0 <itoa>
c000817a:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000817d:	6a 00                	push   0x0
c000817f:	56                   	push   esi
c0008180:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0008185:	2d 98 00 00 00       	sub    eax,0x98
c000818a:	50                   	push   eax
c000818b:	68 5c df 00 c0       	push   0xc000df5c
c0008190:	e8 01 09 00 00       	call   c0008a96 <put_str_graphic>
c0008195:	83 c4 14             	add    esp,0x14
c0008198:	6a 2f                	push   0x2f
c000819a:	6a 00                	push   0x0
c000819c:	56                   	push   esi
c000819d:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c00081a2:	2d 84 00 00 00       	sub    eax,0x84
c00081a7:	50                   	push   eax
c00081a8:	68 5c df 00 c0       	push   0xc000df5c
c00081ad:	e8 60 08 00 00       	call   c0008a12 <put_char_graphic>
c00081b2:	a1 50 df 00 c0       	mov    eax,ds:0xc000df50
c00081b7:	83 c4 1c             	add    esp,0x1c
c00081ba:	6a 10                	push   0x10
c00081bc:	53                   	push   ebx
c00081bd:	50                   	push   eax
c00081be:	e8 2d 1c 00 00       	call   c0009df0 <itoa>
c00081c3:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00081c6:	6a 00                	push   0x0
c00081c8:	56                   	push   esi
c00081c9:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c00081ce:	83 e8 7a             	sub    eax,0x7a
c00081d1:	50                   	push   eax
c00081d2:	68 5c df 00 c0       	push   0xc000df5c
c00081d7:	e8 ba 08 00 00       	call   c0008a96 <put_str_graphic>
c00081dc:	83 c4 14             	add    esp,0x14
c00081df:	6a 20                	push   0x20
c00081e1:	6a 00                	push   0x0
c00081e3:	56                   	push   esi
c00081e4:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c00081e9:	83 e8 66             	sub    eax,0x66
c00081ec:	50                   	push   eax
c00081ed:	68 5c df 00 c0       	push   0xc000df5c
c00081f2:	e8 1b 08 00 00       	call   c0008a12 <put_char_graphic>
c00081f7:	a1 4c df 00 c0       	mov    eax,ds:0xc000df4c
c00081fc:	83 c4 1c             	add    esp,0x1c
c00081ff:	6a 10                	push   0x10
c0008201:	53                   	push   ebx
c0008202:	50                   	push   eax
c0008203:	e8 e8 1b 00 00       	call   c0009df0 <itoa>
c0008208:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000820b:	6a 00                	push   0x0
c000820d:	56                   	push   esi
c000820e:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0008213:	83 e8 5c             	sub    eax,0x5c
c0008216:	50                   	push   eax
c0008217:	68 5c df 00 c0       	push   0xc000df5c
c000821c:	e8 75 08 00 00       	call   c0008a96 <put_str_graphic>
c0008221:	83 c4 14             	add    esp,0x14
c0008224:	6a 3a                	push   0x3a
c0008226:	6a 00                	push   0x0
c0008228:	56                   	push   esi
c0008229:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c000822e:	83 e8 48             	sub    eax,0x48
c0008231:	50                   	push   eax
c0008232:	68 5c df 00 c0       	push   0xc000df5c
c0008237:	e8 d6 07 00 00       	call   c0008a12 <put_char_graphic>
c000823c:	a1 48 df 00 c0       	mov    eax,ds:0xc000df48
c0008241:	83 c4 1c             	add    esp,0x1c
c0008244:	6a 10                	push   0x10
c0008246:	53                   	push   ebx
c0008247:	50                   	push   eax
c0008248:	e8 a3 1b 00 00       	call   c0009df0 <itoa>
c000824d:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008250:	6a 00                	push   0x0
c0008252:	56                   	push   esi
c0008253:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0008258:	83 e8 3e             	sub    eax,0x3e
c000825b:	50                   	push   eax
c000825c:	68 5c df 00 c0       	push   0xc000df5c
c0008261:	e8 30 08 00 00       	call   c0008a96 <put_str_graphic>
c0008266:	83 c4 14             	add    esp,0x14
c0008269:	6a 3a                	push   0x3a
c000826b:	6a 00                	push   0x0
c000826d:	56                   	push   esi
c000826e:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0008273:	83 e8 2a             	sub    eax,0x2a
c0008276:	50                   	push   eax
c0008277:	68 5c df 00 c0       	push   0xc000df5c
c000827c:	e8 91 07 00 00       	call   c0008a12 <put_char_graphic>
c0008281:	a1 44 df 00 c0       	mov    eax,ds:0xc000df44
c0008286:	83 c4 1c             	add    esp,0x1c
c0008289:	6a 10                	push   0x10
c000828b:	53                   	push   ebx
c000828c:	50                   	push   eax
c000828d:	e8 5e 1b 00 00       	call   c0009df0 <itoa>
c0008292:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008295:	6a 00                	push   0x0
c0008297:	56                   	push   esi
c0008298:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c000829d:	83 e8 20             	sub    eax,0x20
c00082a0:	50                   	push   eax
c00082a1:	68 5c df 00 c0       	push   0xc000df5c
c00082a6:	e8 eb 07 00 00       	call   c0008a96 <put_str_graphic>
c00082ab:	83 c4 20             	add    esp,0x20
c00082ae:	eb 10                	jmp    c00082c0 <k_thread_a+0x232>
c00082b0:	83 ec 0c             	sub    esp,0xc
c00082b3:	68 44 df 00 c0       	push   0xc000df44
c00082b8:	e8 2f 25 00 00       	call   c000a7ec <get_time>
c00082bd:	83 c4 10             	add    esp,0x10
c00082c0:	a1 44 df 00 c0       	mov    eax,ds:0xc000df44
c00082c5:	39 f8                	cmp    eax,edi
c00082c7:	74 e7                	je     c00082b0 <k_thread_a+0x222>
c00082c9:	e9 ef fd ff ff       	jmp    c00080bd <k_thread_a+0x2f>

c00082ce <k_thread_b>:
c00082ce:	55                   	push   ebp
c00082cf:	89 e5                	mov    ebp,esp
c00082d1:	eb fe                	jmp    c00082d1 <k_thread_b+0x3>
	...

c00082d4 <bitmap_init>:
c00082d4:	55                   	push   ebp
c00082d5:	89 e5                	mov    ebp,esp
c00082d7:	83 ec 0c             	sub    esp,0xc
c00082da:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00082dd:	ff 30                	push   DWORD PTR [eax]
c00082df:	6a 00                	push   0x0
c00082e1:	ff 70 04             	push   DWORD PTR [eax+0x4]
c00082e4:	e8 7b 1d 00 00       	call   c000a064 <memset>
c00082e9:	83 c4 10             	add    esp,0x10
c00082ec:	c9                   	leave  
c00082ed:	c3                   	ret    

c00082ee <bitmap_scan_test>:
c00082ee:	55                   	push   ebp
c00082ef:	89 e5                	mov    ebp,esp
c00082f1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c00082f4:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c00082f7:	5d                   	pop    ebp
c00082f8:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c00082fb:	89 c8                	mov    eax,ecx
c00082fd:	83 e1 07             	and    ecx,0x7
c0008300:	c1 e8 03             	shr    eax,0x3
c0008303:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c0008307:	ba 01 00 00 00       	mov    edx,0x1
c000830c:	d3 e2                	shl    edx,cl
c000830e:	21 d0                	and    eax,edx
c0008310:	c3                   	ret    

c0008311 <bitmap_alloc>:
c0008311:	55                   	push   ebp
c0008312:	89 e5                	mov    ebp,esp
c0008314:	57                   	push   edi
c0008315:	56                   	push   esi
c0008316:	31 f6                	xor    esi,esi
c0008318:	53                   	push   ebx
c0008319:	83 ec 1c             	sub    esp,0x1c
c000831c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000831f:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0008322:	eb 01                	jmp    c0008325 <bitmap_alloc+0x14>
c0008324:	46                   	inc    esi
c0008325:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c0008329:	75 04                	jne    c000832f <bitmap_alloc+0x1e>
c000832b:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000832d:	72 f5                	jb     c0008324 <bitmap_alloc+0x13>
c000832f:	3b 33                	cmp    esi,DWORD PTR [ebx]
c0008331:	72 19                	jb     c000834c <bitmap_alloc+0x3b>
c0008333:	68 38 d4 00 c0       	push   0xc000d438
c0008338:	68 ac d4 00 c0       	push   0xc000d4ac
c000833d:	6a 2e                	push   0x2e
c000833f:	68 5c d4 00 c0       	push   0xc000d45c
c0008344:	e8 c7 02 00 00       	call   c0008610 <panic_spin>
c0008349:	83 c4 10             	add    esp,0x10
c000834c:	8b 13                	mov    edx,DWORD PTR [ebx]
c000834e:	83 c8 ff             	or     eax,0xffffffff
c0008351:	39 d6                	cmp    esi,edx
c0008353:	74 72                	je     c00083c7 <bitmap_alloc+0xb6>
c0008355:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0008358:	31 c9                	xor    ecx,ecx
c000835a:	bf 01 00 00 00       	mov    edi,0x1
c000835f:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c0008362:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0008365:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c0008368:	eb 01                	jmp    c000836b <bitmap_alloc+0x5a>
c000836a:	41                   	inc    ecx
c000836b:	89 fe                	mov    esi,edi
c000836d:	d3 e6                	shl    esi,cl
c000836f:	89 f2                	mov    edx,esi
c0008371:	84 d0                	test   al,dl
c0008373:	75 f5                	jne    c000836a <bitmap_alloc+0x59>
c0008375:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c0008378:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c000837c:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c000837f:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c0008382:	89 c8                	mov    eax,ecx
c0008384:	74 41                	je     c00083c7 <bitmap_alloc+0xb6>
c0008386:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c000838d:	be 01 00 00 00       	mov    esi,0x1
c0008392:	29 cf                	sub    edi,ecx
c0008394:	8d 51 01             	lea    edx,[ecx+0x1]
c0008397:	eb 27                	jmp    c00083c0 <bitmap_alloc+0xaf>
c0008399:	50                   	push   eax
c000839a:	46                   	inc    esi
c000839b:	50                   	push   eax
c000839c:	52                   	push   edx
c000839d:	53                   	push   ebx
c000839e:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c00083a1:	e8 48 ff ff ff       	call   c00082ee <bitmap_scan_test>
c00083a6:	83 c4 10             	add    esp,0x10
c00083a9:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c00083ac:	85 c0                	test   eax,eax
c00083ae:	74 02                	je     c00083b2 <bitmap_alloc+0xa1>
c00083b0:	31 f6                	xor    esi,esi
c00083b2:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c00083b5:	75 07                	jne    c00083be <bitmap_alloc+0xad>
c00083b7:	29 f2                	sub    edx,esi
c00083b9:	8d 42 01             	lea    eax,[edx+0x1]
c00083bc:	eb 09                	jmp    c00083c7 <bitmap_alloc+0xb6>
c00083be:	4f                   	dec    edi
c00083bf:	42                   	inc    edx
c00083c0:	85 ff                	test   edi,edi
c00083c2:	75 d5                	jne    c0008399 <bitmap_alloc+0x88>
c00083c4:	83 c8 ff             	or     eax,0xffffffff
c00083c7:	8d 65 f4             	lea    esp,[ebp-0xc]
c00083ca:	5b                   	pop    ebx
c00083cb:	5e                   	pop    esi
c00083cc:	5f                   	pop    edi
c00083cd:	5d                   	pop    ebp
c00083ce:	c3                   	ret    

c00083cf <bitmap_set>:
c00083cf:	55                   	push   ebp
c00083d0:	89 e5                	mov    ebp,esp
c00083d2:	57                   	push   edi
c00083d3:	56                   	push   esi
c00083d4:	53                   	push   ebx
c00083d5:	83 ec 0c             	sub    esp,0xc
c00083d8:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c00083db:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c00083de:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c00083e1:	80 fb 01             	cmp    bl,0x1
c00083e4:	76 19                	jbe    c00083ff <bitmap_set+0x30>
c00083e6:	68 69 d4 00 c0       	push   0xc000d469
c00083eb:	68 bc d4 00 c0       	push   0xc000d4bc
c00083f0:	6a 65                	push   0x65
c00083f2:	68 5c d4 00 c0       	push   0xc000d45c
c00083f7:	e8 14 02 00 00       	call   c0008610 <panic_spin>
c00083fc:	83 c4 10             	add    esp,0x10
c00083ff:	89 fa                	mov    edx,edi
c0008401:	89 f9                	mov    ecx,edi
c0008403:	c1 ea 03             	shr    edx,0x3
c0008406:	83 e1 07             	and    ecx,0x7
c0008409:	84 db                	test   bl,bl
c000840b:	74 06                	je     c0008413 <bitmap_set+0x44>
c000840d:	fe cb                	dec    bl
c000840f:	75 1e                	jne    c000842f <bitmap_set+0x60>
c0008411:	eb 10                	jmp    c0008423 <bitmap_set+0x54>
c0008413:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c0008416:	b8 01 00 00 00       	mov    eax,0x1
c000841b:	d3 e0                	shl    eax,cl
c000841d:	f7 d0                	not    eax
c000841f:	20 02                	and    BYTE PTR [edx],al
c0008421:	eb 0c                	jmp    c000842f <bitmap_set+0x60>
c0008423:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c0008426:	b8 01 00 00 00       	mov    eax,0x1
c000842b:	d3 e0                	shl    eax,cl
c000842d:	08 02                	or     BYTE PTR [edx],al
c000842f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0008432:	5b                   	pop    ebx
c0008433:	5e                   	pop    esi
c0008434:	5f                   	pop    edi
c0008435:	5d                   	pop    ebp
c0008436:	c3                   	ret    
	...

c0008438 <init_console>:
c0008438:	55                   	push   ebp
c0008439:	89 e5                	mov    ebp,esp
c000843b:	83 ec 14             	sub    esp,0x14
c000843e:	68 c4 de 00 c0       	push   0xc000dec4
c0008443:	e8 4f 1d 00 00       	call   c000a197 <lock_init>
c0008448:	83 c4 10             	add    esp,0x10
c000844b:	c9                   	leave  
c000844c:	c3                   	ret    

c000844d <console_char>:
c000844d:	55                   	push   ebp
c000844e:	89 e5                	mov    ebp,esp
c0008450:	56                   	push   esi
c0008451:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0008454:	53                   	push   ebx
c0008455:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0008458:	83 ec 0c             	sub    esp,0xc
c000845b:	68 c4 de 00 c0       	push   0xc000dec4
c0008460:	e8 be 1e 00 00       	call   c000a323 <lock_acquire>
c0008465:	58                   	pop    eax
c0008466:	5a                   	pop    edx
c0008467:	89 f2                	mov    edx,esi
c0008469:	0f b6 c2             	movzx  eax,dl
c000846c:	50                   	push   eax
c000846d:	0f b6 c3             	movzx  eax,bl
c0008470:	50                   	push   eax
c0008471:	e8 ae 1a 00 00       	call   c0009f24 <put_char>
c0008476:	83 c4 10             	add    esp,0x10
c0008479:	c7 45 08 c4 de 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000dec4
c0008480:	8d 65 f8             	lea    esp,[ebp-0x8]
c0008483:	5b                   	pop    ebx
c0008484:	5e                   	pop    esi
c0008485:	5d                   	pop    ebp
c0008486:	e9 f3 1e 00 00       	jmp    c000a37e <lock_release>

c000848b <console_str>:
c000848b:	55                   	push   ebp
c000848c:	89 e5                	mov    ebp,esp
c000848e:	56                   	push   esi
c000848f:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0008492:	53                   	push   ebx
c0008493:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0008496:	83 ec 0c             	sub    esp,0xc
c0008499:	68 c4 de 00 c0       	push   0xc000dec4
c000849e:	e8 80 1e 00 00       	call   c000a323 <lock_acquire>
c00084a3:	59                   	pop    ecx
c00084a4:	58                   	pop    eax
c00084a5:	0f b6 c3             	movzx  eax,bl
c00084a8:	56                   	push   esi
c00084a9:	50                   	push   eax
c00084aa:	e8 16 1b 00 00       	call   c0009fc5 <put_str>
c00084af:	83 c4 10             	add    esp,0x10
c00084b2:	c7 45 08 c4 de 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000dec4
c00084b9:	8d 65 f8             	lea    esp,[ebp-0x8]
c00084bc:	5b                   	pop    ebx
c00084bd:	5e                   	pop    esi
c00084be:	5d                   	pop    ebp
c00084bf:	e9 ba 1e 00 00       	jmp    c000a37e <lock_release>

c00084c4 <console_int>:
c00084c4:	55                   	push   ebp
c00084c5:	89 e5                	mov    ebp,esp
c00084c7:	57                   	push   edi
c00084c8:	56                   	push   esi
c00084c9:	53                   	push   ebx
c00084ca:	83 ec 18             	sub    esp,0x18
c00084cd:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c00084d0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00084d3:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c00084d6:	68 c4 de 00 c0       	push   0xc000dec4
c00084db:	e8 43 1e 00 00       	call   c000a323 <lock_acquire>
c00084e0:	83 c4 0c             	add    esp,0xc
c00084e3:	57                   	push   edi
c00084e4:	56                   	push   esi
c00084e5:	0f b6 c3             	movzx  eax,bl
c00084e8:	50                   	push   eax
c00084e9:	e8 39 1b 00 00       	call   c000a027 <put_int>
c00084ee:	83 c4 10             	add    esp,0x10
c00084f1:	c7 45 08 c4 de 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000dec4
c00084f8:	8d 65 f4             	lea    esp,[ebp-0xc]
c00084fb:	5b                   	pop    ebx
c00084fc:	5e                   	pop    esi
c00084fd:	5f                   	pop    edi
c00084fe:	5d                   	pop    ebp
c00084ff:	e9 7a 1e 00 00       	jmp    c000a37e <lock_release>

c0008504 <console_uint>:
c0008504:	55                   	push   ebp
c0008505:	89 e5                	mov    ebp,esp
c0008507:	57                   	push   edi
c0008508:	56                   	push   esi
c0008509:	53                   	push   ebx
c000850a:	83 ec 18             	sub    esp,0x18
c000850d:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0008510:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0008513:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0008516:	68 c4 de 00 c0       	push   0xc000dec4
c000851b:	e8 03 1e 00 00       	call   c000a323 <lock_acquire>
c0008520:	83 c4 0c             	add    esp,0xc
c0008523:	57                   	push   edi
c0008524:	56                   	push   esi
c0008525:	0f b6 c3             	movzx  eax,bl
c0008528:	50                   	push   eax
c0008529:	e8 bf 1a 00 00       	call   c0009fed <put_uint>
c000852e:	83 c4 10             	add    esp,0x10
c0008531:	c7 45 08 c4 de 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000dec4
c0008538:	8d 65 f4             	lea    esp,[ebp-0xc]
c000853b:	5b                   	pop    ebx
c000853c:	5e                   	pop    esi
c000853d:	5f                   	pop    edi
c000853e:	5d                   	pop    ebp
c000853f:	e9 3a 1e 00 00       	jmp    c000a37e <lock_release>

c0008544 <init_cpu>:
c0008544:	55                   	push   ebp
c0008545:	31 c0                	xor    eax,eax
c0008547:	89 e5                	mov    ebp,esp
c0008549:	b9 04 00 00 00       	mov    ecx,0x4
c000854e:	57                   	push   edi
c000854f:	56                   	push   esi
c0008550:	53                   	push   ebx
c0008551:	8d 7d d8             	lea    edi,[ebp-0x28]
c0008554:	83 ec 3c             	sub    esp,0x3c
c0008557:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0008559:	8d 7d c7             	lea    edi,[ebp-0x39]
c000855c:	8d 75 c7             	lea    esi,[ebp-0x39]
c000855f:	b1 11                	mov    cl,0x11
c0008561:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0008563:	bf 02 00 00 80       	mov    edi,0x80000002
c0008568:	eb 30                	jmp    c000859a <init_cpu+0x56>
c000856a:	89 f8                	mov    eax,edi
c000856c:	31 c9                	xor    ecx,ecx
c000856e:	0f a2                	cpuid  
c0008570:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0008573:	47                   	inc    edi
c0008574:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c0008577:	50                   	push   eax
c0008578:	50                   	push   eax
c0008579:	56                   	push   esi
c000857a:	6a 07                	push   0x7
c000857c:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000857f:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c0008582:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c0008585:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c0008588:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000858b:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000858e:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c0008592:	e8 2e 1a 00 00       	call   c0009fc5 <put_str>
c0008597:	83 c4 10             	add    esp,0x10
c000859a:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c00085a0:	75 c8                	jne    c000856a <init_cpu+0x26>
c00085a2:	8d 65 f4             	lea    esp,[ebp-0xc]
c00085a5:	5b                   	pop    ebx
c00085a6:	5e                   	pop    esi
c00085a7:	5f                   	pop    edi
c00085a8:	5d                   	pop    ebp
c00085a9:	c3                   	ret    

c00085aa <cpu_info>:
c00085aa:	55                   	push   ebp
c00085ab:	31 c0                	xor    eax,eax
c00085ad:	89 e5                	mov    ebp,esp
c00085af:	b9 04 00 00 00       	mov    ecx,0x4
c00085b4:	57                   	push   edi
c00085b5:	56                   	push   esi
c00085b6:	53                   	push   ebx
c00085b7:	8d 7d d8             	lea    edi,[ebp-0x28]
c00085ba:	83 ec 3c             	sub    esp,0x3c
c00085bd:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c00085bf:	8d 7d c7             	lea    edi,[ebp-0x39]
c00085c2:	8d 75 c7             	lea    esi,[ebp-0x39]
c00085c5:	b1 11                	mov    cl,0x11
c00085c7:	f3 aa                	rep stos BYTE PTR es:[edi],al
c00085c9:	bf 02 00 00 80       	mov    edi,0x80000002
c00085ce:	eb 30                	jmp    c0008600 <cpu_info+0x56>
c00085d0:	89 f8                	mov    eax,edi
c00085d2:	31 c9                	xor    ecx,ecx
c00085d4:	0f a2                	cpuid  
c00085d6:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c00085d9:	47                   	inc    edi
c00085da:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c00085dd:	52                   	push   edx
c00085de:	52                   	push   edx
c00085df:	56                   	push   esi
c00085e0:	6a 07                	push   0x7
c00085e2:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c00085e5:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c00085e8:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c00085eb:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c00085ee:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c00085f1:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c00085f4:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c00085f8:	e8 c8 19 00 00       	call   c0009fc5 <put_str>
c00085fd:	83 c4 10             	add    esp,0x10
c0008600:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c0008606:	75 c8                	jne    c00085d0 <cpu_info+0x26>
c0008608:	8d 65 f4             	lea    esp,[ebp-0xc]
c000860b:	5b                   	pop    ebx
c000860c:	5e                   	pop    esi
c000860d:	5f                   	pop    edi
c000860e:	5d                   	pop    ebp
c000860f:	c3                   	ret    

c0008610 <panic_spin>:
c0008610:	55                   	push   ebp
c0008611:	89 e5                	mov    ebp,esp
c0008613:	83 ec 08             	sub    esp,0x8
c0008616:	e8 2a 10 00 00       	call   c0009645 <intr_disable>
c000861b:	52                   	push   edx
c000861c:	52                   	push   edx
c000861d:	68 18 d5 00 c0       	push   0xc000d518
c0008622:	6a 04                	push   0x4
c0008624:	e8 9c 19 00 00       	call   c0009fc5 <put_str>
c0008629:	59                   	pop    ecx
c000862a:	58                   	pop    eax
c000862b:	68 20 d5 00 c0       	push   0xc000d520
c0008630:	6a 04                	push   0x4
c0008632:	e8 8e 19 00 00       	call   c0009fc5 <put_str>
c0008637:	58                   	pop    eax
c0008638:	5a                   	pop    edx
c0008639:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000863c:	6a 04                	push   0x4
c000863e:	e8 82 19 00 00       	call   c0009fc5 <put_str>
c0008643:	59                   	pop    ecx
c0008644:	58                   	pop    eax
c0008645:	6a 0a                	push   0xa
c0008647:	6a 04                	push   0x4
c0008649:	e8 d6 18 00 00       	call   c0009f24 <put_char>
c000864e:	58                   	pop    eax
c000864f:	5a                   	pop    edx
c0008650:	68 2f d5 00 c0       	push   0xc000d52f
c0008655:	6a 04                	push   0x4
c0008657:	e8 69 19 00 00       	call   c0009fc5 <put_str>
c000865c:	59                   	pop    ecx
c000865d:	58                   	pop    eax
c000865e:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0008661:	6a 04                	push   0x4
c0008663:	e8 5d 19 00 00       	call   c0009fc5 <put_str>
c0008668:	58                   	pop    eax
c0008669:	5a                   	pop    edx
c000866a:	6a 0a                	push   0xa
c000866c:	6a 04                	push   0x4
c000866e:	e8 b1 18 00 00       	call   c0009f24 <put_char>
c0008673:	59                   	pop    ecx
c0008674:	58                   	pop    eax
c0008675:	68 3e d5 00 c0       	push   0xc000d53e
c000867a:	6a 04                	push   0x4
c000867c:	e8 44 19 00 00       	call   c0009fc5 <put_str>
c0008681:	83 c4 0c             	add    esp,0xc
c0008684:	6a 0a                	push   0xa
c0008686:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0008689:	6a 04                	push   0x4
c000868b:	e8 97 19 00 00       	call   c000a027 <put_int>
c0008690:	58                   	pop    eax
c0008691:	5a                   	pop    edx
c0008692:	6a 0a                	push   0xa
c0008694:	6a 04                	push   0x4
c0008696:	e8 89 18 00 00       	call   c0009f24 <put_char>
c000869b:	59                   	pop    ecx
c000869c:	58                   	pop    eax
c000869d:	68 4d d5 00 c0       	push   0xc000d54d
c00086a2:	6a 04                	push   0x4
c00086a4:	e8 1c 19 00 00       	call   c0009fc5 <put_str>
c00086a9:	58                   	pop    eax
c00086aa:	5a                   	pop    edx
c00086ab:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c00086ae:	6a 04                	push   0x4
c00086b0:	e8 10 19 00 00       	call   c0009fc5 <put_str>
c00086b5:	83 c4 10             	add    esp,0x10
c00086b8:	eb fe                	jmp    c00086b8 <panic_spin+0xa8>
	...

c00086bc <init_fifo>:
c00086bc:	55                   	push   ebp
c00086bd:	89 e5                	mov    ebp,esp
c00086bf:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c00086c2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00086c5:	53                   	push   ebx
c00086c6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c00086c9:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
c00086cc:	83 fa 10             	cmp    edx,0x10
c00086cf:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c00086d2:	74 11                	je     c00086e5 <init_fifo+0x29>
c00086d4:	7f 05                	jg     c00086db <init_fifo+0x1f>
c00086d6:	83 fa 08             	cmp    edx,0x8
c00086d9:	eb 08                	jmp    c00086e3 <init_fifo+0x27>
c00086db:	83 fa 20             	cmp    edx,0x20
c00086de:	74 05                	je     c00086e5 <init_fifo+0x29>
c00086e0:	83 fa 40             	cmp    edx,0x40
c00086e3:	75 02                	jne    c00086e7 <init_fifo+0x2b>
c00086e5:	89 08                	mov    DWORD PTR [eax],ecx
c00086e7:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
c00086ea:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
c00086ed:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c00086f4:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c00086fb:	5b                   	pop    ebx
c00086fc:	5d                   	pop    ebp
c00086fd:	c3                   	ret    

c00086fe <fifo_put>:
c00086fe:	55                   	push   ebp
c00086ff:	89 e5                	mov    ebp,esp
c0008701:	57                   	push   edi
c0008702:	56                   	push   esi
c0008703:	53                   	push   ebx
c0008704:	83 ec 0c             	sub    esp,0xc
c0008707:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000870a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000870d:	e8 33 0f 00 00       	call   c0009645 <intr_disable>
c0008712:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
c0008715:	85 d2                	test   edx,edx
c0008717:	75 09                	jne    c0008722 <fifo_put+0x24>
c0008719:	c7 43 18 01 00 00 00 	mov    DWORD PTR [ebx+0x18],0x1
c0008720:	eb 5d                	jmp    c000877f <fifo_put+0x81>
c0008722:	4a                   	dec    edx
c0008723:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
c0008726:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
c0008729:	83 fa 10             	cmp    edx,0x10
c000872c:	74 24                	je     c0008752 <fifo_put+0x54>
c000872e:	7f 07                	jg     c0008737 <fifo_put+0x39>
c0008730:	83 fa 08             	cmp    edx,0x8
c0008733:	75 4a                	jne    c000877f <fifo_put+0x81>
c0008735:	eb 0c                	jmp    c0008743 <fifo_put+0x45>
c0008737:	83 fa 20             	cmp    edx,0x20
c000873a:	74 24                	je     c0008760 <fifo_put+0x62>
c000873c:	83 fa 40             	cmp    edx,0x40
c000873f:	75 3e                	jne    c000877f <fifo_put+0x81>
c0008741:	eb 29                	jmp    c000876c <fifo_put+0x6e>
c0008743:	0f b6 36             	movzx  esi,BYTE PTR [esi]
c0008746:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c0008748:	8b 7b 14             	mov    edi,DWORD PTR [ebx+0x14]
c000874b:	89 f2                	mov    edx,esi
c000874d:	88 14 39             	mov    BYTE PTR [ecx+edi*1],dl
c0008750:	eb 3e                	jmp    c0008790 <fifo_put+0x92>
c0008752:	66 8b 36             	mov    si,WORD PTR [esi]
c0008755:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0008758:	8b 13                	mov    edx,DWORD PTR [ebx]
c000875a:	66 89 34 4a          	mov    WORD PTR [edx+ecx*2],si
c000875e:	eb 30                	jmp    c0008790 <fifo_put+0x92>
c0008760:	8b 36                	mov    esi,DWORD PTR [esi]
c0008762:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0008765:	8b 13                	mov    edx,DWORD PTR [ebx]
c0008767:	89 34 8a             	mov    DWORD PTR [edx+ecx*4],esi
c000876a:	eb 24                	jmp    c0008790 <fifo_put+0x92>
c000876c:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c000876f:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0008772:	8b 36                	mov    esi,DWORD PTR [esi]
c0008774:	8b 13                	mov    edx,DWORD PTR [ebx]
c0008776:	89 34 ca             	mov    DWORD PTR [edx+ecx*8],esi
c0008779:	89 7c ca 04          	mov    DWORD PTR [edx+ecx*8+0x4],edi
c000877d:	eb 11                	jmp    c0008790 <fifo_put+0x92>
c000877f:	83 ec 0c             	sub    esp,0xc
c0008782:	50                   	push   eax
c0008783:	e8 92 0f 00 00       	call   c000971a <intr_set_status>
c0008788:	83 c4 10             	add    esp,0x10
c000878b:	83 c8 ff             	or     eax,0xffffffff
c000878e:	eb 21                	jmp    c00087b1 <fifo_put+0xb3>
c0008790:	8b 53 14             	mov    edx,DWORD PTR [ebx+0x14]
c0008793:	42                   	inc    edx
c0008794:	3b 53 08             	cmp    edx,DWORD PTR [ebx+0x8]
c0008797:	89 53 14             	mov    DWORD PTR [ebx+0x14],edx
c000879a:	75 07                	jne    c00087a3 <fifo_put+0xa5>
c000879c:	c7 43 14 00 00 00 00 	mov    DWORD PTR [ebx+0x14],0x0
c00087a3:	83 ec 0c             	sub    esp,0xc
c00087a6:	50                   	push   eax
c00087a7:	e8 6e 0f 00 00       	call   c000971a <intr_set_status>
c00087ac:	83 c4 10             	add    esp,0x10
c00087af:	31 c0                	xor    eax,eax
c00087b1:	8d 65 f4             	lea    esp,[ebp-0xc]
c00087b4:	5b                   	pop    ebx
c00087b5:	5e                   	pop    esi
c00087b6:	5f                   	pop    edi
c00087b7:	5d                   	pop    ebp
c00087b8:	c3                   	ret    

c00087b9 <fifo_get>:
c00087b9:	55                   	push   ebp
c00087ba:	89 e5                	mov    ebp,esp
c00087bc:	57                   	push   edi
c00087bd:	56                   	push   esi
c00087be:	53                   	push   ebx
c00087bf:	83 ec 0c             	sub    esp,0xc
c00087c2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00087c5:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00087c8:	e8 78 0e 00 00       	call   c0009645 <intr_disable>
c00087cd:	89 c7                	mov    edi,eax
c00087cf:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
c00087d2:	39 43 0c             	cmp    DWORD PTR [ebx+0xc],eax
c00087d5:	75 19                	jne    c00087f0 <fifo_get+0x37>
c00087d7:	68 84 d5 00 c0       	push   0xc000d584
c00087dc:	68 d4 d5 00 c0       	push   0xc000d5d4
c00087e1:	6a 55                	push   0x55
c00087e3:	68 a0 d5 00 c0       	push   0xc000d5a0
c00087e8:	e8 23 fe ff ff       	call   c0008610 <panic_spin>
c00087ed:	83 c4 10             	add    esp,0x10
c00087f0:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c00087f3:	3b 43 08             	cmp    eax,DWORD PTR [ebx+0x8]
c00087f6:	75 11                	jne    c0008809 <fifo_get+0x50>
c00087f8:	83 ec 0c             	sub    esp,0xc
c00087fb:	57                   	push   edi
c00087fc:	e8 19 0f 00 00       	call   c000971a <intr_set_status>
c0008801:	83 c4 10             	add    esp,0x10
c0008804:	83 c8 ff             	or     eax,0xffffffff
c0008807:	eb 71                	jmp    c000887a <fifo_get+0xc1>
c0008809:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
c000880c:	40                   	inc    eax
c000880d:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
c0008810:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
c0008813:	83 fa 10             	cmp    edx,0x10
c0008816:	74 1e                	je     c0008836 <fifo_get+0x7d>
c0008818:	7f 07                	jg     c0008821 <fifo_get+0x68>
c000881a:	83 fa 08             	cmp    edx,0x8
c000881d:	75 3a                	jne    c0008859 <fifo_get+0xa0>
c000881f:	eb 0c                	jmp    c000882d <fifo_get+0x74>
c0008821:	83 fa 20             	cmp    edx,0x20
c0008824:	74 1b                	je     c0008841 <fifo_get+0x88>
c0008826:	83 fa 40             	cmp    edx,0x40
c0008829:	75 2e                	jne    c0008859 <fifo_get+0xa0>
c000882b:	eb 1d                	jmp    c000884a <fifo_get+0x91>
c000882d:	8b 13                	mov    edx,DWORD PTR [ebx]
c000882f:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c0008832:	88 06                	mov    BYTE PTR [esi],al
c0008834:	eb 23                	jmp    c0008859 <fifo_get+0xa0>
c0008836:	8b 13                	mov    edx,DWORD PTR [ebx]
c0008838:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c000883c:	66 89 06             	mov    WORD PTR [esi],ax
c000883f:	eb 18                	jmp    c0008859 <fifo_get+0xa0>
c0008841:	8b 13                	mov    edx,DWORD PTR [ebx]
c0008843:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c0008846:	89 06                	mov    DWORD PTR [esi],eax
c0008848:	eb 0f                	jmp    c0008859 <fifo_get+0xa0>
c000884a:	8b 13                	mov    edx,DWORD PTR [ebx]
c000884c:	8d 14 c2             	lea    edx,[edx+eax*8]
c000884f:	8b 02                	mov    eax,DWORD PTR [edx]
c0008851:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0008854:	89 06                	mov    DWORD PTR [esi],eax
c0008856:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c0008859:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
c000885c:	40                   	inc    eax
c000885d:	3b 43 08             	cmp    eax,DWORD PTR [ebx+0x8]
c0008860:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
c0008863:	75 07                	jne    c000886c <fifo_get+0xb3>
c0008865:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c000886c:	83 ec 0c             	sub    esp,0xc
c000886f:	57                   	push   edi
c0008870:	e8 a5 0e 00 00       	call   c000971a <intr_set_status>
c0008875:	83 c4 10             	add    esp,0x10
c0008878:	31 c0                	xor    eax,eax
c000887a:	8d 65 f4             	lea    esp,[ebp-0xc]
c000887d:	5b                   	pop    ebx
c000887e:	5e                   	pop    esi
c000887f:	5f                   	pop    edi
c0008880:	5d                   	pop    ebp
c0008881:	c3                   	ret    

c0008882 <fifo_empty>:
c0008882:	55                   	push   ebp
c0008883:	89 e5                	mov    ebp,esp
c0008885:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0008888:	5d                   	pop    ebp
c0008889:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c000888c:	39 50 0c             	cmp    DWORD PTR [eax+0xc],edx
c000888f:	0f 94 c0             	sete   al
c0008892:	0f b6 c0             	movzx  eax,al
c0008895:	c3                   	ret    

c0008896 <fifo_fill>:
c0008896:	55                   	push   ebp
c0008897:	89 e5                	mov    ebp,esp
c0008899:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000889c:	5d                   	pop    ebp
c000889d:	83 78 0c 00          	cmp    DWORD PTR [eax+0xc],0x0
c00088a1:	0f 94 c0             	sete   al
c00088a4:	0f b6 c0             	movzx  eax,al
c00088a7:	c3                   	ret    

c00088a8 <RectangleFill>:
c00088a8:	55                   	push   ebp
c00088a9:	89 e5                	mov    ebp,esp
c00088ab:	57                   	push   edi
c00088ac:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c00088af:	56                   	push   esi
c00088b0:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c00088b3:	53                   	push   ebx
c00088b4:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00088b7:	83 3d 0c 7c 00 00 01 	cmp    DWORD PTR ds:0x7c0c,0x1
c00088be:	75 30                	jne    c00088f0 <RectangleFill+0x48>
c00088c0:	89 ca                	mov    edx,ecx
c00088c2:	81 e2 00 00 00 ff    	and    edx,0xff000000
c00088c8:	81 fa 00 00 00 ff    	cmp    edx,0xff000000
c00088ce:	75 16                	jne    c00088e6 <RectangleFill+0x3e>
c00088d0:	eb 1e                	jmp    c00088f0 <RectangleFill+0x48>
c00088d2:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
c00088d5:	8b 33                	mov    esi,DWORD PTR [ebx]
c00088d7:	0f af f8             	imul   edi,eax
c00088da:	01 d7                	add    edi,edx
c00088dc:	42                   	inc    edx
c00088dd:	89 0c be             	mov    DWORD PTR [esi+edi*4],ecx
c00088e0:	3b 55 18             	cmp    edx,DWORD PTR [ebp+0x18]
c00088e3:	7e ed                	jle    c00088d2 <RectangleFill+0x2a>
c00088e5:	40                   	inc    eax
c00088e6:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c00088e9:	7f 05                	jg     c00088f0 <RectangleFill+0x48>
c00088eb:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c00088ee:	eb f0                	jmp    c00088e0 <RectangleFill+0x38>
c00088f0:	5b                   	pop    ebx
c00088f1:	5e                   	pop    esi
c00088f2:	5f                   	pop    edi
c00088f3:	5d                   	pop    ebp
c00088f4:	c3                   	ret    

c00088f5 <init_Rectangle>:
c00088f5:	55                   	push   ebp
c00088f6:	89 e5                	mov    ebp,esp
c00088f8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00088fb:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c00088fe:	89 10                	mov    DWORD PTR [eax],edx
c0008900:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0008903:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0008906:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0008909:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000890c:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c000890f:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0008912:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
c0008915:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0008918:	5d                   	pop    ebp
c0008919:	c3                   	ret    

c000891a <init_screen>:
c000891a:	55                   	push   ebp
c000891b:	89 e5                	mov    ebp,esp
c000891d:	53                   	push   ebx
c000891e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0008921:	83 3d 0c 7c 00 00 01 	cmp    DWORD PTR ds:0x7c0c,0x1
c0008928:	0f 85 df 00 00 00    	jne    c0008a0d <init_screen+0xf3>
c000892e:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c0008933:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c0008939:	c7 03 00 00 00 fe    	mov    DWORD PTR [ebx],0xfe000000
c000893f:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c0008946:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c0008949:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c000894c:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c0008953:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c0008958:	83 e8 33             	sub    eax,0x33
c000895b:	50                   	push   eax
c000895c:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0008961:	48                   	dec    eax
c0008962:	50                   	push   eax
c0008963:	6a 00                	push   0x0
c0008965:	6a 00                	push   0x0
c0008967:	68 84 84 00 00       	push   0x8484
c000896c:	53                   	push   ebx
c000896d:	e8 36 ff ff ff       	call   c00088a8 <RectangleFill>
c0008972:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c0008977:	8d 50 ff             	lea    edx,[eax-0x1]
c000897a:	83 e8 33             	sub    eax,0x33
c000897d:	52                   	push   edx
c000897e:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c0008984:	4a                   	dec    edx
c0008985:	52                   	push   edx
c0008986:	50                   	push   eax
c0008987:	6a 00                	push   0x0
c0008989:	68 c6 c6 c6 00       	push   0xc6c6c6
c000898e:	53                   	push   ebx
c000898f:	e8 14 ff ff ff       	call   c00088a8 <RectangleFill>
c0008994:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c0008999:	83 c4 30             	add    esp,0x30
c000899c:	8d 50 f8             	lea    edx,[eax-0x8]
c000899f:	83 e8 26             	sub    eax,0x26
c00089a2:	52                   	push   edx
c00089a3:	6a 2b                	push   0x2b
c00089a5:	50                   	push   eax
c00089a6:	6a 0d                	push   0xd
c00089a8:	68 84 84 84 00       	push   0x848484
c00089ad:	53                   	push   ebx
c00089ae:	e8 f5 fe ff ff       	call   c00088a8 <RectangleFill>
c00089b3:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c00089b8:	8d 50 f5             	lea    edx,[eax-0xb]
c00089bb:	83 e8 29             	sub    eax,0x29
c00089be:	52                   	push   edx
c00089bf:	6a 28                	push   0x28
c00089c1:	50                   	push   eax
c00089c2:	6a 0a                	push   0xa
c00089c4:	68 ff ff ff 00       	push   0xffffff
c00089c9:	53                   	push   ebx
c00089ca:	e8 d9 fe ff ff       	call   c00088a8 <RectangleFill>
c00089cf:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c00089d4:	83 c4 30             	add    esp,0x30
c00089d7:	8d 50 f8             	lea    edx,[eax-0x8]
c00089da:	83 e8 26             	sub    eax,0x26
c00089dd:	52                   	push   edx
c00089de:	6a 3a                	push   0x3a
c00089e0:	50                   	push   eax
c00089e1:	6a 35                	push   0x35
c00089e3:	68 84 84 84 00       	push   0x848484
c00089e8:	53                   	push   ebx
c00089e9:	e8 ba fe ff ff       	call   c00088a8 <RectangleFill>
c00089ee:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c00089f3:	8d 50 f5             	lea    edx,[eax-0xb]
c00089f6:	83 e8 29             	sub    eax,0x29
c00089f9:	52                   	push   edx
c00089fa:	6a 37                	push   0x37
c00089fc:	50                   	push   eax
c00089fd:	6a 32                	push   0x32
c00089ff:	68 ff ff ff 00       	push   0xffffff
c0008a04:	53                   	push   ebx
c0008a05:	e8 9e fe ff ff       	call   c00088a8 <RectangleFill>
c0008a0a:	83 c4 30             	add    esp,0x30
c0008a0d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0008a10:	c9                   	leave  
c0008a11:	c3                   	ret    

c0008a12 <put_char_graphic>:
c0008a12:	55                   	push   ebp
c0008a13:	89 e5                	mov    ebp,esp
c0008a15:	57                   	push   edi
c0008a16:	0f be 7d 18          	movsx  edi,BYTE PTR [ebp+0x18]
c0008a1a:	56                   	push   esi
c0008a1b:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0008a1e:	53                   	push   ebx
c0008a1f:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0008a22:	c1 e7 04             	shl    edi,0x4
c0008a25:	81 c7 e0 aa 00 c0    	add    edi,0xc000aae0
c0008a2b:	83 3d 0c 7c 00 00 01 	cmp    DWORD PTR ds:0x7c0c,0x1
c0008a32:	75 5d                	jne    c0008a91 <put_char_graphic+0x7f>
c0008a34:	31 db                	xor    ebx,ebx
c0008a36:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0008a39:	8b 0e                	mov    ecx,DWORD PTR [esi]
c0008a3b:	01 d8                	add    eax,ebx
c0008a3d:	0f af 46 04          	imul   eax,DWORD PTR [esi+0x4]
c0008a41:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0008a44:	8d 04 81             	lea    eax,[ecx+eax*4]
c0008a47:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c0008a4a:	84 c9                	test   cl,cl
c0008a4c:	79 02                	jns    c0008a50 <put_char_graphic+0x3e>
c0008a4e:	89 10                	mov    DWORD PTR [eax],edx
c0008a50:	0f b6 c9             	movzx  ecx,cl
c0008a53:	f6 c1 40             	test   cl,0x40
c0008a56:	74 03                	je     c0008a5b <put_char_graphic+0x49>
c0008a58:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0008a5b:	f6 c1 20             	test   cl,0x20
c0008a5e:	74 03                	je     c0008a63 <put_char_graphic+0x51>
c0008a60:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0008a63:	f6 c1 10             	test   cl,0x10
c0008a66:	74 03                	je     c0008a6b <put_char_graphic+0x59>
c0008a68:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0008a6b:	f6 c1 08             	test   cl,0x8
c0008a6e:	74 03                	je     c0008a73 <put_char_graphic+0x61>
c0008a70:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0008a73:	f6 c1 04             	test   cl,0x4
c0008a76:	74 03                	je     c0008a7b <put_char_graphic+0x69>
c0008a78:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c0008a7b:	f6 c1 02             	test   cl,0x2
c0008a7e:	74 03                	je     c0008a83 <put_char_graphic+0x71>
c0008a80:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c0008a83:	80 e1 01             	and    cl,0x1
c0008a86:	74 03                	je     c0008a8b <put_char_graphic+0x79>
c0008a88:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c0008a8b:	43                   	inc    ebx
c0008a8c:	83 fb 10             	cmp    ebx,0x10
c0008a8f:	75 a5                	jne    c0008a36 <put_char_graphic+0x24>
c0008a91:	5b                   	pop    ebx
c0008a92:	5e                   	pop    esi
c0008a93:	5f                   	pop    edi
c0008a94:	5d                   	pop    ebp
c0008a95:	c3                   	ret    

c0008a96 <put_str_graphic>:
c0008a96:	55                   	push   ebp
c0008a97:	89 e5                	mov    ebp,esp
c0008a99:	57                   	push   edi
c0008a9a:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
c0008a9d:	56                   	push   esi
c0008a9e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0008aa1:	53                   	push   ebx
c0008aa2:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
c0008aa5:	eb 18                	jmp    c0008abf <put_str_graphic+0x29>
c0008aa7:	0f be c0             	movsx  eax,al
c0008aaa:	43                   	inc    ebx
c0008aab:	50                   	push   eax
c0008aac:	57                   	push   edi
c0008aad:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0008ab0:	56                   	push   esi
c0008ab1:	83 c6 0a             	add    esi,0xa
c0008ab4:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0008ab7:	e8 56 ff ff ff       	call   c0008a12 <put_char_graphic>
c0008abc:	83 c4 14             	add    esp,0x14
c0008abf:	8a 03                	mov    al,BYTE PTR [ebx]
c0008ac1:	84 c0                	test   al,al
c0008ac3:	75 e2                	jne    c0008aa7 <put_str_graphic+0x11>
c0008ac5:	8d 65 f4             	lea    esp,[ebp-0xc]
c0008ac8:	5b                   	pop    ebx
c0008ac9:	5e                   	pop    esi
c0008aca:	5f                   	pop    edi
c0008acb:	5d                   	pop    ebp
c0008acc:	c3                   	ret    
c0008acd:	00 00                	add    BYTE PTR [eax],al
	...

c0008ad0 <init_all>:
c0008ad0:	55                   	push   ebp
c0008ad1:	89 e5                	mov    ebp,esp
c0008ad3:	83 ec 10             	sub    esp,0x10
c0008ad6:	68 08 d6 00 c0       	push   0xc000d608
c0008adb:	6a 02                	push   0x2
c0008add:	e8 e3 14 00 00       	call   c0009fc5 <put_str>
c0008ae2:	e8 1c 0b 00 00       	call   c0009603 <init_idt>
c0008ae7:	e8 ac 1d 00 00       	call   c000a898 <init_pit>
c0008aec:	e8 40 11 00 00       	call   c0009c31 <init_memory>
c0008af1:	e8 3a 0c 00 00       	call   c0009730 <init_keyboard>
c0008af6:	e8 a0 19 00 00       	call   c000a49b <init_thread>
c0008afb:	e8 38 f9 ff ff       	call   c0008438 <init_console>
c0008b00:	c7 04 24 5c df 00 c0 	mov    DWORD PTR [esp],0xc000df5c
c0008b07:	e8 0e fe ff ff       	call   c000891a <init_screen>
c0008b0c:	58                   	pop    eax
c0008b0d:	5a                   	pop    edx
c0008b0e:	68 14 d6 00 c0       	push   0xc000d614
c0008b13:	6a 02                	push   0x2
c0008b15:	e8 ab 14 00 00       	call   c0009fc5 <put_str>
c0008b1a:	83 c4 10             	add    esp,0x10
c0008b1d:	c9                   	leave  
c0008b1e:	c3                   	ret    
	...

c0008b20 <asm_intr0x00_handler>:
c0008b20:	68 00 00 00 00       	push   0x0
c0008b25:	1e                   	push   ds
c0008b26:	06                   	push   es
c0008b27:	0f a0                	push   fs
c0008b29:	0f a8                	push   gs
c0008b2b:	60                   	pusha  
c0008b2c:	68 00 00 00 00       	push   0x0
c0008b31:	66 8c d0             	mov    ax,ss
c0008b34:	8e d8                	mov    ds,eax
c0008b36:	8e c0                	mov    es,eax
c0008b38:	ff 15 ec e1 00 c0    	call   DWORD PTR ds:0xc000e1ec
c0008b3e:	81 c4 04 00 00 00    	add    esp,0x4
c0008b44:	61                   	popa   
c0008b45:	0f a9                	pop    gs
c0008b47:	0f a1                	pop    fs
c0008b49:	07                   	pop    es
c0008b4a:	1f                   	pop    ds
c0008b4b:	81 c4 04 00 00 00    	add    esp,0x4
c0008b51:	cf                   	iret   

c0008b52 <asm_intr0x01_handler>:
c0008b52:	68 00 00 00 00       	push   0x0
c0008b57:	1e                   	push   ds
c0008b58:	06                   	push   es
c0008b59:	0f a0                	push   fs
c0008b5b:	0f a8                	push   gs
c0008b5d:	60                   	pusha  
c0008b5e:	68 01 00 00 00       	push   0x1
c0008b63:	66 8c d0             	mov    ax,ss
c0008b66:	8e d8                	mov    ds,eax
c0008b68:	8e c0                	mov    es,eax
c0008b6a:	ff 15 f0 e1 00 c0    	call   DWORD PTR ds:0xc000e1f0
c0008b70:	81 c4 04 00 00 00    	add    esp,0x4
c0008b76:	61                   	popa   
c0008b77:	0f a9                	pop    gs
c0008b79:	0f a1                	pop    fs
c0008b7b:	07                   	pop    es
c0008b7c:	1f                   	pop    ds
c0008b7d:	81 c4 04 00 00 00    	add    esp,0x4
c0008b83:	cf                   	iret   

c0008b84 <asm_intr0x02_handler>:
c0008b84:	68 00 00 00 00       	push   0x0
c0008b89:	1e                   	push   ds
c0008b8a:	06                   	push   es
c0008b8b:	0f a0                	push   fs
c0008b8d:	0f a8                	push   gs
c0008b8f:	60                   	pusha  
c0008b90:	68 02 00 00 00       	push   0x2
c0008b95:	66 8c d0             	mov    ax,ss
c0008b98:	8e d8                	mov    ds,eax
c0008b9a:	8e c0                	mov    es,eax
c0008b9c:	ff 15 f4 e1 00 c0    	call   DWORD PTR ds:0xc000e1f4
c0008ba2:	81 c4 04 00 00 00    	add    esp,0x4
c0008ba8:	61                   	popa   
c0008ba9:	0f a9                	pop    gs
c0008bab:	0f a1                	pop    fs
c0008bad:	07                   	pop    es
c0008bae:	1f                   	pop    ds
c0008baf:	81 c4 04 00 00 00    	add    esp,0x4
c0008bb5:	cf                   	iret   

c0008bb6 <asm_intr0x03_handler>:
c0008bb6:	68 00 00 00 00       	push   0x0
c0008bbb:	1e                   	push   ds
c0008bbc:	06                   	push   es
c0008bbd:	0f a0                	push   fs
c0008bbf:	0f a8                	push   gs
c0008bc1:	60                   	pusha  
c0008bc2:	68 03 00 00 00       	push   0x3
c0008bc7:	66 8c d0             	mov    ax,ss
c0008bca:	8e d8                	mov    ds,eax
c0008bcc:	8e c0                	mov    es,eax
c0008bce:	ff 15 f8 e1 00 c0    	call   DWORD PTR ds:0xc000e1f8
c0008bd4:	81 c4 04 00 00 00    	add    esp,0x4
c0008bda:	61                   	popa   
c0008bdb:	0f a9                	pop    gs
c0008bdd:	0f a1                	pop    fs
c0008bdf:	07                   	pop    es
c0008be0:	1f                   	pop    ds
c0008be1:	81 c4 04 00 00 00    	add    esp,0x4
c0008be7:	cf                   	iret   

c0008be8 <asm_intr0x04_handler>:
c0008be8:	68 00 00 00 00       	push   0x0
c0008bed:	1e                   	push   ds
c0008bee:	06                   	push   es
c0008bef:	0f a0                	push   fs
c0008bf1:	0f a8                	push   gs
c0008bf3:	60                   	pusha  
c0008bf4:	68 04 00 00 00       	push   0x4
c0008bf9:	66 8c d0             	mov    ax,ss
c0008bfc:	8e d8                	mov    ds,eax
c0008bfe:	8e c0                	mov    es,eax
c0008c00:	ff 15 fc e1 00 c0    	call   DWORD PTR ds:0xc000e1fc
c0008c06:	81 c4 04 00 00 00    	add    esp,0x4
c0008c0c:	61                   	popa   
c0008c0d:	0f a9                	pop    gs
c0008c0f:	0f a1                	pop    fs
c0008c11:	07                   	pop    es
c0008c12:	1f                   	pop    ds
c0008c13:	81 c4 04 00 00 00    	add    esp,0x4
c0008c19:	cf                   	iret   

c0008c1a <asm_intr0x05_handler>:
c0008c1a:	68 00 00 00 00       	push   0x0
c0008c1f:	1e                   	push   ds
c0008c20:	06                   	push   es
c0008c21:	0f a0                	push   fs
c0008c23:	0f a8                	push   gs
c0008c25:	60                   	pusha  
c0008c26:	68 05 00 00 00       	push   0x5
c0008c2b:	66 8c d0             	mov    ax,ss
c0008c2e:	8e d8                	mov    ds,eax
c0008c30:	8e c0                	mov    es,eax
c0008c32:	ff 15 00 e2 00 c0    	call   DWORD PTR ds:0xc000e200
c0008c38:	81 c4 04 00 00 00    	add    esp,0x4
c0008c3e:	61                   	popa   
c0008c3f:	0f a9                	pop    gs
c0008c41:	0f a1                	pop    fs
c0008c43:	07                   	pop    es
c0008c44:	1f                   	pop    ds
c0008c45:	81 c4 04 00 00 00    	add    esp,0x4
c0008c4b:	cf                   	iret   

c0008c4c <asm_intr0x06_handler>:
c0008c4c:	68 00 00 00 00       	push   0x0
c0008c51:	1e                   	push   ds
c0008c52:	06                   	push   es
c0008c53:	0f a0                	push   fs
c0008c55:	0f a8                	push   gs
c0008c57:	60                   	pusha  
c0008c58:	68 06 00 00 00       	push   0x6
c0008c5d:	66 8c d0             	mov    ax,ss
c0008c60:	8e d8                	mov    ds,eax
c0008c62:	8e c0                	mov    es,eax
c0008c64:	ff 15 04 e2 00 c0    	call   DWORD PTR ds:0xc000e204
c0008c6a:	81 c4 04 00 00 00    	add    esp,0x4
c0008c70:	61                   	popa   
c0008c71:	0f a9                	pop    gs
c0008c73:	0f a1                	pop    fs
c0008c75:	07                   	pop    es
c0008c76:	1f                   	pop    ds
c0008c77:	81 c4 04 00 00 00    	add    esp,0x4
c0008c7d:	cf                   	iret   

c0008c7e <asm_intr0x07_handler>:
c0008c7e:	68 00 00 00 00       	push   0x0
c0008c83:	1e                   	push   ds
c0008c84:	06                   	push   es
c0008c85:	0f a0                	push   fs
c0008c87:	0f a8                	push   gs
c0008c89:	60                   	pusha  
c0008c8a:	68 07 00 00 00       	push   0x7
c0008c8f:	66 8c d0             	mov    ax,ss
c0008c92:	8e d8                	mov    ds,eax
c0008c94:	8e c0                	mov    es,eax
c0008c96:	ff 15 08 e2 00 c0    	call   DWORD PTR ds:0xc000e208
c0008c9c:	81 c4 04 00 00 00    	add    esp,0x4
c0008ca2:	61                   	popa   
c0008ca3:	0f a9                	pop    gs
c0008ca5:	0f a1                	pop    fs
c0008ca7:	07                   	pop    es
c0008ca8:	1f                   	pop    ds
c0008ca9:	81 c4 04 00 00 00    	add    esp,0x4
c0008caf:	cf                   	iret   

c0008cb0 <asm_intr0x08_handler>:
c0008cb0:	90                   	nop
c0008cb1:	1e                   	push   ds
c0008cb2:	06                   	push   es
c0008cb3:	0f a0                	push   fs
c0008cb5:	0f a8                	push   gs
c0008cb7:	60                   	pusha  
c0008cb8:	68 08 00 00 00       	push   0x8
c0008cbd:	66 8c d0             	mov    ax,ss
c0008cc0:	8e d8                	mov    ds,eax
c0008cc2:	8e c0                	mov    es,eax
c0008cc4:	ff 15 0c e2 00 c0    	call   DWORD PTR ds:0xc000e20c
c0008cca:	81 c4 04 00 00 00    	add    esp,0x4
c0008cd0:	61                   	popa   
c0008cd1:	0f a9                	pop    gs
c0008cd3:	0f a1                	pop    fs
c0008cd5:	07                   	pop    es
c0008cd6:	1f                   	pop    ds
c0008cd7:	81 c4 04 00 00 00    	add    esp,0x4
c0008cdd:	cf                   	iret   

c0008cde <asm_intr0x09_handler>:
c0008cde:	68 00 00 00 00       	push   0x0
c0008ce3:	1e                   	push   ds
c0008ce4:	06                   	push   es
c0008ce5:	0f a0                	push   fs
c0008ce7:	0f a8                	push   gs
c0008ce9:	60                   	pusha  
c0008cea:	68 09 00 00 00       	push   0x9
c0008cef:	66 8c d0             	mov    ax,ss
c0008cf2:	8e d8                	mov    ds,eax
c0008cf4:	8e c0                	mov    es,eax
c0008cf6:	ff 15 10 e2 00 c0    	call   DWORD PTR ds:0xc000e210
c0008cfc:	81 c4 04 00 00 00    	add    esp,0x4
c0008d02:	61                   	popa   
c0008d03:	0f a9                	pop    gs
c0008d05:	0f a1                	pop    fs
c0008d07:	07                   	pop    es
c0008d08:	1f                   	pop    ds
c0008d09:	81 c4 04 00 00 00    	add    esp,0x4
c0008d0f:	cf                   	iret   

c0008d10 <asm_intr0x0a_handler>:
c0008d10:	90                   	nop
c0008d11:	1e                   	push   ds
c0008d12:	06                   	push   es
c0008d13:	0f a0                	push   fs
c0008d15:	0f a8                	push   gs
c0008d17:	60                   	pusha  
c0008d18:	68 0a 00 00 00       	push   0xa
c0008d1d:	66 8c d0             	mov    ax,ss
c0008d20:	8e d8                	mov    ds,eax
c0008d22:	8e c0                	mov    es,eax
c0008d24:	ff 15 14 e2 00 c0    	call   DWORD PTR ds:0xc000e214
c0008d2a:	81 c4 04 00 00 00    	add    esp,0x4
c0008d30:	61                   	popa   
c0008d31:	0f a9                	pop    gs
c0008d33:	0f a1                	pop    fs
c0008d35:	07                   	pop    es
c0008d36:	1f                   	pop    ds
c0008d37:	81 c4 04 00 00 00    	add    esp,0x4
c0008d3d:	cf                   	iret   

c0008d3e <asm_intr0x0b_handler>:
c0008d3e:	90                   	nop
c0008d3f:	1e                   	push   ds
c0008d40:	06                   	push   es
c0008d41:	0f a0                	push   fs
c0008d43:	0f a8                	push   gs
c0008d45:	60                   	pusha  
c0008d46:	68 0b 00 00 00       	push   0xb
c0008d4b:	66 8c d0             	mov    ax,ss
c0008d4e:	8e d8                	mov    ds,eax
c0008d50:	8e c0                	mov    es,eax
c0008d52:	ff 15 18 e2 00 c0    	call   DWORD PTR ds:0xc000e218
c0008d58:	81 c4 04 00 00 00    	add    esp,0x4
c0008d5e:	61                   	popa   
c0008d5f:	0f a9                	pop    gs
c0008d61:	0f a1                	pop    fs
c0008d63:	07                   	pop    es
c0008d64:	1f                   	pop    ds
c0008d65:	81 c4 04 00 00 00    	add    esp,0x4
c0008d6b:	cf                   	iret   

c0008d6c <asm_intr0x0c_handler>:
c0008d6c:	68 00 00 00 00       	push   0x0
c0008d71:	1e                   	push   ds
c0008d72:	06                   	push   es
c0008d73:	0f a0                	push   fs
c0008d75:	0f a8                	push   gs
c0008d77:	60                   	pusha  
c0008d78:	68 0c 00 00 00       	push   0xc
c0008d7d:	66 8c d0             	mov    ax,ss
c0008d80:	8e d8                	mov    ds,eax
c0008d82:	8e c0                	mov    es,eax
c0008d84:	ff 15 1c e2 00 c0    	call   DWORD PTR ds:0xc000e21c
c0008d8a:	81 c4 04 00 00 00    	add    esp,0x4
c0008d90:	61                   	popa   
c0008d91:	0f a9                	pop    gs
c0008d93:	0f a1                	pop    fs
c0008d95:	07                   	pop    es
c0008d96:	1f                   	pop    ds
c0008d97:	81 c4 04 00 00 00    	add    esp,0x4
c0008d9d:	cf                   	iret   

c0008d9e <asm_intr0x0d_handler>:
c0008d9e:	90                   	nop
c0008d9f:	1e                   	push   ds
c0008da0:	06                   	push   es
c0008da1:	0f a0                	push   fs
c0008da3:	0f a8                	push   gs
c0008da5:	60                   	pusha  
c0008da6:	68 0d 00 00 00       	push   0xd
c0008dab:	66 8c d0             	mov    ax,ss
c0008dae:	8e d8                	mov    ds,eax
c0008db0:	8e c0                	mov    es,eax
c0008db2:	ff 15 20 e2 00 c0    	call   DWORD PTR ds:0xc000e220
c0008db8:	81 c4 04 00 00 00    	add    esp,0x4
c0008dbe:	61                   	popa   
c0008dbf:	0f a9                	pop    gs
c0008dc1:	0f a1                	pop    fs
c0008dc3:	07                   	pop    es
c0008dc4:	1f                   	pop    ds
c0008dc5:	81 c4 04 00 00 00    	add    esp,0x4
c0008dcb:	cf                   	iret   

c0008dcc <asm_intr0x0e_handler>:
c0008dcc:	90                   	nop
c0008dcd:	1e                   	push   ds
c0008dce:	06                   	push   es
c0008dcf:	0f a0                	push   fs
c0008dd1:	0f a8                	push   gs
c0008dd3:	60                   	pusha  
c0008dd4:	68 0e 00 00 00       	push   0xe
c0008dd9:	66 8c d0             	mov    ax,ss
c0008ddc:	8e d8                	mov    ds,eax
c0008dde:	8e c0                	mov    es,eax
c0008de0:	ff 15 24 e2 00 c0    	call   DWORD PTR ds:0xc000e224
c0008de6:	81 c4 04 00 00 00    	add    esp,0x4
c0008dec:	61                   	popa   
c0008ded:	0f a9                	pop    gs
c0008def:	0f a1                	pop    fs
c0008df1:	07                   	pop    es
c0008df2:	1f                   	pop    ds
c0008df3:	81 c4 04 00 00 00    	add    esp,0x4
c0008df9:	cf                   	iret   

c0008dfa <asm_intr0x0f_handler>:
c0008dfa:	68 00 00 00 00       	push   0x0
c0008dff:	1e                   	push   ds
c0008e00:	06                   	push   es
c0008e01:	0f a0                	push   fs
c0008e03:	0f a8                	push   gs
c0008e05:	60                   	pusha  
c0008e06:	68 0f 00 00 00       	push   0xf
c0008e0b:	66 8c d0             	mov    ax,ss
c0008e0e:	8e d8                	mov    ds,eax
c0008e10:	8e c0                	mov    es,eax
c0008e12:	ff 15 28 e2 00 c0    	call   DWORD PTR ds:0xc000e228
c0008e18:	81 c4 04 00 00 00    	add    esp,0x4
c0008e1e:	61                   	popa   
c0008e1f:	0f a9                	pop    gs
c0008e21:	0f a1                	pop    fs
c0008e23:	07                   	pop    es
c0008e24:	1f                   	pop    ds
c0008e25:	81 c4 04 00 00 00    	add    esp,0x4
c0008e2b:	cf                   	iret   

c0008e2c <asm_intr0x10_handler>:
c0008e2c:	68 00 00 00 00       	push   0x0
c0008e31:	1e                   	push   ds
c0008e32:	06                   	push   es
c0008e33:	0f a0                	push   fs
c0008e35:	0f a8                	push   gs
c0008e37:	60                   	pusha  
c0008e38:	68 10 00 00 00       	push   0x10
c0008e3d:	66 8c d0             	mov    ax,ss
c0008e40:	8e d8                	mov    ds,eax
c0008e42:	8e c0                	mov    es,eax
c0008e44:	ff 15 2c e2 00 c0    	call   DWORD PTR ds:0xc000e22c
c0008e4a:	81 c4 04 00 00 00    	add    esp,0x4
c0008e50:	61                   	popa   
c0008e51:	0f a9                	pop    gs
c0008e53:	0f a1                	pop    fs
c0008e55:	07                   	pop    es
c0008e56:	1f                   	pop    ds
c0008e57:	81 c4 04 00 00 00    	add    esp,0x4
c0008e5d:	cf                   	iret   

c0008e5e <asm_intr0x11_handler>:
c0008e5e:	90                   	nop
c0008e5f:	1e                   	push   ds
c0008e60:	06                   	push   es
c0008e61:	0f a0                	push   fs
c0008e63:	0f a8                	push   gs
c0008e65:	60                   	pusha  
c0008e66:	68 11 00 00 00       	push   0x11
c0008e6b:	66 8c d0             	mov    ax,ss
c0008e6e:	8e d8                	mov    ds,eax
c0008e70:	8e c0                	mov    es,eax
c0008e72:	ff 15 30 e2 00 c0    	call   DWORD PTR ds:0xc000e230
c0008e78:	81 c4 04 00 00 00    	add    esp,0x4
c0008e7e:	61                   	popa   
c0008e7f:	0f a9                	pop    gs
c0008e81:	0f a1                	pop    fs
c0008e83:	07                   	pop    es
c0008e84:	1f                   	pop    ds
c0008e85:	81 c4 04 00 00 00    	add    esp,0x4
c0008e8b:	cf                   	iret   

c0008e8c <asm_intr0x12_handler>:
c0008e8c:	68 00 00 00 00       	push   0x0
c0008e91:	1e                   	push   ds
c0008e92:	06                   	push   es
c0008e93:	0f a0                	push   fs
c0008e95:	0f a8                	push   gs
c0008e97:	60                   	pusha  
c0008e98:	68 12 00 00 00       	push   0x12
c0008e9d:	66 8c d0             	mov    ax,ss
c0008ea0:	8e d8                	mov    ds,eax
c0008ea2:	8e c0                	mov    es,eax
c0008ea4:	ff 15 34 e2 00 c0    	call   DWORD PTR ds:0xc000e234
c0008eaa:	81 c4 04 00 00 00    	add    esp,0x4
c0008eb0:	61                   	popa   
c0008eb1:	0f a9                	pop    gs
c0008eb3:	0f a1                	pop    fs
c0008eb5:	07                   	pop    es
c0008eb6:	1f                   	pop    ds
c0008eb7:	81 c4 04 00 00 00    	add    esp,0x4
c0008ebd:	cf                   	iret   

c0008ebe <asm_intr0x13_handler>:
c0008ebe:	68 00 00 00 00       	push   0x0
c0008ec3:	1e                   	push   ds
c0008ec4:	06                   	push   es
c0008ec5:	0f a0                	push   fs
c0008ec7:	0f a8                	push   gs
c0008ec9:	60                   	pusha  
c0008eca:	68 13 00 00 00       	push   0x13
c0008ecf:	66 8c d0             	mov    ax,ss
c0008ed2:	8e d8                	mov    ds,eax
c0008ed4:	8e c0                	mov    es,eax
c0008ed6:	ff 15 38 e2 00 c0    	call   DWORD PTR ds:0xc000e238
c0008edc:	81 c4 04 00 00 00    	add    esp,0x4
c0008ee2:	61                   	popa   
c0008ee3:	0f a9                	pop    gs
c0008ee5:	0f a1                	pop    fs
c0008ee7:	07                   	pop    es
c0008ee8:	1f                   	pop    ds
c0008ee9:	81 c4 04 00 00 00    	add    esp,0x4
c0008eef:	cf                   	iret   

c0008ef0 <asm_intr0x14_handler>:
c0008ef0:	68 00 00 00 00       	push   0x0
c0008ef5:	1e                   	push   ds
c0008ef6:	06                   	push   es
c0008ef7:	0f a0                	push   fs
c0008ef9:	0f a8                	push   gs
c0008efb:	60                   	pusha  
c0008efc:	68 14 00 00 00       	push   0x14
c0008f01:	66 8c d0             	mov    ax,ss
c0008f04:	8e d8                	mov    ds,eax
c0008f06:	8e c0                	mov    es,eax
c0008f08:	ff 15 3c e2 00 c0    	call   DWORD PTR ds:0xc000e23c
c0008f0e:	81 c4 04 00 00 00    	add    esp,0x4
c0008f14:	61                   	popa   
c0008f15:	0f a9                	pop    gs
c0008f17:	0f a1                	pop    fs
c0008f19:	07                   	pop    es
c0008f1a:	1f                   	pop    ds
c0008f1b:	81 c4 04 00 00 00    	add    esp,0x4
c0008f21:	cf                   	iret   

c0008f22 <asm_intr0x15_handler>:
c0008f22:	68 00 00 00 00       	push   0x0
c0008f27:	1e                   	push   ds
c0008f28:	06                   	push   es
c0008f29:	0f a0                	push   fs
c0008f2b:	0f a8                	push   gs
c0008f2d:	60                   	pusha  
c0008f2e:	68 15 00 00 00       	push   0x15
c0008f33:	66 8c d0             	mov    ax,ss
c0008f36:	8e d8                	mov    ds,eax
c0008f38:	8e c0                	mov    es,eax
c0008f3a:	ff 15 40 e2 00 c0    	call   DWORD PTR ds:0xc000e240
c0008f40:	81 c4 04 00 00 00    	add    esp,0x4
c0008f46:	61                   	popa   
c0008f47:	0f a9                	pop    gs
c0008f49:	0f a1                	pop    fs
c0008f4b:	07                   	pop    es
c0008f4c:	1f                   	pop    ds
c0008f4d:	81 c4 04 00 00 00    	add    esp,0x4
c0008f53:	cf                   	iret   

c0008f54 <asm_intr0x16_handler>:
c0008f54:	68 00 00 00 00       	push   0x0
c0008f59:	1e                   	push   ds
c0008f5a:	06                   	push   es
c0008f5b:	0f a0                	push   fs
c0008f5d:	0f a8                	push   gs
c0008f5f:	60                   	pusha  
c0008f60:	68 16 00 00 00       	push   0x16
c0008f65:	66 8c d0             	mov    ax,ss
c0008f68:	8e d8                	mov    ds,eax
c0008f6a:	8e c0                	mov    es,eax
c0008f6c:	ff 15 44 e2 00 c0    	call   DWORD PTR ds:0xc000e244
c0008f72:	81 c4 04 00 00 00    	add    esp,0x4
c0008f78:	61                   	popa   
c0008f79:	0f a9                	pop    gs
c0008f7b:	0f a1                	pop    fs
c0008f7d:	07                   	pop    es
c0008f7e:	1f                   	pop    ds
c0008f7f:	81 c4 04 00 00 00    	add    esp,0x4
c0008f85:	cf                   	iret   

c0008f86 <asm_intr0x17_handler>:
c0008f86:	68 00 00 00 00       	push   0x0
c0008f8b:	1e                   	push   ds
c0008f8c:	06                   	push   es
c0008f8d:	0f a0                	push   fs
c0008f8f:	0f a8                	push   gs
c0008f91:	60                   	pusha  
c0008f92:	68 17 00 00 00       	push   0x17
c0008f97:	66 8c d0             	mov    ax,ss
c0008f9a:	8e d8                	mov    ds,eax
c0008f9c:	8e c0                	mov    es,eax
c0008f9e:	ff 15 48 e2 00 c0    	call   DWORD PTR ds:0xc000e248
c0008fa4:	81 c4 04 00 00 00    	add    esp,0x4
c0008faa:	61                   	popa   
c0008fab:	0f a9                	pop    gs
c0008fad:	0f a1                	pop    fs
c0008faf:	07                   	pop    es
c0008fb0:	1f                   	pop    ds
c0008fb1:	81 c4 04 00 00 00    	add    esp,0x4
c0008fb7:	cf                   	iret   

c0008fb8 <asm_intr0x18_handler>:
c0008fb8:	90                   	nop
c0008fb9:	1e                   	push   ds
c0008fba:	06                   	push   es
c0008fbb:	0f a0                	push   fs
c0008fbd:	0f a8                	push   gs
c0008fbf:	60                   	pusha  
c0008fc0:	68 18 00 00 00       	push   0x18
c0008fc5:	66 8c d0             	mov    ax,ss
c0008fc8:	8e d8                	mov    ds,eax
c0008fca:	8e c0                	mov    es,eax
c0008fcc:	ff 15 4c e2 00 c0    	call   DWORD PTR ds:0xc000e24c
c0008fd2:	81 c4 04 00 00 00    	add    esp,0x4
c0008fd8:	61                   	popa   
c0008fd9:	0f a9                	pop    gs
c0008fdb:	0f a1                	pop    fs
c0008fdd:	07                   	pop    es
c0008fde:	1f                   	pop    ds
c0008fdf:	81 c4 04 00 00 00    	add    esp,0x4
c0008fe5:	cf                   	iret   

c0008fe6 <asm_intr0x19_handler>:
c0008fe6:	68 00 00 00 00       	push   0x0
c0008feb:	1e                   	push   ds
c0008fec:	06                   	push   es
c0008fed:	0f a0                	push   fs
c0008fef:	0f a8                	push   gs
c0008ff1:	60                   	pusha  
c0008ff2:	68 19 00 00 00       	push   0x19
c0008ff7:	66 8c d0             	mov    ax,ss
c0008ffa:	8e d8                	mov    ds,eax
c0008ffc:	8e c0                	mov    es,eax
c0008ffe:	ff 15 50 e2 00 c0    	call   DWORD PTR ds:0xc000e250
c0009004:	81 c4 04 00 00 00    	add    esp,0x4
c000900a:	61                   	popa   
c000900b:	0f a9                	pop    gs
c000900d:	0f a1                	pop    fs
c000900f:	07                   	pop    es
c0009010:	1f                   	pop    ds
c0009011:	81 c4 04 00 00 00    	add    esp,0x4
c0009017:	cf                   	iret   

c0009018 <asm_intr0x1a_handler>:
c0009018:	90                   	nop
c0009019:	1e                   	push   ds
c000901a:	06                   	push   es
c000901b:	0f a0                	push   fs
c000901d:	0f a8                	push   gs
c000901f:	60                   	pusha  
c0009020:	68 1a 00 00 00       	push   0x1a
c0009025:	66 8c d0             	mov    ax,ss
c0009028:	8e d8                	mov    ds,eax
c000902a:	8e c0                	mov    es,eax
c000902c:	ff 15 54 e2 00 c0    	call   DWORD PTR ds:0xc000e254
c0009032:	81 c4 04 00 00 00    	add    esp,0x4
c0009038:	61                   	popa   
c0009039:	0f a9                	pop    gs
c000903b:	0f a1                	pop    fs
c000903d:	07                   	pop    es
c000903e:	1f                   	pop    ds
c000903f:	81 c4 04 00 00 00    	add    esp,0x4
c0009045:	cf                   	iret   

c0009046 <asm_intr0x1b_handler>:
c0009046:	90                   	nop
c0009047:	1e                   	push   ds
c0009048:	06                   	push   es
c0009049:	0f a0                	push   fs
c000904b:	0f a8                	push   gs
c000904d:	60                   	pusha  
c000904e:	68 1b 00 00 00       	push   0x1b
c0009053:	66 8c d0             	mov    ax,ss
c0009056:	8e d8                	mov    ds,eax
c0009058:	8e c0                	mov    es,eax
c000905a:	ff 15 58 e2 00 c0    	call   DWORD PTR ds:0xc000e258
c0009060:	81 c4 04 00 00 00    	add    esp,0x4
c0009066:	61                   	popa   
c0009067:	0f a9                	pop    gs
c0009069:	0f a1                	pop    fs
c000906b:	07                   	pop    es
c000906c:	1f                   	pop    ds
c000906d:	81 c4 04 00 00 00    	add    esp,0x4
c0009073:	cf                   	iret   

c0009074 <asm_intr0x1c_handler>:
c0009074:	68 00 00 00 00       	push   0x0
c0009079:	1e                   	push   ds
c000907a:	06                   	push   es
c000907b:	0f a0                	push   fs
c000907d:	0f a8                	push   gs
c000907f:	60                   	pusha  
c0009080:	68 1c 00 00 00       	push   0x1c
c0009085:	66 8c d0             	mov    ax,ss
c0009088:	8e d8                	mov    ds,eax
c000908a:	8e c0                	mov    es,eax
c000908c:	ff 15 5c e2 00 c0    	call   DWORD PTR ds:0xc000e25c
c0009092:	81 c4 04 00 00 00    	add    esp,0x4
c0009098:	61                   	popa   
c0009099:	0f a9                	pop    gs
c000909b:	0f a1                	pop    fs
c000909d:	07                   	pop    es
c000909e:	1f                   	pop    ds
c000909f:	81 c4 04 00 00 00    	add    esp,0x4
c00090a5:	cf                   	iret   

c00090a6 <asm_intr0x1d_handler>:
c00090a6:	90                   	nop
c00090a7:	1e                   	push   ds
c00090a8:	06                   	push   es
c00090a9:	0f a0                	push   fs
c00090ab:	0f a8                	push   gs
c00090ad:	60                   	pusha  
c00090ae:	68 1d 00 00 00       	push   0x1d
c00090b3:	66 8c d0             	mov    ax,ss
c00090b6:	8e d8                	mov    ds,eax
c00090b8:	8e c0                	mov    es,eax
c00090ba:	ff 15 60 e2 00 c0    	call   DWORD PTR ds:0xc000e260
c00090c0:	81 c4 04 00 00 00    	add    esp,0x4
c00090c6:	61                   	popa   
c00090c7:	0f a9                	pop    gs
c00090c9:	0f a1                	pop    fs
c00090cb:	07                   	pop    es
c00090cc:	1f                   	pop    ds
c00090cd:	81 c4 04 00 00 00    	add    esp,0x4
c00090d3:	cf                   	iret   

c00090d4 <asm_intr0x1e_handler>:
c00090d4:	90                   	nop
c00090d5:	1e                   	push   ds
c00090d6:	06                   	push   es
c00090d7:	0f a0                	push   fs
c00090d9:	0f a8                	push   gs
c00090db:	60                   	pusha  
c00090dc:	68 1e 00 00 00       	push   0x1e
c00090e1:	66 8c d0             	mov    ax,ss
c00090e4:	8e d8                	mov    ds,eax
c00090e6:	8e c0                	mov    es,eax
c00090e8:	ff 15 64 e2 00 c0    	call   DWORD PTR ds:0xc000e264
c00090ee:	81 c4 04 00 00 00    	add    esp,0x4
c00090f4:	61                   	popa   
c00090f5:	0f a9                	pop    gs
c00090f7:	0f a1                	pop    fs
c00090f9:	07                   	pop    es
c00090fa:	1f                   	pop    ds
c00090fb:	81 c4 04 00 00 00    	add    esp,0x4
c0009101:	cf                   	iret   

c0009102 <asm_intr0x1f_handler>:
c0009102:	68 00 00 00 00       	push   0x0
c0009107:	1e                   	push   ds
c0009108:	06                   	push   es
c0009109:	0f a0                	push   fs
c000910b:	0f a8                	push   gs
c000910d:	60                   	pusha  
c000910e:	68 1f 00 00 00       	push   0x1f
c0009113:	66 8c d0             	mov    ax,ss
c0009116:	8e d8                	mov    ds,eax
c0009118:	8e c0                	mov    es,eax
c000911a:	ff 15 68 e2 00 c0    	call   DWORD PTR ds:0xc000e268
c0009120:	81 c4 04 00 00 00    	add    esp,0x4
c0009126:	61                   	popa   
c0009127:	0f a9                	pop    gs
c0009129:	0f a1                	pop    fs
c000912b:	07                   	pop    es
c000912c:	1f                   	pop    ds
c000912d:	81 c4 04 00 00 00    	add    esp,0x4
c0009133:	cf                   	iret   

c0009134 <asm_intr0x20_handler>:
c0009134:	68 00 00 00 00       	push   0x0
c0009139:	1e                   	push   ds
c000913a:	06                   	push   es
c000913b:	0f a0                	push   fs
c000913d:	0f a8                	push   gs
c000913f:	60                   	pusha  
c0009140:	68 20 00 00 00       	push   0x20
c0009145:	66 8c d0             	mov    ax,ss
c0009148:	8e d8                	mov    ds,eax
c000914a:	8e c0                	mov    es,eax
c000914c:	ff 15 6c e2 00 c0    	call   DWORD PTR ds:0xc000e26c
c0009152:	81 c4 04 00 00 00    	add    esp,0x4
c0009158:	61                   	popa   
c0009159:	0f a9                	pop    gs
c000915b:	0f a1                	pop    fs
c000915d:	07                   	pop    es
c000915e:	1f                   	pop    ds
c000915f:	81 c4 04 00 00 00    	add    esp,0x4
c0009165:	cf                   	iret   

c0009166 <asm_intr0x21_handler>:
c0009166:	68 00 00 00 00       	push   0x0
c000916b:	1e                   	push   ds
c000916c:	06                   	push   es
c000916d:	0f a0                	push   fs
c000916f:	0f a8                	push   gs
c0009171:	60                   	pusha  
c0009172:	68 21 00 00 00       	push   0x21
c0009177:	66 8c d0             	mov    ax,ss
c000917a:	8e d8                	mov    ds,eax
c000917c:	8e c0                	mov    es,eax
c000917e:	ff 15 70 e2 00 c0    	call   DWORD PTR ds:0xc000e270
c0009184:	81 c4 04 00 00 00    	add    esp,0x4
c000918a:	61                   	popa   
c000918b:	0f a9                	pop    gs
c000918d:	0f a1                	pop    fs
c000918f:	07                   	pop    es
c0009190:	1f                   	pop    ds
c0009191:	81 c4 04 00 00 00    	add    esp,0x4
c0009197:	cf                   	iret   

c0009198 <asm_intr0x22_handler>:
c0009198:	68 00 00 00 00       	push   0x0
c000919d:	1e                   	push   ds
c000919e:	06                   	push   es
c000919f:	0f a0                	push   fs
c00091a1:	0f a8                	push   gs
c00091a3:	60                   	pusha  
c00091a4:	68 22 00 00 00       	push   0x22
c00091a9:	66 8c d0             	mov    ax,ss
c00091ac:	8e d8                	mov    ds,eax
c00091ae:	8e c0                	mov    es,eax
c00091b0:	ff 15 74 e2 00 c0    	call   DWORD PTR ds:0xc000e274
c00091b6:	81 c4 04 00 00 00    	add    esp,0x4
c00091bc:	61                   	popa   
c00091bd:	0f a9                	pop    gs
c00091bf:	0f a1                	pop    fs
c00091c1:	07                   	pop    es
c00091c2:	1f                   	pop    ds
c00091c3:	81 c4 04 00 00 00    	add    esp,0x4
c00091c9:	cf                   	iret   

c00091ca <asm_intr0x23_handler>:
c00091ca:	68 00 00 00 00       	push   0x0
c00091cf:	1e                   	push   ds
c00091d0:	06                   	push   es
c00091d1:	0f a0                	push   fs
c00091d3:	0f a8                	push   gs
c00091d5:	60                   	pusha  
c00091d6:	68 23 00 00 00       	push   0x23
c00091db:	66 8c d0             	mov    ax,ss
c00091de:	8e d8                	mov    ds,eax
c00091e0:	8e c0                	mov    es,eax
c00091e2:	ff 15 78 e2 00 c0    	call   DWORD PTR ds:0xc000e278
c00091e8:	81 c4 04 00 00 00    	add    esp,0x4
c00091ee:	61                   	popa   
c00091ef:	0f a9                	pop    gs
c00091f1:	0f a1                	pop    fs
c00091f3:	07                   	pop    es
c00091f4:	1f                   	pop    ds
c00091f5:	81 c4 04 00 00 00    	add    esp,0x4
c00091fb:	cf                   	iret   

c00091fc <asm_intr0x24_handler>:
c00091fc:	68 00 00 00 00       	push   0x0
c0009201:	1e                   	push   ds
c0009202:	06                   	push   es
c0009203:	0f a0                	push   fs
c0009205:	0f a8                	push   gs
c0009207:	60                   	pusha  
c0009208:	68 24 00 00 00       	push   0x24
c000920d:	66 8c d0             	mov    ax,ss
c0009210:	8e d8                	mov    ds,eax
c0009212:	8e c0                	mov    es,eax
c0009214:	ff 15 7c e2 00 c0    	call   DWORD PTR ds:0xc000e27c
c000921a:	81 c4 04 00 00 00    	add    esp,0x4
c0009220:	61                   	popa   
c0009221:	0f a9                	pop    gs
c0009223:	0f a1                	pop    fs
c0009225:	07                   	pop    es
c0009226:	1f                   	pop    ds
c0009227:	81 c4 04 00 00 00    	add    esp,0x4
c000922d:	cf                   	iret   

c000922e <asm_intr0x25_handler>:
c000922e:	68 00 00 00 00       	push   0x0
c0009233:	1e                   	push   ds
c0009234:	06                   	push   es
c0009235:	0f a0                	push   fs
c0009237:	0f a8                	push   gs
c0009239:	60                   	pusha  
c000923a:	68 25 00 00 00       	push   0x25
c000923f:	66 8c d0             	mov    ax,ss
c0009242:	8e d8                	mov    ds,eax
c0009244:	8e c0                	mov    es,eax
c0009246:	ff 15 80 e2 00 c0    	call   DWORD PTR ds:0xc000e280
c000924c:	81 c4 04 00 00 00    	add    esp,0x4
c0009252:	61                   	popa   
c0009253:	0f a9                	pop    gs
c0009255:	0f a1                	pop    fs
c0009257:	07                   	pop    es
c0009258:	1f                   	pop    ds
c0009259:	81 c4 04 00 00 00    	add    esp,0x4
c000925f:	cf                   	iret   

c0009260 <asm_intr0x26_handler>:
c0009260:	68 00 00 00 00       	push   0x0
c0009265:	1e                   	push   ds
c0009266:	06                   	push   es
c0009267:	0f a0                	push   fs
c0009269:	0f a8                	push   gs
c000926b:	60                   	pusha  
c000926c:	68 26 00 00 00       	push   0x26
c0009271:	66 8c d0             	mov    ax,ss
c0009274:	8e d8                	mov    ds,eax
c0009276:	8e c0                	mov    es,eax
c0009278:	ff 15 84 e2 00 c0    	call   DWORD PTR ds:0xc000e284
c000927e:	81 c4 04 00 00 00    	add    esp,0x4
c0009284:	61                   	popa   
c0009285:	0f a9                	pop    gs
c0009287:	0f a1                	pop    fs
c0009289:	07                   	pop    es
c000928a:	1f                   	pop    ds
c000928b:	81 c4 04 00 00 00    	add    esp,0x4
c0009291:	cf                   	iret   

c0009292 <asm_intr0x27_handler>:
c0009292:	68 00 00 00 00       	push   0x0
c0009297:	1e                   	push   ds
c0009298:	06                   	push   es
c0009299:	0f a0                	push   fs
c000929b:	0f a8                	push   gs
c000929d:	60                   	pusha  
c000929e:	68 27 00 00 00       	push   0x27
c00092a3:	66 8c d0             	mov    ax,ss
c00092a6:	8e d8                	mov    ds,eax
c00092a8:	8e c0                	mov    es,eax
c00092aa:	ff 15 88 e2 00 c0    	call   DWORD PTR ds:0xc000e288
c00092b0:	81 c4 04 00 00 00    	add    esp,0x4
c00092b6:	61                   	popa   
c00092b7:	0f a9                	pop    gs
c00092b9:	0f a1                	pop    fs
c00092bb:	07                   	pop    es
c00092bc:	1f                   	pop    ds
c00092bd:	81 c4 04 00 00 00    	add    esp,0x4
c00092c3:	cf                   	iret   

c00092c4 <asm_intr0x28_handler>:
c00092c4:	68 00 00 00 00       	push   0x0
c00092c9:	1e                   	push   ds
c00092ca:	06                   	push   es
c00092cb:	0f a0                	push   fs
c00092cd:	0f a8                	push   gs
c00092cf:	60                   	pusha  
c00092d0:	68 28 00 00 00       	push   0x28
c00092d5:	66 8c d0             	mov    ax,ss
c00092d8:	8e d8                	mov    ds,eax
c00092da:	8e c0                	mov    es,eax
c00092dc:	ff 15 8c e2 00 c0    	call   DWORD PTR ds:0xc000e28c
c00092e2:	81 c4 04 00 00 00    	add    esp,0x4
c00092e8:	61                   	popa   
c00092e9:	0f a9                	pop    gs
c00092eb:	0f a1                	pop    fs
c00092ed:	07                   	pop    es
c00092ee:	1f                   	pop    ds
c00092ef:	81 c4 04 00 00 00    	add    esp,0x4
c00092f5:	cf                   	iret   

c00092f6 <asm_intr0x29_handler>:
c00092f6:	68 00 00 00 00       	push   0x0
c00092fb:	1e                   	push   ds
c00092fc:	06                   	push   es
c00092fd:	0f a0                	push   fs
c00092ff:	0f a8                	push   gs
c0009301:	60                   	pusha  
c0009302:	68 29 00 00 00       	push   0x29
c0009307:	66 8c d0             	mov    ax,ss
c000930a:	8e d8                	mov    ds,eax
c000930c:	8e c0                	mov    es,eax
c000930e:	ff 15 90 e2 00 c0    	call   DWORD PTR ds:0xc000e290
c0009314:	81 c4 04 00 00 00    	add    esp,0x4
c000931a:	61                   	popa   
c000931b:	0f a9                	pop    gs
c000931d:	0f a1                	pop    fs
c000931f:	07                   	pop    es
c0009320:	1f                   	pop    ds
c0009321:	81 c4 04 00 00 00    	add    esp,0x4
c0009327:	cf                   	iret   

c0009328 <asm_intr0x2a_handler>:
c0009328:	68 00 00 00 00       	push   0x0
c000932d:	1e                   	push   ds
c000932e:	06                   	push   es
c000932f:	0f a0                	push   fs
c0009331:	0f a8                	push   gs
c0009333:	60                   	pusha  
c0009334:	68 2a 00 00 00       	push   0x2a
c0009339:	66 8c d0             	mov    ax,ss
c000933c:	8e d8                	mov    ds,eax
c000933e:	8e c0                	mov    es,eax
c0009340:	ff 15 94 e2 00 c0    	call   DWORD PTR ds:0xc000e294
c0009346:	81 c4 04 00 00 00    	add    esp,0x4
c000934c:	61                   	popa   
c000934d:	0f a9                	pop    gs
c000934f:	0f a1                	pop    fs
c0009351:	07                   	pop    es
c0009352:	1f                   	pop    ds
c0009353:	81 c4 04 00 00 00    	add    esp,0x4
c0009359:	cf                   	iret   

c000935a <asm_intr0x2b_handler>:
c000935a:	68 00 00 00 00       	push   0x0
c000935f:	1e                   	push   ds
c0009360:	06                   	push   es
c0009361:	0f a0                	push   fs
c0009363:	0f a8                	push   gs
c0009365:	60                   	pusha  
c0009366:	68 2b 00 00 00       	push   0x2b
c000936b:	66 8c d0             	mov    ax,ss
c000936e:	8e d8                	mov    ds,eax
c0009370:	8e c0                	mov    es,eax
c0009372:	ff 15 98 e2 00 c0    	call   DWORD PTR ds:0xc000e298
c0009378:	81 c4 04 00 00 00    	add    esp,0x4
c000937e:	61                   	popa   
c000937f:	0f a9                	pop    gs
c0009381:	0f a1                	pop    fs
c0009383:	07                   	pop    es
c0009384:	1f                   	pop    ds
c0009385:	81 c4 04 00 00 00    	add    esp,0x4
c000938b:	cf                   	iret   

c000938c <asm_intr0x2c_handler>:
c000938c:	68 00 00 00 00       	push   0x0
c0009391:	1e                   	push   ds
c0009392:	06                   	push   es
c0009393:	0f a0                	push   fs
c0009395:	0f a8                	push   gs
c0009397:	60                   	pusha  
c0009398:	68 2c 00 00 00       	push   0x2c
c000939d:	66 8c d0             	mov    ax,ss
c00093a0:	8e d8                	mov    ds,eax
c00093a2:	8e c0                	mov    es,eax
c00093a4:	ff 15 9c e2 00 c0    	call   DWORD PTR ds:0xc000e29c
c00093aa:	81 c4 04 00 00 00    	add    esp,0x4
c00093b0:	61                   	popa   
c00093b1:	0f a9                	pop    gs
c00093b3:	0f a1                	pop    fs
c00093b5:	07                   	pop    es
c00093b6:	1f                   	pop    ds
c00093b7:	81 c4 04 00 00 00    	add    esp,0x4
c00093bd:	cf                   	iret   

c00093be <asm_intr0x2d_handler>:
c00093be:	68 00 00 00 00       	push   0x0
c00093c3:	1e                   	push   ds
c00093c4:	06                   	push   es
c00093c5:	0f a0                	push   fs
c00093c7:	0f a8                	push   gs
c00093c9:	60                   	pusha  
c00093ca:	68 2d 00 00 00       	push   0x2d
c00093cf:	66 8c d0             	mov    ax,ss
c00093d2:	8e d8                	mov    ds,eax
c00093d4:	8e c0                	mov    es,eax
c00093d6:	ff 15 a0 e2 00 c0    	call   DWORD PTR ds:0xc000e2a0
c00093dc:	81 c4 04 00 00 00    	add    esp,0x4
c00093e2:	61                   	popa   
c00093e3:	0f a9                	pop    gs
c00093e5:	0f a1                	pop    fs
c00093e7:	07                   	pop    es
c00093e8:	1f                   	pop    ds
c00093e9:	81 c4 04 00 00 00    	add    esp,0x4
c00093ef:	cf                   	iret   

c00093f0 <asm_intr0x2e_handler>:
c00093f0:	68 00 00 00 00       	push   0x0
c00093f5:	1e                   	push   ds
c00093f6:	06                   	push   es
c00093f7:	0f a0                	push   fs
c00093f9:	0f a8                	push   gs
c00093fb:	60                   	pusha  
c00093fc:	68 2e 00 00 00       	push   0x2e
c0009401:	66 8c d0             	mov    ax,ss
c0009404:	8e d8                	mov    ds,eax
c0009406:	8e c0                	mov    es,eax
c0009408:	ff 15 a4 e2 00 c0    	call   DWORD PTR ds:0xc000e2a4
c000940e:	81 c4 04 00 00 00    	add    esp,0x4
c0009414:	61                   	popa   
c0009415:	0f a9                	pop    gs
c0009417:	0f a1                	pop    fs
c0009419:	07                   	pop    es
c000941a:	1f                   	pop    ds
c000941b:	81 c4 04 00 00 00    	add    esp,0x4
c0009421:	cf                   	iret   

c0009422 <asm_intr0x2f_handler>:
c0009422:	68 00 00 00 00       	push   0x0
c0009427:	1e                   	push   ds
c0009428:	06                   	push   es
c0009429:	0f a0                	push   fs
c000942b:	0f a8                	push   gs
c000942d:	60                   	pusha  
c000942e:	68 2f 00 00 00       	push   0x2f
c0009433:	66 8c d0             	mov    ax,ss
c0009436:	8e d8                	mov    ds,eax
c0009438:	8e c0                	mov    es,eax
c000943a:	ff 15 a8 e2 00 c0    	call   DWORD PTR ds:0xc000e2a8
c0009440:	81 c4 04 00 00 00    	add    esp,0x4
c0009446:	61                   	popa   
c0009447:	0f a9                	pop    gs
c0009449:	0f a1                	pop    fs
c000944b:	07                   	pop    es
c000944c:	1f                   	pop    ds
c000944d:	81 c4 04 00 00 00    	add    esp,0x4
c0009453:	cf                   	iret   

c0009454 <intr0x27_handler>:
c0009454:	55                   	push   ebp
c0009455:	ba 20 00 00 00       	mov    edx,0x20
c000945a:	89 e5                	mov    ebp,esp
c000945c:	b8 20 00 00 00       	mov    eax,0x20
c0009461:	ee                   	out    dx,al
c0009462:	5d                   	pop    ebp
c0009463:	c3                   	ret    

c0009464 <init_pic>:
c0009464:	55                   	push   ebp
c0009465:	ba 21 00 00 00       	mov    edx,0x21
c000946a:	89 e5                	mov    ebp,esp
c000946c:	b8 ff 00 00 00       	mov    eax,0xff
c0009471:	ee                   	out    dx,al
c0009472:	b2 a1                	mov    dl,0xa1
c0009474:	ee                   	out    dx,al
c0009475:	b2 20                	mov    dl,0x20
c0009477:	b0 11                	mov    al,0x11
c0009479:	ee                   	out    dx,al
c000947a:	b2 21                	mov    dl,0x21
c000947c:	b0 20                	mov    al,0x20
c000947e:	ee                   	out    dx,al
c000947f:	b0 04                	mov    al,0x4
c0009481:	ee                   	out    dx,al
c0009482:	b0 01                	mov    al,0x1
c0009484:	ee                   	out    dx,al
c0009485:	b2 a0                	mov    dl,0xa0
c0009487:	b0 11                	mov    al,0x11
c0009489:	ee                   	out    dx,al
c000948a:	b2 a1                	mov    dl,0xa1
c000948c:	b0 28                	mov    al,0x28
c000948e:	ee                   	out    dx,al
c000948f:	b0 02                	mov    al,0x2
c0009491:	ee                   	out    dx,al
c0009492:	b0 01                	mov    al,0x1
c0009494:	ee                   	out    dx,al
c0009495:	b2 21                	mov    dl,0x21
c0009497:	b0 fc                	mov    al,0xfc
c0009499:	ee                   	out    dx,al
c000949a:	b2 a1                	mov    dl,0xa1
c000949c:	b0 ff                	mov    al,0xff
c000949e:	ee                   	out    dx,al
c000949f:	5d                   	pop    ebp
c00094a0:	c3                   	ret    

c00094a1 <idt_desc_init>:
c00094a1:	55                   	push   ebp
c00094a2:	31 c0                	xor    eax,eax
c00094a4:	89 e5                	mov    ebp,esp
c00094a6:	c7 04 85 ec e1 00 c0 	mov    DWORD PTR [eax*4-0x3fff1e14],0xc0009659
c00094ad:	59 96 00 c0 
c00094b1:	40                   	inc    eax
c00094b2:	83 f8 2f             	cmp    eax,0x2f
c00094b5:	75 ef                	jne    c00094a6 <idt_desc_init+0x5>
c00094b7:	c7 05 6c e2 00 c0 b0 	mov    DWORD PTR ds:0xc000e26c,0xc000a8b0
c00094be:	a8 00 c0 
c00094c1:	30 c0                	xor    al,al
c00094c3:	c7 05 70 e2 00 c0 4e 	mov    DWORD PTR ds:0xc000e270,0xc000974e
c00094ca:	97 00 c0 
c00094cd:	c7 05 88 e2 00 c0 54 	mov    DWORD PTR ds:0xc000e288,0xc0009454
c00094d4:	94 00 c0 
c00094d7:	8b 0c 85 e0 ba 00 c0 	mov    ecx,DWORD PTR [eax*4-0x3fff4520]
c00094de:	8d 14 c5 74 e0 00 c0 	lea    edx,[eax*8-0x3fff1f8c]
c00094e5:	66 89 0c c5 74 e0 00 	mov    WORD PTR [eax*8-0x3fff1f8c],cx
c00094ec:	c0 
c00094ed:	40                   	inc    eax
c00094ee:	c1 e9 10             	shr    ecx,0x10
c00094f1:	83 f8 2f             	cmp    eax,0x2f
c00094f4:	66 c7 42 02 08 00    	mov    WORD PTR [edx+0x2],0x8
c00094fa:	c6 42 04 00          	mov    BYTE PTR [edx+0x4],0x0
c00094fe:	c6 42 05 8e          	mov    BYTE PTR [edx+0x5],0x8e
c0009502:	66 89 4a 06          	mov    WORD PTR [edx+0x6],cx
c0009506:	75 cf                	jne    c00094d7 <idt_desc_init+0x36>
c0009508:	5d                   	pop    ebp
c0009509:	c3                   	ret    

c000950a <set_gatedesc>:
c000950a:	55                   	push   ebp
c000950b:	89 e5                	mov    ebp,esp
c000950d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009510:	53                   	push   ebx
c0009511:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
c0009514:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0009517:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c000951a:	88 48 05             	mov    BYTE PTR [eax+0x5],cl
c000951d:	66 89 58 02          	mov    WORD PTR [eax+0x2],bx
c0009521:	89 cb                	mov    ebx,ecx
c0009523:	66 89 10             	mov    WORD PTR [eax],dx
c0009526:	c1 fb 08             	sar    ebx,0x8
c0009529:	c1 ea 10             	shr    edx,0x10
c000952c:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c000952f:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0009533:	5b                   	pop    ebx
c0009534:	5d                   	pop    ebp
c0009535:	c3                   	ret    

c0009536 <exception_init>:
c0009536:	55                   	push   ebp
c0009537:	89 e5                	mov    ebp,esp
c0009539:	c7 05 b8 df 00 c0 50 	mov    DWORD PTR ds:0xc000dfb8,0xc000d650
c0009540:	d6 00 c0 
c0009543:	c7 05 bc df 00 c0 61 	mov    DWORD PTR ds:0xc000dfbc,0xc000d661
c000954a:	d6 00 c0 
c000954d:	c7 05 c0 df 00 c0 75 	mov    DWORD PTR ds:0xc000dfc0,0xc000d675
c0009554:	d6 00 c0 
c0009557:	c7 05 c4 df 00 c0 83 	mov    DWORD PTR ds:0xc000dfc4,0xc000d683
c000955e:	d6 00 c0 
c0009561:	c7 05 c8 df 00 c0 9c 	mov    DWORD PTR ds:0xc000dfc8,0xc000d69c
c0009568:	d6 00 c0 
c000956b:	c7 05 cc df 00 c0 b3 	mov    DWORD PTR ds:0xc000dfcc,0xc000d6b3
c0009572:	d6 00 c0 
c0009575:	c7 05 d0 df 00 c0 d6 	mov    DWORD PTR ds:0xc000dfd0,0xc000d6d6
c000957c:	d6 00 c0 
c000957f:	c7 05 d4 df 00 c0 f3 	mov    DWORD PTR ds:0xc000dfd4,0xc000d6f3
c0009586:	d6 00 c0 
c0009589:	c7 05 d8 df 00 c0 16 	mov    DWORD PTR ds:0xc000dfd8,0xc000d716
c0009590:	d7 00 c0 
c0009593:	c7 05 dc df 00 c0 31 	mov    DWORD PTR ds:0xc000dfdc,0xc000d731
c000959a:	d7 00 c0 
c000959d:	c7 05 e0 df 00 c0 4d 	mov    DWORD PTR ds:0xc000dfe0,0xc000d74d
c00095a4:	d7 00 c0 
c00095a7:	c7 05 e4 df 00 c0 67 	mov    DWORD PTR ds:0xc000dfe4,0xc000d767
c00095ae:	d7 00 c0 
c00095b1:	c7 05 e8 df 00 c0 7f 	mov    DWORD PTR ds:0xc000dfe8,0xc000d77f
c00095b8:	d7 00 c0 
c00095bb:	c7 05 ec df 00 c0 99 	mov    DWORD PTR ds:0xc000dfec,0xc000d799
c00095c2:	d7 00 c0 
c00095c5:	c7 05 f0 df 00 c0 ba 	mov    DWORD PTR ds:0xc000dff0,0xc000d7ba
c00095cc:	d7 00 c0 
c00095cf:	c7 05 f4 df 00 c0 d3 	mov    DWORD PTR ds:0xc000dff4,0xc000d7d3
c00095d6:	d7 00 c0 
c00095d9:	c7 05 f8 df 00 c0 dc 	mov    DWORD PTR ds:0xc000dff8,0xc000d7dc
c00095e0:	d7 00 c0 
c00095e3:	c7 05 fc df 00 c0 fd 	mov    DWORD PTR ds:0xc000dffc,0xc000d7fd
c00095ea:	d7 00 c0 
c00095ed:	c7 05 00 e0 00 c0 1b 	mov    DWORD PTR ds:0xc000e000,0xc000d81b
c00095f4:	d8 00 c0 
c00095f7:	c7 05 04 e0 00 c0 37 	mov    DWORD PTR ds:0xc000e004,0xc000d837
c00095fe:	d8 00 c0 
c0009601:	5d                   	pop    ebp
c0009602:	c3                   	ret    

c0009603 <init_idt>:
c0009603:	55                   	push   ebp
c0009604:	89 e5                	mov    ebp,esp
c0009606:	83 ec 10             	sub    esp,0x10
c0009609:	e8 93 fe ff ff       	call   c00094a1 <idt_desc_init>
c000960e:	e8 51 fe ff ff       	call   c0009464 <init_pic>
c0009613:	b8 74 e0 00 c0       	mov    eax,0xc000e074
c0009618:	c1 e0 10             	shl    eax,0x10
c000961b:	0d 77 01 00 00       	or     eax,0x177
c0009620:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0009623:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c000962a:	e8 07 ff ff ff       	call   c0009536 <exception_init>
c000962f:	0f 01 5d f8          	lidtd  [ebp-0x8]
c0009633:	c9                   	leave  
c0009634:	c3                   	ret    

c0009635 <intr_get_status>:
c0009635:	55                   	push   ebp
c0009636:	89 e5                	mov    ebp,esp
c0009638:	9c                   	pushf  
c0009639:	58                   	pop    eax
c000963a:	f6 c4 02             	test   ah,0x2
c000963d:	0f 95 c0             	setne  al
c0009640:	0f b6 c0             	movzx  eax,al
c0009643:	5d                   	pop    ebp
c0009644:	c3                   	ret    

c0009645 <intr_disable>:
c0009645:	55                   	push   ebp
c0009646:	89 e5                	mov    ebp,esp
c0009648:	e8 e8 ff ff ff       	call   c0009635 <intr_get_status>
c000964d:	31 d2                	xor    edx,edx
c000964f:	48                   	dec    eax
c0009650:	75 03                	jne    c0009655 <intr_disable+0x10>
c0009652:	fa                   	cli    
c0009653:	b2 01                	mov    dl,0x1
c0009655:	89 d0                	mov    eax,edx
c0009657:	5d                   	pop    ebp
c0009658:	c3                   	ret    

c0009659 <general_intr_handler>:
c0009659:	55                   	push   ebp
c000965a:	89 e5                	mov    ebp,esp
c000965c:	56                   	push   esi
c000965d:	53                   	push   ebx
c000965e:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0009661:	e8 df ff ff ff       	call   c0009645 <intr_disable>
c0009666:	83 ec 0c             	sub    esp,0xc
c0009669:	6a 00                	push   0x0
c000966b:	e8 8d 08 00 00       	call   c0009efd <set_cursor>
c0009670:	58                   	pop    eax
c0009671:	0f b6 f3             	movzx  esi,bl
c0009674:	5a                   	pop    edx
c0009675:	68 59 d8 00 c0       	push   0xc000d859
c000967a:	6a 17                	push   0x17
c000967c:	e8 44 09 00 00       	call   c0009fc5 <put_str>
c0009681:	83 c4 0c             	add    esp,0xc
c0009684:	6a 10                	push   0x10
c0009686:	56                   	push   esi
c0009687:	6a 17                	push   0x17
c0009689:	e8 99 09 00 00       	call   c000a027 <put_int>
c000968e:	59                   	pop    ecx
c000968f:	58                   	pop    eax
c0009690:	68 64 d8 00 c0       	push   0xc000d864
c0009695:	6a 17                	push   0x17
c0009697:	e8 29 09 00 00       	call   c0009fc5 <put_str>
c000969c:	83 c4 10             	add    esp,0x10
c000969f:	80 fb 13             	cmp    bl,0x13
c00096a2:	77 47                	ja     c00096eb <general_intr_handler+0x92>
c00096a4:	50                   	push   eax
c00096a5:	50                   	push   eax
c00096a6:	ff 34 b5 b8 df 00 c0 	push   DWORD PTR [esi*4-0x3fff2048]
c00096ad:	6a 17                	push   0x17
c00096af:	e8 11 09 00 00       	call   c0009fc5 <put_str>
c00096b4:	83 c4 10             	add    esp,0x10
c00096b7:	80 fb 0e             	cmp    bl,0xe
c00096ba:	75 2f                	jne    c00096eb <general_intr_handler+0x92>
c00096bc:	0f 20 d3             	mov    ebx,cr2
c00096bf:	52                   	push   edx
c00096c0:	52                   	push   edx
c00096c1:	68 67 d8 00 c0       	push   0xc000d867
c00096c6:	6a 17                	push   0x17
c00096c8:	e8 f8 08 00 00       	call   c0009fc5 <put_str>
c00096cd:	83 c4 0c             	add    esp,0xc
c00096d0:	6a 10                	push   0x10
c00096d2:	53                   	push   ebx
c00096d3:	6a 17                	push   0x17
c00096d5:	e8 13 09 00 00       	call   c0009fed <put_uint>
c00096da:	59                   	pop    ecx
c00096db:	5b                   	pop    ebx
c00096dc:	68 7c d8 00 c0       	push   0xc000d87c
c00096e1:	6a 17                	push   0x17
c00096e3:	e8 dd 08 00 00       	call   c0009fc5 <put_str>
c00096e8:	83 c4 10             	add    esp,0x10
c00096eb:	50                   	push   eax
c00096ec:	50                   	push   eax
c00096ed:	68 80 d8 00 c0       	push   0xc000d880
c00096f2:	6a 17                	push   0x17
c00096f4:	e8 cc 08 00 00       	call   c0009fc5 <put_str>
c00096f9:	e8 ac ee ff ff       	call   c00085aa <cpu_info>
c00096fe:	83 c4 10             	add    esp,0x10
c0009701:	eb fe                	jmp    c0009701 <general_intr_handler+0xa8>

c0009703 <intr_enable>:
c0009703:	55                   	push   ebp
c0009704:	89 e5                	mov    ebp,esp
c0009706:	e8 2a ff ff ff       	call   c0009635 <intr_get_status>
c000970b:	ba 01 00 00 00       	mov    edx,0x1
c0009710:	48                   	dec    eax
c0009711:	74 03                	je     c0009716 <intr_enable+0x13>
c0009713:	fb                   	sti    
c0009714:	30 d2                	xor    dl,dl
c0009716:	89 d0                	mov    eax,edx
c0009718:	5d                   	pop    ebp
c0009719:	c3                   	ret    

c000971a <intr_set_status>:
c000971a:	55                   	push   ebp
c000971b:	89 e5                	mov    ebp,esp
c000971d:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0009721:	75 06                	jne    c0009729 <intr_set_status+0xf>
c0009723:	5d                   	pop    ebp
c0009724:	e9 da ff ff ff       	jmp    c0009703 <intr_enable>
c0009729:	5d                   	pop    ebp
c000972a:	e9 16 ff ff ff       	jmp    c0009645 <intr_disable>
	...

c0009730 <init_keyboard>:
c0009730:	55                   	push   ebp
c0009731:	89 e5                	mov    ebp,esp
c0009733:	83 ec 08             	sub    esp,0x8
c0009736:	6a 40                	push   0x40
c0009738:	6a 08                	push   0x8
c000973a:	68 e8 de 00 c0       	push   0xc000dee8
c000973f:	68 a8 e2 00 c0       	push   0xc000e2a8
c0009744:	e8 73 ef ff ff       	call   c00086bc <init_fifo>
c0009749:	83 c4 10             	add    esp,0x10
c000974c:	c9                   	leave  
c000974d:	c3                   	ret    

c000974e <intr0x21_handler>:
c000974e:	55                   	push   ebp
c000974f:	b8 20 00 00 00       	mov    eax,0x20
c0009754:	89 e5                	mov    ebp,esp
c0009756:	89 c2                	mov    edx,eax
c0009758:	53                   	push   ebx
c0009759:	83 ec 14             	sub    esp,0x14
c000975c:	ee                   	out    dx,al
c000975d:	8b 0d 28 df 00 c0    	mov    ecx,DWORD PTR ds:0xc000df28
c0009763:	b2 60                	mov    dl,0x60
c0009765:	8b 1d 2c df 00 c0    	mov    ebx,DWORD PTR ds:0xc000df2c
c000976b:	ec                   	in     al,dx
c000976c:	66 3d e0 00          	cmp    ax,0xe0
c0009770:	75 0f                	jne    c0009781 <intr0x21_handler+0x33>
c0009772:	c7 05 30 df 00 c0 01 	mov    DWORD PTR ds:0xc000df30,0x1
c0009779:	00 00 00 
c000977c:	e9 9e 01 00 00       	jmp    c000991f <intr0x21_handler+0x1d1>
c0009781:	83 3d 30 df 00 c0 01 	cmp    DWORD PTR ds:0xc000df30,0x1
c0009788:	75 0e                	jne    c0009798 <intr0x21_handler+0x4a>
c000978a:	66 0d 00 e0          	or     ax,0xe000
c000978e:	c7 05 30 df 00 c0 00 	mov    DWORD PTR ds:0xc000df30,0x0
c0009795:	00 00 00 
c0009798:	a8 80                	test   al,0x80
c000979a:	74 61                	je     c00097fd <intr0x21_handler+0xaf>
c000979c:	24 7f                	and    al,0x7f
c000979e:	66 83 f8 36          	cmp    ax,0x36
c00097a2:	74 3b                	je     c00097df <intr0x21_handler+0x91>
c00097a4:	77 12                	ja     c00097b8 <intr0x21_handler+0x6a>
c00097a6:	66 83 f8 1d          	cmp    ax,0x1d
c00097aa:	74 24                	je     c00097d0 <intr0x21_handler+0x82>
c00097ac:	66 83 f8 2a          	cmp    ax,0x2a
c00097b0:	0f 85 69 01 00 00    	jne    c000991f <intr0x21_handler+0x1d1>
c00097b6:	eb 27                	jmp    c00097df <intr0x21_handler+0x91>
c00097b8:	66 3d 1d e0          	cmp    ax,0xe01d
c00097bc:	74 12                	je     c00097d0 <intr0x21_handler+0x82>
c00097be:	66 3d 38 e0          	cmp    ax,0xe038
c00097c2:	74 2a                	je     c00097ee <intr0x21_handler+0xa0>
c00097c4:	66 83 f8 38          	cmp    ax,0x38
c00097c8:	0f 85 51 01 00 00    	jne    c000991f <intr0x21_handler+0x1d1>
c00097ce:	eb 1e                	jmp    c00097ee <intr0x21_handler+0xa0>
c00097d0:	c7 05 34 df 00 c0 00 	mov    DWORD PTR ds:0xc000df34,0x0
c00097d7:	00 00 00 
c00097da:	e9 40 01 00 00       	jmp    c000991f <intr0x21_handler+0x1d1>
c00097df:	c7 05 28 df 00 c0 00 	mov    DWORD PTR ds:0xc000df28,0x0
c00097e6:	00 00 00 
c00097e9:	e9 31 01 00 00       	jmp    c000991f <intr0x21_handler+0x1d1>
c00097ee:	c7 05 38 df 00 c0 00 	mov    DWORD PTR ds:0xc000df38,0x0
c00097f5:	00 00 00 
c00097f8:	e9 22 01 00 00       	jmp    c000991f <intr0x21_handler+0x1d1>
c00097fd:	8d 50 ff             	lea    edx,[eax-0x1]
c0009800:	66 83 fa 39          	cmp    dx,0x39
c0009804:	76 10                	jbe    c0009816 <intr0x21_handler+0xc8>
c0009806:	66 3d 38 e0          	cmp    ax,0xe038
c000980a:	74 0a                	je     c0009816 <intr0x21_handler+0xc8>
c000980c:	66 3d 1d e0          	cmp    ax,0xe01d
c0009810:	0f 85 09 01 00 00    	jne    c000991f <intr0x21_handler+0x1d1>
c0009816:	66 83 f8 29          	cmp    ax,0x29
c000981a:	74 2d                	je     c0009849 <intr0x21_handler+0xfb>
c000981c:	66 83 f8 0d          	cmp    ax,0xd
c0009820:	76 27                	jbe    c0009849 <intr0x21_handler+0xfb>
c0009822:	66 83 f8 1b          	cmp    ax,0x1b
c0009826:	74 21                	je     c0009849 <intr0x21_handler+0xfb>
c0009828:	66 83 f8 1a          	cmp    ax,0x1a
c000982c:	74 1b                	je     c0009849 <intr0x21_handler+0xfb>
c000982e:	66 83 f8 27          	cmp    ax,0x27
c0009832:	74 15                	je     c0009849 <intr0x21_handler+0xfb>
c0009834:	66 83 f8 2b          	cmp    ax,0x2b
c0009838:	74 0f                	je     c0009849 <intr0x21_handler+0xfb>
c000983a:	66 83 f8 28          	cmp    ax,0x28
c000983e:	74 09                	je     c0009849 <intr0x21_handler+0xfb>
c0009840:	8d 50 cd             	lea    edx,[eax-0x33]
c0009843:	66 83 fa 02          	cmp    dx,0x2
c0009847:	77 06                	ja     c000984f <intr0x21_handler+0x101>
c0009849:	49                   	dec    ecx
c000984a:	0f 94 c2             	sete   dl
c000984d:	eb 0f                	jmp    c000985e <intr0x21_handler+0x110>
c000984f:	85 db                	test   ebx,ebx
c0009851:	74 06                	je     c0009859 <intr0x21_handler+0x10b>
c0009853:	31 d2                	xor    edx,edx
c0009855:	85 c9                	test   ecx,ecx
c0009857:	75 08                	jne    c0009861 <intr0x21_handler+0x113>
c0009859:	09 cb                	or     ebx,ecx
c000985b:	0f 95 c2             	setne  dl
c000985e:	0f b6 d2             	movzx  edx,dl
c0009861:	66 25 ff 00          	and    ax,0xff
c0009865:	0f b7 c8             	movzx  ecx,ax
c0009868:	8a 94 4a f8 d8 00 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fff2708]
c000986f:	84 d2                	test   dl,dl
c0009871:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c0009874:	74 3d                	je     c00098b3 <intr0x21_handler+0x165>
c0009876:	83 ec 0c             	sub    esp,0xc
c0009879:	68 a8 e2 00 c0       	push   0xc000e2a8
c000987e:	e8 13 f0 ff ff       	call   c0008896 <fifo_fill>
c0009883:	83 c4 10             	add    esp,0x10
c0009886:	85 c0                	test   eax,eax
c0009888:	75 20                	jne    c00098aa <intr0x21_handler+0x15c>
c000988a:	53                   	push   ebx
c000988b:	53                   	push   ebx
c000988c:	8d 45 f7             	lea    eax,[ebp-0x9]
c000988f:	50                   	push   eax
c0009890:	68 a8 e2 00 c0       	push   0xc000e2a8
c0009895:	e8 64 ee ff ff       	call   c00086fe <fifo_put>
c000989a:	58                   	pop    eax
c000989b:	0f b6 45 f7          	movzx  eax,BYTE PTR [ebp-0x9]
c000989f:	5a                   	pop    edx
c00098a0:	50                   	push   eax
c00098a1:	6a 07                	push   0x7
c00098a3:	e8 7c 06 00 00       	call   c0009f24 <put_char>
c00098a8:	eb 72                	jmp    c000991c <intr0x21_handler+0x1ce>
c00098aa:	51                   	push   ecx
c00098ab:	51                   	push   ecx
c00098ac:	68 b0 d8 00 c0       	push   0xc000d8b0
c00098b1:	eb 62                	jmp    c0009915 <intr0x21_handler+0x1c7>
c00098b3:	66 83 f8 36          	cmp    ax,0x36
c00098b7:	74 2a                	je     c00098e3 <intr0x21_handler+0x195>
c00098b9:	77 0e                	ja     c00098c9 <intr0x21_handler+0x17b>
c00098bb:	66 83 f8 1d          	cmp    ax,0x1d
c00098bf:	74 16                	je     c00098d7 <intr0x21_handler+0x189>
c00098c1:	66 83 f8 2a          	cmp    ax,0x2a
c00098c5:	75 47                	jne    c000990e <intr0x21_handler+0x1c0>
c00098c7:	eb 1a                	jmp    c00098e3 <intr0x21_handler+0x195>
c00098c9:	66 83 f8 38          	cmp    ax,0x38
c00098cd:	74 20                	je     c00098ef <intr0x21_handler+0x1a1>
c00098cf:	66 83 f8 3a          	cmp    ax,0x3a
c00098d3:	75 39                	jne    c000990e <intr0x21_handler+0x1c0>
c00098d5:	eb 24                	jmp    c00098fb <intr0x21_handler+0x1ad>
c00098d7:	c7 05 34 df 00 c0 01 	mov    DWORD PTR ds:0xc000df34,0x1
c00098de:	00 00 00 
c00098e1:	eb 3c                	jmp    c000991f <intr0x21_handler+0x1d1>
c00098e3:	c7 05 28 df 00 c0 01 	mov    DWORD PTR ds:0xc000df28,0x1
c00098ea:	00 00 00 
c00098ed:	eb 30                	jmp    c000991f <intr0x21_handler+0x1d1>
c00098ef:	c7 05 38 df 00 c0 01 	mov    DWORD PTR ds:0xc000df38,0x1
c00098f6:	00 00 00 
c00098f9:	eb 24                	jmp    c000991f <intr0x21_handler+0x1d1>
c00098fb:	31 c0                	xor    eax,eax
c00098fd:	83 3d 2c df 00 c0 00 	cmp    DWORD PTR ds:0xc000df2c,0x0
c0009904:	0f 94 c0             	sete   al
c0009907:	a3 2c df 00 c0       	mov    ds:0xc000df2c,eax
c000990c:	eb 11                	jmp    c000991f <intr0x21_handler+0x1d1>
c000990e:	52                   	push   edx
c000990f:	52                   	push   edx
c0009910:	68 c4 d8 00 c0       	push   0xc000d8c4
c0009915:	6a 04                	push   0x4
c0009917:	e8 a9 06 00 00       	call   c0009fc5 <put_str>
c000991c:	83 c4 10             	add    esp,0x10
c000991f:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009922:	c9                   	leave  
c0009923:	c3                   	ret    

c0009924 <list_init>:
c0009924:	55                   	push   ebp
c0009925:	89 e5                	mov    ebp,esp
c0009927:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000992a:	8d 50 0c             	lea    edx,[eax+0xc]
c000992d:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0009933:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0009936:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c0009939:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0009940:	5d                   	pop    ebp
c0009941:	c3                   	ret    

c0009942 <list_in>:
c0009942:	55                   	push   ebp
c0009943:	89 e5                	mov    ebp,esp
c0009945:	56                   	push   esi
c0009946:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0009949:	53                   	push   ebx
c000994a:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000994d:	e8 f3 fc ff ff       	call   c0009645 <intr_disable>
c0009952:	8b 13                	mov    edx,DWORD PTR [ebx]
c0009954:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c0009957:	8b 13                	mov    edx,DWORD PTR [ebx]
c0009959:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c000995c:	89 16                	mov    DWORD PTR [esi],edx
c000995e:	89 33                	mov    DWORD PTR [ebx],esi
c0009960:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0009963:	5b                   	pop    ebx
c0009964:	5e                   	pop    esi
c0009965:	5d                   	pop    ebp
c0009966:	e9 af fd ff ff       	jmp    c000971a <intr_set_status>

c000996b <list_push>:
c000996b:	55                   	push   ebp
c000996c:	89 e5                	mov    ebp,esp
c000996e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009971:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0009974:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0009977:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000997a:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000997d:	5d                   	pop    ebp
c000997e:	e9 bf ff ff ff       	jmp    c0009942 <list_in>

c0009983 <list_append>:
c0009983:	55                   	push   ebp
c0009984:	89 e5                	mov    ebp,esp
c0009986:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009989:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000998c:	83 c2 0c             	add    edx,0xc
c000998f:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c0009992:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0009995:	5d                   	pop    ebp
c0009996:	e9 a7 ff ff ff       	jmp    c0009942 <list_in>

c000999b <list_remove>:
c000999b:	55                   	push   ebp
c000999c:	89 e5                	mov    ebp,esp
c000999e:	53                   	push   ebx
c000999f:	50                   	push   eax
c00099a0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00099a3:	e8 9d fc ff ff       	call   c0009645 <intr_disable>
c00099a8:	8b 13                	mov    edx,DWORD PTR [ebx]
c00099aa:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c00099ad:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c00099b0:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c00099b3:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c00099b5:	89 0a                	mov    DWORD PTR [edx],ecx
c00099b7:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c00099ba:	5a                   	pop    edx
c00099bb:	5b                   	pop    ebx
c00099bc:	5d                   	pop    ebp
c00099bd:	e9 58 fd ff ff       	jmp    c000971a <intr_set_status>

c00099c2 <list_pop>:
c00099c2:	55                   	push   ebp
c00099c3:	89 e5                	mov    ebp,esp
c00099c5:	53                   	push   ebx
c00099c6:	83 ec 10             	sub    esp,0x10
c00099c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00099cc:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c00099cf:	53                   	push   ebx
c00099d0:	e8 c6 ff ff ff       	call   c000999b <list_remove>
c00099d5:	89 d8                	mov    eax,ebx
c00099d7:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00099da:	c9                   	leave  
c00099db:	c3                   	ret    

c00099dc <list_find>:
c00099dc:	55                   	push   ebp
c00099dd:	89 e5                	mov    ebp,esp
c00099df:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c00099e2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c00099e5:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c00099e8:	83 c2 0c             	add    edx,0xc
c00099eb:	eb 07                	jmp    c00099f4 <list_find+0x18>
c00099ed:	39 c8                	cmp    eax,ecx
c00099ef:	74 0b                	je     c00099fc <list_find+0x20>
c00099f1:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c00099f4:	39 d0                	cmp    eax,edx
c00099f6:	75 f5                	jne    c00099ed <list_find+0x11>
c00099f8:	31 c0                	xor    eax,eax
c00099fa:	eb 05                	jmp    c0009a01 <list_find+0x25>
c00099fc:	b8 01 00 00 00       	mov    eax,0x1
c0009a01:	5d                   	pop    ebp
c0009a02:	c3                   	ret    

c0009a03 <list_traversal>:
c0009a03:	55                   	push   ebp
c0009a04:	89 e5                	mov    ebp,esp
c0009a06:	57                   	push   edi
c0009a07:	56                   	push   esi
c0009a08:	53                   	push   ebx
c0009a09:	83 ec 0c             	sub    esp,0xc
c0009a0c:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0009a0f:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0009a12:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c0009a15:	83 c6 0c             	add    esi,0xc
c0009a18:	eb 11                	jmp    c0009a2b <list_traversal+0x28>
c0009a1a:	51                   	push   ecx
c0009a1b:	51                   	push   ecx
c0009a1c:	57                   	push   edi
c0009a1d:	53                   	push   ebx
c0009a1e:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c0009a21:	83 c4 10             	add    esp,0x10
c0009a24:	85 c0                	test   eax,eax
c0009a26:	75 09                	jne    c0009a31 <list_traversal+0x2e>
c0009a28:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c0009a2b:	39 f3                	cmp    ebx,esi
c0009a2d:	75 eb                	jne    c0009a1a <list_traversal+0x17>
c0009a2f:	31 db                	xor    ebx,ebx
c0009a31:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009a34:	89 d8                	mov    eax,ebx
c0009a36:	5b                   	pop    ebx
c0009a37:	5e                   	pop    esi
c0009a38:	5f                   	pop    edi
c0009a39:	5d                   	pop    ebp
c0009a3a:	c3                   	ret    

c0009a3b <list_len>:
c0009a3b:	55                   	push   ebp
c0009a3c:	31 c0                	xor    eax,eax
c0009a3e:	89 e5                	mov    ebp,esp
c0009a40:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0009a43:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c0009a46:	83 c1 0c             	add    ecx,0xc
c0009a49:	eb 04                	jmp    c0009a4f <list_len+0x14>
c0009a4b:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0009a4e:	40                   	inc    eax
c0009a4f:	39 ca                	cmp    edx,ecx
c0009a51:	75 f8                	jne    c0009a4b <list_len+0x10>
c0009a53:	5d                   	pop    ebp
c0009a54:	c3                   	ret    

c0009a55 <list_empty>:
c0009a55:	55                   	push   ebp
c0009a56:	89 e5                	mov    ebp,esp
c0009a58:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009a5b:	5d                   	pop    ebp
c0009a5c:	8d 50 0c             	lea    edx,[eax+0xc]
c0009a5f:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c0009a62:	0f 94 c0             	sete   al
c0009a65:	0f b6 c0             	movzx  eax,al
c0009a68:	c3                   	ret    
c0009a69:	00 00                	add    BYTE PTR [eax],al
	...

c0009a6c <init_memmam>:
c0009a6c:	55                   	push   ebp
c0009a6d:	89 e5                	mov    ebp,esp
c0009a6f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009a72:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0009a78:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0009a7f:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0009a86:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0009a8d:	5d                   	pop    ebp
c0009a8e:	c3                   	ret    

c0009a8f <TotalFreeSize>:
c0009a8f:	55                   	push   ebp
c0009a90:	31 d2                	xor    edx,edx
c0009a92:	89 e5                	mov    ebp,esp
c0009a94:	31 c0                	xor    eax,eax
c0009a96:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0009a99:	53                   	push   ebx
c0009a9a:	8b 19                	mov    ebx,DWORD PTR [ecx]
c0009a9c:	eb 05                	jmp    c0009aa3 <TotalFreeSize+0x14>
c0009a9e:	03 44 d1 14          	add    eax,DWORD PTR [ecx+edx*8+0x14]
c0009aa2:	42                   	inc    edx
c0009aa3:	39 da                	cmp    edx,ebx
c0009aa5:	75 f7                	jne    c0009a9e <TotalFreeSize+0xf>
c0009aa7:	5b                   	pop    ebx
c0009aa8:	5d                   	pop    ebp
c0009aa9:	c3                   	ret    

c0009aaa <mem_alloc>:
c0009aaa:	55                   	push   ebp
c0009aab:	89 e5                	mov    ebp,esp
c0009aad:	57                   	push   edi
c0009aae:	56                   	push   esi
c0009aaf:	53                   	push   ebx
c0009ab0:	51                   	push   ecx
c0009ab1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009ab4:	31 c9                	xor    ecx,ecx
c0009ab6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0009ab9:	8b 02                	mov    eax,DWORD PTR [edx]
c0009abb:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0009abe:	eb 40                	jmp    c0009b00 <mem_alloc+0x56>
c0009ac0:	39 7c ca 14          	cmp    DWORD PTR [edx+ecx*8+0x14],edi
c0009ac4:	72 39                	jb     c0009aff <mem_alloc+0x55>
c0009ac6:	8d 71 02             	lea    esi,[ecx+0x2]
c0009ac9:	8b 04 f2             	mov    eax,DWORD PTR [edx+esi*8]
c0009acc:	8d 1c 38             	lea    ebx,[eax+edi*1]
c0009acf:	89 1c f2             	mov    DWORD PTR [edx+esi*8],ebx
c0009ad2:	8b 5c f2 04          	mov    ebx,DWORD PTR [edx+esi*8+0x4]
c0009ad6:	29 fb                	sub    ebx,edi
c0009ad8:	85 db                	test   ebx,ebx
c0009ada:	89 5c f2 04          	mov    DWORD PTR [edx+esi*8+0x4],ebx
c0009ade:	75 27                	jne    c0009b07 <mem_alloc+0x5d>
c0009ae0:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
c0009ae3:	4b                   	dec    ebx
c0009ae4:	89 1a                	mov    DWORD PTR [edx],ebx
c0009ae6:	eb 11                	jmp    c0009af9 <mem_alloc+0x4f>
c0009ae8:	41                   	inc    ecx
c0009ae9:	8b 74 ca 10          	mov    esi,DWORD PTR [edx+ecx*8+0x10]
c0009aed:	8b 7c ca 14          	mov    edi,DWORD PTR [edx+ecx*8+0x14]
c0009af1:	89 74 ca 08          	mov    DWORD PTR [edx+ecx*8+0x8],esi
c0009af5:	89 7c ca 0c          	mov    DWORD PTR [edx+ecx*8+0xc],edi
c0009af9:	39 d9                	cmp    ecx,ebx
c0009afb:	72 eb                	jb     c0009ae8 <mem_alloc+0x3e>
c0009afd:	eb 08                	jmp    c0009b07 <mem_alloc+0x5d>
c0009aff:	41                   	inc    ecx
c0009b00:	3b 4d f0             	cmp    ecx,DWORD PTR [ebp-0x10]
c0009b03:	75 bb                	jne    c0009ac0 <mem_alloc+0x16>
c0009b05:	31 c0                	xor    eax,eax
c0009b07:	5a                   	pop    edx
c0009b08:	5b                   	pop    ebx
c0009b09:	5e                   	pop    esi
c0009b0a:	5f                   	pop    edi
c0009b0b:	5d                   	pop    ebp
c0009b0c:	c3                   	ret    

c0009b0d <mem_alloc_page>:
c0009b0d:	55                   	push   ebp
c0009b0e:	89 e5                	mov    ebp,esp
c0009b10:	c1 65 0c 0c          	shl    DWORD PTR [ebp+0xc],0xc
c0009b14:	5d                   	pop    ebp
c0009b15:	e9 90 ff ff ff       	jmp    c0009aaa <mem_alloc>

c0009b1a <mem_free>:
c0009b1a:	55                   	push   ebp
c0009b1b:	31 c9                	xor    ecx,ecx
c0009b1d:	89 e5                	mov    ebp,esp
c0009b1f:	57                   	push   edi
c0009b20:	56                   	push   esi
c0009b21:	53                   	push   ebx
c0009b22:	83 ec 10             	sub    esp,0x10
c0009b25:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009b28:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0009b2b:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0009b2e:	8b 02                	mov    eax,DWORD PTR [edx]
c0009b30:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0009b33:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0009b36:	eb 07                	jmp    c0009b3f <mem_free+0x25>
c0009b38:	39 5c ca 10          	cmp    DWORD PTR [edx+ecx*8+0x10],ebx
c0009b3c:	77 06                	ja     c0009b44 <mem_free+0x2a>
c0009b3e:	41                   	inc    ecx
c0009b3f:	3b 4d ec             	cmp    ecx,DWORD PTR [ebp-0x14]
c0009b42:	75 f4                	jne    c0009b38 <mem_free+0x1e>
c0009b44:	85 c9                	test   ecx,ecx
c0009b46:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0009b49:	74 60                	je     c0009bab <mem_free+0x91>
c0009b4b:	8d 79 01             	lea    edi,[ecx+0x1]
c0009b4e:	8b 44 fa 04          	mov    eax,DWORD PTR [edx+edi*8+0x4]
c0009b52:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0009b55:	03 04 fa             	add    eax,DWORD PTR [edx+edi*8]
c0009b58:	39 d8                	cmp    eax,ebx
c0009b5a:	75 4f                	jne    c0009bab <mem_free+0x91>
c0009b5c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0009b5f:	01 f0                	add    eax,esi
c0009b61:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0009b64:	89 44 fa 04          	mov    DWORD PTR [edx+edi*8+0x4],eax
c0009b68:	31 c0                	xor    eax,eax
c0009b6a:	3b 4d ec             	cmp    ecx,DWORD PTR [ebp-0x14]
c0009b6d:	0f 83 a9 00 00 00    	jae    c0009c1c <mem_free+0x102>
c0009b73:	01 de                	add    esi,ebx
c0009b75:	8d 59 02             	lea    ebx,[ecx+0x2]
c0009b78:	39 34 da             	cmp    DWORD PTR [edx+ebx*8],esi
c0009b7b:	0f 85 9b 00 00 00    	jne    c0009c1c <mem_free+0x102>
c0009b81:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0009b84:	03 44 da 04          	add    eax,DWORD PTR [edx+ebx*8+0x4]
c0009b88:	89 44 fa 04          	mov    DWORD PTR [edx+edi*8+0x4],eax
c0009b8c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0009b8f:	48                   	dec    eax
c0009b90:	89 02                	mov    DWORD PTR [edx],eax
c0009b92:	eb 11                	jmp    c0009ba5 <mem_free+0x8b>
c0009b94:	41                   	inc    ecx
c0009b95:	8b 74 ca 10          	mov    esi,DWORD PTR [edx+ecx*8+0x10]
c0009b99:	8b 7c ca 14          	mov    edi,DWORD PTR [edx+ecx*8+0x14]
c0009b9d:	89 74 ca 08          	mov    DWORD PTR [edx+ecx*8+0x8],esi
c0009ba1:	89 7c ca 0c          	mov    DWORD PTR [edx+ecx*8+0xc],edi
c0009ba5:	39 c1                	cmp    ecx,eax
c0009ba7:	72 eb                	jb     c0009b94 <mem_free+0x7a>
c0009ba9:	eb 1d                	jmp    c0009bc8 <mem_free+0xae>
c0009bab:	3b 4d ec             	cmp    ecx,DWORD PTR [ebp-0x14]
c0009bae:	73 1c                	jae    c0009bcc <mem_free+0xb2>
c0009bb0:	8d 3c 33             	lea    edi,[ebx+esi*1]
c0009bb3:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0009bb6:	8d 79 02             	lea    edi,[ecx+0x2]
c0009bb9:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0009bbc:	39 04 fa             	cmp    DWORD PTR [edx+edi*8],eax
c0009bbf:	75 0b                	jne    c0009bcc <mem_free+0xb2>
c0009bc1:	01 74 fa 04          	add    DWORD PTR [edx+edi*8+0x4],esi
c0009bc5:	89 1c fa             	mov    DWORD PTR [edx+edi*8],ebx
c0009bc8:	31 c0                	xor    eax,eax
c0009bca:	eb 50                	jmp    c0009c1c <mem_free+0x102>
c0009bcc:	81 7d ec 9f 0f 00 00 	cmp    DWORD PTR [ebp-0x14],0xf9f
c0009bd3:	76 15                	jbe    c0009bea <mem_free+0xd0>
c0009bd5:	eb 3a                	jmp    c0009c11 <mem_free+0xf7>
c0009bd7:	8b 74 c2 08          	mov    esi,DWORD PTR [edx+eax*8+0x8]
c0009bdb:	8b 7c c2 0c          	mov    edi,DWORD PTR [edx+eax*8+0xc]
c0009bdf:	89 74 c2 10          	mov    DWORD PTR [edx+eax*8+0x10],esi
c0009be3:	89 7c c2 14          	mov    DWORD PTR [edx+eax*8+0x14],edi
c0009be7:	40                   	inc    eax
c0009be8:	eb 06                	jmp    c0009bf0 <mem_free+0xd6>
c0009bea:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0009bed:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
c0009bf0:	39 c8                	cmp    eax,ecx
c0009bf2:	7f e3                	jg     c0009bd7 <mem_free+0xbd>
c0009bf4:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0009bf7:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
c0009bfa:	40                   	inc    eax
c0009bfb:	39 42 04             	cmp    DWORD PTR [edx+0x4],eax
c0009bfe:	89 02                	mov    DWORD PTR [edx],eax
c0009c00:	73 03                	jae    c0009c05 <mem_free+0xeb>
c0009c02:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0009c05:	83 c1 02             	add    ecx,0x2
c0009c08:	89 1c ca             	mov    DWORD PTR [edx+ecx*8],ebx
c0009c0b:	89 74 ca 04          	mov    DWORD PTR [edx+ecx*8+0x4],esi
c0009c0f:	eb b7                	jmp    c0009bc8 <mem_free+0xae>
c0009c11:	ff 42 0c             	inc    DWORD PTR [edx+0xc]
c0009c14:	b8 01 00 00 00       	mov    eax,0x1
c0009c19:	01 72 08             	add    DWORD PTR [edx+0x8],esi
c0009c1c:	83 c4 10             	add    esp,0x10
c0009c1f:	5b                   	pop    ebx
c0009c20:	5e                   	pop    esi
c0009c21:	5f                   	pop    edi
c0009c22:	5d                   	pop    ebp
c0009c23:	c3                   	ret    

c0009c24 <mem_free_page>:
c0009c24:	55                   	push   ebp
c0009c25:	89 e5                	mov    ebp,esp
c0009c27:	c1 65 10 0c          	shl    DWORD PTR [ebp+0x10],0xc
c0009c2b:	5d                   	pop    ebp
c0009c2c:	e9 e9 fe ff ff       	jmp    c0009b1a <mem_free>

c0009c31 <init_memory>:
c0009c31:	55                   	push   ebp
c0009c32:	89 e5                	mov    ebp,esp
c0009c34:	56                   	push   esi
c0009c35:	53                   	push   ebx
c0009c36:	8b 35 00 7c 00 00    	mov    esi,DWORD PTR ds:0x7c00
c0009c3c:	8d 9e 00 e0 5f ff    	lea    ebx,[esi-0xa02000]
c0009c42:	d1 eb                	shr    ebx,1
c0009c44:	53                   	push   ebx
c0009c45:	29 de                	sub    esi,ebx
c0009c47:	68 00 20 a0 00       	push   0xa02000
c0009c4c:	81 c3 00 20 a0 00    	add    ebx,0xa02000
c0009c52:	68 f4 59 02 c0       	push   0xc00259f4
c0009c57:	e8 c8 ff ff ff       	call   c0009c24 <mem_free_page>
c0009c5c:	56                   	push   esi
c0009c5d:	53                   	push   ebx
c0009c5e:	68 c4 e2 00 c0       	push   0xc000e2c4
c0009c63:	e8 bc ff ff ff       	call   c0009c24 <mem_free_page>
c0009c68:	68 ff ff ff 3d       	push   0x3dffffff
c0009c6d:	68 00 20 a0 c0       	push   0xc0a02000
c0009c72:	68 e4 dc 01 c0       	push   0xc001dce4
c0009c77:	e8 a8 ff ff ff       	call   c0009c24 <mem_free_page>
c0009c7c:	83 c4 24             	add    esp,0x24
c0009c7f:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009c82:	5b                   	pop    ebx
c0009c83:	5e                   	pop    esi
c0009c84:	5d                   	pop    ebp
c0009c85:	c3                   	ret    

c0009c86 <pde_ptr>:
c0009c86:	55                   	push   ebp
c0009c87:	89 e5                	mov    ebp,esp
c0009c89:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009c8c:	5d                   	pop    ebp
c0009c8d:	c1 e8 16             	shr    eax,0x16
c0009c90:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c0009c97:	c3                   	ret    

c0009c98 <pte_ptr>:
c0009c98:	55                   	push   ebp
c0009c99:	89 e5                	mov    ebp,esp
c0009c9b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009c9e:	5d                   	pop    ebp
c0009c9f:	89 c2                	mov    edx,eax
c0009ca1:	25 00 f0 3f 00       	and    eax,0x3ff000
c0009ca6:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c0009cac:	c1 ea 0a             	shr    edx,0xa
c0009caf:	c1 e8 0a             	shr    eax,0xa
c0009cb2:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c0009cb9:	c3                   	ret    

c0009cba <page_table_add>:
c0009cba:	55                   	push   ebp
c0009cbb:	89 e5                	mov    ebp,esp
c0009cbd:	57                   	push   edi
c0009cbe:	56                   	push   esi
c0009cbf:	53                   	push   ebx
c0009cc0:	83 ec 0c             	sub    esp,0xc
c0009cc3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009cc6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009cc9:	50                   	push   eax
c0009cca:	89 c7                	mov    edi,eax
c0009ccc:	e8 c7 ff ff ff       	call   c0009c98 <pte_ptr>
c0009cd1:	c1 ef 16             	shr    edi,0x16
c0009cd4:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c0009cdb:	01 
c0009cdc:	5b                   	pop    ebx
c0009cdd:	89 c3                	mov    ebx,eax
c0009cdf:	74 0c                	je     c0009ced <page_table_add+0x33>
c0009ce1:	f6 00 01             	test   BYTE PTR [eax],0x1
c0009ce4:	75 3c                	jne    c0009d22 <page_table_add+0x68>
c0009ce6:	83 ce 07             	or     esi,0x7
c0009ce9:	89 30                	mov    DWORD PTR [eax],esi
c0009ceb:	eb 35                	jmp    c0009d22 <page_table_add+0x68>
c0009ced:	6a 01                	push   0x1
c0009cef:	83 ce 07             	or     esi,0x7
c0009cf2:	68 f4 59 02 c0       	push   0xc00259f4
c0009cf7:	e8 11 fe ff ff       	call   c0009b0d <mem_alloc_page>
c0009cfc:	83 ec 0c             	sub    esp,0xc
c0009cff:	83 c8 07             	or     eax,0x7
c0009d02:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c0009d09:	89 d8                	mov    eax,ebx
c0009d0b:	68 00 10 00 00       	push   0x1000
c0009d10:	25 00 f0 ff ff       	and    eax,0xfffff000
c0009d15:	6a 00                	push   0x0
c0009d17:	50                   	push   eax
c0009d18:	e8 47 03 00 00       	call   c000a064 <memset>
c0009d1d:	83 c4 20             	add    esp,0x20
c0009d20:	89 33                	mov    DWORD PTR [ebx],esi
c0009d22:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009d25:	5b                   	pop    ebx
c0009d26:	5e                   	pop    esi
c0009d27:	5f                   	pop    edi
c0009d28:	5d                   	pop    ebp
c0009d29:	c3                   	ret    

c0009d2a <page_alloc>:
c0009d2a:	55                   	push   ebp
c0009d2b:	89 e5                	mov    ebp,esp
c0009d2d:	57                   	push   edi
c0009d2e:	56                   	push   esi
c0009d2f:	53                   	push   ebx
c0009d30:	83 ec 1c             	sub    esp,0x1c
c0009d33:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009d36:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0009d3a:	c7 45 e4 c4 e2 00 c0 	mov    DWORD PTR [ebp-0x1c],0xc000e2c4
c0009d41:	75 07                	jne    c0009d4a <page_alloc+0x20>
c0009d43:	c7 45 e4 f4 59 02 c0 	mov    DWORD PTR [ebp-0x1c],0xc00259f4
c0009d4a:	56                   	push   esi
c0009d4b:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0009d4e:	e8 ba fd ff ff       	call   c0009b0d <mem_alloc_page>
c0009d53:	59                   	pop    ecx
c0009d54:	5f                   	pop    edi
c0009d55:	85 c0                	test   eax,eax
c0009d57:	89 c3                	mov    ebx,eax
c0009d59:	89 c7                	mov    edi,eax
c0009d5b:	75 25                	jne    c0009d82 <page_alloc+0x58>
c0009d5d:	eb 2b                	jmp    c0009d8a <page_alloc+0x60>
c0009d5f:	6a 01                	push   0x1
c0009d61:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0009d64:	e8 a4 fd ff ff       	call   c0009b0d <mem_alloc_page>
c0009d69:	59                   	pop    ecx
c0009d6a:	5a                   	pop    edx
c0009d6b:	85 c0                	test   eax,eax
c0009d6d:	74 19                	je     c0009d88 <page_alloc+0x5e>
c0009d6f:	52                   	push   edx
c0009d70:	4e                   	dec    esi
c0009d71:	52                   	push   edx
c0009d72:	50                   	push   eax
c0009d73:	57                   	push   edi
c0009d74:	81 c7 00 10 00 00    	add    edi,0x1000
c0009d7a:	e8 3b ff ff ff       	call   c0009cba <page_table_add>
c0009d7f:	83 c4 10             	add    esp,0x10
c0009d82:	85 f6                	test   esi,esi
c0009d84:	75 d9                	jne    c0009d5f <page_alloc+0x35>
c0009d86:	eb 02                	jmp    c0009d8a <page_alloc+0x60>
c0009d88:	31 db                	xor    ebx,ebx
c0009d8a:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009d8d:	89 d8                	mov    eax,ebx
c0009d8f:	5b                   	pop    ebx
c0009d90:	5e                   	pop    esi
c0009d91:	5f                   	pop    edi
c0009d92:	5d                   	pop    ebp
c0009d93:	c3                   	ret    

c0009d94 <get_kernel_page>:
c0009d94:	55                   	push   ebp
c0009d95:	89 e5                	mov    ebp,esp
c0009d97:	56                   	push   esi
c0009d98:	53                   	push   ebx
c0009d99:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009d9c:	56                   	push   esi
c0009d9d:	56                   	push   esi
c0009d9e:	53                   	push   ebx
c0009d9f:	6a 01                	push   0x1
c0009da1:	e8 84 ff ff ff       	call   c0009d2a <page_alloc>
c0009da6:	83 c4 10             	add    esp,0x10
c0009da9:	85 c0                	test   eax,eax
c0009dab:	89 c6                	mov    esi,eax
c0009dad:	74 10                	je     c0009dbf <get_kernel_page+0x2b>
c0009daf:	c1 e3 0c             	shl    ebx,0xc
c0009db2:	51                   	push   ecx
c0009db3:	53                   	push   ebx
c0009db4:	6a 00                	push   0x0
c0009db6:	50                   	push   eax
c0009db7:	e8 a8 02 00 00       	call   c000a064 <memset>
c0009dbc:	83 c4 10             	add    esp,0x10
c0009dbf:	50                   	push   eax
c0009dc0:	50                   	push   eax
c0009dc1:	68 98 d9 00 c0       	push   0xc000d998
c0009dc6:	6a 07                	push   0x7
c0009dc8:	e8 f8 01 00 00       	call   c0009fc5 <put_str>
c0009dcd:	83 c4 0c             	add    esp,0xc
c0009dd0:	6a 10                	push   0x10
c0009dd2:	56                   	push   esi
c0009dd3:	6a 07                	push   0x7
c0009dd5:	e8 13 02 00 00       	call   c0009fed <put_uint>
c0009dda:	58                   	pop    eax
c0009ddb:	5a                   	pop    edx
c0009ddc:	6a 0a                	push   0xa
c0009dde:	6a 07                	push   0x7
c0009de0:	e8 3f 01 00 00       	call   c0009f24 <put_char>
c0009de5:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009de8:	89 f0                	mov    eax,esi
c0009dea:	5b                   	pop    ebx
c0009deb:	5e                   	pop    esi
c0009dec:	5d                   	pop    ebp
c0009ded:	c3                   	ret    
	...

c0009df0 <itoa>:
c0009df0:	55                   	push   ebp
c0009df1:	89 e5                	mov    ebp,esp
c0009df3:	57                   	push   edi
c0009df4:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0009df7:	56                   	push   esi
c0009df8:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0009dfb:	53                   	push   ebx
c0009dfc:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0009dff:	31 db                	xor    ebx,ebx
c0009e01:	89 f0                	mov    eax,esi
c0009e03:	99                   	cdq    
c0009e04:	89 d0                	mov    eax,edx
c0009e06:	31 f0                	xor    eax,esi
c0009e08:	29 d0                	sub    eax,edx
c0009e0a:	eb 02                	jmp    c0009e0e <itoa+0x1e>
c0009e0c:	89 d3                	mov    ebx,edx
c0009e0e:	99                   	cdq    
c0009e0f:	f7 ff                	idiv   edi
c0009e11:	8a 92 30 da 00 c0    	mov    dl,BYTE PTR [edx-0x3fff25d0]
c0009e17:	85 c0                	test   eax,eax
c0009e19:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c0009e1c:	8d 53 01             	lea    edx,[ebx+0x1]
c0009e1f:	7f eb                	jg     c0009e0c <itoa+0x1c>
c0009e21:	85 f6                	test   esi,esi
c0009e23:	79 07                	jns    c0009e2c <itoa+0x3c>
c0009e25:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c0009e29:	8d 53 02             	lea    edx,[ebx+0x2]
c0009e2c:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c0009e30:	89 c8                	mov    eax,ecx
c0009e32:	eb 01                	jmp    c0009e35 <itoa+0x45>
c0009e34:	40                   	inc    eax
c0009e35:	80 38 00             	cmp    BYTE PTR [eax],0x0
c0009e38:	75 fa                	jne    c0009e34 <itoa+0x44>
c0009e3a:	eb 09                	jmp    c0009e45 <itoa+0x55>
c0009e3c:	8a 11                	mov    dl,BYTE PTR [ecx]
c0009e3e:	8a 18                	mov    bl,BYTE PTR [eax]
c0009e40:	88 19                	mov    BYTE PTR [ecx],bl
c0009e42:	41                   	inc    ecx
c0009e43:	88 10                	mov    BYTE PTR [eax],dl
c0009e45:	48                   	dec    eax
c0009e46:	39 c8                	cmp    eax,ecx
c0009e48:	77 f2                	ja     c0009e3c <itoa+0x4c>
c0009e4a:	5b                   	pop    ebx
c0009e4b:	5e                   	pop    esi
c0009e4c:	5f                   	pop    edi
c0009e4d:	5d                   	pop    ebp
c0009e4e:	c3                   	ret    

c0009e4f <utoa>:
c0009e4f:	55                   	push   ebp
c0009e50:	89 e5                	mov    ebp,esp
c0009e52:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009e55:	56                   	push   esi
c0009e56:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0009e59:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0009e5c:	53                   	push   ebx
c0009e5d:	31 db                	xor    ebx,ebx
c0009e5f:	31 d2                	xor    edx,edx
c0009e61:	f7 f6                	div    esi
c0009e63:	8a 92 58 da 00 c0    	mov    dl,BYTE PTR [edx-0x3fff25a8]
c0009e69:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c0009e6c:	43                   	inc    ebx
c0009e6d:	85 c0                	test   eax,eax
c0009e6f:	75 ee                	jne    c0009e5f <utoa+0x10>
c0009e71:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c0009e75:	89 c8                	mov    eax,ecx
c0009e77:	eb 01                	jmp    c0009e7a <utoa+0x2b>
c0009e79:	40                   	inc    eax
c0009e7a:	80 38 00             	cmp    BYTE PTR [eax],0x0
c0009e7d:	75 fa                	jne    c0009e79 <utoa+0x2a>
c0009e7f:	eb 09                	jmp    c0009e8a <utoa+0x3b>
c0009e81:	8a 11                	mov    dl,BYTE PTR [ecx]
c0009e83:	8a 18                	mov    bl,BYTE PTR [eax]
c0009e85:	88 19                	mov    BYTE PTR [ecx],bl
c0009e87:	41                   	inc    ecx
c0009e88:	88 10                	mov    BYTE PTR [eax],dl
c0009e8a:	48                   	dec    eax
c0009e8b:	39 c8                	cmp    eax,ecx
c0009e8d:	77 f2                	ja     c0009e81 <utoa+0x32>
c0009e8f:	5b                   	pop    ebx
c0009e90:	5e                   	pop    esi
c0009e91:	5d                   	pop    ebp
c0009e92:	c3                   	ret    

c0009e93 <roll_screen>:
c0009e93:	55                   	push   ebp
c0009e94:	89 e5                	mov    ebp,esp
c0009e96:	53                   	push   ebx
c0009e97:	83 3d 0c 7c 00 00 00 	cmp    DWORD PTR ds:0x7c0c,0x0
c0009e9e:	75 2c                	jne    c0009ecc <roll_screen+0x39>
c0009ea0:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0009ea5:	8b 0d 10 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c10
c0009eab:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c0009eae:	31 c0                	xor    eax,eax
c0009eb0:	eb 09                	jmp    c0009ebb <roll_screen+0x28>
c0009eb2:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c0009eb6:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c0009eba:	40                   	inc    eax
c0009ebb:	8b 15 1c 7c 00 00    	mov    edx,DWORD PTR ds:0x7c1c
c0009ec1:	0f af 15 18 7c 00 00 	imul   edx,DWORD PTR ds:0x7c18
c0009ec8:	39 d0                	cmp    eax,edx
c0009eca:	72 e6                	jb     c0009eb2 <roll_screen+0x1f>
c0009ecc:	5b                   	pop    ebx
c0009ecd:	5d                   	pop    ebp
c0009ece:	c3                   	ret    

c0009ecf <get_cursor>:
c0009ecf:	55                   	push   ebp
c0009ed0:	ba d4 03 00 00       	mov    edx,0x3d4
c0009ed5:	89 e5                	mov    ebp,esp
c0009ed7:	b8 0e 00 00 00       	mov    eax,0xe
c0009edc:	53                   	push   ebx
c0009edd:	ee                   	out    dx,al
c0009ede:	bb d5 03 00 00       	mov    ebx,0x3d5
c0009ee3:	89 da                	mov    edx,ebx
c0009ee5:	ec                   	in     al,dx
c0009ee6:	89 c1                	mov    ecx,eax
c0009ee8:	b2 d4                	mov    dl,0xd4
c0009eea:	b8 0f 00 00 00       	mov    eax,0xf
c0009eef:	ee                   	out    dx,al
c0009ef0:	89 da                	mov    edx,ebx
c0009ef2:	ec                   	in     al,dx
c0009ef3:	c1 e1 08             	shl    ecx,0x8
c0009ef6:	09 c1                	or     ecx,eax
c0009ef8:	89 c8                	mov    eax,ecx
c0009efa:	5b                   	pop    ebx
c0009efb:	5d                   	pop    ebp
c0009efc:	c3                   	ret    

c0009efd <set_cursor>:
c0009efd:	55                   	push   ebp
c0009efe:	ba d4 03 00 00       	mov    edx,0x3d4
c0009f03:	89 e5                	mov    ebp,esp
c0009f05:	b8 0e 00 00 00       	mov    eax,0xe
c0009f0a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0009f0d:	ee                   	out    dx,al
c0009f0e:	0f b6 c5             	movzx  eax,ch
c0009f11:	b2 d5                	mov    dl,0xd5
c0009f13:	ee                   	out    dx,al
c0009f14:	b8 0f 00 00 00       	mov    eax,0xf
c0009f19:	b2 d4                	mov    dl,0xd4
c0009f1b:	ee                   	out    dx,al
c0009f1c:	0f b6 c1             	movzx  eax,cl
c0009f1f:	b2 d5                	mov    dl,0xd5
c0009f21:	ee                   	out    dx,al
c0009f22:	5d                   	pop    ebp
c0009f23:	c3                   	ret    

c0009f24 <put_char>:
c0009f24:	55                   	push   ebp
c0009f25:	89 e5                	mov    ebp,esp
c0009f27:	53                   	push   ebx
c0009f28:	51                   	push   ecx
c0009f29:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c0009f2c:	83 3d 0c 7c 00 00 00 	cmp    DWORD PTR ds:0x7c0c,0x0
c0009f33:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c0009f36:	0f 85 85 00 00 00    	jne    c0009fc1 <put_char+0x9d>
c0009f3c:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c0009f3f:	e8 8b ff ff ff       	call   c0009ecf <get_cursor>
c0009f44:	80 fb 0d             	cmp    bl,0xd
c0009f47:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c0009f4a:	77 31                	ja     c0009f7d <put_char+0x59>
c0009f4c:	0f b6 d3             	movzx  edx,bl
c0009f4f:	ff 24 95 d0 d9 00 c0 	jmp    DWORD PTR [edx*4-0x3fff2630]
c0009f56:	8d 48 ff             	lea    ecx,[eax-0x1]
c0009f59:	a1 10 7c 00 00       	mov    eax,ds:0x7c10
c0009f5e:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c0009f62:	eb 2f                	jmp    c0009f93 <put_char+0x6f>
c0009f64:	8b 1d 18 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c18
c0009f6a:	31 d2                	xor    edx,edx
c0009f6c:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c0009f6f:	f7 f3                	div    ebx
c0009f71:	29 d1                	sub    ecx,edx
c0009f73:	eb 1e                	jmp    c0009f93 <put_char+0x6f>
c0009f75:	8d 48 04             	lea    ecx,[eax+0x4]
c0009f78:	83 e1 fc             	and    ecx,0xfffffffc
c0009f7b:	eb 16                	jmp    c0009f93 <put_char+0x6f>
c0009f7d:	8b 15 10 7c 00 00    	mov    edx,DWORD PTR ds:0x7c10
c0009f83:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c0009f86:	8b 15 10 7c 00 00    	mov    edx,DWORD PTR ds:0x7c10
c0009f8c:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c0009f90:	8d 48 01             	lea    ecx,[eax+0x1]
c0009f93:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c0009f98:	0f af 05 18 7c 00 00 	imul   eax,DWORD PTR ds:0x7c18
c0009f9f:	39 c1                	cmp    ecx,eax
c0009fa1:	72 13                	jb     c0009fb6 <put_char+0x92>
c0009fa3:	e8 eb fe ff ff       	call   c0009e93 <roll_screen>
c0009fa8:	8b 0d 1c 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c1c
c0009fae:	49                   	dec    ecx
c0009faf:	0f af 0d 18 7c 00 00 	imul   ecx,DWORD PTR ds:0x7c18
c0009fb6:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c0009fb9:	5a                   	pop    edx
c0009fba:	5b                   	pop    ebx
c0009fbb:	5d                   	pop    ebp
c0009fbc:	e9 3c ff ff ff       	jmp    c0009efd <set_cursor>
c0009fc1:	58                   	pop    eax
c0009fc2:	5b                   	pop    ebx
c0009fc3:	5d                   	pop    ebp
c0009fc4:	c3                   	ret    

c0009fc5 <put_str>:
c0009fc5:	55                   	push   ebp
c0009fc6:	89 e5                	mov    ebp,esp
c0009fc8:	56                   	push   esi
c0009fc9:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c0009fcd:	53                   	push   ebx
c0009fce:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0009fd1:	eb 0d                	jmp    c0009fe0 <put_str+0x1b>
c0009fd3:	0f b6 c0             	movzx  eax,al
c0009fd6:	43                   	inc    ebx
c0009fd7:	50                   	push   eax
c0009fd8:	56                   	push   esi
c0009fd9:	e8 46 ff ff ff       	call   c0009f24 <put_char>
c0009fde:	58                   	pop    eax
c0009fdf:	5a                   	pop    edx
c0009fe0:	8a 03                	mov    al,BYTE PTR [ebx]
c0009fe2:	84 c0                	test   al,al
c0009fe4:	75 ed                	jne    c0009fd3 <put_str+0xe>
c0009fe6:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009fe9:	5b                   	pop    ebx
c0009fea:	5e                   	pop    esi
c0009feb:	5d                   	pop    ebp
c0009fec:	c3                   	ret    

c0009fed <put_uint>:
c0009fed:	55                   	push   ebp
c0009fee:	31 c0                	xor    eax,eax
c0009ff0:	89 e5                	mov    ebp,esp
c0009ff2:	b9 42 00 00 00       	mov    ecx,0x42
c0009ff7:	57                   	push   edi
c0009ff8:	53                   	push   ebx
c0009ff9:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0009ffc:	83 ec 50             	sub    esp,0x50
c0009fff:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a002:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a004:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000a007:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000a00a:	0f b6 db             	movzx  ebx,bl
c000a00d:	57                   	push   edi
c000a00e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000a011:	e8 39 fe ff ff       	call   c0009e4f <utoa>
c000a016:	57                   	push   edi
c000a017:	53                   	push   ebx
c000a018:	e8 a8 ff ff ff       	call   c0009fc5 <put_str>
c000a01d:	83 c4 14             	add    esp,0x14
c000a020:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a023:	5b                   	pop    ebx
c000a024:	5f                   	pop    edi
c000a025:	5d                   	pop    ebp
c000a026:	c3                   	ret    

c000a027 <put_int>:
c000a027:	55                   	push   ebp
c000a028:	31 c0                	xor    eax,eax
c000a02a:	89 e5                	mov    ebp,esp
c000a02c:	b9 42 00 00 00       	mov    ecx,0x42
c000a031:	57                   	push   edi
c000a032:	53                   	push   ebx
c000a033:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000a036:	83 ec 50             	sub    esp,0x50
c000a039:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a03c:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a03e:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000a041:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000a044:	0f b6 db             	movzx  ebx,bl
c000a047:	57                   	push   edi
c000a048:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000a04b:	e8 a0 fd ff ff       	call   c0009df0 <itoa>
c000a050:	57                   	push   edi
c000a051:	53                   	push   ebx
c000a052:	e8 6e ff ff ff       	call   c0009fc5 <put_str>
c000a057:	83 c4 14             	add    esp,0x14
c000a05a:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a05d:	5b                   	pop    ebx
c000a05e:	5f                   	pop    edi
c000a05f:	5d                   	pop    ebp
c000a060:	c3                   	ret    
c000a061:	00 00                	add    BYTE PTR [eax],al
	...

c000a064 <memset>:
c000a064:	55                   	push   ebp
c000a065:	89 e5                	mov    ebp,esp
c000a067:	56                   	push   esi
c000a068:	53                   	push   ebx
c000a069:	83 ec 10             	sub    esp,0x10
c000a06c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a06f:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000a072:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c000a075:	85 db                	test   ebx,ebx
c000a077:	75 1f                	jne    c000a098 <memset+0x34>
c000a079:	68 80 da 00 c0       	push   0xc000da80
c000a07e:	68 00 db 00 c0       	push   0xc000db00
c000a083:	6a 0f                	push   0xf
c000a085:	68 8e da 00 c0       	push   0xc000da8e
c000a08a:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c000a08d:	e8 7e e5 ff ff       	call   c0008610 <panic_spin>
c000a092:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c000a095:	83 c4 10             	add    esp,0x10
c000a098:	31 c0                	xor    eax,eax
c000a09a:	eb 04                	jmp    c000a0a0 <memset+0x3c>
c000a09c:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000a09f:	40                   	inc    eax
c000a0a0:	39 f0                	cmp    eax,esi
c000a0a2:	75 f8                	jne    c000a09c <memset+0x38>
c000a0a4:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a0a7:	5b                   	pop    ebx
c000a0a8:	5e                   	pop    esi
c000a0a9:	5d                   	pop    ebp
c000a0aa:	c3                   	ret    

c000a0ab <memcpy>:
c000a0ab:	55                   	push   ebp
c000a0ac:	89 e5                	mov    ebp,esp
c000a0ae:	57                   	push   edi
c000a0af:	56                   	push   esi
c000a0b0:	53                   	push   ebx
c000a0b1:	83 ec 0c             	sub    esp,0xc
c000a0b4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a0b7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a0ba:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a0bd:	85 f6                	test   esi,esi
c000a0bf:	74 04                	je     c000a0c5 <memcpy+0x1a>
c000a0c1:	85 db                	test   ebx,ebx
c000a0c3:	75 19                	jne    c000a0de <memcpy+0x33>
c000a0c5:	68 9b da 00 c0       	push   0xc000da9b
c000a0ca:	68 08 db 00 c0       	push   0xc000db08
c000a0cf:	6a 22                	push   0x22
c000a0d1:	68 8e da 00 c0       	push   0xc000da8e
c000a0d6:	e8 35 e5 ff ff       	call   c0008610 <panic_spin>
c000a0db:	83 c4 10             	add    esp,0x10
c000a0de:	31 c0                	xor    eax,eax
c000a0e0:	eb 07                	jmp    c000a0e9 <memcpy+0x3e>
c000a0e2:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c000a0e5:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000a0e8:	40                   	inc    eax
c000a0e9:	39 f8                	cmp    eax,edi
c000a0eb:	75 f5                	jne    c000a0e2 <memcpy+0x37>
c000a0ed:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a0f0:	5b                   	pop    ebx
c000a0f1:	5e                   	pop    esi
c000a0f2:	5f                   	pop    edi
c000a0f3:	5d                   	pop    ebp
c000a0f4:	c3                   	ret    

c000a0f5 <memcmp>:
c000a0f5:	55                   	push   ebp
c000a0f6:	89 e5                	mov    ebp,esp
c000a0f8:	56                   	push   esi
c000a0f9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a0fc:	53                   	push   ebx
c000a0fd:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000a100:	85 db                	test   ebx,ebx
c000a102:	74 04                	je     c000a108 <memcmp+0x13>
c000a104:	85 f6                	test   esi,esi
c000a106:	75 19                	jne    c000a121 <memcmp+0x2c>
c000a108:	68 ba da 00 c0       	push   0xc000daba
c000a10d:	68 10 db 00 c0       	push   0xc000db10
c000a112:	6a 3b                	push   0x3b
c000a114:	68 8e da 00 c0       	push   0xc000da8e
c000a119:	e8 f2 e4 ff ff       	call   c0008610 <panic_spin>
c000a11e:	83 c4 10             	add    esp,0x10
c000a121:	8a 13                	mov    dl,BYTE PTR [ebx]
c000a123:	83 c8 ff             	or     eax,0xffffffff
c000a126:	38 16                	cmp    BYTE PTR [esi],dl
c000a128:	72 06                	jb     c000a130 <memcmp+0x3b>
c000a12a:	0f 97 c0             	seta   al
c000a12d:	0f b6 c0             	movzx  eax,al
c000a130:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a133:	5b                   	pop    ebx
c000a134:	5e                   	pop    esi
c000a135:	5d                   	pop    ebp
c000a136:	c3                   	ret    

c000a137 <strcpy>:
c000a137:	55                   	push   ebp
c000a138:	31 d2                	xor    edx,edx
c000a13a:	89 e5                	mov    ebp,esp
c000a13c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a13f:	53                   	push   ebx
c000a140:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000a143:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c000a146:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c000a149:	42                   	inc    edx
c000a14a:	84 c9                	test   cl,cl
c000a14c:	75 f5                	jne    c000a143 <strcpy+0xc>
c000a14e:	5b                   	pop    ebx
c000a14f:	5d                   	pop    ebp
c000a150:	c3                   	ret    
c000a151:	00 00                	add    BYTE PTR [eax],al
	...

c000a154 <sema_init>:
c000a154:	55                   	push   ebp
c000a155:	89 e5                	mov    ebp,esp
c000a157:	56                   	push   esi
c000a158:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c000a15c:	53                   	push   ebx
c000a15d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a160:	83 ec 0c             	sub    esp,0xc
c000a163:	8d 43 04             	lea    eax,[ebx+0x4]
c000a166:	89 33                	mov    DWORD PTR [ebx],esi
c000a168:	50                   	push   eax
c000a169:	e8 b6 f7 ff ff       	call   c0009924 <list_init>
c000a16e:	8b 03                	mov    eax,DWORD PTR [ebx]
c000a170:	83 c4 10             	add    esp,0x10
c000a173:	39 f0                	cmp    eax,esi
c000a175:	74 19                	je     c000a190 <sema_init+0x3c>
c000a177:	68 18 db 00 c0       	push   0xc000db18
c000a17c:	68 5c dc 00 c0       	push   0xc000dc5c
c000a181:	6a 0d                	push   0xd
c000a183:	68 2e db 00 c0       	push   0xc000db2e
c000a188:	e8 83 e4 ff ff       	call   c0008610 <panic_spin>
c000a18d:	83 c4 10             	add    esp,0x10
c000a190:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a193:	5b                   	pop    ebx
c000a194:	5e                   	pop    esi
c000a195:	5d                   	pop    ebp
c000a196:	c3                   	ret    

c000a197 <lock_init>:
c000a197:	55                   	push   ebp
c000a198:	89 e5                	mov    ebp,esp
c000a19a:	83 ec 10             	sub    esp,0x10
c000a19d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a1a0:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c000a1a6:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c000a1ad:	83 c0 04             	add    eax,0x4
c000a1b0:	6a 01                	push   0x1
c000a1b2:	50                   	push   eax
c000a1b3:	e8 9c ff ff ff       	call   c000a154 <sema_init>
c000a1b8:	83 c4 10             	add    esp,0x10
c000a1bb:	c9                   	leave  
c000a1bc:	c3                   	ret    

c000a1bd <sema_down>:
c000a1bd:	55                   	push   ebp
c000a1be:	89 e5                	mov    ebp,esp
c000a1c0:	57                   	push   edi
c000a1c1:	56                   	push   esi
c000a1c2:	53                   	push   ebx
c000a1c3:	83 ec 0c             	sub    esp,0xc
c000a1c6:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a1c9:	e8 77 f4 ff ff       	call   c0009645 <intr_disable>
c000a1ce:	8d 73 04             	lea    esi,[ebx+0x4]
c000a1d1:	89 c7                	mov    edi,eax
c000a1d3:	e9 82 00 00 00       	jmp    c000a25a <sema_down+0x9d>
c000a1d8:	e8 b2 02 00 00       	call   c000a48f <running_thread>
c000a1dd:	52                   	push   edx
c000a1de:	83 c0 2c             	add    eax,0x2c
c000a1e1:	52                   	push   edx
c000a1e2:	50                   	push   eax
c000a1e3:	56                   	push   esi
c000a1e4:	e8 f3 f7 ff ff       	call   c00099dc <list_find>
c000a1e9:	83 c4 10             	add    esp,0x10
c000a1ec:	85 c0                	test   eax,eax
c000a1ee:	74 19                	je     c000a209 <sema_down+0x4c>
c000a1f0:	68 3c db 00 c0       	push   0xc000db3c
c000a1f5:	68 68 dc 00 c0       	push   0xc000dc68
c000a1fa:	6a 24                	push   0x24
c000a1fc:	68 2e db 00 c0       	push   0xc000db2e
c000a201:	e8 0a e4 ff ff       	call   c0008610 <panic_spin>
c000a206:	83 c4 10             	add    esp,0x10
c000a209:	e8 81 02 00 00       	call   c000a48f <running_thread>
c000a20e:	51                   	push   ecx
c000a20f:	83 c0 2c             	add    eax,0x2c
c000a212:	51                   	push   ecx
c000a213:	50                   	push   eax
c000a214:	56                   	push   esi
c000a215:	e8 c2 f7 ff ff       	call   c00099dc <list_find>
c000a21a:	83 c4 10             	add    esp,0x10
c000a21d:	85 c0                	test   eax,eax
c000a21f:	74 19                	je     c000a23a <sema_down+0x7d>
c000a221:	68 7d db 00 c0       	push   0xc000db7d
c000a226:	68 68 dc 00 c0       	push   0xc000dc68
c000a22b:	6a 27                	push   0x27
c000a22d:	68 2e db 00 c0       	push   0xc000db2e
c000a232:	e8 d9 e3 ff ff       	call   c0008610 <panic_spin>
c000a237:	83 c4 10             	add    esp,0x10
c000a23a:	e8 50 02 00 00       	call   c000a48f <running_thread>
c000a23f:	52                   	push   edx
c000a240:	83 c0 2c             	add    eax,0x2c
c000a243:	52                   	push   edx
c000a244:	50                   	push   eax
c000a245:	56                   	push   esi
c000a246:	e8 38 f7 ff ff       	call   c0009983 <list_append>
c000a24b:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000a252:	e8 a6 04 00 00       	call   c000a6fd <thread_block>
c000a257:	83 c4 10             	add    esp,0x10
c000a25a:	8b 03                	mov    eax,DWORD PTR [ebx]
c000a25c:	85 c0                	test   eax,eax
c000a25e:	0f 84 74 ff ff ff    	je     c000a1d8 <sema_down+0x1b>
c000a264:	8b 03                	mov    eax,DWORD PTR [ebx]
c000a266:	48                   	dec    eax
c000a267:	89 03                	mov    DWORD PTR [ebx],eax
c000a269:	8b 03                	mov    eax,DWORD PTR [ebx]
c000a26b:	85 c0                	test   eax,eax
c000a26d:	74 19                	je     c000a288 <sema_down+0xcb>
c000a26f:	68 b1 db 00 c0       	push   0xc000dbb1
c000a274:	68 68 dc 00 c0       	push   0xc000dc68
c000a279:	6a 2d                	push   0x2d
c000a27b:	68 2e db 00 c0       	push   0xc000db2e
c000a280:	e8 8b e3 ff ff       	call   c0008610 <panic_spin>
c000a285:	83 c4 10             	add    esp,0x10
c000a288:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000a28b:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a28e:	5b                   	pop    ebx
c000a28f:	5e                   	pop    esi
c000a290:	5f                   	pop    edi
c000a291:	5d                   	pop    ebp
c000a292:	e9 83 f4 ff ff       	jmp    c000971a <intr_set_status>

c000a297 <sema_up>:
c000a297:	55                   	push   ebp
c000a298:	89 e5                	mov    ebp,esp
c000a29a:	57                   	push   edi
c000a29b:	56                   	push   esi
c000a29c:	53                   	push   ebx
c000a29d:	83 ec 0c             	sub    esp,0xc
c000a2a0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a2a3:	e8 9d f3 ff ff       	call   c0009645 <intr_disable>
c000a2a8:	89 c7                	mov    edi,eax
c000a2aa:	8b 03                	mov    eax,DWORD PTR [ebx]
c000a2ac:	85 c0                	test   eax,eax
c000a2ae:	74 19                	je     c000a2c9 <sema_up+0x32>
c000a2b0:	68 b1 db 00 c0       	push   0xc000dbb1
c000a2b5:	68 74 dc 00 c0       	push   0xc000dc74
c000a2ba:	6a 38                	push   0x38
c000a2bc:	68 2e db 00 c0       	push   0xc000db2e
c000a2c1:	e8 4a e3 ff ff       	call   c0008610 <panic_spin>
c000a2c6:	83 c4 10             	add    esp,0x10
c000a2c9:	83 ec 0c             	sub    esp,0xc
c000a2cc:	8d 73 04             	lea    esi,[ebx+0x4]
c000a2cf:	56                   	push   esi
c000a2d0:	e8 80 f7 ff ff       	call   c0009a55 <list_empty>
c000a2d5:	83 c4 10             	add    esp,0x10
c000a2d8:	85 c0                	test   eax,eax
c000a2da:	75 15                	jne    c000a2f1 <sema_up+0x5a>
c000a2dc:	83 ec 0c             	sub    esp,0xc
c000a2df:	56                   	push   esi
c000a2e0:	e8 dd f6 ff ff       	call   c00099c2 <list_pop>
c000a2e5:	59                   	pop    ecx
c000a2e6:	ff 70 04             	push   DWORD PTR [eax+0x4]
c000a2e9:	e8 5a 04 00 00       	call   c000a748 <thread_unblock>
c000a2ee:	83 c4 10             	add    esp,0x10
c000a2f1:	8b 03                	mov    eax,DWORD PTR [ebx]
c000a2f3:	40                   	inc    eax
c000a2f4:	89 03                	mov    DWORD PTR [ebx],eax
c000a2f6:	8b 03                	mov    eax,DWORD PTR [ebx]
c000a2f8:	48                   	dec    eax
c000a2f9:	74 19                	je     c000a314 <sema_up+0x7d>
c000a2fb:	68 c3 db 00 c0       	push   0xc000dbc3
c000a300:	68 74 dc 00 c0       	push   0xc000dc74
c000a305:	6a 3f                	push   0x3f
c000a307:	68 2e db 00 c0       	push   0xc000db2e
c000a30c:	e8 ff e2 ff ff       	call   c0008610 <panic_spin>
c000a311:	83 c4 10             	add    esp,0x10
c000a314:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000a317:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a31a:	5b                   	pop    ebx
c000a31b:	5e                   	pop    esi
c000a31c:	5f                   	pop    edi
c000a31d:	5d                   	pop    ebp
c000a31e:	e9 f7 f3 ff ff       	jmp    c000971a <intr_set_status>

c000a323 <lock_acquire>:
c000a323:	55                   	push   ebp
c000a324:	89 e5                	mov    ebp,esp
c000a326:	56                   	push   esi
c000a327:	53                   	push   ebx
c000a328:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a32b:	8b 33                	mov    esi,DWORD PTR [ebx]
c000a32d:	e8 5d 01 00 00       	call   c000a48f <running_thread>
c000a332:	39 c6                	cmp    esi,eax
c000a334:	74 3e                	je     c000a374 <lock_acquire+0x51>
c000a336:	83 ec 0c             	sub    esp,0xc
c000a339:	8d 43 04             	lea    eax,[ebx+0x4]
c000a33c:	50                   	push   eax
c000a33d:	e8 7b fe ff ff       	call   c000a1bd <sema_down>
c000a342:	e8 48 01 00 00       	call   c000a48f <running_thread>
c000a347:	83 c4 10             	add    esp,0x10
c000a34a:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c000a34e:	89 03                	mov    DWORD PTR [ebx],eax
c000a350:	74 19                	je     c000a36b <lock_acquire+0x48>
c000a352:	68 d5 db 00 c0       	push   0xc000dbd5
c000a357:	68 7c dc 00 c0       	push   0xc000dc7c
c000a35c:	6a 4d                	push   0x4d
c000a35e:	68 2e db 00 c0       	push   0xc000db2e
c000a363:	e8 a8 e2 ff ff       	call   c0008610 <panic_spin>
c000a368:	83 c4 10             	add    esp,0x10
c000a36b:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c000a372:	eb 03                	jmp    c000a377 <lock_acquire+0x54>
c000a374:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c000a377:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a37a:	5b                   	pop    ebx
c000a37b:	5e                   	pop    esi
c000a37c:	5d                   	pop    ebp
c000a37d:	c3                   	ret    

c000a37e <lock_release>:
c000a37e:	55                   	push   ebp
c000a37f:	89 e5                	mov    ebp,esp
c000a381:	56                   	push   esi
c000a382:	53                   	push   ebx
c000a383:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a386:	8b 33                	mov    esi,DWORD PTR [ebx]
c000a388:	e8 02 01 00 00       	call   c000a48f <running_thread>
c000a38d:	39 c6                	cmp    esi,eax
c000a38f:	74 19                	je     c000a3aa <lock_release+0x2c>
c000a391:	68 f2 db 00 c0       	push   0xc000dbf2
c000a396:	68 8c dc 00 c0       	push   0xc000dc8c
c000a39b:	6a 5c                	push   0x5c
c000a39d:	68 2e db 00 c0       	push   0xc000db2e
c000a3a2:	e8 69 e2 ff ff       	call   c0008610 <panic_spin>
c000a3a7:	83 c4 10             	add    esp,0x10
c000a3aa:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c000a3ad:	83 f8 01             	cmp    eax,0x1
c000a3b0:	76 0b                	jbe    c000a3bd <lock_release+0x3f>
c000a3b2:	48                   	dec    eax
c000a3b3:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c000a3b6:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a3b9:	5b                   	pop    ebx
c000a3ba:	5e                   	pop    esi
c000a3bb:	5d                   	pop    ebp
c000a3bc:	c3                   	ret    
c000a3bd:	74 19                	je     c000a3d8 <lock_release+0x5a>
c000a3bf:	68 14 dc 00 c0       	push   0xc000dc14
c000a3c4:	68 8c dc 00 c0       	push   0xc000dc8c
c000a3c9:	6a 62                	push   0x62
c000a3cb:	68 2e db 00 c0       	push   0xc000db2e
c000a3d0:	e8 3b e2 ff ff       	call   c0008610 <panic_spin>
c000a3d5:	83 c4 10             	add    esp,0x10
c000a3d8:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c000a3de:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c000a3e5:	83 c3 04             	add    ebx,0x4
c000a3e8:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c000a3eb:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a3ee:	5b                   	pop    ebx
c000a3ef:	5e                   	pop    esi
c000a3f0:	5d                   	pop    ebp
c000a3f1:	e9 a1 fe ff ff       	jmp    c000a297 <sema_up>
	...

c000a400 <switch_to>:
c000a400:	56                   	push   esi
c000a401:	57                   	push   edi
c000a402:	53                   	push   ebx
c000a403:	55                   	push   ebp
c000a404:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c000a408:	89 20                	mov    DWORD PTR [eax],esp
c000a40a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c000a40e:	8b 20                	mov    esp,DWORD PTR [eax]
c000a410:	5d                   	pop    ebp
c000a411:	5b                   	pop    ebx
c000a412:	5f                   	pop    edi
c000a413:	5e                   	pop    esi
c000a414:	c3                   	ret    
c000a415:	00 00                	add    BYTE PTR [eax],al
	...

c000a418 <kernel_thread>:
c000a418:	55                   	push   ebp
c000a419:	89 e5                	mov    ebp,esp
c000a41b:	56                   	push   esi
c000a41c:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a41f:	53                   	push   ebx
c000a420:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a423:	e8 db f2 ff ff       	call   c0009703 <intr_enable>
c000a428:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c000a42b:	89 d8                	mov    eax,ebx
c000a42d:	5b                   	pop    ebx
c000a42e:	5e                   	pop    esi
c000a42f:	5d                   	pop    ebp
c000a430:	ff e0                	jmp    eax

c000a432 <thread_init>:
c000a432:	55                   	push   ebp
c000a433:	89 e5                	mov    ebp,esp
c000a435:	53                   	push   ebx
c000a436:	83 ec 18             	sub    esp,0x18
c000a439:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a43c:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
c000a43f:	6a 40                	push   0x40
c000a441:	6a 00                	push   0x0
c000a443:	53                   	push   ebx
c000a444:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c000a447:	e8 18 fc ff ff       	call   c000a064 <memset>
c000a44c:	58                   	pop    eax
c000a44d:	5a                   	pop    edx
c000a44e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000a451:	8d 43 08             	lea    eax,[ebx+0x8]
c000a454:	50                   	push   eax
c000a455:	e8 dd fc ff ff       	call   c000a137 <strcpy>
c000a45a:	83 c4 10             	add    esp,0x10
c000a45d:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c000a460:	3b 1d 38 d7 02 c0    	cmp    ebx,DWORD PTR ds:0xc002d738
c000a466:	75 09                	jne    c000a471 <thread_init+0x3f>
c000a468:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c000a46f:	eb 07                	jmp    c000a478 <thread_init+0x46>
c000a471:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c000a478:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c000a47e:	88 53 18             	mov    BYTE PTR [ebx+0x18],dl
c000a481:	89 03                	mov    DWORD PTR [ebx],eax
c000a483:	c7 43 3c 78 56 34 12 	mov    DWORD PTR [ebx+0x3c],0x12345678
c000a48a:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a48d:	c9                   	leave  
c000a48e:	c3                   	ret    

c000a48f <running_thread>:
c000a48f:	55                   	push   ebp
c000a490:	89 e5                	mov    ebp,esp
c000a492:	89 e0                	mov    eax,esp
c000a494:	25 00 f0 ff ff       	and    eax,0xfffff000
c000a499:	5d                   	pop    ebp
c000a49a:	c3                   	ret    

c000a49b <init_thread>:
c000a49b:	55                   	push   ebp
c000a49c:	89 e5                	mov    ebp,esp
c000a49e:	83 ec 14             	sub    esp,0x14
c000a4a1:	68 08 d7 02 c0       	push   0xc002d708
c000a4a6:	e8 79 f4 ff ff       	call   c0009924 <list_init>
c000a4ab:	c7 04 24 20 d7 02 c0 	mov    DWORD PTR [esp],0xc002d720
c000a4b2:	e8 6d f4 ff ff       	call   c0009924 <list_init>
c000a4b7:	e8 d3 ff ff ff       	call   c000a48f <running_thread>
c000a4bc:	83 c4 0c             	add    esp,0xc
c000a4bf:	6a 1f                	push   0x1f
c000a4c1:	68 9c dc 00 c0       	push   0xc000dc9c
c000a4c6:	50                   	push   eax
c000a4c7:	a3 38 d7 02 c0       	mov    ds:0xc002d738,eax
c000a4cc:	e8 61 ff ff ff       	call   c000a432 <thread_init>
c000a4d1:	a1 38 d7 02 c0       	mov    eax,ds:0xc002d738
c000a4d6:	89 40 24             	mov    DWORD PTR [eax+0x24],eax
c000a4d9:	89 40 30             	mov    DWORD PTR [eax+0x30],eax
c000a4dc:	83 c0 20             	add    eax,0x20
c000a4df:	59                   	pop    ecx
c000a4e0:	5a                   	pop    edx
c000a4e1:	50                   	push   eax
c000a4e2:	68 20 d7 02 c0       	push   0xc002d720
c000a4e7:	e8 97 f4 ff ff       	call   c0009983 <list_append>
c000a4ec:	83 c4 10             	add    esp,0x10
c000a4ef:	c9                   	leave  
c000a4f0:	c3                   	ret    

c000a4f1 <thread_create>:
c000a4f1:	55                   	push   ebp
c000a4f2:	89 e5                	mov    ebp,esp
c000a4f4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a4f7:	8b 02                	mov    eax,DWORD PTR [edx]
c000a4f9:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c000a4ff:	89 0a                	mov    DWORD PTR [edx],ecx
c000a501:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c000a504:	c7 80 60 fe ff ff 18 	mov    DWORD PTR [eax-0x1a0],0xc000a418
c000a50b:	a4 00 c0 
c000a50e:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c000a515:	00 00 00 
c000a518:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c000a51f:	00 00 00 
c000a522:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c000a528:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000a52b:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c000a532:	00 00 00 
c000a535:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c000a53c:	00 00 00 
c000a53f:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c000a545:	5d                   	pop    ebp
c000a546:	c3                   	ret    

c000a547 <thread_start>:
c000a547:	55                   	push   ebp
c000a548:	89 e5                	mov    ebp,esp
c000a54a:	56                   	push   esi
c000a54b:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a54e:	53                   	push   ebx
c000a54f:	83 ec 0c             	sub    esp,0xc
c000a552:	6a 01                	push   0x1
c000a554:	e8 3b f8 ff ff       	call   c0009d94 <get_kernel_page>
c000a559:	81 e6 ff 00 00 00    	and    esi,0xff
c000a55f:	83 c4 0c             	add    esp,0xc
c000a562:	56                   	push   esi
c000a563:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000a566:	50                   	push   eax
c000a567:	89 c3                	mov    ebx,eax
c000a569:	e8 c4 fe ff ff       	call   c000a432 <thread_init>
c000a56e:	83 c4 0c             	add    esp,0xc
c000a571:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c000a574:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000a577:	8d 73 2c             	lea    esi,[ebx+0x2c]
c000a57a:	53                   	push   ebx
c000a57b:	e8 71 ff ff ff       	call   c000a4f1 <thread_create>
c000a580:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c000a583:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c000a586:	59                   	pop    ecx
c000a587:	58                   	pop    eax
c000a588:	56                   	push   esi
c000a589:	68 08 d7 02 c0       	push   0xc002d708
c000a58e:	e8 49 f4 ff ff       	call   c00099dc <list_find>
c000a593:	83 c4 10             	add    esp,0x10
c000a596:	85 c0                	test   eax,eax
c000a598:	74 19                	je     c000a5b3 <thread_start+0x6c>
c000a59a:	68 a1 dc 00 c0       	push   0xc000dca1
c000a59f:	68 38 de 00 c0       	push   0xc000de38
c000a5a4:	6a 5f                	push   0x5f
c000a5a6:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a5ab:	e8 60 e0 ff ff       	call   c0008610 <panic_spin>
c000a5b0:	83 c4 10             	add    esp,0x10
c000a5b3:	50                   	push   eax
c000a5b4:	50                   	push   eax
c000a5b5:	56                   	push   esi
c000a5b6:	68 08 d7 02 c0       	push   0xc002d708
c000a5bb:	e8 c3 f3 ff ff       	call   c0009983 <list_append>
c000a5c0:	8d 73 20             	lea    esi,[ebx+0x20]
c000a5c3:	58                   	pop    eax
c000a5c4:	5a                   	pop    edx
c000a5c5:	56                   	push   esi
c000a5c6:	68 20 d7 02 c0       	push   0xc002d720
c000a5cb:	e8 0c f4 ff ff       	call   c00099dc <list_find>
c000a5d0:	83 c4 10             	add    esp,0x10
c000a5d3:	85 c0                	test   eax,eax
c000a5d5:	74 19                	je     c000a5f0 <thread_start+0xa9>
c000a5d7:	68 e0 dc 00 c0       	push   0xc000dce0
c000a5dc:	68 38 de 00 c0       	push   0xc000de38
c000a5e1:	6a 62                	push   0x62
c000a5e3:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a5e8:	e8 23 e0 ff ff       	call   c0008610 <panic_spin>
c000a5ed:	83 c4 10             	add    esp,0x10
c000a5f0:	51                   	push   ecx
c000a5f1:	51                   	push   ecx
c000a5f2:	56                   	push   esi
c000a5f3:	68 20 d7 02 c0       	push   0xc002d720
c000a5f8:	e8 86 f3 ff ff       	call   c0009983 <list_append>
c000a5fd:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a600:	89 d8                	mov    eax,ebx
c000a602:	5b                   	pop    ebx
c000a603:	5e                   	pop    esi
c000a604:	5d                   	pop    ebp
c000a605:	c3                   	ret    

c000a606 <schedule>:
c000a606:	55                   	push   ebp
c000a607:	89 e5                	mov    ebp,esp
c000a609:	56                   	push   esi
c000a60a:	53                   	push   ebx
c000a60b:	e8 7f fe ff ff       	call   c000a48f <running_thread>
c000a610:	89 c3                	mov    ebx,eax
c000a612:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c000a615:	85 c0                	test   eax,eax
c000a617:	75 53                	jne    c000a66c <schedule+0x66>
c000a619:	50                   	push   eax
c000a61a:	50                   	push   eax
c000a61b:	8d 73 2c             	lea    esi,[ebx+0x2c]
c000a61e:	56                   	push   esi
c000a61f:	68 08 d7 02 c0       	push   0xc002d708
c000a624:	e8 b3 f3 ff ff       	call   c00099dc <list_find>
c000a629:	83 c4 10             	add    esp,0x10
c000a62c:	85 c0                	test   eax,eax
c000a62e:	74 19                	je     c000a649 <schedule+0x43>
c000a630:	68 09 dd 00 c0       	push   0xc000dd09
c000a635:	68 48 de 00 c0       	push   0xc000de48
c000a63a:	6a 76                	push   0x76
c000a63c:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a641:	e8 ca df ff ff       	call   c0008610 <panic_spin>
c000a646:	83 c4 10             	add    esp,0x10
c000a649:	50                   	push   eax
c000a64a:	50                   	push   eax
c000a64b:	56                   	push   esi
c000a64c:	68 08 d7 02 c0       	push   0xc002d708
c000a651:	e8 2d f3 ff ff       	call   c0009983 <list_append>
c000a656:	83 c4 10             	add    esp,0x10
c000a659:	80 7b 19 00          	cmp    BYTE PTR [ebx+0x19],0x0
c000a65d:	75 06                	jne    c000a665 <schedule+0x5f>
c000a65f:	8a 43 18             	mov    al,BYTE PTR [ebx+0x18]
c000a662:	88 43 19             	mov    BYTE PTR [ebx+0x19],al
c000a665:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c000a66c:	83 ec 0c             	sub    esp,0xc
c000a66f:	68 08 d7 02 c0       	push   0xc002d708
c000a674:	c7 05 04 d7 02 c0 00 	mov    DWORD PTR ds:0xc002d704,0x0
c000a67b:	00 00 00 
c000a67e:	e8 d2 f3 ff ff       	call   c0009a55 <list_empty>
c000a683:	83 c4 10             	add    esp,0x10
c000a686:	85 c0                	test   eax,eax
c000a688:	74 1c                	je     c000a6a6 <schedule+0xa0>
c000a68a:	68 3e dd 00 c0       	push   0xc000dd3e
c000a68f:	68 48 de 00 c0       	push   0xc000de48
c000a694:	68 86 00 00 00       	push   0x86
c000a699:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a69e:	e8 6d df ff ff       	call   c0008610 <panic_spin>
c000a6a3:	83 c4 10             	add    esp,0x10
c000a6a6:	81 3d 14 d7 02 c0 08 	cmp    DWORD PTR ds:0xc002d714,0xc002d708
c000a6ad:	d7 02 c0 
c000a6b0:	75 1c                	jne    c000a6ce <schedule+0xc8>
c000a6b2:	68 59 dd 00 c0       	push   0xc000dd59
c000a6b7:	68 48 de 00 c0       	push   0xc000de48
c000a6bc:	68 87 00 00 00       	push   0x87
c000a6c1:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a6c6:	e8 45 df ff ff       	call   c0008610 <panic_spin>
c000a6cb:	83 c4 10             	add    esp,0x10
c000a6ce:	83 ec 0c             	sub    esp,0xc
c000a6d1:	68 08 d7 02 c0       	push   0xc002d708
c000a6d6:	e8 e7 f2 ff ff       	call   c00099c2 <list_pop>
c000a6db:	a3 04 d7 02 c0       	mov    ds:0xc002d704,eax
c000a6e0:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c000a6e3:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c000a6ea:	5a                   	pop    edx
c000a6eb:	59                   	pop    ecx
c000a6ec:	50                   	push   eax
c000a6ed:	53                   	push   ebx
c000a6ee:	e8 0d fd ff ff       	call   c000a400 <switch_to>
c000a6f3:	83 c4 10             	add    esp,0x10
c000a6f6:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a6f9:	5b                   	pop    ebx
c000a6fa:	5e                   	pop    esi
c000a6fb:	5d                   	pop    ebp
c000a6fc:	c3                   	ret    

c000a6fd <thread_block>:
c000a6fd:	55                   	push   ebp
c000a6fe:	89 e5                	mov    ebp,esp
c000a700:	56                   	push   esi
c000a701:	53                   	push   ebx
c000a702:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a705:	83 fb 01             	cmp    ebx,0x1
c000a708:	77 1c                	ja     c000a726 <thread_block+0x29>
c000a70a:	68 82 dd 00 c0       	push   0xc000dd82
c000a70f:	68 54 de 00 c0       	push   0xc000de54
c000a714:	68 91 00 00 00       	push   0x91
c000a719:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a71e:	e8 ed de ff ff       	call   c0008610 <panic_spin>
c000a723:	83 c4 10             	add    esp,0x10
c000a726:	e8 1a ef ff ff       	call   c0009645 <intr_disable>
c000a72b:	89 c6                	mov    esi,eax
c000a72d:	e8 5d fd ff ff       	call   c000a48f <running_thread>
c000a732:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c000a735:	e8 cc fe ff ff       	call   c000a606 <schedule>
c000a73a:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c000a73d:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a740:	5b                   	pop    ebx
c000a741:	5e                   	pop    esi
c000a742:	5d                   	pop    ebp
c000a743:	e9 d2 ef ff ff       	jmp    c000971a <intr_set_status>

c000a748 <thread_unblock>:
c000a748:	55                   	push   ebp
c000a749:	89 e5                	mov    ebp,esp
c000a74b:	57                   	push   edi
c000a74c:	56                   	push   esi
c000a74d:	53                   	push   ebx
c000a74e:	83 ec 0c             	sub    esp,0xc
c000a751:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a754:	e8 ec ee ff ff       	call   c0009645 <intr_disable>
c000a759:	89 c7                	mov    edi,eax
c000a75b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a75e:	48                   	dec    eax
c000a75f:	74 7a                	je     c000a7db <thread_unblock+0x93>
c000a761:	50                   	push   eax
c000a762:	50                   	push   eax
c000a763:	8d 73 2c             	lea    esi,[ebx+0x2c]
c000a766:	56                   	push   esi
c000a767:	68 08 d7 02 c0       	push   0xc002d708
c000a76c:	e8 6b f2 ff ff       	call   c00099dc <list_find>
c000a771:	83 c4 10             	add    esp,0x10
c000a774:	85 c0                	test   eax,eax
c000a776:	74 1c                	je     c000a794 <thread_unblock+0x4c>
c000a778:	68 b1 dd 00 c0       	push   0xc000ddb1
c000a77d:	68 64 de 00 c0       	push   0xc000de64
c000a782:	68 9f 00 00 00       	push   0x9f
c000a787:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a78c:	e8 7f de ff ff       	call   c0008610 <panic_spin>
c000a791:	83 c4 10             	add    esp,0x10
c000a794:	50                   	push   eax
c000a795:	50                   	push   eax
c000a796:	56                   	push   esi
c000a797:	68 08 d7 02 c0       	push   0xc002d708
c000a79c:	e8 3b f2 ff ff       	call   c00099dc <list_find>
c000a7a1:	83 c4 10             	add    esp,0x10
c000a7a4:	85 c0                	test   eax,eax
c000a7a6:	74 1c                	je     c000a7c4 <thread_unblock+0x7c>
c000a7a8:	68 e1 dd 00 c0       	push   0xc000dde1
c000a7ad:	68 64 de 00 c0       	push   0xc000de64
c000a7b2:	68 a2 00 00 00       	push   0xa2
c000a7b7:	68 d0 dc 00 c0       	push   0xc000dcd0
c000a7bc:	e8 4f de ff ff       	call   c0008610 <panic_spin>
c000a7c1:	83 c4 10             	add    esp,0x10
c000a7c4:	50                   	push   eax
c000a7c5:	50                   	push   eax
c000a7c6:	56                   	push   esi
c000a7c7:	68 08 d7 02 c0       	push   0xc002d708
c000a7cc:	e8 9a f1 ff ff       	call   c000996b <list_push>
c000a7d1:	83 c4 10             	add    esp,0x10
c000a7d4:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c000a7db:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000a7de:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a7e1:	5b                   	pop    ebx
c000a7e2:	5e                   	pop    esi
c000a7e3:	5f                   	pop    edi
c000a7e4:	5d                   	pop    ebp
c000a7e5:	e9 30 ef ff ff       	jmp    c000971a <intr_set_status>
	...

c000a7ec <get_time>:
c000a7ec:	55                   	push   ebp
c000a7ed:	89 e5                	mov    ebp,esp
c000a7ef:	57                   	push   edi
c000a7f0:	56                   	push   esi
c000a7f1:	be 70 00 00 00       	mov    esi,0x70
c000a7f6:	53                   	push   ebx
c000a7f7:	83 ec 1c             	sub    esp,0x1c
c000a7fa:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c000a7fd:	e8 33 ee ff ff       	call   c0009635 <intr_get_status>
c000a802:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c000a805:	b8 89 00 00 00       	mov    eax,0x89
c000a80a:	89 f2                	mov    edx,esi
c000a80c:	ee                   	out    dx,al
c000a80d:	bb 71 00 00 00       	mov    ebx,0x71
c000a812:	89 da                	mov    edx,ebx
c000a814:	ec                   	in     al,dx
c000a815:	89 c1                	mov    ecx,eax
c000a817:	89 f2                	mov    edx,esi
c000a819:	b8 b2 00 00 00       	mov    eax,0xb2
c000a81e:	ee                   	out    dx,al
c000a81f:	89 da                	mov    edx,ebx
c000a821:	ec                   	in     al,dx
c000a822:	c1 e0 08             	shl    eax,0x8
c000a825:	89 f2                	mov    edx,esi
c000a827:	01 c1                	add    ecx,eax
c000a829:	b8 88 00 00 00       	mov    eax,0x88
c000a82e:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c000a831:	ee                   	out    dx,al
c000a832:	89 da                	mov    edx,ebx
c000a834:	ec                   	in     al,dx
c000a835:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c000a838:	89 f2                	mov    edx,esi
c000a83a:	b8 87 00 00 00       	mov    eax,0x87
c000a83f:	ee                   	out    dx,al
c000a840:	89 da                	mov    edx,ebx
c000a842:	ec                   	in     al,dx
c000a843:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c000a846:	89 f2                	mov    edx,esi
c000a848:	b8 84 00 00 00       	mov    eax,0x84
c000a84d:	ee                   	out    dx,al
c000a84e:	89 da                	mov    edx,ebx
c000a850:	ec                   	in     al,dx
c000a851:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c000a854:	89 f2                	mov    edx,esi
c000a856:	b8 82 00 00 00       	mov    eax,0x82
c000a85b:	ee                   	out    dx,al
c000a85c:	89 da                	mov    edx,ebx
c000a85e:	ec                   	in     al,dx
c000a85f:	b9 80 00 00 00       	mov    ecx,0x80
c000a864:	89 f2                	mov    edx,esi
c000a866:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c000a869:	89 c8                	mov    eax,ecx
c000a86b:	ee                   	out    dx,al
c000a86c:	89 da                	mov    edx,ebx
c000a86e:	ec                   	in     al,dx
c000a86f:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a872:	89 f2                	mov    edx,esi
c000a874:	89 07                	mov    DWORD PTR [edi],eax
c000a876:	89 c8                	mov    eax,ecx
c000a878:	ee                   	out    dx,al
c000a879:	89 da                	mov    edx,ebx
c000a87b:	ec                   	in     al,dx
c000a87c:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c000a87f:	75 84                	jne    c000a805 <get_time+0x19>
c000a881:	b2 70                	mov    dl,0x70
c000a883:	31 c0                	xor    eax,eax
c000a885:	ee                   	out    dx,al
c000a886:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c000a889:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a88c:	83 c4 1c             	add    esp,0x1c
c000a88f:	5b                   	pop    ebx
c000a890:	5e                   	pop    esi
c000a891:	5f                   	pop    edi
c000a892:	5d                   	pop    ebp
c000a893:	e9 82 ee ff ff       	jmp    c000971a <intr_set_status>

c000a898 <init_pit>:
c000a898:	55                   	push   ebp
c000a899:	ba 43 00 00 00       	mov    edx,0x43
c000a89e:	89 e5                	mov    ebp,esp
c000a8a0:	b8 34 00 00 00       	mov    eax,0x34
c000a8a5:	ee                   	out    dx,al
c000a8a6:	b2 40                	mov    dl,0x40
c000a8a8:	b0 9c                	mov    al,0x9c
c000a8aa:	ee                   	out    dx,al
c000a8ab:	b0 2e                	mov    al,0x2e
c000a8ad:	ee                   	out    dx,al
c000a8ae:	5d                   	pop    ebp
c000a8af:	c3                   	ret    

c000a8b0 <intr0x20_handler>:
c000a8b0:	55                   	push   ebp
c000a8b1:	b8 20 00 00 00       	mov    eax,0x20
c000a8b6:	89 e5                	mov    ebp,esp
c000a8b8:	83 ec 08             	sub    esp,0x8
c000a8bb:	89 c2                	mov    edx,eax
c000a8bd:	ee                   	out    dx,al
c000a8be:	e8 cc fb ff ff       	call   c000a48f <running_thread>
c000a8c3:	ff 05 40 df 00 c0    	inc    DWORD PTR ds:0xc000df40
c000a8c9:	8a 50 19             	mov    dl,BYTE PTR [eax+0x19]
c000a8cc:	ff 40 1c             	inc    DWORD PTR [eax+0x1c]
c000a8cf:	84 d2                	test   dl,dl
c000a8d1:	75 06                	jne    c000a8d9 <intr0x20_handler+0x29>
c000a8d3:	c9                   	leave  
c000a8d4:	e9 2d fd ff ff       	jmp    c000a606 <schedule>
c000a8d9:	4a                   	dec    edx
c000a8da:	88 50 19             	mov    BYTE PTR [eax+0x19],dl
c000a8dd:	c9                   	leave  
c000a8de:	c3                   	ret    

Disassembly of section .data:

c000a8e0 <_data>:
	...

c000a8e8 <SectionCode32>:
c000a8e8:	ff                   	(bad)  
c000a8e9:	ff 00                	inc    DWORD PTR [eax]
c000a8eb:	00 00                	add    BYTE PTR [eax],al
c000a8ed:	98                   	cwde   
c000a8ee:	cf                   	iret   
	...

c000a8f0 <SectionData32>:
c000a8f0:	ff                   	(bad)  
c000a8f1:	ff 00                	inc    DWORD PTR [eax]
c000a8f3:	00 00                	add    BYTE PTR [eax],al
c000a8f5:	92                   	xchg   edx,eax
c000a8f6:	cf                   	iret   
	...

c000aad8 <gdt_ptr>:
c000aad8:	17                   	pop    ss
c000aad9:	00 e0                	add    al,ah
c000aadb:	a8 00                	test   al,0x0
c000aadd:	c0 00 00             	rol    BYTE PTR [eax],0x0

c000aae0 <PKnFont>:
	...
c000acf0:	00 10                	add    BYTE PTR [eax],dl
c000acf2:	10 10                	adc    BYTE PTR [eax],dl
c000acf4:	10 10                	adc    BYTE PTR [eax],dl
c000acf6:	10 10                	adc    BYTE PTR [eax],dl
c000acf8:	10 10                	adc    BYTE PTR [eax],dl
c000acfa:	00 00                	add    BYTE PTR [eax],al
c000acfc:	10 10                	adc    BYTE PTR [eax],dl
c000acfe:	00 00                	add    BYTE PTR [eax],al
c000ad00:	28 28                	sub    BYTE PTR [eax],ch
c000ad02:	28 00                	sub    BYTE PTR [eax],al
	...
c000ad10:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c000ad14:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000ad18:	44                   	inc    esp
c000ad19:	44                   	inc    esp
c000ad1a:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000ad1e:	00 00                	add    BYTE PTR [eax],al
c000ad20:	10 3a                	adc    BYTE PTR [edx],bh
c000ad22:	56                   	push   esi
c000ad23:	92                   	xchg   edx,eax
c000ad24:	92                   	xchg   edx,eax
c000ad25:	90                   	nop
c000ad26:	50                   	push   eax
c000ad27:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c000ad2a:	92                   	xchg   edx,eax
c000ad2b:	92                   	xchg   edx,eax
c000ad2c:	d4 b8                	aam    0xb8
c000ad2e:	10 10                	adc    BYTE PTR [eax],dl
c000ad30:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c000ad36:	10 10                	adc    BYTE PTR [eax],dl
c000ad38:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c000ad3b:	52                   	push   edx
c000ad3c:	92                   	xchg   edx,eax
c000ad3d:	8c 00                	mov    WORD PTR [eax],es
c000ad3f:	00 00                	add    BYTE PTR [eax],al
c000ad41:	70 88                	jo     c000accb <PKnFont+0x1eb>
c000ad43:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c000ad49:	92                   	xchg   edx,eax
c000ad4a:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c000ad51:	08 10                	or     BYTE PTR [eax],dl
	...
c000ad5f:	00 02                	add    BYTE PTR [edx],al
c000ad61:	04 08                	add    al,0x8
c000ad63:	08 10                	or     BYTE PTR [eax],dl
c000ad65:	10 10                	adc    BYTE PTR [eax],dl
c000ad67:	10 10                	adc    BYTE PTR [eax],dl
c000ad69:	10 10                	adc    BYTE PTR [eax],dl
c000ad6b:	08 08                	or     BYTE PTR [eax],cl
c000ad6d:	04 02                	add    al,0x2
c000ad6f:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c000ad75:	10 10                	adc    BYTE PTR [eax],dl
c000ad77:	10 10                	adc    BYTE PTR [eax],dl
c000ad79:	10 10                	adc    BYTE PTR [eax],dl
c000ad7b:	20 20                	and    BYTE PTR [eax],ah
c000ad7d:	40                   	inc    eax
c000ad7e:	80 00 00             	add    BYTE PTR [eax],0x0
c000ad81:	00 00                	add    BYTE PTR [eax],al
c000ad83:	00 00                	add    BYTE PTR [eax],al
c000ad85:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c000ad8b:	10 00                	adc    BYTE PTR [eax],al
	...
c000ad95:	10 10                	adc    BYTE PTR [eax],dl
c000ad97:	10 fe                	adc    dh,bh
c000ad99:	10 10                	adc    BYTE PTR [eax],dl
c000ad9b:	10 00                	adc    BYTE PTR [eax],al
	...
c000ada9:	00 00                	add    BYTE PTR [eax],al
c000adab:	18 18                	sbb    BYTE PTR [eax],bl
c000adad:	08 08                	or     BYTE PTR [eax],cl
c000adaf:	10 00                	adc    BYTE PTR [eax],al
c000adb1:	00 00                	add    BYTE PTR [eax],al
c000adb3:	00 00                	add    BYTE PTR [eax],al
c000adb5:	00 00                	add    BYTE PTR [eax],al
c000adb7:	00 fe                	add    dh,bh
	...
c000adc9:	00 00                	add    BYTE PTR [eax],al
c000adcb:	00 18                	add    BYTE PTR [eax],bl
c000adcd:	18 00                	sbb    BYTE PTR [eax],al
c000adcf:	00 02                	add    BYTE PTR [edx],al
c000add1:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c000add4:	08 08                	or     BYTE PTR [eax],cl
c000add6:	08 10                	or     BYTE PTR [eax],dl
c000add8:	10 20                	adc    BYTE PTR [eax],ah
c000adda:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000addd:	40                   	inc    eax
c000adde:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c000ade5:	42                   	inc    edx
c000ade6:	42                   	inc    edx
c000ade7:	42                   	inc    edx
c000ade8:	42                   	inc    edx
c000ade9:	42                   	inc    edx
c000adea:	42                   	inc    edx
c000adeb:	24 24                	and    al,0x24
c000aded:	18 00                	sbb    BYTE PTR [eax],al
c000adef:	00 00                	add    BYTE PTR [eax],al
c000adf1:	08 18                	or     BYTE PTR [eax],bl
c000adf3:	28 08                	sub    BYTE PTR [eax],cl
c000adf5:	08 08                	or     BYTE PTR [eax],cl
c000adf7:	08 08                	or     BYTE PTR [eax],cl
c000adf9:	08 08                	or     BYTE PTR [eax],cl
c000adfb:	08 08                	or     BYTE PTR [eax],cl
c000adfd:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000ae00:	00 18                	add    BYTE PTR [eax],bl
c000ae02:	24 42                	and    al,0x42
c000ae04:	42                   	inc    edx
c000ae05:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000ae08:	10 20                	adc    BYTE PTR [eax],ah
c000ae0a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000ae0d:	7e 00                	jle    c000ae0f <PKnFont+0x32f>
c000ae0f:	00 00                	add    BYTE PTR [eax],al
c000ae11:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c000ae14:	02 02                	add    al,BYTE PTR [edx]
c000ae16:	04 18                	add    al,0x18
c000ae18:	04 02                	add    al,0x2
c000ae1a:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c000ae1d:	18 00                	sbb    BYTE PTR [eax],al
c000ae1f:	00 00                	add    BYTE PTR [eax],al
c000ae21:	0c 0c                	or     al,0xc
c000ae23:	0c 14                	or     al,0x14
c000ae25:	14 14                	adc    al,0x14
c000ae27:	24 24                	and    al,0x24
c000ae29:	44                   	inc    esp
c000ae2a:	7e 04                	jle    c000ae30 <PKnFont+0x350>
c000ae2c:	04 1e                	add    al,0x1e
c000ae2e:	00 00                	add    BYTE PTR [eax],al
c000ae30:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c000ae34:	40                   	inc    eax
c000ae35:	58                   	pop    eax
c000ae36:	64 02 02             	add    al,BYTE PTR fs:[edx]
c000ae39:	02 02                	add    al,BYTE PTR [edx]
c000ae3b:	42                   	inc    edx
c000ae3c:	24 18                	and    al,0x18
c000ae3e:	00 00                	add    BYTE PTR [eax],al
c000ae40:	00 18                	add    BYTE PTR [eax],bl
c000ae42:	24 42                	and    al,0x42
c000ae44:	40                   	inc    eax
c000ae45:	58                   	pop    eax
c000ae46:	64 42                	fs inc edx
c000ae48:	42                   	inc    edx
c000ae49:	42                   	inc    edx
c000ae4a:	42                   	inc    edx
c000ae4b:	42                   	inc    edx
c000ae4c:	24 18                	and    al,0x18
c000ae4e:	00 00                	add    BYTE PTR [eax],al
c000ae50:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c000ae53:	42                   	inc    edx
c000ae54:	04 04                	add    al,0x4
c000ae56:	08 08                	or     BYTE PTR [eax],cl
c000ae58:	08 10                	or     BYTE PTR [eax],dl
c000ae5a:	10 10                	adc    BYTE PTR [eax],dl
c000ae5c:	10 38                	adc    BYTE PTR [eax],bh
c000ae5e:	00 00                	add    BYTE PTR [eax],al
c000ae60:	00 18                	add    BYTE PTR [eax],bl
c000ae62:	24 42                	and    al,0x42
c000ae64:	42                   	inc    edx
c000ae65:	42                   	inc    edx
c000ae66:	24 18                	and    al,0x18
c000ae68:	24 42                	and    al,0x42
c000ae6a:	42                   	inc    edx
c000ae6b:	42                   	inc    edx
c000ae6c:	24 18                	and    al,0x18
c000ae6e:	00 00                	add    BYTE PTR [eax],al
c000ae70:	00 18                	add    BYTE PTR [eax],bl
c000ae72:	24 42                	and    al,0x42
c000ae74:	42                   	inc    edx
c000ae75:	42                   	inc    edx
c000ae76:	42                   	inc    edx
c000ae77:	42                   	inc    edx
c000ae78:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c000ae7b:	42                   	inc    edx
c000ae7c:	24 18                	and    al,0x18
c000ae7e:	00 00                	add    BYTE PTR [eax],al
c000ae80:	00 00                	add    BYTE PTR [eax],al
c000ae82:	00 00                	add    BYTE PTR [eax],al
c000ae84:	00 18                	add    BYTE PTR [eax],bl
c000ae86:	18 00                	sbb    BYTE PTR [eax],al
c000ae88:	00 00                	add    BYTE PTR [eax],al
c000ae8a:	00 00                	add    BYTE PTR [eax],al
c000ae8c:	18 18                	sbb    BYTE PTR [eax],bl
c000ae8e:	00 00                	add    BYTE PTR [eax],al
c000ae90:	00 00                	add    BYTE PTR [eax],al
c000ae92:	00 00                	add    BYTE PTR [eax],al
c000ae94:	00 18                	add    BYTE PTR [eax],bl
c000ae96:	18 00                	sbb    BYTE PTR [eax],al
c000ae98:	00 00                	add    BYTE PTR [eax],al
c000ae9a:	00 18                	add    BYTE PTR [eax],bl
c000ae9c:	18 08                	sbb    BYTE PTR [eax],cl
c000ae9e:	08 10                	or     BYTE PTR [eax],dl
c000aea0:	00 02                	add    BYTE PTR [edx],al
c000aea2:	04 08                	add    al,0x8
c000aea4:	10 20                	adc    BYTE PTR [eax],ah
c000aea6:	40                   	inc    eax
c000aea7:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c000aeae:	02 00                	add    al,BYTE PTR [eax]
c000aeb0:	00 00                	add    BYTE PTR [eax],al
c000aeb2:	00 00                	add    BYTE PTR [eax],al
c000aeb4:	00 00                	add    BYTE PTR [eax],al
c000aeb6:	fe 00                	inc    BYTE PTR [eax]
c000aeb8:	00 fe                	add    dh,bh
c000aeba:	00 00                	add    BYTE PTR [eax],al
c000aebc:	00 00                	add    BYTE PTR [eax],al
c000aebe:	00 00                	add    BYTE PTR [eax],al
c000aec0:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c000aec6:	04 02                	add    al,0x2
c000aec8:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000aecb:	10 20                	adc    BYTE PTR [eax],ah
c000aecd:	40                   	inc    eax
c000aece:	80 00 00             	add    BYTE PTR [eax],0x0
c000aed1:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000aed5:	82                   	(bad)  
c000aed6:	04 08                	add    al,0x8
c000aed8:	10 10                	adc    BYTE PTR [eax],dl
c000aeda:	00 00                	add    BYTE PTR [eax],al
c000aedc:	18 18                	sbb    BYTE PTR [eax],bl
c000aede:	00 00                	add    BYTE PTR [eax],al
c000aee0:	00 38                	add    BYTE PTR [eax],bh
c000aee2:	44                   	inc    esp
c000aee3:	82                   	(bad)  
c000aee4:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c000aeeb:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c000aeef:	00 00                	add    BYTE PTR [eax],al
c000aef1:	18 18                	sbb    BYTE PTR [eax],bl
c000aef3:	18 18                	sbb    BYTE PTR [eax],bl
c000aef5:	24 24                	and    al,0x24
c000aef7:	24 24                	and    al,0x24
c000aef9:	7e 42                	jle    c000af3d <PKnFont+0x45d>
c000aefb:	42                   	inc    edx
c000aefc:	42                   	inc    edx
c000aefd:	e7 00                	out    0x0,eax
c000aeff:	00 00                	add    BYTE PTR [eax],al
c000af01:	f0 48                	lock dec eax
c000af03:	44                   	inc    esp
c000af04:	44                   	inc    esp
c000af05:	44                   	inc    esp
c000af06:	48                   	dec    eax
c000af07:	78 44                	js     c000af4d <PKnFont+0x46d>
c000af09:	42                   	inc    edx
c000af0a:	42                   	inc    edx
c000af0b:	42                   	inc    edx
c000af0c:	44                   	inc    esp
c000af0d:	f8                   	clc    
c000af0e:	00 00                	add    BYTE PTR [eax],al
c000af10:	00 3a                	add    BYTE PTR [edx],bh
c000af12:	46                   	inc    esi
c000af13:	42                   	inc    edx
c000af14:	82                   	(bad)  
c000af15:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c000af1c:	44                   	inc    esp
c000af1d:	38 00                	cmp    BYTE PTR [eax],al
c000af1f:	00 00                	add    BYTE PTR [eax],al
c000af21:	f8                   	clc    
c000af22:	44                   	inc    esp
c000af23:	44                   	inc    esp
c000af24:	42                   	inc    edx
c000af25:	42                   	inc    edx
c000af26:	42                   	inc    edx
c000af27:	42                   	inc    edx
c000af28:	42                   	inc    edx
c000af29:	42                   	inc    edx
c000af2a:	42                   	inc    edx
c000af2b:	44                   	inc    esp
c000af2c:	44                   	inc    esp
c000af2d:	f8                   	clc    
c000af2e:	00 00                	add    BYTE PTR [eax],al
c000af30:	00 fe                	add    dh,bh
c000af32:	42                   	inc    edx
c000af33:	42                   	inc    edx
c000af34:	40                   	inc    eax
c000af35:	40                   	inc    eax
c000af36:	44                   	inc    esp
c000af37:	7c 44                	jl     c000af7d <PKnFont+0x49d>
c000af39:	40                   	inc    eax
c000af3a:	40                   	inc    eax
c000af3b:	42                   	inc    edx
c000af3c:	42                   	inc    edx
c000af3d:	fe 00                	inc    BYTE PTR [eax]
c000af3f:	00 00                	add    BYTE PTR [eax],al
c000af41:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c000af44:	40                   	inc    eax
c000af45:	40                   	inc    eax
c000af46:	44                   	inc    esp
c000af47:	7c 44                	jl     c000af8d <PKnFont+0x4ad>
c000af49:	44                   	inc    esp
c000af4a:	40                   	inc    eax
c000af4b:	40                   	inc    eax
c000af4c:	40                   	inc    eax
c000af4d:	f0 00 00             	lock add BYTE PTR [eax],al
c000af50:	00 3a                	add    BYTE PTR [edx],bh
c000af52:	46                   	inc    esi
c000af53:	42                   	inc    edx
c000af54:	82                   	(bad)  
c000af55:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c000af5c:	46                   	inc    esi
c000af5d:	38 00                	cmp    BYTE PTR [eax],al
c000af5f:	00 00                	add    BYTE PTR [eax],al
c000af61:	e7 42                	out    0x42,eax
c000af63:	42                   	inc    edx
c000af64:	42                   	inc    edx
c000af65:	42                   	inc    edx
c000af66:	42                   	inc    edx
c000af67:	7e 42                	jle    c000afab <PKnFont+0x4cb>
c000af69:	42                   	inc    edx
c000af6a:	42                   	inc    edx
c000af6b:	42                   	inc    edx
c000af6c:	42                   	inc    edx
c000af6d:	e7 00                	out    0x0,eax
c000af6f:	00 00                	add    BYTE PTR [eax],al
c000af71:	7c 10                	jl     c000af83 <PKnFont+0x4a3>
c000af73:	10 10                	adc    BYTE PTR [eax],dl
c000af75:	10 10                	adc    BYTE PTR [eax],dl
c000af77:	10 10                	adc    BYTE PTR [eax],dl
c000af79:	10 10                	adc    BYTE PTR [eax],dl
c000af7b:	10 10                	adc    BYTE PTR [eax],dl
c000af7d:	7c 00                	jl     c000af7f <PKnFont+0x49f>
c000af7f:	00 00                	add    BYTE PTR [eax],al
c000af81:	1f                   	pop    ds
c000af82:	04 04                	add    al,0x4
c000af84:	04 04                	add    al,0x4
c000af86:	04 04                	add    al,0x4
c000af88:	04 04                	add    al,0x4
c000af8a:	04 04                	add    al,0x4
c000af8c:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c000af8f:	00 00                	add    BYTE PTR [eax],al
c000af91:	e7 42                	out    0x42,eax
c000af93:	44                   	inc    esp
c000af94:	48                   	dec    eax
c000af95:	50                   	push   eax
c000af96:	50                   	push   eax
c000af97:	60                   	pusha  
c000af98:	50                   	push   eax
c000af99:	50                   	push   eax
c000af9a:	48                   	dec    eax
c000af9b:	44                   	inc    esp
c000af9c:	42                   	inc    edx
c000af9d:	e7 00                	out    0x0,eax
c000af9f:	00 00                	add    BYTE PTR [eax],al
c000afa1:	f0 40                	lock inc eax
c000afa3:	40                   	inc    eax
c000afa4:	40                   	inc    eax
c000afa5:	40                   	inc    eax
c000afa6:	40                   	inc    eax
c000afa7:	40                   	inc    eax
c000afa8:	40                   	inc    eax
c000afa9:	40                   	inc    eax
c000afaa:	40                   	inc    eax
c000afab:	42                   	inc    edx
c000afac:	42                   	inc    edx
c000afad:	fe 00                	inc    BYTE PTR [eax]
c000afaf:	00 00                	add    BYTE PTR [eax],al
c000afb1:	c3                   	ret    
c000afb2:	42                   	inc    edx
c000afb3:	66 66 66 5a          	data16 data16 pop dx
c000afb7:	5a                   	pop    edx
c000afb8:	5a                   	pop    edx
c000afb9:	42                   	inc    edx
c000afba:	42                   	inc    edx
c000afbb:	42                   	inc    edx
c000afbc:	42                   	inc    edx
c000afbd:	e7 00                	out    0x0,eax
c000afbf:	00 00                	add    BYTE PTR [eax],al
c000afc1:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c000afc8:	4a                   	dec    edx
c000afc9:	4a                   	dec    edx
c000afca:	4a                   	dec    edx
c000afcb:	46                   	inc    esi
c000afcc:	46                   	inc    esi
c000afcd:	e2 00                	loop   c000afcf <PKnFont+0x4ef>
c000afcf:	00 00                	add    BYTE PTR [eax],al
c000afd1:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000afd5:	82                   	(bad)  
c000afd6:	82                   	(bad)  
c000afd7:	82                   	(bad)  
c000afd8:	82                   	(bad)  
c000afd9:	82                   	(bad)  
c000afda:	82                   	(bad)  
c000afdb:	82                   	(bad)  
c000afdc:	44                   	inc    esp
c000afdd:	38 00                	cmp    BYTE PTR [eax],al
c000afdf:	00 00                	add    BYTE PTR [eax],al
c000afe1:	f8                   	clc    
c000afe2:	44                   	inc    esp
c000afe3:	42                   	inc    edx
c000afe4:	42                   	inc    edx
c000afe5:	42                   	inc    edx
c000afe6:	44                   	inc    esp
c000afe7:	78 40                	js     c000b029 <PKnFont+0x549>
c000afe9:	40                   	inc    eax
c000afea:	40                   	inc    eax
c000afeb:	40                   	inc    eax
c000afec:	40                   	inc    eax
c000afed:	f0 00 00             	lock add BYTE PTR [eax],al
c000aff0:	00 38                	add    BYTE PTR [eax],bh
c000aff2:	44                   	inc    esp
c000aff3:	82                   	(bad)  
c000aff4:	82                   	(bad)  
c000aff5:	82                   	(bad)  
c000aff6:	82                   	(bad)  
c000aff7:	82                   	(bad)  
c000aff8:	82                   	(bad)  
c000aff9:	82                   	(bad)  
c000affa:	92                   	xchg   edx,eax
c000affb:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c000afff:	00 00                	add    BYTE PTR [eax],al
c000b001:	fc                   	cld    
c000b002:	42                   	inc    edx
c000b003:	42                   	inc    edx
c000b004:	42                   	inc    edx
c000b005:	42                   	inc    edx
c000b006:	7c 44                	jl     c000b04c <PKnFont+0x56c>
c000b008:	42                   	inc    edx
c000b009:	42                   	inc    edx
c000b00a:	42                   	inc    edx
c000b00b:	42                   	inc    edx
c000b00c:	42                   	inc    edx
c000b00d:	e7 00                	out    0x0,eax
c000b00f:	00 00                	add    BYTE PTR [eax],al
c000b011:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c000b014:	82                   	(bad)  
c000b015:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c000b019:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c000b01f:	00 00                	add    BYTE PTR [eax],al
c000b021:	fe                   	(bad)  
c000b022:	92                   	xchg   edx,eax
c000b023:	92                   	xchg   edx,eax
c000b024:	10 10                	adc    BYTE PTR [eax],dl
c000b026:	10 10                	adc    BYTE PTR [eax],dl
c000b028:	10 10                	adc    BYTE PTR [eax],dl
c000b02a:	10 10                	adc    BYTE PTR [eax],dl
c000b02c:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c000b030:	00 e7                	add    bh,ah
c000b032:	42                   	inc    edx
c000b033:	42                   	inc    edx
c000b034:	42                   	inc    edx
c000b035:	42                   	inc    edx
c000b036:	42                   	inc    edx
c000b037:	42                   	inc    edx
c000b038:	42                   	inc    edx
c000b039:	42                   	inc    edx
c000b03a:	42                   	inc    edx
c000b03b:	42                   	inc    edx
c000b03c:	24 3c                	and    al,0x3c
c000b03e:	00 00                	add    BYTE PTR [eax],al
c000b040:	00 e7                	add    bh,ah
c000b042:	42                   	inc    edx
c000b043:	42                   	inc    edx
c000b044:	42                   	inc    edx
c000b045:	42                   	inc    edx
c000b046:	24 24                	and    al,0x24
c000b048:	24 24                	and    al,0x24
c000b04a:	18 18                	sbb    BYTE PTR [eax],bl
c000b04c:	18 18                	sbb    BYTE PTR [eax],bl
c000b04e:	00 00                	add    BYTE PTR [eax],al
c000b050:	00 e7                	add    bh,ah
c000b052:	42                   	inc    edx
c000b053:	42                   	inc    edx
c000b054:	42                   	inc    edx
c000b055:	5a                   	pop    edx
c000b056:	5a                   	pop    edx
c000b057:	5a                   	pop    edx
c000b058:	5a                   	pop    edx
c000b059:	24 24                	and    al,0x24
c000b05b:	24 24                	and    al,0x24
c000b05d:	24 00                	and    al,0x0
c000b05f:	00 00                	add    BYTE PTR [eax],al
c000b061:	e7 42                	out    0x42,eax
c000b063:	42                   	inc    edx
c000b064:	24 24                	and    al,0x24
c000b066:	24 18                	and    al,0x18
c000b068:	24 24                	and    al,0x24
c000b06a:	24 42                	and    al,0x42
c000b06c:	42                   	inc    edx
c000b06d:	e7 00                	out    0x0,eax
c000b06f:	00 00                	add    BYTE PTR [eax],al
c000b071:	ee                   	out    dx,al
c000b072:	44                   	inc    esp
c000b073:	44                   	inc    esp
c000b074:	44                   	inc    esp
c000b075:	28 28                	sub    BYTE PTR [eax],ch
c000b077:	28 10                	sub    BYTE PTR [eax],dl
c000b079:	10 10                	adc    BYTE PTR [eax],dl
c000b07b:	10 10                	adc    BYTE PTR [eax],dl
c000b07d:	7c 00                	jl     c000b07f <PKnFont+0x59f>
c000b07f:	00 00                	add    BYTE PTR [eax],al
c000b081:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c000b088:	20 20                	and    BYTE PTR [eax],ah
c000b08a:	40                   	inc    eax
c000b08b:	42                   	inc    edx
c000b08c:	82                   	(bad)  
c000b08d:	fe 00                	inc    BYTE PTR [eax]
c000b08f:	00 00                	add    BYTE PTR [eax],al
c000b091:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c000b094:	20 20                	and    BYTE PTR [eax],ah
c000b096:	20 20                	and    BYTE PTR [eax],ah
c000b098:	20 20                	and    BYTE PTR [eax],ah
c000b09a:	20 20                	and    BYTE PTR [eax],ah
c000b09c:	20 20                	and    BYTE PTR [eax],ah
c000b09e:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c000b0a5:	20 20                	and    BYTE PTR [eax],ah
c000b0a7:	10 10                	adc    BYTE PTR [eax],dl
c000b0a9:	08 08                	or     BYTE PTR [eax],cl
c000b0ab:	04 04                	add    al,0x4
c000b0ad:	04 02                	add    al,0x2
c000b0af:	02 00                	add    al,BYTE PTR [eax]
c000b0b1:	7c 04                	jl     c000b0b7 <PKnFont+0x5d7>
c000b0b3:	04 04                	add    al,0x4
c000b0b5:	04 04                	add    al,0x4
c000b0b7:	04 04                	add    al,0x4
c000b0b9:	04 04                	add    al,0x4
c000b0bb:	04 04                	add    al,0x4
c000b0bd:	04 7c                	add    al,0x7c
c000b0bf:	00 00                	add    BYTE PTR [eax],al
c000b0c1:	10 28                	adc    BYTE PTR [eax],ch
c000b0c3:	44                   	inc    esp
c000b0c4:	82                   	(bad)  
	...
c000b0dd:	00 fe                	add    dh,bh
c000b0df:	00 10                	add    BYTE PTR [eax],dl
c000b0e1:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c000b0f4:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c000b0f7:	04 3c                	add    al,0x3c
c000b0f9:	44                   	inc    esp
c000b0fa:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c000b101:	40                   	inc    eax
c000b102:	40                   	inc    eax
c000b103:	40                   	inc    eax
c000b104:	40                   	inc    eax
c000b105:	58                   	pop    eax
c000b106:	64 42                	fs inc edx
c000b108:	42                   	inc    edx
c000b109:	42                   	inc    edx
c000b10a:	42                   	inc    edx
c000b10b:	42                   	inc    edx
c000b10c:	64 58                	fs pop eax
c000b10e:	00 00                	add    BYTE PTR [eax],al
c000b110:	00 00                	add    BYTE PTR [eax],al
c000b112:	00 00                	add    BYTE PTR [eax],al
c000b114:	00 30                	add    BYTE PTR [eax],dh
c000b116:	4c                   	dec    esp
c000b117:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c000b11e:	00 00                	add    BYTE PTR [eax],al
c000b120:	0c 04                	or     al,0x4
c000b122:	04 04                	add    al,0x4
c000b124:	04 34                	add    al,0x34
c000b126:	4c                   	dec    esp
c000b127:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c000b12e:	00 00                	add    BYTE PTR [eax],al
c000b130:	00 00                	add    BYTE PTR [eax],al
c000b132:	00 00                	add    BYTE PTR [eax],al
c000b134:	00 38                	add    BYTE PTR [eax],bh
c000b136:	44                   	inc    esp
c000b137:	82                   	(bad)  
c000b138:	82                   	(bad)  
c000b139:	fc                   	cld    
c000b13a:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c000b141:	10 10                	adc    BYTE PTR [eax],dl
c000b143:	10 10                	adc    BYTE PTR [eax],dl
c000b145:	7c 10                	jl     c000b157 <PKnFont+0x677>
c000b147:	10 10                	adc    BYTE PTR [eax],dl
c000b149:	10 10                	adc    BYTE PTR [eax],dl
c000b14b:	10 10                	adc    BYTE PTR [eax],dl
c000b14d:	7c 00                	jl     c000b14f <PKnFont+0x66f>
c000b14f:	00 00                	add    BYTE PTR [eax],al
c000b151:	00 00                	add    BYTE PTR [eax],al
c000b153:	00 00                	add    BYTE PTR [eax],al
c000b155:	36 4c                	ss dec esp
c000b157:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c000b15e:	04 38                	add    al,0x38
c000b160:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c000b164:	40                   	inc    eax
c000b165:	58                   	pop    eax
c000b166:	64 42                	fs inc edx
c000b168:	42                   	inc    edx
c000b169:	42                   	inc    edx
c000b16a:	42                   	inc    edx
c000b16b:	42                   	inc    edx
c000b16c:	42                   	inc    edx
c000b16d:	e3 00                	jecxz  c000b16f <PKnFont+0x68f>
c000b16f:	00 00                	add    BYTE PTR [eax],al
c000b171:	10 10                	adc    BYTE PTR [eax],dl
c000b173:	00 00                	add    BYTE PTR [eax],al
c000b175:	30 10                	xor    BYTE PTR [eax],dl
c000b177:	10 10                	adc    BYTE PTR [eax],dl
c000b179:	10 10                	adc    BYTE PTR [eax],dl
c000b17b:	10 10                	adc    BYTE PTR [eax],dl
c000b17d:	38 00                	cmp    BYTE PTR [eax],al
c000b17f:	00 00                	add    BYTE PTR [eax],al
c000b181:	04 04                	add    al,0x4
c000b183:	00 00                	add    BYTE PTR [eax],al
c000b185:	0c 04                	or     al,0x4
c000b187:	04 04                	add    al,0x4
c000b189:	04 04                	add    al,0x4
c000b18b:	04 04                	add    al,0x4
c000b18d:	08 08                	or     BYTE PTR [eax],cl
c000b18f:	30 c0                	xor    al,al
c000b191:	40                   	inc    eax
c000b192:	40                   	inc    eax
c000b193:	40                   	inc    eax
c000b194:	40                   	inc    eax
c000b195:	4e                   	dec    esi
c000b196:	44                   	inc    esp
c000b197:	48                   	dec    eax
c000b198:	50                   	push   eax
c000b199:	60                   	pusha  
c000b19a:	50                   	push   eax
c000b19b:	48                   	dec    eax
c000b19c:	44                   	inc    esp
c000b19d:	e6 00                	out    0x0,al
c000b19f:	00 30                	add    BYTE PTR [eax],dh
c000b1a1:	10 10                	adc    BYTE PTR [eax],dl
c000b1a3:	10 10                	adc    BYTE PTR [eax],dl
c000b1a5:	10 10                	adc    BYTE PTR [eax],dl
c000b1a7:	10 10                	adc    BYTE PTR [eax],dl
c000b1a9:	10 10                	adc    BYTE PTR [eax],dl
c000b1ab:	10 10                	adc    BYTE PTR [eax],dl
c000b1ad:	38 00                	cmp    BYTE PTR [eax],al
c000b1af:	00 00                	add    BYTE PTR [eax],al
c000b1b1:	00 00                	add    BYTE PTR [eax],al
c000b1b3:	00 00                	add    BYTE PTR [eax],al
c000b1b5:	f6                   	(bad)  
c000b1b6:	49                   	dec    ecx
c000b1b7:	49                   	dec    ecx
c000b1b8:	49                   	dec    ecx
c000b1b9:	49                   	dec    ecx
c000b1ba:	49                   	dec    ecx
c000b1bb:	49                   	dec    ecx
c000b1bc:	49                   	dec    ecx
c000b1bd:	db 00                	fild   DWORD PTR [eax]
c000b1bf:	00 00                	add    BYTE PTR [eax],al
c000b1c1:	00 00                	add    BYTE PTR [eax],al
c000b1c3:	00 00                	add    BYTE PTR [eax],al
c000b1c5:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c000b1c9:	42                   	inc    edx
c000b1ca:	42                   	inc    edx
c000b1cb:	42                   	inc    edx
c000b1cc:	42                   	inc    edx
c000b1cd:	e3 00                	jecxz  c000b1cf <PKnFont+0x6ef>
c000b1cf:	00 00                	add    BYTE PTR [eax],al
c000b1d1:	00 00                	add    BYTE PTR [eax],al
c000b1d3:	00 00                	add    BYTE PTR [eax],al
c000b1d5:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b1d9:	82                   	(bad)  
c000b1da:	82                   	(bad)  
c000b1db:	82                   	(bad)  
c000b1dc:	44                   	inc    esp
c000b1dd:	38 00                	cmp    BYTE PTR [eax],al
c000b1df:	00 00                	add    BYTE PTR [eax],al
c000b1e1:	00 00                	add    BYTE PTR [eax],al
c000b1e3:	00 d8                	add    al,bl
c000b1e5:	64 42                	fs inc edx
c000b1e7:	42                   	inc    edx
c000b1e8:	42                   	inc    edx
c000b1e9:	42                   	inc    edx
c000b1ea:	42                   	inc    edx
c000b1eb:	64 58                	fs pop eax
c000b1ed:	40                   	inc    eax
c000b1ee:	40                   	inc    eax
c000b1ef:	e0 00                	loopne c000b1f1 <PKnFont+0x711>
c000b1f1:	00 00                	add    BYTE PTR [eax],al
c000b1f3:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c000b1f6:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c000b1fd:	04 04                	add    al,0x4
c000b1ff:	0e                   	push   cs
c000b200:	00 00                	add    BYTE PTR [eax],al
c000b202:	00 00                	add    BYTE PTR [eax],al
c000b204:	00 dc                	add    ah,bl
c000b206:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c000b209:	40                   	inc    eax
c000b20a:	40                   	inc    eax
c000b20b:	40                   	inc    eax
c000b20c:	40                   	inc    eax
c000b20d:	e0 00                	loopne c000b20f <PKnFont+0x72f>
c000b20f:	00 00                	add    BYTE PTR [eax],al
c000b211:	00 00                	add    BYTE PTR [eax],al
c000b213:	00 00                	add    BYTE PTR [eax],al
c000b215:	7a 86                	jp     c000b19d <PKnFont+0x6bd>
c000b217:	82                   	(bad)  
c000b218:	c0 38 06             	sar    BYTE PTR [eax],0x6
c000b21b:	82                   	(bad)  
c000b21c:	c2 bc 00             	ret    0xbc
c000b21f:	00 00                	add    BYTE PTR [eax],al
c000b221:	00 10                	add    BYTE PTR [eax],dl
c000b223:	10 10                	adc    BYTE PTR [eax],dl
c000b225:	7c 10                	jl     c000b237 <PKnFont+0x757>
c000b227:	10 10                	adc    BYTE PTR [eax],dl
c000b229:	10 10                	adc    BYTE PTR [eax],dl
c000b22b:	10 10                	adc    BYTE PTR [eax],dl
c000b22d:	0e                   	push   cs
c000b22e:	00 00                	add    BYTE PTR [eax],al
c000b230:	00 00                	add    BYTE PTR [eax],al
c000b232:	00 00                	add    BYTE PTR [eax],al
c000b234:	00 c6                	add    dh,al
c000b236:	42                   	inc    edx
c000b237:	42                   	inc    edx
c000b238:	42                   	inc    edx
c000b239:	42                   	inc    edx
c000b23a:	42                   	inc    edx
c000b23b:	42                   	inc    edx
c000b23c:	46                   	inc    esi
c000b23d:	3b 00                	cmp    eax,DWORD PTR [eax]
c000b23f:	00 00                	add    BYTE PTR [eax],al
c000b241:	00 00                	add    BYTE PTR [eax],al
c000b243:	00 00                	add    BYTE PTR [eax],al
c000b245:	e7 42                	out    0x42,eax
c000b247:	42                   	inc    edx
c000b248:	42                   	inc    edx
c000b249:	24 24                	and    al,0x24
c000b24b:	24 18                	and    al,0x18
c000b24d:	18 00                	sbb    BYTE PTR [eax],al
c000b24f:	00 00                	add    BYTE PTR [eax],al
c000b251:	00 00                	add    BYTE PTR [eax],al
c000b253:	00 00                	add    BYTE PTR [eax],al
c000b255:	e7 42                	out    0x42,eax
c000b257:	42                   	inc    edx
c000b258:	5a                   	pop    edx
c000b259:	5a                   	pop    edx
c000b25a:	5a                   	pop    edx
c000b25b:	24 24                	and    al,0x24
c000b25d:	24 00                	and    al,0x0
c000b25f:	00 00                	add    BYTE PTR [eax],al
c000b261:	00 00                	add    BYTE PTR [eax],al
c000b263:	00 00                	add    BYTE PTR [eax],al
c000b265:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c000b26a:	28 28                	sub    BYTE PTR [eax],ch
c000b26c:	44                   	inc    esp
c000b26d:	c6 00 00             	mov    BYTE PTR [eax],0x0
c000b270:	00 00                	add    BYTE PTR [eax],al
c000b272:	00 00                	add    BYTE PTR [eax],al
c000b274:	00 e7                	add    bh,ah
c000b276:	42                   	inc    edx
c000b277:	42                   	inc    edx
c000b278:	24 24                	and    al,0x24
c000b27a:	24 18                	and    al,0x18
c000b27c:	18 10                	sbb    BYTE PTR [eax],dl
c000b27e:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000b281:	00 00                	add    BYTE PTR [eax],al
c000b283:	00 00                	add    BYTE PTR [eax],al
c000b285:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c000b28b:	42                   	inc    edx
c000b28c:	82                   	(bad)  
c000b28d:	fe 00                	inc    BYTE PTR [eax]
c000b28f:	00 00                	add    BYTE PTR [eax],al
c000b291:	06                   	push   es
c000b292:	08 10                	or     BYTE PTR [eax],dl
c000b294:	10 10                	adc    BYTE PTR [eax],dl
c000b296:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c000b299:	10 10                	adc    BYTE PTR [eax],dl
c000b29b:	10 08                	adc    BYTE PTR [eax],cl
c000b29d:	06                   	push   es
c000b29e:	00 00                	add    BYTE PTR [eax],al
c000b2a0:	10 10                	adc    BYTE PTR [eax],dl
c000b2a2:	10 10                	adc    BYTE PTR [eax],dl
c000b2a4:	10 10                	adc    BYTE PTR [eax],dl
c000b2a6:	10 10                	adc    BYTE PTR [eax],dl
c000b2a8:	10 10                	adc    BYTE PTR [eax],dl
c000b2aa:	10 10                	adc    BYTE PTR [eax],dl
c000b2ac:	10 10                	adc    BYTE PTR [eax],dl
c000b2ae:	10 10                	adc    BYTE PTR [eax],dl
c000b2b0:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c000b2b3:	08 08                	or     BYTE PTR [eax],cl
c000b2b5:	08 08                	or     BYTE PTR [eax],cl
c000b2b7:	06                   	push   es
c000b2b8:	08 08                	or     BYTE PTR [eax],cl
c000b2ba:	08 08                	or     BYTE PTR [eax],cl
c000b2bc:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000b2bf:	00 00                	add    BYTE PTR [eax],al
c000b2c1:	72 8c                	jb     c000b24f <PKnFont+0x76f>
	...

c000bae0 <intr_entry_table>:
c000bae0:	20 8b 00 c0 52 8b    	and    BYTE PTR [ebx-0x74ad4000],cl
c000bae6:	00 c0                	add    al,al
c000bae8:	84 8b 00 c0 b6 8b    	test   BYTE PTR [ebx-0x74494000],cl
c000baee:	00 c0                	add    al,al
c000baf0:	e8 8b 00 c0 1a       	call   dac0bb80 <_kernel_end+0x1abde444>
c000baf5:	8c 00                	mov    WORD PTR [eax],es
c000baf7:	c0 4c 8c 00 c0       	ror    BYTE PTR [esp+ecx*4+0x0],0xc0
c000bafc:	7e 8c                	jle    c000ba8a <PKnFont+0xfaa>
c000bafe:	00 c0                	add    al,al
c000bb00:	b0 8c                	mov    al,0x8c
c000bb02:	00 c0                	add    al,al
c000bb04:	de 8c 00 c0 10 8d 00 	fimul  WORD PTR [eax+eax*1+0x8d10c0]
c000bb0b:	c0 3e 8d             	sar    BYTE PTR [esi],0x8d
c000bb0e:	00 c0                	add    al,al
c000bb10:	6c                   	ins    BYTE PTR es:[edi],dx
c000bb11:	8d 00                	lea    eax,[eax]
c000bb13:	c0 9e 8d 00 c0 cc 8d 	rcr    BYTE PTR [esi-0x333fff73],0x8d
c000bb1a:	00 c0                	add    al,al
c000bb1c:	fa                   	cli    
c000bb1d:	8d 00                	lea    eax,[eax]
c000bb1f:	c0 2c 8e 00          	shr    BYTE PTR [esi+ecx*4],0x0
c000bb23:	c0 5e 8e 00          	rcr    BYTE PTR [esi-0x72],0x0
c000bb27:	c0 8c 8e 00 c0 be 8e 	ror    BYTE PTR [esi+ecx*4-0x71414000],0x0
c000bb2e:	00 
c000bb2f:	c0                   	(bad)  
c000bb30:	f0 8e 00             	lock mov es,WORD PTR [eax]
c000bb33:	c0 22 8f             	shl    BYTE PTR [edx],0x8f
c000bb36:	00 c0                	add    al,al
c000bb38:	54                   	push   esp
c000bb39:	8f 00                	pop    DWORD PTR [eax]
c000bb3b:	c0 86 8f 00 c0 b8 8f 	rol    BYTE PTR [esi-0x473fff71],0x8f
c000bb42:	00 c0                	add    al,al
c000bb44:	e6 8f                	out    0x8f,al
c000bb46:	00 c0                	add    al,al
c000bb48:	18 90 00 c0 46 90    	sbb    BYTE PTR [eax-0x6fb94000],dl
c000bb4e:	00 c0                	add    al,al
c000bb50:	74 90                	je     c000bae2 <intr_entry_table+0x2>
c000bb52:	00 c0                	add    al,al
c000bb54:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c000bb55:	90                   	nop
c000bb56:	00 c0                	add    al,al
c000bb58:	d4 90                	aam    0x90
c000bb5a:	00 c0                	add    al,al
c000bb5c:	02 91 00 c0 34 91    	add    dl,BYTE PTR [ecx-0x6ecb4000]
c000bb62:	00 c0                	add    al,al
c000bb64:	66 91                	xchg   cx,ax
c000bb66:	00 c0                	add    al,al
c000bb68:	98                   	cwde   
c000bb69:	91                   	xchg   ecx,eax
c000bb6a:	00 c0                	add    al,al
c000bb6c:	ca 91 00             	retf   0x91
c000bb6f:	c0 fc 91             	sar    ah,0x91
c000bb72:	00 c0                	add    al,al
c000bb74:	2e 92                	cs xchg edx,eax
c000bb76:	00 c0                	add    al,al
c000bb78:	60                   	pusha  
c000bb79:	92                   	xchg   edx,eax
c000bb7a:	00 c0                	add    al,al
c000bb7c:	92                   	xchg   edx,eax
c000bb7d:	92                   	xchg   edx,eax
c000bb7e:	00 c0                	add    al,al
c000bb80:	c4 92 00 c0 f6 92    	les    edx,FWORD PTR [edx-0x6d094000]
c000bb86:	00 c0                	add    al,al
c000bb88:	28 93 00 c0 5a 93    	sub    BYTE PTR [ebx-0x6ca54000],dl
c000bb8e:	00 c0                	add    al,al
c000bb90:	8c 93 00 c0 be 93    	mov    WORD PTR [ebx-0x6c414000],ss
c000bb96:	00 c0                	add    al,al
c000bb98:	f0 93                	lock xchg ebx,eax
c000bb9a:	00 c0                	add    al,al
c000bb9c:	22                   	.byte 0x22
c000bb9d:	94                   	xchg   esp,eax
c000bb9e:	00 c0                	add    al,al

Disassembly of section .eh_frame:

c000bba0 <.eh_frame>:
c000bba0:	10 00                	adc    BYTE PTR [eax],al
c000bba2:	00 00                	add    BYTE PTR [eax],al
c000bba4:	00 00                	add    BYTE PTR [eax],al
c000bba6:	00 00                	add    BYTE PTR [eax],al
c000bba8:	01 00                	add    DWORD PTR [eax],eax
c000bbaa:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c000bbae:	04 04                	add    al,0x4
c000bbb0:	88 01                	mov    BYTE PTR [ecx],al
c000bbb2:	00 00                	add    BYTE PTR [eax],al
c000bbb4:	2c 01                	sub    al,0x1
c000bbb6:	00 00                	add    BYTE PTR [eax],al
c000bbb8:	18 00                	sbb    BYTE PTR [eax],al
c000bbba:	00 00                	add    BYTE PTR [eax],al
c000bbbc:	24 7f                	and    al,0x7f
c000bbbe:	00 c0                	add    al,al
c000bbc0:	6a 01                	push   0x1
c000bbc2:	00 00                	add    BYTE PTR [eax],al
c000bbc4:	41                   	inc    ecx
c000bbc5:	0e                   	push   cs
c000bbc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000bbcc:	41                   	inc    ecx
c000bbcd:	83 03 47             	add    DWORD PTR [ebx],0x47
c000bbd0:	2e 04 04             	cs add al,0x4
c000bbd3:	01 00                	add    DWORD PTR [eax],eax
c000bbd5:	00 00                	add    BYTE PTR [eax],al
c000bbd7:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000bbdb:	0c 42                	or     al,0x42
c000bbdd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bbe1:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000bbe4:	0c 42                	or     al,0x42
c000bbe6:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000bbea:	0c 41                	or     al,0x41
c000bbec:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bbf0:	0c 42                	or     al,0x42
c000bbf2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bbf6:	0c 41                	or     al,0x41
c000bbf8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bbfc:	0c 42                	or     al,0x42
c000bbfe:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bc02:	0c 41                	or     al,0x41
c000bc04:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bc08:	0c 42                	or     al,0x42
c000bc0a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000bc0e:	0c 41                	or     al,0x41
c000bc10:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000bc14:	0c 42                	or     al,0x42
c000bc16:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bc1a:	0c 41                	or     al,0x41
c000bc1c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bc20:	0c 42                	or     al,0x42
c000bc22:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bc26:	04 04                	add    al,0x4
c000bc28:	02 00                	add    al,BYTE PTR [eax]
c000bc2a:	00 00                	add    BYTE PTR [eax],al
c000bc2c:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000bc30:	0c 42                	or     al,0x42
c000bc32:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bc36:	0c 41                	or     al,0x41
c000bc38:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bc3c:	0c 42                	or     al,0x42
c000bc3e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bc42:	04 04                	add    al,0x4
c000bc44:	02 00                	add    al,BYTE PTR [eax]
c000bc46:	00 00                	add    BYTE PTR [eax],al
c000bc48:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000bc4c:	0c 42                	or     al,0x42
c000bc4e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bc52:	0c 41                	or     al,0x41
c000bc54:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bc58:	0c 42                	or     al,0x42
c000bc5a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bc5e:	0c 41                	or     al,0x41
c000bc60:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000bc64:	0c 42                	or     al,0x42
c000bc66:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bc6a:	0c 41                	or     al,0x41
c000bc6c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bc70:	0c 42                	or     al,0x42
c000bc72:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bc76:	04 04                	add    al,0x4
c000bc78:	02 00                	add    al,BYTE PTR [eax]
c000bc7a:	00 00                	add    BYTE PTR [eax],al
c000bc7c:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000bc80:	0c 42                	or     al,0x42
c000bc82:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bc86:	0c 41                	or     al,0x41
c000bc88:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000bc8c:	0c 42                	or     al,0x42
c000bc8e:	2e 10 51 2e          	adc    BYTE PTR cs:[ecx+0x2e],dl
c000bc92:	14 42                	adc    al,0x42
c000bc94:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000bc98:	1c 45                	sbb    al,0x45
c000bc9a:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000bc9e:	0c 45                	or     al,0x45
c000bca0:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000bca4:	14 42                	adc    al,0x42
c000bca6:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000bcaa:	1c 45                	sbb    al,0x45
c000bcac:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000bcb0:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000bcb3:	0c 42                	or     al,0x42
c000bcb5:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bcb9:	0c 41                	or     al,0x41
c000bcbb:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bcbf:	0c 42                	or     al,0x42
c000bcc1:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000bcc5:	04 04                	add    al,0x4
c000bcc7:	02 00                	add    al,BYTE PTR [eax]
c000bcc9:	00 00                	add    BYTE PTR [eax],al
c000bccb:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000bccf:	0c 42                	or     al,0x42
c000bcd1:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bcd5:	0c 41                	or     al,0x41
c000bcd7:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000bcdb:	0c 42                	or     al,0x42
c000bcdd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bce1:	00 00                	add    BYTE PTR [eax],al
c000bce3:	00 64 01 00          	add    BYTE PTR [ecx+eax*1+0x0],ah
c000bce7:	00 48 01             	add    BYTE PTR [eax+0x1],cl
c000bcea:	00 00                	add    BYTE PTR [eax],al
c000bcec:	8e 80 00 c0 40 02    	mov    es,WORD PTR [eax+0x240c000]
c000bcf2:	00 00                	add    BYTE PTR [eax],al
c000bcf4:	41                   	inc    ecx
c000bcf5:	0e                   	push   cs
c000bcf6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000bcfc:	46                   	inc    esi
c000bcfd:	2e 0c 83             	cs or  al,0x83
c000bd00:	05 86 04 87 03       	add    eax,0x3870486
c000bd05:	5b                   	pop    ebx
c000bd06:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bd0a:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000bd0d:	04 04                	add    al,0x4
c000bd0f:	07                   	pop    es
c000bd10:	00 00                	add    BYTE PTR [eax],al
c000bd12:	00 2e                	add    BYTE PTR [esi],ch
c000bd14:	08 47 2e             	or     BYTE PTR [edi+0x2e],al
c000bd17:	0c 49                	or     al,0x49
c000bd19:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000bd1d:	14 41                	adc    al,0x41
c000bd1f:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000bd23:	1c 45                	sbb    al,0x45
c000bd25:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c000bd29:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c000bd2d:	49                   	dec    ecx
c000bd2e:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000bd32:	14 41                	adc    al,0x41
c000bd34:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000bd38:	1c 45                	sbb    al,0x45
c000bd3a:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c000bd3e:	04 04                	add    al,0x4
c000bd40:	02 00                	add    al,BYTE PTR [eax]
c000bd42:	00 00                	add    BYTE PTR [eax],al
c000bd44:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000bd48:	0c 41                	or     al,0x41
c000bd4a:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000bd4e:	14 41                	adc    al,0x41
c000bd50:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000bd54:	1c 45                	sbb    al,0x45
c000bd56:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000bd5a:	0c 42                	or     al,0x42
c000bd5c:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000bd60:	14 41                	adc    al,0x41
c000bd62:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000bd66:	1c 45                	sbb    al,0x45
c000bd68:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c000bd6c:	04 04                	add    al,0x4
c000bd6e:	02 00                	add    al,BYTE PTR [eax]
c000bd70:	00 00                	add    BYTE PTR [eax],al
c000bd72:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000bd76:	0c 41                	or     al,0x41
c000bd78:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000bd7c:	14 41                	adc    al,0x41
c000bd7e:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000bd82:	1c 45                	sbb    al,0x45
c000bd84:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000bd88:	0c 42                	or     al,0x42
c000bd8a:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000bd8e:	14 41                	adc    al,0x41
c000bd90:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000bd94:	1c 45                	sbb    al,0x45
c000bd96:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c000bd9a:	04 04                	add    al,0x4
c000bd9c:	02 00                	add    al,BYTE PTR [eax]
c000bd9e:	00 00                	add    BYTE PTR [eax],al
c000bda0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000bda4:	0c 41                	or     al,0x41
c000bda6:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000bdaa:	14 41                	adc    al,0x41
c000bdac:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000bdb0:	1c 45                	sbb    al,0x45
c000bdb2:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000bdb6:	0c 42                	or     al,0x42
c000bdb8:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000bdbc:	14 41                	adc    al,0x41
c000bdbe:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000bdc2:	1c 45                	sbb    al,0x45
c000bdc4:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c000bdc8:	04 04                	add    al,0x4
c000bdca:	02 00                	add    al,BYTE PTR [eax]
c000bdcc:	00 00                	add    BYTE PTR [eax],al
c000bdce:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000bdd2:	0c 41                	or     al,0x41
c000bdd4:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000bdd8:	14 41                	adc    al,0x41
c000bdda:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000bdde:	1c 45                	sbb    al,0x45
c000bde0:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000bde4:	0c 42                	or     al,0x42
c000bde6:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000bdea:	14 41                	adc    al,0x41
c000bdec:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000bdf0:	1c 45                	sbb    al,0x45
c000bdf2:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c000bdf6:	04 04                	add    al,0x4
c000bdf8:	02 00                	add    al,BYTE PTR [eax]
c000bdfa:	00 00                	add    BYTE PTR [eax],al
c000bdfc:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000be00:	0c 41                	or     al,0x41
c000be02:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000be06:	14 41                	adc    al,0x41
c000be08:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000be0c:	1c 45                	sbb    al,0x45
c000be0e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000be12:	0c 42                	or     al,0x42
c000be14:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000be18:	14 41                	adc    al,0x41
c000be1a:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000be1e:	1c 45                	sbb    al,0x45
c000be20:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c000be24:	04 04                	add    al,0x4
c000be26:	02 00                	add    al,BYTE PTR [eax]
c000be28:	00 00                	add    BYTE PTR [eax],al
c000be2a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000be2e:	0c 41                	or     al,0x41
c000be30:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000be34:	14 41                	adc    al,0x41
c000be36:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000be3a:	1c 45                	sbb    al,0x45
c000be3c:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000be40:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000be43:	0c 45                	or     al,0x45
c000be45:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000be49:	00 00                	add    BYTE PTR [eax],al
c000be4b:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
c000be4e:	00 00                	add    BYTE PTR [eax],al
c000be50:	b0 02                	mov    al,0x2
c000be52:	00 00                	add    BYTE PTR [eax],al
c000be54:	ce                   	into   
c000be55:	82                   	(bad)  
c000be56:	00 c0                	add    al,al
c000be58:	05 00 00 00 41       	add    eax,0x41000000
c000be5d:	0e                   	push   cs
c000be5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000be64:	2c 00                	sub    al,0x0
c000be66:	00 00                	add    BYTE PTR [eax],al
c000be68:	c8 02 00 00          	enter  0x2,0x0
c000be6c:	d4 82                	aam    0x82
c000be6e:	00 c0                	add    al,al
c000be70:	1a 00                	sbb    al,BYTE PTR [eax]
c000be72:	00 00                	add    BYTE PTR [eax],al
c000be74:	41                   	inc    ecx
c000be75:	0e                   	push   cs
c000be76:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000be7c:	43                   	inc    ebx
c000be7d:	2e 04 04             	cs add al,0x4
c000be80:	05 00 00 00 2e       	add    eax,0x2e000000
c000be85:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000be88:	0c 43                	or     al,0x43
c000be8a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000be8e:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000be91:	0c 04                	or     al,0x4
c000be93:	04 1c                	add    al,0x1c
c000be95:	00 00                	add    BYTE PTR [eax],al
c000be97:	00 f8                	add    al,bh
c000be99:	02 00                	add    al,BYTE PTR [eax]
c000be9b:	00 ee                	add    dh,ch
c000be9d:	82                   	(bad)  
c000be9e:	00 c0                	add    al,al
c000bea0:	23 00                	and    eax,DWORD PTR [eax]
c000bea2:	00 00                	add    BYTE PTR [eax],al
c000bea4:	41                   	inc    ecx
c000bea5:	0e                   	push   cs
c000bea6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000beac:	47                   	inc    edi
c000bead:	0c 04                	or     al,0x4
c000beaf:	04 c5                	add    al,0xc5
c000beb1:	00 00                	add    BYTE PTR [eax],al
c000beb3:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c000beb6:	00 00                	add    BYTE PTR [eax],al
c000beb8:	18 03                	sbb    BYTE PTR [ebx],al
c000beba:	00 00                	add    BYTE PTR [eax],al
c000bebc:	11 83 00 c0 be 00    	adc    DWORD PTR [ebx+0xbec000],eax
c000bec2:	00 00                	add    BYTE PTR [eax],al
c000bec4:	41                   	inc    ecx
c000bec5:	0e                   	push   cs
c000bec6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000becc:	42                   	inc    edx
c000becd:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000bed0:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000bed3:	05 5c 2e 04 04       	add    eax,0x4042e5c
c000bed8:	05 00 00 00 2e       	add    eax,0x2e000000
c000bedd:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000bee0:	0c 45                	or     al,0x45
c000bee2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bee6:	00 02                	add    BYTE PTR [edx],al
c000bee8:	4e                   	dec    esi
c000bee9:	2e 04 04             	cs add al,0x4
c000beec:	02 00                	add    al,BYTE PTR [eax]
c000beee:	00 00                	add    BYTE PTR [eax],al
c000bef0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000bef4:	0c 41                	or     al,0x41
c000bef6:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000befa:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c000befd:	41                   	inc    ecx
c000befe:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000bf02:	0c 04                	or     al,0x4
c000bf04:	04 c5                	add    al,0xc5
c000bf06:	00 00                	add    BYTE PTR [eax],al
c000bf08:	3c 00                	cmp    al,0x0
c000bf0a:	00 00                	add    BYTE PTR [eax],al
c000bf0c:	6c                   	ins    BYTE PTR es:[edi],dx
c000bf0d:	03 00                	add    eax,DWORD PTR [eax]
c000bf0f:	00 cf                	add    bh,cl
c000bf11:	83 00 c0             	add    DWORD PTR [eax],0xffffffc0
c000bf14:	68 00 00 00 41       	push   0x41000000
c000bf19:	0e                   	push   cs
c000bf1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000bf20:	46                   	inc    esi
c000bf21:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000bf28:	2e 04 04             	cs add al,0x4
c000bf2b:	05 00 00 00 2e       	add    eax,0x2e000000
c000bf30:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000bf33:	0c 45                	or     al,0x45
c000bf35:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bf39:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c000bf3d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000bf41:	0c 04                	or     al,0x4
c000bf43:	04 c5                	add    al,0xc5
c000bf45:	00 00                	add    BYTE PTR [eax],al
c000bf47:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000bf4a:	00 00                	add    BYTE PTR [eax],al
c000bf4c:	ac                   	lods   al,BYTE PTR ds:[esi]
c000bf4d:	03 00                	add    eax,DWORD PTR [eax]
c000bf4f:	00 38                	add    BYTE PTR [eax],bh
c000bf51:	84 00                	test   BYTE PTR [eax],al
c000bf53:	c0 15 00 00 00 41 0e 	rcl    BYTE PTR ds:0x41000000,0xe
c000bf5a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000bf60:	43                   	inc    ebx
c000bf61:	2e 0c 45             	cs or  al,0x45
c000bf64:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bf68:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000bf6b:	0c 04                	or     al,0x4
c000bf6d:	04 00                	add    al,0x0
c000bf6f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000bf72:	00 00                	add    BYTE PTR [eax],al
c000bf74:	d4 03                	aam    0x3
c000bf76:	00 00                	add    BYTE PTR [eax],al
c000bf78:	4d                   	dec    ebp
c000bf79:	84 00                	test   BYTE PTR [eax],al
c000bf7b:	c0 3e 00             	sar    BYTE PTR [esi],0x0
c000bf7e:	00 00                	add    BYTE PTR [eax],al
c000bf80:	41                   	inc    ecx
c000bf81:	0e                   	push   cs
c000bf82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000bf88:	41                   	inc    ecx
c000bf89:	86 03                	xchg   BYTE PTR [ebx],al
c000bf8b:	44                   	inc    esp
c000bf8c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000bf90:	00 00                	add    BYTE PTR [eax],al
c000bf92:	00 2e                	add    BYTE PTR [esi],ch
c000bf94:	0c 45                	or     al,0x45
c000bf96:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bf9a:	0c 41                	or     al,0x41
c000bf9c:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000bfa0:	0c 44                	or     al,0x44
c000bfa2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bfa6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000bfa9:	41                   	inc    ecx
c000bfaa:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000bfae:	04 c5                	add    al,0xc5
c000bfb0:	3c 00                	cmp    al,0x0
c000bfb2:	00 00                	add    BYTE PTR [eax],al
c000bfb4:	14 04                	adc    al,0x4
c000bfb6:	00 00                	add    BYTE PTR [eax],al
c000bfb8:	8b 84 00 c0 39 00 00 	mov    eax,DWORD PTR [eax+eax*1+0x39c0]
c000bfbf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000bfc2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000bfc8:	41                   	inc    ecx
c000bfc9:	86 03                	xchg   BYTE PTR [ebx],al
c000bfcb:	44                   	inc    esp
c000bfcc:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000bfd0:	00 00                	add    BYTE PTR [eax],al
c000bfd2:	00 2e                	add    BYTE PTR [esi],ch
c000bfd4:	0c 45                	or     al,0x45
c000bfd6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000bfda:	0c 41                	or     al,0x41
c000bfdc:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000bfe1:	41                   	inc    ecx
c000bfe2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000bfe6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000bfe9:	41                   	inc    ecx
c000bfea:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000bfee:	04 c5                	add    al,0xc5
c000bff0:	40                   	inc    eax
c000bff1:	00 00                	add    BYTE PTR [eax],al
c000bff3:	00 54 04 00          	add    BYTE PTR [esp+eax*1+0x0],dl
c000bff7:	00 c4                	add    ah,al
c000bff9:	84 00                	test   BYTE PTR [eax],al
c000bffb:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c000bfff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c002:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c008:	46                   	inc    esi
c000c009:	2e 0c 83             	cs or  al,0x83
c000c00c:	05 86 04 87 03       	add    eax,0x3870486
c000c011:	4e                   	dec    esi
c000c012:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c016:	04 04                	add    al,0x4
c000c018:	01 00                	add    DWORD PTR [eax],eax
c000c01a:	00 00                	add    BYTE PTR [eax],al
c000c01c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c020:	0c 44                	or     al,0x44
c000c022:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c026:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000c029:	41                   	inc    ecx
c000c02a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c02e:	0c 04                	or     al,0x4
c000c030:	04 c5                	add    al,0xc5
c000c032:	00 00                	add    BYTE PTR [eax],al
c000c034:	40                   	inc    eax
c000c035:	00 00                	add    BYTE PTR [eax],al
c000c037:	00 98 04 00 00 04    	add    BYTE PTR [eax+0x4000004],bl
c000c03d:	85 00                	test   DWORD PTR [eax],eax
c000c03f:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c000c043:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c046:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c04c:	46                   	inc    esi
c000c04d:	2e 0c 83             	cs or  al,0x83
c000c050:	05 86 04 87 03       	add    eax,0x3870486
c000c055:	4e                   	dec    esi
c000c056:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c05a:	04 04                	add    al,0x4
c000c05c:	01 00                	add    DWORD PTR [eax],eax
c000c05e:	00 00                	add    BYTE PTR [eax],al
c000c060:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c064:	0c 44                	or     al,0x44
c000c066:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c06a:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000c06d:	41                   	inc    ecx
c000c06e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c072:	0c 04                	or     al,0x4
c000c074:	04 c5                	add    al,0xc5
c000c076:	00 00                	add    BYTE PTR [eax],al
c000c078:	3c 00                	cmp    al,0x0
c000c07a:	00 00                	add    BYTE PTR [eax],al
c000c07c:	dc 04 00             	fadd   QWORD PTR [eax+eax*1]
c000c07f:	00 44 85 00          	add    BYTE PTR [ebp+eax*4+0x0],al
c000c083:	c0 66 00 00          	shl    BYTE PTR [esi+0x0],0x0
c000c087:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c08a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c090:	48                   	dec    eax
c000c091:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000c098:	2e 04 04             	cs add al,0x4
c000c09b:	01 00                	add    DWORD PTR [eax],eax
c000c09d:	00 00                	add    BYTE PTR [eax],al
c000c09f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c0a3:	0c 42                	or     al,0x42
c000c0a5:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000c0a9:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000c0ad:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c0b1:	0c 04                	or     al,0x4
c000c0b3:	04 c5                	add    al,0xc5
c000c0b5:	00 00                	add    BYTE PTR [eax],al
c000c0b7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000c0ba:	00 00                	add    BYTE PTR [eax],al
c000c0bc:	1c 05                	sbb    al,0x5
c000c0be:	00 00                	add    BYTE PTR [eax],al
c000c0c0:	aa                   	stos   BYTE PTR es:[edi],al
c000c0c1:	85 00                	test   DWORD PTR [eax],eax
c000c0c3:	c0 66 00 00          	shl    BYTE PTR [esi+0x0],0x0
c000c0c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c0ca:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c0d0:	48                   	dec    eax
c000c0d1:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000c0d8:	2e 04 04             	cs add al,0x4
c000c0db:	01 00                	add    DWORD PTR [eax],eax
c000c0dd:	00 00                	add    BYTE PTR [eax],al
c000c0df:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c0e3:	0c 42                	or     al,0x42
c000c0e5:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000c0e9:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000c0ed:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c0f1:	0c 04                	or     al,0x4
c000c0f3:	04 c5                	add    al,0xc5
c000c0f5:	00 00                	add    BYTE PTR [eax],al
c000c0f7:	00 b0 00 00 00 5c    	add    BYTE PTR [eax+0x5c000000],dh
c000c0fd:	05 00 00 10 86       	add    eax,0x86100000
c000c102:	00 c0                	add    al,al
c000c104:	aa                   	stos   BYTE PTR es:[edi],al
c000c105:	00 00                	add    BYTE PTR [eax],al
c000c107:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c10a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c110:	49                   	dec    ecx
c000c111:	2e 04 04             	cs add al,0x4
c000c114:	01 00                	add    DWORD PTR [eax],eax
c000c116:	00 00                	add    BYTE PTR [eax],al
c000c118:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c11c:	0c 42                	or     al,0x42
c000c11e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c122:	0c 41                	or     al,0x41
c000c124:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c128:	0c 42                	or     al,0x42
c000c12a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c12e:	0c 41                	or     al,0x41
c000c130:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c134:	0c 42                	or     al,0x42
c000c136:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c13a:	0c 41                	or     al,0x41
c000c13c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c140:	0c 42                	or     al,0x42
c000c142:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c146:	0c 41                	or     al,0x41
c000c148:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c14c:	0c 42                	or     al,0x42
c000c14e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c152:	0c 41                	or     al,0x41
c000c154:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c158:	0c 42                	or     al,0x42
c000c15a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c15e:	0c 41                	or     al,0x41
c000c160:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c164:	0c 42                	or     al,0x42
c000c166:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c16a:	0c 41                	or     al,0x41
c000c16c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c170:	0c 42                	or     al,0x42
c000c172:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c176:	04 04                	add    al,0x4
c000c178:	02 00                	add    al,BYTE PTR [eax]
c000c17a:	00 00                	add    BYTE PTR [eax],al
c000c17c:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c180:	0c 42                	or     al,0x42
c000c182:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c186:	0c 41                	or     al,0x41
c000c188:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c18c:	0c 42                	or     al,0x42
c000c18e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c192:	0c 41                	or     al,0x41
c000c194:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c198:	0c 42                	or     al,0x42
c000c19a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c19e:	0c 41                	or     al,0x41
c000c1a0:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c1a4:	0c 42                	or     al,0x42
c000c1a6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c1aa:	00 00                	add    BYTE PTR [eax],al
c000c1ac:	20 00                	and    BYTE PTR [eax],al
c000c1ae:	00 00                	add    BYTE PTR [eax],al
c000c1b0:	10 06                	adc    BYTE PTR [esi],al
c000c1b2:	00 00                	add    BYTE PTR [eax],al
c000c1b4:	bc 86 00 c0 42       	mov    esp,0x42c00086
c000c1b9:	00 00                	add    BYTE PTR [eax],al
c000c1bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c1be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c1c4:	47                   	inc    edi
c000c1c5:	83 03 76             	add    DWORD PTR [ebx],0x76
c000c1c8:	c3                   	ret    
c000c1c9:	41                   	inc    ecx
c000c1ca:	0c 04                	or     al,0x4
c000c1cc:	04 c5                	add    al,0xc5
c000c1ce:	00 00                	add    BYTE PTR [eax],al
c000c1d0:	3c 00                	cmp    al,0x0
c000c1d2:	00 00                	add    BYTE PTR [eax],al
c000c1d4:	34 06                	xor    al,0x6
c000c1d6:	00 00                	add    BYTE PTR [eax],al
c000c1d8:	fe 86 00 c0 bb 00    	inc    BYTE PTR [esi+0xbbc000]
c000c1de:	00 00                	add    BYTE PTR [eax],al
c000c1e0:	41                   	inc    ecx
c000c1e1:	0e                   	push   cs
c000c1e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c1e8:	46                   	inc    esi
c000c1e9:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c000c1f0:	7b 2e                	jnp    c000c220 <_edata+0x680>
c000c1f2:	0c 41                	or     al,0x41
c000c1f4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c1f8:	00 5b 2e             	add    BYTE PTR [ebx+0x2e],bl
c000c1fb:	0c 41                	or     al,0x41
c000c1fd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c201:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c000c204:	41                   	inc    ecx
c000c205:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c209:	0c 04                	or     al,0x4
c000c20b:	04 c5                	add    al,0xc5
c000c20d:	00 00                	add    BYTE PTR [eax],al
c000c20f:	00 4c 00 00          	add    BYTE PTR [eax+eax*1+0x0],cl
c000c213:	00 74 06 00          	add    BYTE PTR [esi+eax*1+0x0],dh
c000c217:	00 b9 87 00 c0 c9    	add    BYTE PTR [ecx-0x363fff79],bh
c000c21d:	00 00                	add    BYTE PTR [eax],al
c000c21f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c222:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c228:	46                   	inc    esi
c000c229:	83 05 86 04 87 03 5a 	add    DWORD PTR ds:0x3870486,0x5a
c000c230:	2e 04 04             	cs add al,0x4
c000c233:	05 00 00 00 2e       	add    eax,0x2e000000
c000c238:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c23b:	0c 45                	or     al,0x45
c000c23d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c241:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000c244:	0c 41                	or     al,0x41
c000c246:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c24a:	00 02                	add    BYTE PTR [edx],al
c000c24c:	6b 2e 0c             	imul   ebp,DWORD PTR [esi],0xc
c000c24f:	41                   	inc    ecx
c000c250:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c254:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c000c257:	41                   	inc    ecx
c000c258:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c25c:	0c 04                	or     al,0x4
c000c25e:	04 c5                	add    al,0xc5
c000c260:	1c 00                	sbb    al,0x0
c000c262:	00 00                	add    BYTE PTR [eax],al
c000c264:	c4 06                	les    eax,FWORD PTR [esi]
c000c266:	00 00                	add    BYTE PTR [eax],al
c000c268:	82                   	(bad)  
c000c269:	88 00                	mov    BYTE PTR [eax],al
c000c26b:	c0 14 00 00          	rcl    BYTE PTR [eax+eax*1],0x0
c000c26f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c272:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c278:	44                   	inc    esp
c000c279:	0c 04                	or     al,0x4
c000c27b:	04 c5                	add    al,0xc5
c000c27d:	00 00                	add    BYTE PTR [eax],al
c000c27f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c282:	00 00                	add    BYTE PTR [eax],al
c000c284:	e4 06                	in     al,0x6
c000c286:	00 00                	add    BYTE PTR [eax],al
c000c288:	96                   	xchg   esi,eax
c000c289:	88 00                	mov    BYTE PTR [eax],al
c000c28b:	c0 12 00             	rcl    BYTE PTR [edx],0x0
c000c28e:	00 00                	add    BYTE PTR [eax],al
c000c290:	41                   	inc    ecx
c000c291:	0e                   	push   cs
c000c292:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c298:	44                   	inc    esp
c000c299:	0c 04                	or     al,0x4
c000c29b:	04 c5                	add    al,0xc5
c000c29d:	00 00                	add    BYTE PTR [eax],al
c000c29f:	00 28                	add    BYTE PTR [eax],ch
c000c2a1:	00 00                	add    BYTE PTR [eax],al
c000c2a3:	00 04 07             	add    BYTE PTR [edi+eax*1],al
c000c2a6:	00 00                	add    BYTE PTR [eax],al
c000c2a8:	a8 88                	test   al,0x88
c000c2aa:	00 c0                	add    al,al
c000c2ac:	4d                   	dec    ebp
c000c2ad:	00 00                	add    BYTE PTR [eax],al
c000c2af:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c2b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c2b8:	49                   	dec    ecx
c000c2b9:	83 05 86 04 87 03 7d 	add    DWORD PTR ds:0x3870486,0x7d
c000c2c0:	c3                   	ret    
c000c2c1:	41                   	inc    ecx
c000c2c2:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c2c6:	0c 04                	or     al,0x4
c000c2c8:	04 c5                	add    al,0xc5
c000c2ca:	00 00                	add    BYTE PTR [eax],al
c000c2cc:	1c 00                	sbb    al,0x0
c000c2ce:	00 00                	add    BYTE PTR [eax],al
c000c2d0:	30 07                	xor    BYTE PTR [edi],al
c000c2d2:	00 00                	add    BYTE PTR [eax],al
c000c2d4:	f5                   	cmc    
c000c2d5:	88 00                	mov    BYTE PTR [eax],al
c000c2d7:	c0 25 00 00 00 41 0e 	shl    BYTE PTR ds:0x41000000,0xe
c000c2de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c2e4:	61                   	popa   
c000c2e5:	0c 04                	or     al,0x4
c000c2e7:	04 c5                	add    al,0xc5
c000c2e9:	00 00                	add    BYTE PTR [eax],al
c000c2eb:	00 a0 00 00 00 50    	add    BYTE PTR [eax+0x50000000],ah
c000c2f1:	07                   	pop    es
c000c2f2:	00 00                	add    BYTE PTR [eax],al
c000c2f4:	1a 89 00 c0 f8 00    	sbb    cl,BYTE PTR [ecx+0xf8c000]
c000c2fa:	00 00                	add    BYTE PTR [eax],al
c000c2fc:	41                   	inc    ecx
c000c2fd:	0e                   	push   cs
c000c2fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c304:	41                   	inc    ecx
c000c305:	83 03 7e             	add    DWORD PTR [ebx],0x7e
c000c308:	2e 04 04             	cs add al,0x4
c000c30b:	07                   	pop    es
c000c30c:	00 00                	add    BYTE PTR [eax],al
c000c30e:	00 2e                	add    BYTE PTR [esi],ch
c000c310:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c313:	0c 42                	or     al,0x42
c000c315:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000c319:	14 41                	adc    al,0x41
c000c31b:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000c31f:	1c 48                	sbb    al,0x48
c000c321:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000c325:	24 42                	and    al,0x42
c000c327:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000c32b:	2c 41                	sub    al,0x41
c000c32d:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000c331:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000c334:	04 04                	add    al,0x4
c000c336:	02 00                	add    al,BYTE PTR [eax]
c000c338:	00 00                	add    BYTE PTR [eax],al
c000c33a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c33e:	0c 42                	or     al,0x42
c000c340:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000c344:	14 41                	adc    al,0x41
c000c346:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000c34a:	1c 42                	sbb    al,0x42
c000c34c:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000c350:	24 42                	and    al,0x42
c000c352:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000c356:	2c 41                	sub    al,0x41
c000c358:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000c35c:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000c35f:	04 04                	add    al,0x4
c000c361:	02 00                	add    al,BYTE PTR [eax]
c000c363:	00 00                	add    BYTE PTR [eax],al
c000c365:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c369:	0c 42                	or     al,0x42
c000c36b:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000c36f:	14 41                	adc    al,0x41
c000c371:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000c375:	1c 42                	sbb    al,0x42
c000c377:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000c37b:	24 42                	and    al,0x42
c000c37d:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000c381:	2c 41                	sub    al,0x41
c000c383:	2e 30 48 2e          	xor    BYTE PTR cs:[eax+0x2e],cl
c000c387:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000c38b:	04 04                	add    al,0x4
c000c38d:	c3                   	ret    
c000c38e:	00 00                	add    BYTE PTR [eax],al
c000c390:	2c 00                	sub    al,0x0
c000c392:	00 00                	add    BYTE PTR [eax],al
c000c394:	f4                   	hlt    
c000c395:	07                   	pop    es
c000c396:	00 00                	add    BYTE PTR [eax],al
c000c398:	12 8a 00 c0 84 00    	adc    cl,BYTE PTR [edx+0x84c000]
c000c39e:	00 00                	add    BYTE PTR [eax],al
c000c3a0:	41                   	inc    ecx
c000c3a1:	0e                   	push   cs
c000c3a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c3a8:	41                   	inc    ecx
c000c3a9:	87 03                	xchg   DWORD PTR [ebx],eax
c000c3ab:	49                   	dec    ecx
c000c3ac:	83 05 86 04 04 73 00 	add    DWORD PTR ds:0x73040486,0x0
c000c3b3:	00 00                	add    BYTE PTR [eax],al
c000c3b5:	c3                   	ret    
c000c3b6:	41                   	inc    ecx
c000c3b7:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c3bb:	0c 04                	or     al,0x4
c000c3bd:	04 c5                	add    al,0xc5
c000c3bf:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000c3c3:	00 24 08             	add    BYTE PTR [eax+ecx*1],ah
c000c3c6:	00 00                	add    BYTE PTR [eax],al
c000c3c8:	96                   	xchg   esi,eax
c000c3c9:	8a 00                	mov    al,BYTE PTR [eax]
c000c3cb:	c0                   	(bad)  
c000c3cc:	37                   	aaa    
c000c3cd:	00 00                	add    BYTE PTR [eax],al
c000c3cf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c3d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c3d8:	41                   	inc    ecx
c000c3d9:	87 03                	xchg   DWORD PTR [ebx],eax
c000c3db:	44                   	inc    esp
c000c3dc:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000c3df:	04 00                	add    al,0x0
c000c3e1:	00 00                	add    BYTE PTR [eax],al
c000c3e3:	83 05 4a 2e 04 04 01 	add    DWORD PTR ds:0x4042e4a,0x1
c000c3ea:	00 00                	add    BYTE PTR [eax],al
c000c3ec:	00 2e                	add    BYTE PTR [esi],ch
c000c3ee:	08 43 2e             	or     BYTE PTR [ebx+0x2e],al
c000c3f1:	0c 41                	or     al,0x41
c000c3f3:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c3f7:	14 48                	adc    al,0x48
c000c3f9:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000c3fd:	41                   	inc    ecx
c000c3fe:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c402:	0c 04                	or     al,0x4
c000c404:	04 c5                	add    al,0xc5
c000c406:	00 00                	add    BYTE PTR [eax],al
c000c408:	34 00                	xor    al,0x0
c000c40a:	00 00                	add    BYTE PTR [eax],al
c000c40c:	6c                   	ins    BYTE PTR es:[edi],dx
c000c40d:	08 00                	or     BYTE PTR [eax],al
c000c40f:	00 d0                	add    al,dl
c000c411:	8a 00                	mov    al,BYTE PTR [eax]
c000c413:	c0 4f 00 00          	ror    BYTE PTR [edi+0x0],0x0
c000c417:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c41a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c420:	43                   	inc    ebx
c000c421:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c425:	0c 42                	or     al,0x42
c000c427:	2e 10 70 2e          	adc    BYTE PTR cs:[eax+0x2e],dh
c000c42b:	0c 41                	or     al,0x41
c000c42d:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c431:	0c 42                	or     al,0x42
c000c433:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c437:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000c43a:	0c 04                	or     al,0x4
c000c43c:	04 00                	add    al,0x0
c000c43e:	00 00                	add    BYTE PTR [eax],al
c000c440:	1c 00                	sbb    al,0x0
c000c442:	00 00                	add    BYTE PTR [eax],al
c000c444:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000c445:	08 00                	or     BYTE PTR [eax],al
c000c447:	00 54 94 00          	add    BYTE PTR [esp+edx*4+0x0],dl
c000c44b:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c000c44e:	00 00                	add    BYTE PTR [eax],al
c000c450:	41                   	inc    ecx
c000c451:	0e                   	push   cs
c000c452:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c458:	47                   	inc    edi
c000c459:	0c 04                	or     al,0x4
c000c45b:	04 c5                	add    al,0xc5
c000c45d:	00 00                	add    BYTE PTR [eax],al
c000c45f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c462:	00 00                	add    BYTE PTR [eax],al
c000c464:	c4 08                	les    ecx,FWORD PTR [eax]
c000c466:	00 00                	add    BYTE PTR [eax],al
c000c468:	64 94                	fs xchg esp,eax
c000c46a:	00 c0                	add    al,al
c000c46c:	3d 00 00 00 41       	cmp    eax,0x41000000
c000c471:	0e                   	push   cs
c000c472:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c478:	74 0c                	je     c000c486 <_edata+0x8e6>
c000c47a:	04 04                	add    al,0x4
c000c47c:	c5 00                	lds    eax,FWORD PTR [eax]
c000c47e:	00 00                	add    BYTE PTR [eax],al
c000c480:	1c 00                	sbb    al,0x0
c000c482:	00 00                	add    BYTE PTR [eax],al
c000c484:	e4 08                	in     al,0x8
c000c486:	00 00                	add    BYTE PTR [eax],al
c000c488:	a1 94 00 c0 69       	mov    eax,ds:0x69c00094
c000c48d:	00 00                	add    BYTE PTR [eax],al
c000c48f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c492:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c498:	02 63 0c             	add    ah,BYTE PTR [ebx+0xc]
c000c49b:	04 04                	add    al,0x4
c000c49d:	c5 00                	lds    eax,FWORD PTR [eax]
c000c49f:	00 20                	add    BYTE PTR [eax],ah
c000c4a1:	00 00                	add    BYTE PTR [eax],al
c000c4a3:	00 04 09             	add    BYTE PTR [ecx+ecx*1],al
c000c4a6:	00 00                	add    BYTE PTR [eax],al
c000c4a8:	0a 95 00 c0 2c 00    	or     dl,BYTE PTR [ebp+0x2cc000]
c000c4ae:	00 00                	add    BYTE PTR [eax],al
c000c4b0:	41                   	inc    ecx
c000c4b1:	0e                   	push   cs
c000c4b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c4b8:	44                   	inc    esp
c000c4b9:	83 03 63             	add    DWORD PTR [ebx],0x63
c000c4bc:	c3                   	ret    
c000c4bd:	41                   	inc    ecx
c000c4be:	0c 04                	or     al,0x4
c000c4c0:	04 c5                	add    al,0xc5
c000c4c2:	00 00                	add    BYTE PTR [eax],al
c000c4c4:	1c 00                	sbb    al,0x0
c000c4c6:	00 00                	add    BYTE PTR [eax],al
c000c4c8:	28 09                	sub    BYTE PTR [ecx],cl
c000c4ca:	00 00                	add    BYTE PTR [eax],al
c000c4cc:	36 95                	ss xchg ebp,eax
c000c4ce:	00 c0                	add    al,al
c000c4d0:	cd 00                	int    0x0
c000c4d2:	00 00                	add    BYTE PTR [eax],al
c000c4d4:	41                   	inc    ecx
c000c4d5:	0e                   	push   cs
c000c4d6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c4dc:	02 c9                	add    cl,cl
c000c4de:	0c 04                	or     al,0x4
c000c4e0:	04 c5                	add    al,0xc5
c000c4e2:	00 00                	add    BYTE PTR [eax],al
c000c4e4:	1c 00                	sbb    al,0x0
c000c4e6:	00 00                	add    BYTE PTR [eax],al
c000c4e8:	48                   	dec    eax
c000c4e9:	09 00                	or     DWORD PTR [eax],eax
c000c4eb:	00 03                	add    BYTE PTR [ebx],al
c000c4ed:	96                   	xchg   esi,eax
c000c4ee:	00 c0                	add    al,al
c000c4f0:	32 00                	xor    al,BYTE PTR [eax]
c000c4f2:	00 00                	add    BYTE PTR [eax],al
c000c4f4:	41                   	inc    ecx
c000c4f5:	0e                   	push   cs
c000c4f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c4fc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000c4fd:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000c500:	04 00                	add    al,0x0
c000c502:	00 00                	add    BYTE PTR [eax],al
c000c504:	1c 00                	sbb    al,0x0
c000c506:	00 00                	add    BYTE PTR [eax],al
c000c508:	68 09 00 00 35       	push   0x35000009
c000c50d:	96                   	xchg   esi,eax
c000c50e:	00 c0                	add    al,al
c000c510:	10 00                	adc    BYTE PTR [eax],al
c000c512:	00 00                	add    BYTE PTR [eax],al
c000c514:	41                   	inc    ecx
c000c515:	0e                   	push   cs
c000c516:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c51c:	4c                   	dec    esp
c000c51d:	0c 04                	or     al,0x4
c000c51f:	04 c5                	add    al,0xc5
c000c521:	00 00                	add    BYTE PTR [eax],al
c000c523:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c526:	00 00                	add    BYTE PTR [eax],al
c000c528:	88 09                	mov    BYTE PTR [ecx],cl
c000c52a:	00 00                	add    BYTE PTR [eax],al
c000c52c:	45                   	inc    ebp
c000c52d:	96                   	xchg   esi,eax
c000c52e:	00 c0                	add    al,al
c000c530:	14 00                	adc    al,0x0
c000c532:	00 00                	add    BYTE PTR [eax],al
c000c534:	41                   	inc    ecx
c000c535:	0e                   	push   cs
c000c536:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c53c:	50                   	push   eax
c000c53d:	0c 04                	or     al,0x4
c000c53f:	04 c5                	add    al,0xc5
c000c541:	00 00                	add    BYTE PTR [eax],al
c000c543:	00 a0 00 00 00 a8    	add    BYTE PTR [eax-0x58000000],ah
c000c549:	09 00                	or     DWORD PTR [eax],eax
c000c54b:	00 59 96             	add    BYTE PTR [ecx-0x6a],bl
c000c54e:	00 c0                	add    al,al
c000c550:	aa                   	stos   BYTE PTR es:[edi],al
c000c551:	00 00                	add    BYTE PTR [eax],al
c000c553:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c556:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c55c:	42                   	inc    edx
c000c55d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c561:	4b                   	dec    ebx
c000c562:	2e 0c 42             	cs or  al,0x42
c000c565:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c569:	0c 44                	or     al,0x44
c000c56b:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c56f:	0c 42                	or     al,0x42
c000c571:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c575:	04 04                	add    al,0x4
c000c577:	02 00                	add    al,BYTE PTR [eax]
c000c579:	00 00                	add    BYTE PTR [eax],al
c000c57b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c57f:	0c 42                	or     al,0x42
c000c581:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c585:	0c 41                	or     al,0x41
c000c587:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c58b:	0c 42                	or     al,0x42
c000c58d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c591:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c594:	04 04                	add    al,0x4
c000c596:	01 00                	add    DWORD PTR [eax],eax
c000c598:	00 00                	add    BYTE PTR [eax],al
c000c59a:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c59e:	0c 42                	or     al,0x42
c000c5a0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5a4:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000c5a7:	04 04                	add    al,0x4
c000c5a9:	01 00                	add    DWORD PTR [eax],eax
c000c5ab:	00 00                	add    BYTE PTR [eax],al
c000c5ad:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5b1:	0c 42                	or     al,0x42
c000c5b3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5b7:	04 04                	add    al,0x4
c000c5b9:	02 00                	add    al,BYTE PTR [eax]
c000c5bb:	00 00                	add    BYTE PTR [eax],al
c000c5bd:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c5c1:	0c 42                	or     al,0x42
c000c5c3:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5c7:	0c 41                	or     al,0x41
c000c5c9:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5cd:	0c 42                	or     al,0x42
c000c5cf:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5d3:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c5d6:	04 04                	add    al,0x4
c000c5d8:	01 00                	add    DWORD PTR [eax],eax
c000c5da:	00 00                	add    BYTE PTR [eax],al
c000c5dc:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5e0:	0c 42                	or     al,0x42
c000c5e2:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000c5e6:	00 00                	add    BYTE PTR [eax],al
c000c5e8:	1c 00                	sbb    al,0x0
c000c5ea:	00 00                	add    BYTE PTR [eax],al
c000c5ec:	4c                   	dec    esp
c000c5ed:	0a 00                	or     al,BYTE PTR [eax]
c000c5ef:	00 03                	add    BYTE PTR [ebx],al
c000c5f1:	97                   	xchg   edi,eax
c000c5f2:	00 c0                	add    al,al
c000c5f4:	17                   	pop    ss
c000c5f5:	00 00                	add    BYTE PTR [eax],al
c000c5f7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c5fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c600:	53                   	push   ebx
c000c601:	0c 04                	or     al,0x4
c000c603:	04 c5                	add    al,0xc5
c000c605:	00 00                	add    BYTE PTR [eax],al
c000c607:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c60a:	00 00                	add    BYTE PTR [eax],al
c000c60c:	6c                   	ins    BYTE PTR es:[edi],dx
c000c60d:	0a 00                	or     al,BYTE PTR [eax]
c000c60f:	00 1a                	add    BYTE PTR [edx],bl
c000c611:	97                   	xchg   edi,eax
c000c612:	00 c0                	add    al,al
c000c614:	15 00 00 00 41       	adc    eax,0x41000000
c000c619:	0e                   	push   cs
c000c61a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c620:	47                   	inc    edi
c000c621:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c000c624:	04 c5                	add    al,0xc5
c000c626:	45                   	inc    ebp
c000c627:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c000c62a:	04 04                	add    al,0x4
c000c62c:	c5 00                	lds    eax,FWORD PTR [eax]
c000c62e:	00 00                	add    BYTE PTR [eax],al
c000c630:	2c 00                	sub    al,0x0
c000c632:	00 00                	add    BYTE PTR [eax],al
c000c634:	94                   	xchg   esp,eax
c000c635:	0a 00                	or     al,BYTE PTR [eax]
c000c637:	00 30                	add    BYTE PTR [eax],dh
c000c639:	97                   	xchg   edi,eax
c000c63a:	00 c0                	add    al,al
c000c63c:	1e                   	push   ds
c000c63d:	00 00                	add    BYTE PTR [eax],al
c000c63f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c642:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c648:	45                   	inc    ebp
c000c649:	2e 04 04             	cs add al,0x4
c000c64c:	02 00                	add    al,BYTE PTR [eax]
c000c64e:	00 00                	add    BYTE PTR [eax],al
c000c650:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c654:	0c 45                	or     al,0x45
c000c656:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c65a:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000c65d:	0c 04                	or     al,0x4
c000c65f:	04 6c                	add    al,0x6c
c000c661:	00 00                	add    BYTE PTR [eax],al
c000c663:	00 c4                	add    ah,al
c000c665:	0a 00                	or     al,BYTE PTR [eax]
c000c667:	00 4e 97             	add    BYTE PTR [esi-0x69],cl
c000c66a:	00 c0                	add    al,al
c000c66c:	d6                   	(bad)  
c000c66d:	01 00                	add    DWORD PTR [eax],eax
c000c66f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c672:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c678:	46                   	inc    esi
c000c679:	83 03 03             	add    DWORD PTR [ebx],0x3
c000c67c:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c000c681:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c685:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c688:	04 04                	add    al,0x4
c000c68a:	01 00                	add    DWORD PTR [eax],eax
c000c68c:	00 00                	add    BYTE PTR [eax],al
c000c68e:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000c693:	45                   	inc    ebp
c000c694:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c698:	0c 45                	or     al,0x45
c000c69a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c69e:	0c 42                	or     al,0x42
c000c6a0:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000c6a4:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c6a7:	04 04                	add    al,0x4
c000c6a9:	01 00                	add    DWORD PTR [eax],eax
c000c6ab:	00 00                	add    BYTE PTR [eax],al
c000c6ad:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c6b1:	0c 42                	or     al,0x42
c000c6b3:	2e 00 02             	add    BYTE PTR cs:[edx],al
c000c6b6:	5c                   	pop    esp
c000c6b7:	2e 04 04             	cs add al,0x4
c000c6ba:	01 00                	add    DWORD PTR [eax],eax
c000c6bc:	00 00                	add    BYTE PTR [eax],al
c000c6be:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c6c2:	0c 42                	or     al,0x42
c000c6c4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c6c8:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000c6cc:	04 04                	add    al,0x4
c000c6ce:	c3                   	ret    
c000c6cf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c6d2:	00 00                	add    BYTE PTR [eax],al
c000c6d4:	34 0b                	xor    al,0xb
c000c6d6:	00 00                	add    BYTE PTR [eax],al
c000c6d8:	24 99                	and    al,0x99
c000c6da:	00 c0                	add    al,al
c000c6dc:	1e                   	push   ds
c000c6dd:	00 00                	add    BYTE PTR [eax],al
c000c6df:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c6e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c6e8:	5a                   	pop    edx
c000c6e9:	0c 04                	or     al,0x4
c000c6eb:	04 c5                	add    al,0xc5
c000c6ed:	00 00                	add    BYTE PTR [eax],al
c000c6ef:	00 28                	add    BYTE PTR [eax],ch
c000c6f1:	00 00                	add    BYTE PTR [eax],al
c000c6f3:	00 54 0b 00          	add    BYTE PTR [ebx+ecx*1+0x0],dl
c000c6f7:	00 42 99             	add    BYTE PTR [edx-0x67],al
c000c6fa:	00 c0                	add    al,al
c000c6fc:	29 00                	sub    DWORD PTR [eax],eax
c000c6fe:	00 00                	add    BYTE PTR [eax],al
c000c700:	41                   	inc    ecx
c000c701:	0e                   	push   cs
c000c702:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c708:	41                   	inc    ecx
c000c709:	86 03                	xchg   BYTE PTR [ebx],al
c000c70b:	44                   	inc    esp
c000c70c:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c000c710:	00 00                	add    BYTE PTR [eax],al
c000c712:	00 c3                	add    bl,al
c000c714:	41                   	inc    ecx
c000c715:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c719:	04 c5                	add    al,0xc5
c000c71b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c71e:	00 00                	add    BYTE PTR [eax],al
c000c720:	80 0b 00             	or     BYTE PTR [ebx],0x0
c000c723:	00 6b 99             	add    BYTE PTR [ebx-0x67],ch
c000c726:	00 c0                	add    al,al
c000c728:	18 00                	sbb    BYTE PTR [eax],al
c000c72a:	00 00                	add    BYTE PTR [eax],al
c000c72c:	41                   	inc    ecx
c000c72d:	0e                   	push   cs
c000c72e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c734:	50                   	push   eax
c000c735:	0c 04                	or     al,0x4
c000c737:	04 c5                	add    al,0xc5
c000c739:	00 00                	add    BYTE PTR [eax],al
c000c73b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c73e:	00 00                	add    BYTE PTR [eax],al
c000c740:	a0 0b 00 00 83       	mov    al,ds:0x8300000b
c000c745:	99                   	cdq    
c000c746:	00 c0                	add    al,al
c000c748:	18 00                	sbb    BYTE PTR [eax],al
c000c74a:	00 00                	add    BYTE PTR [eax],al
c000c74c:	41                   	inc    ecx
c000c74d:	0e                   	push   cs
c000c74e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c754:	50                   	push   eax
c000c755:	0c 04                	or     al,0x4
c000c757:	04 c5                	add    al,0xc5
c000c759:	00 00                	add    BYTE PTR [eax],al
c000c75b:	00 20                	add    BYTE PTR [eax],ah
c000c75d:	00 00                	add    BYTE PTR [eax],al
c000c75f:	00 c0                	add    al,al
c000c761:	0b 00                	or     eax,DWORD PTR [eax]
c000c763:	00 9b 99 00 c0 27    	add    BYTE PTR [ebx+0x27c00099],bl
c000c769:	00 00                	add    BYTE PTR [eax],al
c000c76b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c76e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c774:	42                   	inc    edx
c000c775:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c000c778:	c3                   	ret    
c000c779:	41                   	inc    ecx
c000c77a:	0c 04                	or     al,0x4
c000c77c:	04 c5                	add    al,0xc5
c000c77e:	00 00                	add    BYTE PTR [eax],al
c000c780:	28 00                	sub    BYTE PTR [eax],al
c000c782:	00 00                	add    BYTE PTR [eax],al
c000c784:	e4 0b                	in     al,0xb
c000c786:	00 00                	add    BYTE PTR [eax],al
c000c788:	c2 99 00             	ret    0x99
c000c78b:	c0 1a 00             	rcr    BYTE PTR [edx],0x0
c000c78e:	00 00                	add    BYTE PTR [eax],al
c000c790:	41                   	inc    ecx
c000c791:	0e                   	push   cs
c000c792:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c798:	44                   	inc    esp
c000c799:	2e 0c 83             	cs or  al,0x83
c000c79c:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c000c79f:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c000c7a2:	0c 04                	or     al,0x4
c000c7a4:	04 c3                	add    al,0xc3
c000c7a6:	41                   	inc    ecx
c000c7a7:	13 03                	adc    eax,DWORD PTR [ebx]
c000c7a9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000c7ac:	1c 00                	sbb    al,0x0
c000c7ae:	00 00                	add    BYTE PTR [eax],al
c000c7b0:	10 0c 00             	adc    BYTE PTR [eax+eax*1],cl
c000c7b3:	00 dc                	add    ah,bl
c000c7b5:	99                   	cdq    
c000c7b6:	00 c0                	add    al,al
c000c7b8:	27                   	daa    
c000c7b9:	00 00                	add    BYTE PTR [eax],al
c000c7bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c7be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7c4:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c000c7c7:	04 c5                	add    al,0xc5
c000c7c9:	00 00                	add    BYTE PTR [eax],al
c000c7cb:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000c7ce:	00 00                	add    BYTE PTR [eax],al
c000c7d0:	30 0c 00             	xor    BYTE PTR [eax+eax*1],cl
c000c7d3:	00 03                	add    BYTE PTR [ebx],al
c000c7d5:	9a 00 c0 38 00 00 00 	call   0x0:0x38c000
c000c7dc:	41                   	inc    ecx
c000c7dd:	0e                   	push   cs
c000c7de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7e4:	46                   	inc    esi
c000c7e5:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c000c7ec:	2e 04 04             	cs add al,0x4
c000c7ef:	01 00                	add    DWORD PTR [eax],eax
c000c7f1:	00 00                	add    BYTE PTR [eax],al
c000c7f3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c7f7:	0c 41                	or     al,0x41
c000c7f9:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c7fd:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000c800:	41                   	inc    ecx
c000c801:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c805:	0c 04                	or     al,0x4
c000c807:	04 c5                	add    al,0xc5
c000c809:	00 00                	add    BYTE PTR [eax],al
c000c80b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c80e:	00 00                	add    BYTE PTR [eax],al
c000c810:	70 0c                	jo     c000c81e <_edata+0xc7e>
c000c812:	00 00                	add    BYTE PTR [eax],al
c000c814:	3b 9a 00 c0 1a 00    	cmp    ebx,DWORD PTR [edx+0x1ac000]
c000c81a:	00 00                	add    BYTE PTR [eax],al
c000c81c:	41                   	inc    ecx
c000c81d:	0e                   	push   cs
c000c81e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c824:	54                   	push   esp
c000c825:	0c 04                	or     al,0x4
c000c827:	04 c5                	add    al,0xc5
c000c829:	00 00                	add    BYTE PTR [eax],al
c000c82b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c82e:	00 00                	add    BYTE PTR [eax],al
c000c830:	90                   	nop
c000c831:	0c 00                	or     al,0x0
c000c833:	00 55 9a             	add    BYTE PTR [ebp-0x66],dl
c000c836:	00 c0                	add    al,al
c000c838:	14 00                	adc    al,0x0
c000c83a:	00 00                	add    BYTE PTR [eax],al
c000c83c:	41                   	inc    ecx
c000c83d:	0e                   	push   cs
c000c83e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c844:	44                   	inc    esp
c000c845:	0c 04                	or     al,0x4
c000c847:	04 c5                	add    al,0xc5
c000c849:	00 00                	add    BYTE PTR [eax],al
c000c84b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c84e:	00 00                	add    BYTE PTR [eax],al
c000c850:	b0 0c                	mov    al,0xc
c000c852:	00 00                	add    BYTE PTR [eax],al
c000c854:	6c                   	ins    BYTE PTR es:[edi],dx
c000c855:	9a 00 c0 23 00 00 00 	call   0x0:0x23c000
c000c85c:	41                   	inc    ecx
c000c85d:	0e                   	push   cs
c000c85e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c864:	5f                   	pop    edi
c000c865:	0c 04                	or     al,0x4
c000c867:	04 c5                	add    al,0xc5
c000c869:	00 00                	add    BYTE PTR [eax],al
c000c86b:	00 20                	add    BYTE PTR [eax],ah
c000c86d:	00 00                	add    BYTE PTR [eax],al
c000c86f:	00 d0                	add    al,dl
c000c871:	0c 00                	or     al,0x0
c000c873:	00 8f 9a 00 c0 1b    	add    BYTE PTR [edi+0x1bc0009a],cl
c000c879:	00 00                	add    BYTE PTR [eax],al
c000c87b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c87e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c884:	46                   	inc    esi
c000c885:	83 03 4e             	add    DWORD PTR [ebx],0x4e
c000c888:	c3                   	ret    
c000c889:	41                   	inc    ecx
c000c88a:	0c 04                	or     al,0x4
c000c88c:	04 c5                	add    al,0xc5
c000c88e:	00 00                	add    BYTE PTR [eax],al
c000c890:	28 00                	sub    BYTE PTR [eax],al
c000c892:	00 00                	add    BYTE PTR [eax],al
c000c894:	f4                   	hlt    
c000c895:	0c 00                	or     al,0x0
c000c897:	00 aa 9a 00 c0 63    	add    BYTE PTR [edx+0x63c0009a],ch
c000c89d:	00 00                	add    BYTE PTR [eax],al
c000c89f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c8a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c8a8:	44                   	inc    esp
c000c8a9:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c000c8b0:	58                   	pop    eax
c000c8b1:	c3                   	ret    
c000c8b2:	41                   	inc    ecx
c000c8b3:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c8b7:	0c 04                	or     al,0x4
c000c8b9:	04 c5                	add    al,0xc5
c000c8bb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c8be:	00 00                	add    BYTE PTR [eax],al
c000c8c0:	20 0d 00 00 0d 9b    	and    BYTE PTR ds:0x9b0d0000,cl
c000c8c6:	00 c0                	add    al,al
c000c8c8:	0d 00 00 00 41       	or     eax,0x41000000
c000c8cd:	0e                   	push   cs
c000c8ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c8d4:	45                   	inc    ebp
c000c8d5:	0c 04                	or     al,0x4
c000c8d7:	04 c5                	add    al,0xc5
c000c8d9:	00 00                	add    BYTE PTR [eax],al
c000c8db:	00 28                	add    BYTE PTR [eax],ch
c000c8dd:	00 00                	add    BYTE PTR [eax],al
c000c8df:	00 40 0d             	add    BYTE PTR [eax+0xd],al
c000c8e2:	00 00                	add    BYTE PTR [eax],al
c000c8e4:	1a 9b 00 c0 0a 01    	sbb    bl,BYTE PTR [ebx+0x10ac000]
c000c8ea:	00 00                	add    BYTE PTR [eax],al
c000c8ec:	41                   	inc    ecx
c000c8ed:	0e                   	push   cs
c000c8ee:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c8f4:	46                   	inc    esi
c000c8f5:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c000c8fc:	fb                   	sti    
c000c8fd:	c3                   	ret    
c000c8fe:	41                   	inc    ecx
c000c8ff:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c903:	0c 04                	or     al,0x4
c000c905:	04 c5                	add    al,0xc5
c000c907:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c90a:	00 00                	add    BYTE PTR [eax],al
c000c90c:	6c                   	ins    BYTE PTR es:[edi],dx
c000c90d:	0d 00 00 24 9c       	or     eax,0x9c240000
c000c912:	00 c0                	add    al,al
c000c914:	0d 00 00 00 41       	or     eax,0x41000000
c000c919:	0e                   	push   cs
c000c91a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c920:	45                   	inc    ebp
c000c921:	0c 04                	or     al,0x4
c000c923:	04 c5                	add    al,0xc5
c000c925:	00 00                	add    BYTE PTR [eax],al
c000c927:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000c92b:	00 8c 0d 00 00 31 9c 	add    BYTE PTR [ebp+ecx*1-0x63cf0000],cl
c000c932:	00 c0                	add    al,al
c000c934:	55                   	push   ebp
c000c935:	00 00                	add    BYTE PTR [eax],al
c000c937:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c93a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c940:	42                   	inc    edx
c000c941:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c945:	4f                   	dec    edi
c000c946:	2e 04 04             	cs add al,0x4
c000c949:	07                   	pop    es
c000c94a:	00 00                	add    BYTE PTR [eax],al
c000c94c:	00 2e                	add    BYTE PTR [esi],ch
c000c94e:	08 4b 2e             	or     BYTE PTR [ebx+0x2e],cl
c000c951:	0c 46                	or     al,0x46
c000c953:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c957:	14 45                	adc    al,0x45
c000c959:	2e 18 4a 2e          	sbb    BYTE PTR cs:[edx+0x2e],cl
c000c95d:	1c 45                	sbb    al,0x45
c000c95f:	2e 20 45 2e          	and    BYTE PTR cs:[ebp+0x2e],al
c000c963:	24 48                	and    al,0x48
c000c965:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000c96a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c96e:	04 c5                	add    al,0xc5
c000c970:	1c 00                	sbb    al,0x0
c000c972:	00 00                	add    BYTE PTR [eax],al
c000c974:	d4 0d                	aam    0xd
c000c976:	00 00                	add    BYTE PTR [eax],al
c000c978:	86 9c 00 c0 12 00 00 	xchg   BYTE PTR [eax+eax*1+0x12c0],bl
c000c97f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c982:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c988:	44                   	inc    esp
c000c989:	0c 04                	or     al,0x4
c000c98b:	04 c5                	add    al,0xc5
c000c98d:	00 00                	add    BYTE PTR [eax],al
c000c98f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c992:	00 00                	add    BYTE PTR [eax],al
c000c994:	f4                   	hlt    
c000c995:	0d 00 00 98 9c       	or     eax,0x9c980000
c000c99a:	00 c0                	add    al,al
c000c99c:	22 00                	and    al,BYTE PTR [eax]
c000c99e:	00 00                	add    BYTE PTR [eax],al
c000c9a0:	41                   	inc    ecx
c000c9a1:	0e                   	push   cs
c000c9a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c9a8:	44                   	inc    esp
c000c9a9:	0c 04                	or     al,0x4
c000c9ab:	04 c5                	add    al,0xc5
c000c9ad:	00 00                	add    BYTE PTR [eax],al
c000c9af:	00 4c 00 00          	add    BYTE PTR [eax+eax*1+0x0],cl
c000c9b3:	00 14 0e             	add    BYTE PTR [esi+ecx*1],dl
c000c9b6:	00 00                	add    BYTE PTR [eax],al
c000c9b8:	ba 9c 00 c0 70       	mov    edx,0x70c0009c
c000c9bd:	00 00                	add    BYTE PTR [eax],al
c000c9bf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c9c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c9c8:	46                   	inc    esi
c000c9c9:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c000c9d0:	2e 04 04             	cs add al,0x4
c000c9d3:	13 00                	adc    eax,DWORD PTR [eax]
c000c9d5:	00 00                	add    BYTE PTR [eax],al
c000c9d7:	2e 00 52 2e          	add    BYTE PTR cs:[edx+0x2e],dl
c000c9db:	04 04                	add    al,0x4
c000c9dd:	08 00                	or     BYTE PTR [eax],al
c000c9df:	00 00                	add    BYTE PTR [eax],al
c000c9e1:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000c9e5:	14 51                	adc    al,0x51
c000c9e7:	2e 18 47 2e          	sbb    BYTE PTR cs:[edi+0x2e],al
c000c9eb:	1c 41                	sbb    al,0x41
c000c9ed:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c9f1:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c000c9f4:	41                   	inc    ecx
c000c9f5:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c9f9:	0c 04                	or     al,0x4
c000c9fb:	04 c5                	add    al,0xc5
c000c9fd:	00 00                	add    BYTE PTR [eax],al
c000c9ff:	00 64 00 00          	add    BYTE PTR [eax+eax*1+0x0],ah
c000ca03:	00 64 0e 00          	add    BYTE PTR [esi+ecx*1+0x0],ah
c000ca07:	00 2a                	add    BYTE PTR [edx],ch
c000ca09:	9d                   	popf   
c000ca0a:	00 c0                	add    al,al
c000ca0c:	6a 00                	push   0x0
c000ca0e:	00 00                	add    BYTE PTR [eax],al
c000ca10:	41                   	inc    ecx
c000ca11:	0e                   	push   cs
c000ca12:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ca18:	46                   	inc    esi
c000ca19:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c000ca20:	2e 04 04             	cs add al,0x4
c000ca23:	03 00                	add    eax,DWORD PTR [eax]
c000ca25:	00 00                	add    BYTE PTR [eax],al
c000ca27:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000ca2b:	04 04                	add    al,0x4
c000ca2d:	01 00                	add    DWORD PTR [eax],eax
c000ca2f:	00 00                	add    BYTE PTR [eax],al
c000ca31:	2e 00 4c 2e 04       	add    BYTE PTR cs:[esi+ebp*1+0x4],cl
c000ca36:	04 03                	add    al,0x3
c000ca38:	00 00                	add    BYTE PTR [eax],al
c000ca3a:	00 2e                	add    BYTE PTR [esi],ch
c000ca3c:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c000ca3f:	04 04                	add    al,0x4
c000ca41:	01 00                	add    DWORD PTR [eax],eax
c000ca43:	00 00                	add    BYTE PTR [eax],al
c000ca45:	2e 00 45 2e          	add    BYTE PTR cs:[ebp+0x2e],al
c000ca49:	04 04                	add    al,0x4
c000ca4b:	02 00                	add    al,BYTE PTR [eax]
c000ca4d:	00 00                	add    BYTE PTR [eax],al
c000ca4f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ca53:	0c 41                	or     al,0x41
c000ca55:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000ca59:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000ca5c:	41                   	inc    ecx
c000ca5d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ca61:	0c 04                	or     al,0x4
c000ca63:	04 c5                	add    al,0xc5
c000ca65:	00 00                	add    BYTE PTR [eax],al
c000ca67:	00 7c 00 00          	add    BYTE PTR [eax+eax*1+0x0],bh
c000ca6b:	00 cc                	add    ah,cl
c000ca6d:	0e                   	push   cs
c000ca6e:	00 00                	add    BYTE PTR [eax],al
c000ca70:	94                   	xchg   esp,eax
c000ca71:	9d                   	popf   
c000ca72:	00 c0                	add    al,al
c000ca74:	5a                   	pop    edx
c000ca75:	00 00                	add    BYTE PTR [eax],al
c000ca77:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ca7a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ca80:	42                   	inc    edx
c000ca81:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000ca85:	44                   	inc    esp
c000ca86:	2e 04 04             	cs add al,0x4
c000ca89:	01 00                	add    DWORD PTR [eax],eax
c000ca8b:	00 00                	add    BYTE PTR [eax],al
c000ca8d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ca91:	0c 42                	or     al,0x42
c000ca93:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca97:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000ca9a:	04 04                	add    al,0x4
c000ca9c:	01 00                	add    DWORD PTR [eax],eax
c000ca9e:	00 00                	add    BYTE PTR [eax],al
c000caa0:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000caa4:	0c 41                	or     al,0x41
c000caa6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000caaa:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000caad:	04 04                	add    al,0x4
c000caaf:	01 00                	add    DWORD PTR [eax],eax
c000cab1:	00 00                	add    BYTE PTR [eax],al
c000cab3:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cab7:	0c 42                	or     al,0x42
c000cab9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cabd:	04 04                	add    al,0x4
c000cabf:	02 00                	add    al,BYTE PTR [eax]
c000cac1:	00 00                	add    BYTE PTR [eax],al
c000cac3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cac7:	0c 42                	or     al,0x42
c000cac9:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cacd:	0c 41                	or     al,0x41
c000cacf:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cad3:	0c 42                	or     al,0x42
c000cad5:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000cad9:	41                   	inc    ecx
c000cada:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cade:	04 c5                	add    al,0xc5
c000cae0:	41                   	inc    ecx
c000cae1:	13 03                	adc    eax,DWORD PTR [ebx]
c000cae3:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000cae6:	00 00                	add    BYTE PTR [eax],al
c000cae8:	28 00                	sub    BYTE PTR [eax],al
c000caea:	00 00                	add    BYTE PTR [eax],al
c000caec:	4c                   	dec    esp
c000caed:	0f 00 00             	sldt   WORD PTR [eax]
c000caf0:	f0 9d                	lock popf 
c000caf2:	00 c0                	add    al,al
c000caf4:	5f                   	pop    edi
c000caf5:	00 00                	add    BYTE PTR [eax],al
c000caf7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cafa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb00:	45                   	inc    ebp
c000cb01:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000cb04:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c000cb08:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c000cb0b:	41                   	inc    ecx
c000cb0c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cb10:	0c 04                	or     al,0x4
c000cb12:	04 c5                	add    al,0xc5
c000cb14:	28 00                	sub    BYTE PTR [eax],al
c000cb16:	00 00                	add    BYTE PTR [eax],al
c000cb18:	78 0f                	js     c000cb29 <_edata+0xf89>
c000cb1a:	00 00                	add    BYTE PTR [eax],al
c000cb1c:	4f                   	dec    edi
c000cb1d:	9e                   	sahf   
c000cb1e:	00 c0                	add    al,al
c000cb20:	44                   	inc    esp
c000cb21:	00 00                	add    BYTE PTR [eax],al
c000cb23:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cb26:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb2c:	44                   	inc    esp
c000cb2d:	86 03                	xchg   BYTE PTR [ebx],al
c000cb2f:	47                   	inc    edi
c000cb30:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c000cb34:	00 00                	add    BYTE PTR [eax],al
c000cb36:	00 c3                	add    bl,al
c000cb38:	41                   	inc    ecx
c000cb39:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cb3d:	04 c5                	add    al,0xc5
c000cb3f:	00 20                	add    BYTE PTR [eax],ah
c000cb41:	00 00                	add    BYTE PTR [eax],al
c000cb43:	00 a4 0f 00 00 93 9e 	add    BYTE PTR [edi+ecx*1-0x616d0000],ah
c000cb4a:	00 c0                	add    al,al
c000cb4c:	3c 00                	cmp    al,0x0
c000cb4e:	00 00                	add    BYTE PTR [eax],al
c000cb50:	41                   	inc    ecx
c000cb51:	0e                   	push   cs
c000cb52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb58:	41                   	inc    ecx
c000cb59:	83 03 76             	add    DWORD PTR [ebx],0x76
c000cb5c:	c3                   	ret    
c000cb5d:	41                   	inc    ecx
c000cb5e:	0c 04                	or     al,0x4
c000cb60:	04 c5                	add    al,0xc5
c000cb62:	00 00                	add    BYTE PTR [eax],al
c000cb64:	20 00                	and    BYTE PTR [eax],al
c000cb66:	00 00                	add    BYTE PTR [eax],al
c000cb68:	c8 0f 00 00          	enter  0xf,0x0
c000cb6c:	cf                   	iret   
c000cb6d:	9e                   	sahf   
c000cb6e:	00 c0                	add    al,al
c000cb70:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000cb73:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cb76:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000cb7c:	46                   	inc    esi
c000cb7d:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c000cb80:	c3                   	ret    
c000cb81:	41                   	inc    ecx
c000cb82:	0c 04                	or     al,0x4
c000cb84:	04 c5                	add    al,0xc5
c000cb86:	00 00                	add    BYTE PTR [eax],al
c000cb88:	1c 00                	sbb    al,0x0
c000cb8a:	00 00                	add    BYTE PTR [eax],al
c000cb8c:	ec                   	in     al,dx
c000cb8d:	0f 00 00             	sldt   WORD PTR [eax]
c000cb90:	fd                   	std    
c000cb91:	9e                   	sahf   
c000cb92:	00 c0                	add    al,al
c000cb94:	27                   	daa    
c000cb95:	00 00                	add    BYTE PTR [eax],al
c000cb97:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cb9a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000cba0:	5e                   	pop    esi
c000cba1:	0c 04                	or     al,0x4
c000cba3:	04 c5                	add    al,0xc5
c000cba5:	00 00                	add    BYTE PTR [eax],al
c000cba7:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000cbaa:	00 00                	add    BYTE PTR [eax],al
c000cbac:	0c 10                	or     al,0x10
c000cbae:	00 00                	add    BYTE PTR [eax],al
c000cbb0:	24 9f                	and    al,0x9f
c000cbb2:	00 c0                	add    al,al
c000cbb4:	a1 00 00 00 41       	mov    eax,ds:0x41000000
c000cbb9:	0e                   	push   cs
c000cbba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cbc0:	42                   	inc    edx
c000cbc1:	83 03 02             	add    DWORD PTR [ebx],0x2
c000cbc4:	92                   	xchg   edx,eax
c000cbc5:	0a c3                	or     al,bl
c000cbc7:	41                   	inc    ecx
c000cbc8:	0c 04                	or     al,0x4
c000cbca:	04 c5                	add    al,0xc5
c000cbcc:	45                   	inc    ebp
c000cbcd:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c000cbd0:	41                   	inc    ecx
c000cbd1:	0c 04                	or     al,0x4
c000cbd3:	04 c5                	add    al,0xc5
c000cbd5:	00 00                	add    BYTE PTR [eax],al
c000cbd7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000cbda:	00 00                	add    BYTE PTR [eax],al
c000cbdc:	3c 10                	cmp    al,0x10
c000cbde:	00 00                	add    BYTE PTR [eax],al
c000cbe0:	c5 9f 00 c0 28 00    	lds    ebx,FWORD PTR [edi+0x28c000]
c000cbe6:	00 00                	add    BYTE PTR [eax],al
c000cbe8:	41                   	inc    ecx
c000cbe9:	0e                   	push   cs
c000cbea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cbf0:	41                   	inc    ecx
c000cbf1:	86 03                	xchg   BYTE PTR [ebx],al
c000cbf3:	45                   	inc    ebp
c000cbf4:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c000cbf8:	00 00                	add    BYTE PTR [eax],al
c000cbfa:	00 2e                	add    BYTE PTR [esi],ch
c000cbfc:	04 04                	add    al,0x4
c000cbfe:	01 00                	add    DWORD PTR [eax],eax
c000cc00:	00 00                	add    BYTE PTR [eax],al
c000cc02:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000cc06:	04 04                	add    al,0x4
c000cc08:	01 00                	add    DWORD PTR [eax],eax
c000cc0a:	00 00                	add    BYTE PTR [eax],al
c000cc0c:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000cc10:	41                   	inc    ecx
c000cc11:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cc15:	04 c5                	add    al,0xc5
c000cc17:	00 38                	add    BYTE PTR [eax],bh
c000cc19:	00 00                	add    BYTE PTR [eax],al
c000cc1b:	00 7c 10 00          	add    BYTE PTR [eax+edx*1+0x0],bh
c000cc1f:	00 ed                	add    ch,ch
c000cc21:	9f                   	lahf   
c000cc22:	00 c0                	add    al,al
c000cc24:	3a 00                	cmp    al,BYTE PTR [eax]
c000cc26:	00 00                	add    BYTE PTR [eax],al
c000cc28:	41                   	inc    ecx
c000cc29:	0e                   	push   cs
c000cc2a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000cc30:	47                   	inc    edi
c000cc31:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000cc35:	51                   	push   ecx
c000cc36:	2e 04 04             	cs add al,0x4
c000cc39:	04 00                	add    al,0x0
c000cc3b:	00 00                	add    BYTE PTR [eax],al
c000cc3d:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000cc41:	0c 46                	or     al,0x46
c000cc43:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000cc47:	14 48                	adc    al,0x48
c000cc49:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000cc4e:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000cc55:	00 00                	add    BYTE PTR [eax],al
c000cc57:	00 b8 10 00 00 27    	add    BYTE PTR [eax+0x27000010],bh
c000cc5d:	a0 00 c0 3a 00       	mov    al,ds:0x3ac000
c000cc62:	00 00                	add    BYTE PTR [eax],al
c000cc64:	41                   	inc    ecx
c000cc65:	0e                   	push   cs
c000cc66:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000cc6c:	47                   	inc    edi
c000cc6d:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000cc71:	51                   	push   ecx
c000cc72:	2e 04 04             	cs add al,0x4
c000cc75:	04 00                	add    al,0x0
c000cc77:	00 00                	add    BYTE PTR [eax],al
c000cc79:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000cc7d:	0c 46                	or     al,0x46
c000cc7f:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000cc83:	14 48                	adc    al,0x48
c000cc85:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000cc8a:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000cc91:	00 00                	add    BYTE PTR [eax],al
c000cc93:	00 f4                	add    ah,dh
c000cc95:	10 00                	adc    BYTE PTR [eax],al
c000cc97:	00 64 a0 00          	add    BYTE PTR [eax+eiz*4+0x0],ah
c000cc9b:	c0 47 00 00          	rol    BYTE PTR [edi+0x0],0x0
c000cc9f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cca2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cca8:	45                   	inc    ebp
c000cca9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000ccad:	52                   	push   edx
c000ccae:	2e 04 04             	cs add al,0x4
c000ccb1:	05 00 00 00 2e       	add    eax,0x2e000000
c000ccb6:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ccb9:	0c 45                	or     al,0x45
c000ccbb:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000ccbf:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000ccc2:	41                   	inc    ecx
c000ccc3:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000ccc7:	04 c5                	add    al,0xc5
c000ccc9:	00 00                	add    BYTE PTR [eax],al
c000cccb:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000ccce:	00 00                	add    BYTE PTR [eax],al
c000ccd0:	30 11                	xor    BYTE PTR [ecx],dl
c000ccd2:	00 00                	add    BYTE PTR [eax],al
c000ccd4:	ab                   	stos   DWORD PTR es:[edi],eax
c000ccd5:	a0 00 c0 4a 00       	mov    al,ds:0x4ac000
c000ccda:	00 00                	add    BYTE PTR [eax],al
c000ccdc:	41                   	inc    ecx
c000ccdd:	0e                   	push   cs
c000ccde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cce4:	46                   	inc    esi
c000cce5:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c000ccec:	2e 04 04             	cs add al,0x4
c000ccef:	05 00 00 00 2e       	add    eax,0x2e000000
c000ccf4:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ccf7:	0c 45                	or     al,0x45
c000ccf9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccfd:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000cd00:	41                   	inc    ecx
c000cd01:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cd05:	0c 04                	or     al,0x4
c000cd07:	04 c5                	add    al,0xc5
c000cd09:	00 00                	add    BYTE PTR [eax],al
c000cd0b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000cd0e:	00 00                	add    BYTE PTR [eax],al
c000cd10:	70 11                	jo     c000cd23 <_edata+0x1183>
c000cd12:	00 00                	add    BYTE PTR [eax],al
c000cd14:	f5                   	cmc    
c000cd15:	a0 00 c0 42 00       	mov    al,ds:0x42c000
c000cd1a:	00 00                	add    BYTE PTR [eax],al
c000cd1c:	41                   	inc    ecx
c000cd1d:	0e                   	push   cs
c000cd1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd24:	41                   	inc    ecx
c000cd25:	86 03                	xchg   BYTE PTR [ebx],al
c000cd27:	44                   	inc    esp
c000cd28:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c000cd2c:	00 00                	add    BYTE PTR [eax],al
c000cd2e:	00 2e                	add    BYTE PTR [esi],ch
c000cd30:	04 04                	add    al,0x4
c000cd32:	05 00 00 00 2e       	add    eax,0x2e000000
c000cd37:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cd3a:	0c 45                	or     al,0x45
c000cd3c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd40:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000cd43:	41                   	inc    ecx
c000cd44:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cd48:	04 c5                	add    al,0xc5
c000cd4a:	00 00                	add    BYTE PTR [eax],al
c000cd4c:	20 00                	and    BYTE PTR [eax],al
c000cd4e:	00 00                	add    BYTE PTR [eax],al
c000cd50:	b0 11                	mov    al,0x11
c000cd52:	00 00                	add    BYTE PTR [eax],al
c000cd54:	37                   	aaa    
c000cd55:	a1 00 c0 1a 00       	mov    eax,ds:0x1ac000
c000cd5a:	00 00                	add    BYTE PTR [eax],al
c000cd5c:	41                   	inc    ecx
c000cd5d:	0e                   	push   cs
c000cd5e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000cd64:	44                   	inc    esp
c000cd65:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c000cd68:	c3                   	ret    
c000cd69:	41                   	inc    ecx
c000cd6a:	0c 04                	or     al,0x4
c000cd6c:	04 c5                	add    al,0xc5
c000cd6e:	00 00                	add    BYTE PTR [eax],al
c000cd70:	44                   	inc    esp
c000cd71:	00 00                	add    BYTE PTR [eax],al
c000cd73:	00 d4                	add    ah,dl
c000cd75:	11 00                	adc    DWORD PTR [eax],eax
c000cd77:	00 54 a1 00          	add    BYTE PTR [ecx+eiz*4+0x0],dl
c000cd7b:	c0 43 00 00          	rol    BYTE PTR [ebx+0x0],0x0
c000cd7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cd82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd88:	41                   	inc    ecx
c000cd89:	86 03                	xchg   BYTE PTR [ebx],al
c000cd8b:	45                   	inc    ebp
c000cd8c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000cd90:	00 00                	add    BYTE PTR [eax],al
c000cd92:	00 2e                	add    BYTE PTR [esi],ch
c000cd94:	0c 46                	or     al,0x46
c000cd96:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000cd9a:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cd9d:	04 04                	add    al,0x4
c000cd9f:	05 00 00 00 2e       	add    eax,0x2e000000
c000cda4:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cda7:	0c 45                	or     al,0x45
c000cda9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cdad:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000cdb1:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cdb5:	04 c5                	add    al,0xc5
c000cdb7:	00 28                	add    BYTE PTR [eax],ch
c000cdb9:	00 00                	add    BYTE PTR [eax],al
c000cdbb:	00 1c 12             	add    BYTE PTR [edx+edx*1],bl
c000cdbe:	00 00                	add    BYTE PTR [eax],al
c000cdc0:	97                   	xchg   edi,eax
c000cdc1:	a1 00 c0 26 00       	mov    eax,ds:0x26c000
c000cdc6:	00 00                	add    BYTE PTR [eax],al
c000cdc8:	41                   	inc    ecx
c000cdc9:	0e                   	push   cs
c000cdca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cdd0:	43                   	inc    ebx
c000cdd1:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c000cdd5:	0c 41                	or     al,0x41
c000cdd7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cddb:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000cdde:	0c 04                	or     al,0x4
c000cde0:	04 00                	add    al,0x0
c000cde2:	00 00                	add    BYTE PTR [eax],al
c000cde4:	98                   	cwde   
c000cde5:	00 00                	add    BYTE PTR [eax],al
c000cde7:	00 48 12             	add    BYTE PTR [eax+0x12],cl
c000cdea:	00 00                	add    BYTE PTR [eax],al
c000cdec:	bd a1 00 c0 da       	mov    ebp,0xdac000a1
c000cdf1:	00 00                	add    BYTE PTR [eax],al
c000cdf3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cdf6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cdfc:	46                   	inc    esi
c000cdfd:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c000ce04:	2e 04 04             	cs add al,0x4
c000ce07:	04 00                	add    al,0x0
c000ce09:	00 00                	add    BYTE PTR [eax],al
c000ce0b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce0f:	0c 41                	or     al,0x41
c000ce11:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce15:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000ce18:	04 04                	add    al,0x4
c000ce1a:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce1f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce22:	0c 45                	or     al,0x45
c000ce24:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce28:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ce2b:	04 04                	add    al,0x4
c000ce2d:	04 00                	add    al,0x0
c000ce2f:	00 00                	add    BYTE PTR [eax],al
c000ce31:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce35:	0c 41                	or     al,0x41
c000ce37:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce3b:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000ce3e:	04 04                	add    al,0x4
c000ce40:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce45:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce48:	0c 45                	or     al,0x45
c000ce4a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce4e:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ce51:	04 04                	add    al,0x4
c000ce53:	04 00                	add    al,0x0
c000ce55:	00 00                	add    BYTE PTR [eax],al
c000ce57:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce5b:	0c 41                	or     al,0x41
c000ce5d:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c000ce62:	5a                   	pop    edx
c000ce63:	2e 04 04             	cs add al,0x4
c000ce66:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce6b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce6e:	0c 45                	or     al,0x45
c000ce70:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce74:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000ce77:	41                   	inc    ecx
c000ce78:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ce7c:	0c 04                	or     al,0x4
c000ce7e:	04 c5                	add    al,0xc5
c000ce80:	64 00 00             	add    BYTE PTR fs:[eax],al
c000ce83:	00 e4                	add    ah,ah
c000ce85:	12 00                	adc    al,BYTE PTR [eax]
c000ce87:	00 97 a2 00 c0 8c    	add    BYTE PTR [edi-0x733fff5e],dl
c000ce8d:	00 00                	add    BYTE PTR [eax],al
c000ce8f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ce92:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce98:	46                   	inc    esi
c000ce99:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c000cea0:	2e 04 04             	cs add al,0x4
c000cea3:	05 00 00 00 2e       	add    eax,0x2e000000
c000cea8:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ceab:	0c 45                	or     al,0x45
c000cead:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ceb1:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000ceb4:	0c 44                	or     al,0x44
c000ceb6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ceba:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000cebd:	0c 41                	or     al,0x41
c000cebf:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cec3:	0c 43                	or     al,0x43
c000cec5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cec9:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000cecc:	04 04                	add    al,0x4
c000cece:	05 00 00 00 2e       	add    eax,0x2e000000
c000ced3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ced6:	0c 45                	or     al,0x45
c000ced8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cedc:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000cedf:	41                   	inc    ecx
c000cee0:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cee4:	0c 04                	or     al,0x4
c000cee6:	04 c5                	add    al,0xc5
c000cee8:	40                   	inc    eax
c000cee9:	00 00                	add    BYTE PTR [eax],al
c000ceeb:	00 4c 13 00          	add    BYTE PTR [ebx+edx*1+0x0],cl
c000ceef:	00 23                	add    BYTE PTR [ebx],ah
c000cef1:	a3 00 c0 5b 00       	mov    ds:0x5bc000,eax
c000cef6:	00 00                	add    BYTE PTR [eax],al
c000cef8:	41                   	inc    ecx
c000cef9:	0e                   	push   cs
c000cefa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf00:	42                   	inc    edx
c000cf01:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cf05:	51                   	push   ecx
c000cf06:	2e 0c 44             	cs or  al,0x44
c000cf09:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000cf0d:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c000cf10:	04 04                	add    al,0x4
c000cf12:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf17:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf1a:	0c 45                	or     al,0x45
c000cf1c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf20:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000cf23:	41                   	inc    ecx
c000cf24:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf28:	04 c5                	add    al,0xc5
c000cf2a:	00 00                	add    BYTE PTR [eax],al
c000cf2c:	54                   	push   esp
c000cf2d:	00 00                	add    BYTE PTR [eax],al
c000cf2f:	00 90 13 00 00 7e    	add    BYTE PTR [eax+0x7e000013],dl
c000cf35:	a3 00 c0 78 00       	mov    ds:0x78c000,eax
c000cf3a:	00 00                	add    BYTE PTR [eax],al
c000cf3c:	41                   	inc    ecx
c000cf3d:	0e                   	push   cs
c000cf3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf44:	42                   	inc    edx
c000cf45:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cf49:	53                   	push   ebx
c000cf4a:	2e 04 04             	cs add al,0x4
c000cf4d:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf52:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf55:	0c 45                	or     al,0x45
c000cf57:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf5b:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c000cf5e:	c3                   	ret    
c000cf5f:	41                   	inc    ecx
c000cf60:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf64:	04 c5                	add    al,0xc5
c000cf66:	41                   	inc    ecx
c000cf67:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c000cf6a:	04 04                	add    al,0x4
c000cf6c:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf71:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf74:	0c 45                	or     al,0x45
c000cf76:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf7a:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c000cf7d:	41                   	inc    ecx
c000cf7e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf82:	04 c5                	add    al,0xc5
c000cf84:	28 00                	sub    BYTE PTR [eax],al
c000cf86:	00 00                	add    BYTE PTR [eax],al
c000cf88:	e8 13 00 00 18       	call   d800cfa0 <_kernel_end+0x17fdf864>
c000cf8d:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000cf8e:	00 c0                	add    al,al
c000cf90:	1a 00                	sbb    al,BYTE PTR [eax]
c000cf92:	00 00                	add    BYTE PTR [eax],al
c000cf94:	41                   	inc    ecx
c000cf95:	0e                   	push   cs
c000cf96:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf9c:	41                   	inc    ecx
c000cf9d:	86 03                	xchg   BYTE PTR [ebx],al
c000cf9f:	44                   	inc    esp
c000cfa0:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c000cfa4:	00 00                	add    BYTE PTR [eax],al
c000cfa6:	00 c3                	add    bl,al
c000cfa8:	41                   	inc    ecx
c000cfa9:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cfad:	04 c5                	add    al,0xc5
c000cfaf:	00 38                	add    BYTE PTR [eax],bh
c000cfb1:	00 00                	add    BYTE PTR [eax],al
c000cfb3:	00 14 14             	add    BYTE PTR [esp+edx*1],dl
c000cfb6:	00 00                	add    BYTE PTR [eax],al
c000cfb8:	32 a4 00 c0 5d 00 00 	xor    ah,BYTE PTR [eax+eax*1+0x5dc0]
c000cfbf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cfc2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cfc8:	44                   	inc    esp
c000cfc9:	2e 04 83             	cs add al,0x83
c000cfcc:	03 48 2e             	add    ecx,DWORD PTR [eax+0x2e]
c000cfcf:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cfd2:	0c 41                	or     al,0x41
c000cfd4:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000cfd8:	0c 41                	or     al,0x41
c000cfda:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000cfde:	0c 44                	or     al,0x44
c000cfe0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cfe4:	00 71 c5             	add    BYTE PTR [ecx-0x3b],dh
c000cfe7:	0c 04                	or     al,0x4
c000cfe9:	04 c3                	add    al,0xc3
c000cfeb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000cfee:	00 00                	add    BYTE PTR [eax],al
c000cff0:	50                   	push   eax
c000cff1:	14 00                	adc    al,0x0
c000cff3:	00 8f a4 00 c0 0c    	add    BYTE PTR [edi+0xcc000a4],cl
c000cff9:	00 00                	add    BYTE PTR [eax],al
c000cffb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cffe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d004:	48                   	dec    eax
c000d005:	0c 04                	or     al,0x4
c000d007:	04 c5                	add    al,0xc5
c000d009:	00 00                	add    BYTE PTR [eax],al
c000d00b:	00 40 00             	add    BYTE PTR [eax+0x0],al
c000d00e:	00 00                	add    BYTE PTR [eax],al
c000d010:	70 14                	jo     c000d026 <_edata+0x1486>
c000d012:	00 00                	add    BYTE PTR [eax],al
c000d014:	9b                   	fwait
c000d015:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000d016:	00 c0                	add    al,al
c000d018:	56                   	push   esi
c000d019:	00 00                	add    BYTE PTR [eax],al
c000d01b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d01e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d024:	43                   	inc    ebx
c000d025:	2e 0c 45             	cs or  al,0x45
c000d028:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d02c:	04 04                	add    al,0x4
c000d02e:	02 00                	add    al,BYTE PTR [eax]
c000d030:	00 00                	add    BYTE PTR [eax],al
c000d032:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d036:	0c 41                	or     al,0x41
c000d038:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d03c:	0c 41                	or     al,0x41
c000d03e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d042:	0c 45                	or     al,0x45
c000d044:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d048:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d04b:	0c 04                	or     al,0x4
c000d04d:	04 00                	add    al,0x0
c000d04f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d052:	00 00                	add    BYTE PTR [eax],al
c000d054:	b4 14                	mov    ah,0x14
c000d056:	00 00                	add    BYTE PTR [eax],al
c000d058:	f1                   	icebp  
c000d059:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000d05a:	00 c0                	add    al,al
c000d05c:	56                   	push   esi
c000d05d:	00 00                	add    BYTE PTR [eax],al
c000d05f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d062:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d068:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c000d06b:	04 04                	add    al,0x4
c000d06d:	c5 00                	lds    eax,FWORD PTR [eax]
c000d06f:	00 b8 00 00 00 d4    	add    BYTE PTR [eax-0x2c000000],bh
c000d075:	14 00                	adc    al,0x0
c000d077:	00 47 a5             	add    BYTE PTR [edi-0x5b],al
c000d07a:	00 c0                	add    al,al
c000d07c:	bf 00 00 00 41       	mov    edi,0x41000000
c000d081:	0e                   	push   cs
c000d082:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d088:	41                   	inc    ecx
c000d089:	86 03                	xchg   BYTE PTR [ebx],al
c000d08b:	47                   	inc    edi
c000d08c:	2e 0c 42             	cs or  al,0x42
c000d08f:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c000d096:	00 00                	add    BYTE PTR [eax],al
c000d098:	2e 04 04             	cs add al,0x4
c000d09b:	01 00                	add    DWORD PTR [eax],eax
c000d09d:	00 00                	add    BYTE PTR [eax],al
c000d09f:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d0a3:	0c 41                	or     al,0x41
c000d0a5:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000d0a9:	04 04                	add    al,0x4
c000d0ab:	03 00                	add    eax,DWORD PTR [eax]
c000d0ad:	00 00                	add    BYTE PTR [eax],al
c000d0af:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d0b3:	0c 44                	or     al,0x44
c000d0b5:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000d0ba:	41                   	inc    ecx
c000d0bb:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0bf:	0c 45                	or     al,0x45
c000d0c1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0c5:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d0c8:	04 04                	add    al,0x4
c000d0ca:	05 00 00 00 2e       	add    eax,0x2e000000
c000d0cf:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d0d2:	0c 45                	or     al,0x45
c000d0d4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0d8:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d0db:	04 04                	add    al,0x4
c000d0dd:	01 00                	add    DWORD PTR [eax],eax
c000d0df:	00 00                	add    BYTE PTR [eax],al
c000d0e1:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0e5:	0c 45                	or     al,0x45
c000d0e7:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000d0eb:	0c 41                	or     al,0x41
c000d0ed:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0f1:	0c 45                	or     al,0x45
c000d0f3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0f7:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d0fa:	04 04                	add    al,0x4
c000d0fc:	05 00 00 00 2e       	add    eax,0x2e000000
c000d101:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d104:	0c 45                	or     al,0x45
c000d106:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d10a:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d10d:	04 04                	add    al,0x4
c000d10f:	01 00                	add    DWORD PTR [eax],eax
c000d111:	00 00                	add    BYTE PTR [eax],al
c000d113:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d117:	0c 45                	or     al,0x45
c000d119:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d11d:	41                   	inc    ecx
c000d11e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d122:	04 c5                	add    al,0xc5
c000d124:	41                   	inc    ecx
c000d125:	13 03                	adc    eax,DWORD PTR [ebx]
c000d127:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d12a:	00 00                	add    BYTE PTR [eax],al
c000d12c:	a0 00 00 00 90       	mov    al,ds:0x90000000
c000d131:	15 00 00 06 a6       	adc    eax,0xa6060000
c000d136:	00 c0                	add    al,al
c000d138:	f7 00 00 00 41 0e    	test   DWORD PTR [eax],0xe410000
c000d13e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d144:	42                   	inc    edx
c000d145:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d149:	4f                   	dec    edi
c000d14a:	2e 04 04             	cs add al,0x4
c000d14d:	01 00                	add    DWORD PTR [eax],eax
c000d14f:	00 00                	add    BYTE PTR [eax],al
c000d151:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d156:	45                   	inc    ebp
c000d157:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d15b:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d15e:	04 04                	add    al,0x4
c000d160:	05 00 00 00 2e       	add    eax,0x2e000000
c000d165:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d168:	0c 45                	or     al,0x45
c000d16a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d16e:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d171:	04 04                	add    al,0x4
c000d173:	01 00                	add    DWORD PTR [eax],eax
c000d175:	00 00                	add    BYTE PTR [eax],al
c000d177:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d17b:	0c 45                	or     al,0x45
c000d17d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d181:	00 56 2e             	add    BYTE PTR [esi+0x2e],dl
c000d184:	0c 45                	or     al,0x45
c000d186:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c000d18a:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d18d:	04 04                	add    al,0x4
c000d18f:	05 00 00 00 2e       	add    eax,0x2e000000
c000d194:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d197:	0c 45                	or     al,0x45
c000d199:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d19d:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c000d1a0:	04 04                	add    al,0x4
c000d1a2:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1a7:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d1aa:	0c 45                	or     al,0x45
c000d1ac:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1b0:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d1b3:	0c 45                	or     al,0x45
c000d1b5:	2e 10 55 2e          	adc    BYTE PTR cs:[ebp+0x2e],dl
c000d1b9:	0c 41                	or     al,0x41
c000d1bb:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d1bf:	0c 41                	or     al,0x41
c000d1c1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1c5:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000d1c9:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d1cd:	04 c5                	add    al,0xc5
c000d1cf:	00 38                	add    BYTE PTR [eax],bh
c000d1d1:	00 00                	add    BYTE PTR [eax],al
c000d1d3:	00 34 16             	add    BYTE PTR [esi+edx*1],dh
c000d1d6:	00 00                	add    BYTE PTR [eax],al
c000d1d8:	fd                   	std    
c000d1d9:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c000d1da:	00 c0                	add    al,al
c000d1dc:	4b                   	dec    ebx
c000d1dd:	00 00                	add    BYTE PTR [eax],al
c000d1df:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d1e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d1e8:	42                   	inc    edx
c000d1e9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d1ed:	4d                   	dec    ebp
c000d1ee:	2e 04 04             	cs add al,0x4
c000d1f1:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1f6:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d1f9:	0c 45                	or     al,0x45
c000d1fb:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1ff:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c000d202:	41                   	inc    ecx
c000d203:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d207:	04 c5                	add    al,0xc5
c000d209:	00 00                	add    BYTE PTR [eax],al
c000d20b:	00 88 00 00 00 70    	add    BYTE PTR [eax+0x70000000],cl
c000d211:	16                   	push   ss
c000d212:	00 00                	add    BYTE PTR [eax],al
c000d214:	48                   	dec    eax
c000d215:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d216:	00 c0                	add    al,al
c000d218:	a2 00 00 00 41       	mov    ds:0x41000000,al
c000d21d:	0e                   	push   cs
c000d21e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d224:	46                   	inc    esi
c000d225:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c000d22c:	2e 04 04             	cs add al,0x4
c000d22f:	01 00                	add    DWORD PTR [eax],eax
c000d231:	00 00                	add    BYTE PTR [eax],al
c000d233:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d238:	45                   	inc    ebp
c000d239:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d23d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d240:	04 04                	add    al,0x4
c000d242:	05 00 00 00 2e       	add    eax,0x2e000000
c000d247:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d24a:	0c 45                	or     al,0x45
c000d24c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d250:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d253:	04 04                	add    al,0x4
c000d255:	01 00                	add    DWORD PTR [eax],eax
c000d257:	00 00                	add    BYTE PTR [eax],al
c000d259:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d25d:	0c 45                	or     al,0x45
c000d25f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d263:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d266:	04 04                	add    al,0x4
c000d268:	05 00 00 00 2e       	add    eax,0x2e000000
c000d26d:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d270:	0c 45                	or     al,0x45
c000d272:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d276:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d279:	04 04                	add    al,0x4
c000d27b:	01 00                	add    DWORD PTR [eax],eax
c000d27d:	00 00                	add    BYTE PTR [eax],al
c000d27f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d283:	0c 45                	or     al,0x45
c000d285:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d289:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000d28c:	41                   	inc    ecx
c000d28d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d291:	0c 04                	or     al,0x4
c000d293:	04 c5                	add    al,0xc5
c000d295:	00 00                	add    BYTE PTR [eax],al
c000d297:	00 28                	add    BYTE PTR [eax],ch
c000d299:	00 00                	add    BYTE PTR [eax],al
c000d29b:	00 fc                	add    ah,bh
c000d29d:	16                   	push   ss
c000d29e:	00 00                	add    BYTE PTR [eax],al
c000d2a0:	ec                   	in     al,dx
c000d2a1:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d2a2:	00 c0                	add    al,al
c000d2a4:	ac                   	lods   al,BYTE PTR ds:[esi]
c000d2a5:	00 00                	add    BYTE PTR [eax],al
c000d2a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d2aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d2b0:	42                   	inc    edx
c000d2b1:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d2b4:	03 49 83             	add    ecx,DWORD PTR [ecx-0x7d]
c000d2b7:	05 02 96 c3 41       	add    eax,0x41c39602
c000d2bc:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d2c0:	0c 04                	or     al,0x4
c000d2c2:	04 c5                	add    al,0xc5
c000d2c4:	1c 00                	sbb    al,0x0
c000d2c6:	00 00                	add    BYTE PTR [eax],al
c000d2c8:	28 17                	sub    BYTE PTR [edi],dl
c000d2ca:	00 00                	add    BYTE PTR [eax],al
c000d2cc:	98                   	cwde   
c000d2cd:	a8 00                	test   al,0x0
c000d2cf:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c000d2d2:	00 00                	add    BYTE PTR [eax],al
c000d2d4:	41                   	inc    ecx
c000d2d5:	0e                   	push   cs
c000d2d6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d2dc:	4f                   	dec    edi
c000d2dd:	0c 04                	or     al,0x4
c000d2df:	04 c5                	add    al,0xc5
c000d2e1:	00 00                	add    BYTE PTR [eax],al
c000d2e3:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000d2e6:	00 00                	add    BYTE PTR [eax],al
c000d2e8:	48                   	dec    eax
c000d2e9:	17                   	pop    ss
c000d2ea:	00 00                	add    BYTE PTR [eax],al
c000d2ec:	b0 a8                	mov    al,0xa8
c000d2ee:	00 c0                	add    al,al
c000d2f0:	2f                   	das    
c000d2f1:	00 00                	add    BYTE PTR [eax],al
c000d2f3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d2f6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d2fc:	5c                   	pop    esp
c000d2fd:	0a c5                	or     al,ch
c000d2ff:	0c 04                	or     al,0x4
c000d301:	04 45                	add    al,0x45
c000d303:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c000d306:	0c 04                	or     al,0x4
c000d308:	04 00                	add    al,0x0
	...

Disassembly of section .rodata:

c000d30c <_rodata>:
c000d30c:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c000d30f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d310:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d313:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d318:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d31a:	20 28                	and    BYTE PTR [eax],ch
c000d31c:	50                   	push   eax
c000d31d:	4b                   	dec    ebx
c000d31e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d31f:	29 20                	sub    DWORD PTR [eax],esp
c000d321:	76 65                	jbe    c000d388 <_rodata+0x7c>
c000d323:	72 73                	jb     c000d398 <_rodata+0x8c>
c000d325:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d32c:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d32f:	74 65                	je     c000d396 <_rodata+0x8a>
c000d331:	73 74                	jae    c000d3a7 <_rodata+0x9b>
c000d333:	0a 00                	or     al,BYTE PTR [eax]
c000d335:	43                   	inc    ebx
c000d336:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d337:	70 79                	jo     c000d3b2 <_rodata+0xa6>
c000d339:	72 69                	jb     c000d3a4 <_rodata+0x98>
c000d33b:	67 68 74 20 28 63    	addr16 push 0x63282074
c000d341:	29 20                	sub    DWORD PTR [eax],esp
c000d343:	32 30                	xor    dh,BYTE PTR [eax]
c000d345:	32 31                	xor    dh,BYTE PTR [ecx]
c000d347:	2d 32 30 32 32       	sub    eax,0x32323032
c000d34c:	20 4c 69 6e          	and    BYTE PTR [ecx+ebp*2+0x6e],cl
c000d350:	43                   	inc    ebx
c000d351:	68 65 6e 6a 75       	push   0x756a6e65
c000d356:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d357:	2c 41                	sub    al,0x41
c000d359:	6c                   	ins    BYTE PTR es:[edi],dx
c000d35a:	6c                   	ins    BYTE PTR es:[edi],dx
c000d35b:	20 72 69             	and    BYTE PTR [edx+0x69],dh
c000d35e:	67 68 74 73 20 72    	addr16 push 0x72207374
c000d364:	65 73 65             	gs jae c000d3cc <_rodata+0xc0>
c000d367:	72 76                	jb     c000d3df <_rodata+0xd3>
c000d369:	65 64 2e 0a 0a       	gs fs or cl,BYTE PTR cs:[edx]
c000d36e:	00 43 50             	add    BYTE PTR [ebx+0x50],al
c000d371:	55                   	push   ebp
c000d372:	20 20                	and    BYTE PTR [eax],ah
c000d374:	20 20                	and    BYTE PTR [eax],ah
c000d376:	3a 00                	cmp    al,BYTE PTR [eax]
c000d378:	4d                   	dec    ebp
c000d379:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000d37b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d37c:	72 79                	jb     c000d3f7 <_rodata+0xeb>
c000d37e:	20 3a                	and    BYTE PTR [edx],bh
c000d380:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c000d383:	20 28                	and    BYTE PTR [eax],ch
c000d385:	20 00                	and    BYTE PTR [eax],al
c000d387:	4b                   	dec    ebx
c000d388:	42                   	inc    edx
c000d389:	20 29                	and    BYTE PTR [ecx],ch
c000d38b:	20 00                	and    BYTE PTR [eax],al
c000d38d:	44                   	inc    esp
c000d38e:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c000d395:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000d398:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d399:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d39c:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d3a1:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d3a3:	20 28                	and    BYTE PTR [eax],ch
c000d3a5:	50                   	push   eax
c000d3a6:	4b                   	dec    ebx
c000d3a7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d3a8:	29 20                	sub    DWORD PTR [eax],esp
c000d3aa:	76 65                	jbe    c000d411 <PKn_Version+0x1>
c000d3ac:	72 73                	jb     c000d421 <PKn_Version+0x11>
c000d3ae:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d3b5:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d3b8:	74 65                	je     c000d41f <PKn_Version+0xf>
c000d3ba:	73 74                	jae    c000d430 <PKn_Version+0x20>
c000d3bc:	00 43 6f             	add    BYTE PTR [ebx+0x6f],al
c000d3bf:	70 79                	jo     c000d43a <PKn_Version+0x2a>
c000d3c1:	72 69                	jb     c000d42c <PKn_Version+0x1c>
c000d3c3:	67 68 74 20 28 63    	addr16 push 0x63282074
c000d3c9:	29 20                	sub    DWORD PTR [eax],esp
c000d3cb:	32 30                	xor    dh,BYTE PTR [eax]
c000d3cd:	32 31                	xor    dh,BYTE PTR [ecx]
c000d3cf:	2d 32 30 32 32       	sub    eax,0x32323032
c000d3d4:	20 4c 69 6e          	and    BYTE PTR [ecx+ebp*2+0x6e],cl
c000d3d8:	43                   	inc    ebx
c000d3d9:	68 65 6e 6a 75       	push   0x756a6e65
c000d3de:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d3df:	2c 20                	sub    al,0x20
c000d3e1:	41                   	inc    ecx
c000d3e2:	6c                   	ins    BYTE PTR es:[edi],dx
c000d3e3:	6c                   	ins    BYTE PTR es:[edi],dx
c000d3e4:	20 72 69             	and    BYTE PTR [edx+0x69],dh
c000d3e7:	67 68 74 73 20 72    	addr16 push 0x72207374
c000d3ed:	65 73 65             	gs jae c000d455 <PKn_Version+0x45>
c000d3f0:	72 76                	jb     c000d468 <PKn_Version+0x58>
c000d3f2:	65 64 2e 00 50 4b    	gs fs add BYTE PTR cs:[eax+0x4b],dl
c000d3f8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d3f9:	0a 00                	or     al,BYTE PTR [eax]
c000d3fb:	4b                   	dec    ebx
c000d3fc:	65 72 6e             	gs jb  c000d46d <PKn_Version+0x5d>
c000d3ff:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d401:	20 50 43             	and    BYTE PTR [eax+0x43],dl
c000d404:	42                   	inc    edx
c000d405:	20 61 74             	and    BYTE PTR [ecx+0x74],ah
c000d408:	20 30                	and    BYTE PTR [eax],dh
c000d40a:	78 00                	js     c000d40c <_rodata+0x100>
c000d40c:	0a 00                	or     al,BYTE PTR [eax]
	...

c000d410 <PKn_Version>:
c000d410:	50                   	push   eax
c000d411:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d413:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d416:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d41b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d41d:	20 28                	and    BYTE PTR [eax],ch
c000d41f:	50                   	push   eax
c000d420:	4b                   	dec    ebx
c000d421:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d422:	29 20                	sub    DWORD PTR [eax],esp
c000d424:	76 65                	jbe    c000d48b <PKn_Version+0x7b>
c000d426:	72 73                	jb     c000d49b <PKn_Version+0x8b>
c000d428:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d42f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d432:	74 65                	je     c000d499 <PKn_Version+0x89>
c000d434:	73 74                	jae    c000d4aa <PKn_Version+0x9a>
c000d436:	00 00                	add    BYTE PTR [eax],al
c000d438:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000d43b:	65 5f                	gs pop edi
c000d43d:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c000d444:	20 28                	and    BYTE PTR [eax],ch
c000d446:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c000d44a:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c000d44f:	70 5f                	jo     c000d4b0 <__func__.858+0x4>
c000d451:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000d454:	65 73 5f             	gs jae c000d4b6 <__func__.858+0xa>
c000d457:	6c                   	ins    BYTE PTR es:[edi],dx
c000d458:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d45a:	29 00                	sub    DWORD PTR [eax],eax
c000d45c:	6c                   	ins    BYTE PTR es:[edi],dx
c000d45d:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c000d464:	61                   	popa   
c000d465:	70 2e                	jo     c000d495 <PKn_Version+0x85>
c000d467:	63 00                	arpl   WORD PTR [eax],ax
c000d469:	76 61                	jbe    c000d4cc <__func__.875+0x10>
c000d46b:	6c                   	ins    BYTE PTR es:[edi],dx
c000d46c:	75 65                	jne    c000d4d3 <__func__.875+0x17>
c000d46e:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c000d474:	7c 7c                	jl     c000d4f2 <__func__.875+0x36>
c000d476:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c000d479:	6c                   	ins    BYTE PTR es:[edi],dx
c000d47a:	75 65                	jne    c000d4e1 <__func__.875+0x25>
c000d47c:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000d482:	00 00                	add    BYTE PTR [eax],al
c000d484:	50                   	push   eax
c000d485:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d487:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d48a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d48f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d491:	20 28                	and    BYTE PTR [eax],ch
c000d493:	50                   	push   eax
c000d494:	4b                   	dec    ebx
c000d495:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d496:	29 20                	sub    DWORD PTR [eax],esp
c000d498:	76 65                	jbe    c000d4ff <__func__.875+0x43>
c000d49a:	72 73                	jb     c000d50f <__func__.875+0x53>
c000d49c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d4a3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d4a6:	74 65                	je     c000d50d <__func__.875+0x51>
c000d4a8:	73 74                	jae    c000d51e <__func__.875+0x62>
	...

c000d4ac <__func__.858>:
c000d4ac:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000d4af:	6d                   	ins    DWORD PTR es:[edi],dx
c000d4b0:	61                   	popa   
c000d4b1:	70 5f                	jo     c000d512 <__func__.875+0x56>
c000d4b3:	61                   	popa   
c000d4b4:	6c                   	ins    BYTE PTR es:[edi],dx
c000d4b5:	6c                   	ins    BYTE PTR es:[edi],dx
c000d4b6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d4b7:	63 00                	arpl   WORD PTR [eax],ax
c000d4b9:	00 00                	add    BYTE PTR [eax],al
	...

c000d4bc <__func__.875>:
c000d4bc:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000d4bf:	6d                   	ins    DWORD PTR es:[edi],dx
c000d4c0:	61                   	popa   
c000d4c1:	70 5f                	jo     c000d522 <__func__.875+0x66>
c000d4c3:	73 65                	jae    c000d52a <__func__.875+0x6e>
c000d4c5:	74 00                	je     c000d4c7 <__func__.875+0xb>
c000d4c7:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000d4ca:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d4cb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d4ce:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d4d3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d4d5:	20 28                	and    BYTE PTR [eax],ch
c000d4d7:	50                   	push   eax
c000d4d8:	4b                   	dec    ebx
c000d4d9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d4da:	29 20                	sub    DWORD PTR [eax],esp
c000d4dc:	76 65                	jbe    c000d543 <__func__.875+0x87>
c000d4de:	72 73                	jb     c000d553 <__func__.875+0x97>
c000d4e0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d4e7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d4ea:	74 65                	je     c000d551 <__func__.875+0x95>
c000d4ec:	73 74                	jae    c000d562 <__func__.875+0xa6>
c000d4ee:	00 00                	add    BYTE PTR [eax],al
c000d4f0:	50                   	push   eax
c000d4f1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d4f3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d4f6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d4fb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d4fd:	20 28                	and    BYTE PTR [eax],ch
c000d4ff:	50                   	push   eax
c000d500:	4b                   	dec    ebx
c000d501:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d502:	29 20                	sub    DWORD PTR [eax],esp
c000d504:	76 65                	jbe    c000d56b <__func__.875+0xaf>
c000d506:	72 73                	jb     c000d57b <__func__.875+0xbf>
c000d508:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d50f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d512:	74 65                	je     c000d579 <__func__.875+0xbd>
c000d514:	73 74                	jae    c000d58a <__func__.875+0xce>
c000d516:	00 00                	add    BYTE PTR [eax],al
c000d518:	20 45 72             	and    BYTE PTR [ebp+0x72],al
c000d51b:	72 6f                	jb     c000d58c <__func__.875+0xd0>
c000d51d:	72 0a                	jb     c000d529 <__func__.875+0x6d>
c000d51f:	00 20                	add    BYTE PTR [eax],ah
c000d521:	46                   	inc    esi
c000d522:	69 6c 65 3a 20 20 20 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3a],0x20202020
c000d529:	20 
c000d52a:	20 20                	and    BYTE PTR [eax],ah
c000d52c:	20 20                	and    BYTE PTR [eax],ah
c000d52e:	00 20                	add    BYTE PTR [eax],ah
c000d530:	49                   	dec    ecx
c000d531:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d532:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c000d535:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d536:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000d53a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d53b:	3a 20                	cmp    ah,BYTE PTR [eax]
c000d53d:	00 20                	add    BYTE PTR [eax],ah
c000d53f:	4c                   	dec    esp
c000d540:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c000d547:	20 20                	and    BYTE PTR [eax],ah
c000d549:	20 20                	and    BYTE PTR [eax],ah
c000d54b:	20 00                	and    BYTE PTR [eax],al
c000d54d:	20 43 6f             	and    BYTE PTR [ebx+0x6f],al
c000d550:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d551:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c000d558:	20 20 
c000d55a:	20 00                	and    BYTE PTR [eax],al
c000d55c:	50                   	push   eax
c000d55d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d55f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d562:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d567:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d569:	20 28                	and    BYTE PTR [eax],ch
c000d56b:	50                   	push   eax
c000d56c:	4b                   	dec    ebx
c000d56d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d56e:	29 20                	sub    DWORD PTR [eax],esp
c000d570:	76 65                	jbe    c000d5d7 <__func__.882+0x3>
c000d572:	72 73                	jb     c000d5e7 <__func__.882+0x13>
c000d574:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d57b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d57e:	74 65                	je     c000d5e5 <__func__.882+0x11>
c000d580:	73 74                	jae    c000d5f6 <__func__.882+0x22>
c000d582:	00 00                	add    BYTE PTR [eax],al
c000d584:	21 28                	and    DWORD PTR [eax],ebp
c000d586:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000d58c:	66 72 65             	data16 jb c000d5f4 <__func__.882+0x20>
c000d58f:	65 20 3d 3d 20 66 69 	and    BYTE PTR gs:0x6966203d,bh
c000d596:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000d598:	2d 3e 73 69 7a       	sub    eax,0x7a69733e
c000d59d:	65 29 00             	sub    DWORD PTR gs:[eax],eax
c000d5a0:	6c                   	ins    BYTE PTR es:[edi],dx
c000d5a1:	69 62 2f 66 69 66 6f 	imul   esp,DWORD PTR [edx+0x2f],0x6f666966
c000d5a8:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c000d5ab:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000d5ae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d5af:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d5b2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d5b7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d5b9:	20 28                	and    BYTE PTR [eax],ch
c000d5bb:	50                   	push   eax
c000d5bc:	4b                   	dec    ebx
c000d5bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d5be:	29 20                	sub    DWORD PTR [eax],esp
c000d5c0:	76 65                	jbe    c000d627 <__func__.882+0x53>
c000d5c2:	72 73                	jb     c000d637 <__func__.882+0x63>
c000d5c4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d5cb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d5ce:	74 65                	je     c000d635 <__func__.882+0x61>
c000d5d0:	73 74                	jae    c000d646 <__func__.882+0x72>
	...

c000d5d4 <__func__.882>:
c000d5d4:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c000d5da:	65 74 00             	gs je  c000d5dd <__func__.882+0x9>
c000d5dd:	00 00                	add    BYTE PTR [eax],al
c000d5df:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000d5e2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d5e3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d5e6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d5eb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d5ed:	20 28                	and    BYTE PTR [eax],ch
c000d5ef:	50                   	push   eax
c000d5f0:	4b                   	dec    ebx
c000d5f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d5f2:	29 20                	sub    DWORD PTR [eax],esp
c000d5f4:	76 65                	jbe    c000d65b <__func__.882+0x87>
c000d5f6:	72 73                	jb     c000d66b <__func__.882+0x97>
c000d5f8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d5ff:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d602:	74 65                	je     c000d669 <__func__.882+0x95>
c000d604:	73 74                	jae    c000d67a <__func__.882+0xa6>
c000d606:	00 00                	add    BYTE PTR [eax],al
c000d608:	5b                   	pop    ebx
c000d609:	69 6e 69 6e 5d 3a 61 	imul   ebp,DWORD PTR [esi+0x69],0x613a5d6e
c000d610:	6c                   	ins    BYTE PTR es:[edi],dx
c000d611:	6c                   	ins    BYTE PTR es:[edi],dx
c000d612:	0a 00                	or     al,BYTE PTR [eax]
c000d614:	5b                   	pop    ebx
c000d615:	69 6e 69 74 5d 3a 69 	imul   ebp,DWORD PTR [esi+0x69],0x693a5d74
c000d61c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d61d:	69 74 20 64 6f 77 6e 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x2e6e776f
c000d624:	2e 
c000d625:	0a 00                	or     al,BYTE PTR [eax]
c000d627:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000d62a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d62b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d62e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d633:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d635:	20 28                	and    BYTE PTR [eax],ch
c000d637:	50                   	push   eax
c000d638:	4b                   	dec    ebx
c000d639:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d63a:	29 20                	sub    DWORD PTR [eax],esp
c000d63c:	76 65                	jbe    c000d6a3 <__func__.882+0xcf>
c000d63e:	72 73                	jb     c000d6b3 <__func__.882+0xdf>
c000d640:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d647:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d64a:	74 65                	je     c000d6b1 <__func__.882+0xdd>
c000d64c:	73 74                	jae    c000d6c2 <__func__.882+0xee>
c000d64e:	00 00                	add    BYTE PTR [eax],al
c000d650:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c000d654:	44                   	inc    esp
c000d655:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c000d65c:	72 72                	jb     c000d6d0 <__func__.882+0xfc>
c000d65e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d65f:	72 00                	jb     c000d661 <__func__.882+0x8d>
c000d661:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c000d665:	44                   	inc    esp
c000d666:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c000d66a:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000d66d:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000d670:	74 69                	je     c000d6db <__func__.882+0x107>
c000d672:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d673:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d674:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c000d677:	49                   	dec    ecx
c000d678:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000d67b:	74 65                	je     c000d6e2 <__func__.882+0x10e>
c000d67d:	72 72                	jb     c000d6f1 <__func__.882+0x11d>
c000d67f:	75 70                	jne    c000d6f1 <__func__.882+0x11d>
c000d681:	74 00                	je     c000d683 <__func__.882+0xaf>
c000d683:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c000d686:	20 42 72             	and    BYTE PTR [edx+0x72],al
c000d689:	65 61                	gs popa 
c000d68b:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c000d68f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d690:	74 20                	je     c000d6b2 <__func__.882+0xde>
c000d692:	45                   	inc    ebp
c000d693:	78 63                	js     c000d6f8 <__func__.882+0x124>
c000d695:	65 70 74             	gs jo  c000d70c <__func__.882+0x138>
c000d698:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c000d69f:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c000d6a2:	65 72 66             	gs jb  c000d70b <__func__.882+0x137>
c000d6a5:	6c                   	ins    BYTE PTR es:[edi],dx
c000d6a6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d6a7:	77 20                	ja     c000d6c9 <__func__.882+0xf5>
c000d6a9:	45                   	inc    ebp
c000d6aa:	78 63                	js     c000d70f <__func__.882+0x13b>
c000d6ac:	65 70 74             	gs jo  c000d723 <__func__.882+0x14f>
c000d6af:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c000d6b6:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c000d6b9:	55                   	push   ebp
c000d6ba:	4e                   	dec    esi
c000d6bb:	44                   	inc    esp
c000d6bc:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c000d6bf:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d6c0:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c000d6c5:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c000d6c8:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c000d6ce:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000d6d1:	74 69                	je     c000d73c <__func__.882+0x168>
c000d6d3:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d6d4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d6d5:	00 23                	add    BYTE PTR [ebx],ah
c000d6d7:	55                   	push   ebp
c000d6d8:	44                   	inc    esp
c000d6d9:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000d6dc:	76 61                	jbe    c000d73f <__func__.882+0x16b>
c000d6de:	6c                   	ins    BYTE PTR es:[edi],dx
c000d6df:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c000d6e6:	64 
c000d6e7:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c000d6eb:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000d6ee:	74 69                	je     c000d759 <__func__.882+0x185>
c000d6f0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d6f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d6f2:	00 23                	add    BYTE PTR [ebx],ah
c000d6f4:	4e                   	dec    esi
c000d6f5:	4d                   	dec    ebp
c000d6f6:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c000d6fa:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c000d701:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c000d704:	61                   	popa   
c000d705:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c000d70c:	45 
c000d70d:	78 63                	js     c000d772 <__func__.882+0x19e>
c000d70f:	65 70 74             	gs jo  c000d786 <__func__.882+0x1b2>
c000d712:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c000d719:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c000d71d:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c000d721:	46                   	inc    esi
c000d722:	61                   	popa   
c000d723:	75 6c                	jne    c000d791 <__func__.882+0x1bd>
c000d725:	74 20                	je     c000d747 <__func__.882+0x173>
c000d727:	45                   	inc    ebp
c000d728:	78 63                	js     c000d78d <__func__.882+0x1b9>
c000d72a:	65 70 74             	gs jo  c000d7a1 <__func__.882+0x1cd>
c000d72d:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c000d734:	72 6f                	jb     c000d7a5 <__func__.882+0x1d1>
c000d736:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000d739:	73 6f                	jae    c000d7aa <__func__.882+0x1d6>
c000d73b:	72 20                	jb     c000d75d <__func__.882+0x189>
c000d73d:	53                   	push   ebx
c000d73e:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c000d741:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d743:	74 20                	je     c000d765 <__func__.882+0x191>
c000d745:	4f                   	dec    edi
c000d746:	76 65                	jbe    c000d7ad <__func__.882+0x1d9>
c000d748:	72 72                	jb     c000d7bc <__func__.882+0x1e8>
c000d74a:	75 6e                	jne    c000d7ba <__func__.882+0x1e6>
c000d74c:	00 23                	add    BYTE PTR [ebx],ah
c000d74e:	54                   	push   esp
c000d74f:	53                   	push   ebx
c000d750:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000d753:	76 61                	jbe    c000d7b6 <__func__.882+0x1e2>
c000d755:	6c                   	ins    BYTE PTR es:[edi],dx
c000d756:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c000d75d:	45 
c000d75e:	78 63                	js     c000d7c3 <__func__.882+0x1ef>
c000d760:	65 70 74             	gs jo  c000d7d7 <__func__.882+0x203>
c000d763:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c000d76a:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c000d76d:	67 6d                	ins    DWORD PTR es:[di],dx
c000d76f:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d771:	74 20                	je     c000d793 <__func__.882+0x1bf>
c000d773:	4e                   	dec    esi
c000d774:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d775:	74 20                	je     c000d797 <__func__.882+0x1c3>
c000d777:	50                   	push   eax
c000d778:	72 65                	jb     c000d7df <__func__.882+0x20b>
c000d77a:	73 65                	jae    c000d7e1 <__func__.882+0x20d>
c000d77c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d77d:	74 00                	je     c000d77f <__func__.882+0x1ab>
c000d77f:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c000d782:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c000d785:	61                   	popa   
c000d786:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c000d789:	46                   	inc    esi
c000d78a:	61                   	popa   
c000d78b:	75 6c                	jne    c000d7f9 <__func__.882+0x225>
c000d78d:	74 20                	je     c000d7af <__func__.882+0x1db>
c000d78f:	45                   	inc    ebp
c000d790:	78 63                	js     c000d7f5 <__func__.882+0x221>
c000d792:	65 70 74             	gs jo  c000d809 <__func__.882+0x235>
c000d795:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c000d79c:	20 47 65             	and    BYTE PTR [edi+0x65],al
c000d79f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d7a0:	65 72 61             	gs jb  c000d804 <__func__.882+0x230>
c000d7a3:	6c                   	ins    BYTE PTR es:[edi],dx
c000d7a4:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c000d7a7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d7a8:	74 65                	je     c000d80f <__func__.882+0x23b>
c000d7aa:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000d7ae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d7af:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000d7b2:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000d7b5:	74 69                	je     c000d820 <__func__.882+0x24c>
c000d7b7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d7b8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d7b9:	00 23                	add    BYTE PTR [ebx],ah
c000d7bb:	50                   	push   eax
c000d7bc:	46                   	inc    esi
c000d7bd:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c000d7c0:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c000d7c7:	74 20                	je     c000d7e9 <__func__.882+0x215>
c000d7c9:	45                   	inc    ebp
c000d7ca:	78 63                	js     c000d82f <__func__.882+0x25b>
c000d7cc:	65 70 74             	gs jo  c000d843 <__func__.882+0x26f>
c000d7cf:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c000d7d6:	65 72 76             	gs jb  c000d84f <__func__.882+0x27b>
c000d7d9:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c000d7dd:	4d                   	dec    ebp
c000d7de:	46                   	inc    esi
c000d7df:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c000d7e2:	37                   	aaa    
c000d7e3:	20 46 50             	and    BYTE PTR [esi+0x50],al
c000d7e6:	55                   	push   ebp
c000d7e7:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000d7ea:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d7eb:	61                   	popa   
c000d7ec:	74 69                	je     c000d857 <__func__.882+0x283>
c000d7ee:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d7ef:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000d7f5:	74 20                	je     c000d817 <__func__.882+0x243>
c000d7f7:	45                   	inc    ebp
c000d7f8:	72 72                	jb     c000d86c <__func__.882+0x298>
c000d7fa:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d7fb:	72 00                	jb     c000d7fd <__func__.882+0x229>
c000d7fd:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c000d800:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c000d803:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c000d80a:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c000d80d:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c000d811:	45                   	inc    ebp
c000d812:	78 63                	js     c000d877 <__func__.882+0x2a3>
c000d814:	65 70 74             	gs jo  c000d88b <__func__.882+0x2b7>
c000d817:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c000d81e:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c000d821:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000d824:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d825:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c000d82b:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c000d82e:	78 63                	js     c000d893 <__func__.882+0x2bf>
c000d830:	65 70 74             	gs jo  c000d8a7 <__func__.882+0x2d3>
c000d833:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c000d83a:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c000d83d:	4d                   	dec    ebp
c000d83e:	44                   	inc    esp
c000d83f:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000d842:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d843:	61                   	popa   
c000d844:	74 69                	je     c000d8af <__func__.882+0x2db>
c000d846:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d847:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000d84d:	74 20                	je     c000d86f <__func__.882+0x29b>
c000d84f:	45                   	inc    ebp
c000d850:	78 63                	js     c000d8b5 <__func__.882+0x2e1>
c000d852:	65 70 74             	gs jo  c000d8c9 <__func__.882+0x2f5>
c000d855:	69 6f 6e 00 0a 20 69 	imul   ebp,DWORD PTR [edi+0x6e],0x69200a00
c000d85c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d85d:	74 72                	je     c000d8d1 <__func__.882+0x2fd>
c000d85f:	3a 20                	cmp    ah,BYTE PTR [eax]
c000d861:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000d864:	0a 20                	or     ah,BYTE PTR [eax]
c000d866:	00 20                	add    BYTE PTR [eax],ah
c000d868:	28 20                	sub    BYTE PTR [eax],ah
c000d86a:	66 61                	popaw  
c000d86c:	75 6c                	jne    c000d8da <__func__.882+0x306>
c000d86e:	74 20                	je     c000d890 <__func__.882+0x2bc>
c000d870:	61                   	popa   
c000d871:	64 64 72 65          	fs fs jb c000d8da <__func__.882+0x306>
c000d875:	73 73                	jae    c000d8ea <__func__.882+0x316>
c000d877:	3a 20                	cmp    ah,BYTE PTR [eax]
c000d879:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000d87c:	20 29                	and    BYTE PTR [ecx],ch
c000d87e:	0a 00                	or     al,BYTE PTR [eax]
c000d880:	0a 20                	or     ah,BYTE PTR [eax]
c000d882:	43                   	inc    ebx
c000d883:	50                   	push   eax
c000d884:	55                   	push   ebp
c000d885:	20 3a                	and    BYTE PTR [edx],bh
c000d887:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000d88a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d88b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d88e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d893:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d895:	20 28                	and    BYTE PTR [eax],ch
c000d897:	50                   	push   eax
c000d898:	4b                   	dec    ebx
c000d899:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d89a:	29 20                	sub    DWORD PTR [eax],esp
c000d89c:	76 65                	jbe    c000d903 <keymap+0xb>
c000d89e:	72 73                	jb     c000d913 <keymap+0x1b>
c000d8a0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d8a7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d8aa:	74 65                	je     c000d911 <keymap+0x19>
c000d8ac:	73 74                	jae    c000d922 <keymap+0x2a>
c000d8ae:	00 00                	add    BYTE PTR [eax],al
c000d8b0:	6b 65 79 62          	imul   esp,DWORD PTR [ebp+0x79],0x62
c000d8b4:	75 66                	jne    c000d91c <keymap+0x24>
c000d8b6:	5f                   	pop    edi
c000d8b7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d8b8:	76 65                	jbe    c000d91f <keymap+0x27>
c000d8ba:	72 66                	jb     c000d922 <keymap+0x2a>
c000d8bc:	6c                   	ins    BYTE PTR es:[edi],dx
c000d8bd:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d8be:	77 21                	ja     c000d8e1 <__func__.882+0x30d>
c000d8c0:	21 21                	and    DWORD PTR [ecx],esp
c000d8c2:	20 00                	and    BYTE PTR [eax],al
c000d8c4:	75 6e                	jne    c000d934 <keymap+0x3c>
c000d8c6:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c000d8ca:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000d8cd:	79 00                	jns    c000d8cf <__func__.882+0x2fb>
c000d8cf:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000d8d2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d8d3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d8d6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d8db:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d8dd:	20 28                	and    BYTE PTR [eax],ch
c000d8df:	50                   	push   eax
c000d8e0:	4b                   	dec    ebx
c000d8e1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d8e2:	29 20                	sub    DWORD PTR [eax],esp
c000d8e4:	76 65                	jbe    c000d94b <keymap+0x53>
c000d8e6:	72 73                	jb     c000d95b <keymap+0x63>
c000d8e8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d8ef:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d8f2:	74 65                	je     c000d959 <keymap+0x61>
c000d8f4:	73 74                	jae    c000d96a <keymap+0x72>
	...

c000d8f8 <keymap>:
c000d8f8:	00 00                	add    BYTE PTR [eax],al
c000d8fa:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c000d8fc:	31 21                	xor    DWORD PTR [ecx],esp
c000d8fe:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c000d901:	23 34 24             	and    esi,DWORD PTR [esp]
c000d904:	35 25 36 5e 37       	xor    eax,0x375e3625
c000d909:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c000d90c:	39 28                	cmp    DWORD PTR [eax],ebp
c000d90e:	30 29                	xor    BYTE PTR [ecx],ch
c000d910:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c000d915:	08 09                	or     BYTE PTR [ecx],cl
c000d917:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c000d91a:	77 57                	ja     c000d973 <keymap+0x7b>
c000d91c:	65 45                	gs inc ebp
c000d91e:	72 52                	jb     c000d972 <keymap+0x7a>
c000d920:	74 54                	je     c000d976 <keymap+0x7e>
c000d922:	79 59                	jns    c000d97d <keymap+0x85>
c000d924:	75 55                	jne    c000d97b <keymap+0x83>
c000d926:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c000d92d:	7b 5d                	jnp    c000d98c <keymap+0x94>
c000d92f:	7d 0d                	jge    c000d93e <keymap+0x46>
c000d931:	0d 00 00 61 41       	or     eax,0x41610000
c000d936:	73 53                	jae    c000d98b <keymap+0x93>
c000d938:	64 44                	fs inc esp
c000d93a:	66 46                	inc    si
c000d93c:	67 47                	addr16 inc edi
c000d93e:	68 48 6a 4a 6b       	push   0x6b4a6a48
c000d943:	4b                   	dec    ebx
c000d944:	6c                   	ins    BYTE PTR es:[edi],dx
c000d945:	4c                   	dec    esp
c000d946:	3b 3a                	cmp    edi,DWORD PTR [edx]
c000d948:	27                   	daa    
c000d949:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c000d94c:	00 00                	add    BYTE PTR [eax],al
c000d94e:	5c                   	pop    esp
c000d94f:	7c 7a                	jl     c000d9cb <keymap+0xd3>
c000d951:	5a                   	pop    edx
c000d952:	78 58                	js     c000d9ac <keymap+0xb4>
c000d954:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c000d957:	56                   	push   esi
c000d958:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c000d95b:	4e                   	dec    esi
c000d95c:	6d                   	ins    DWORD PTR es:[edi],dx
c000d95d:	4d                   	dec    ebp
c000d95e:	2c 3c                	sub    al,0x3c
c000d960:	2e 3e 2f             	cs ds das 
c000d963:	3f                   	aas    
c000d964:	00 00                	add    BYTE PTR [eax],al
c000d966:	2a 2a                	sub    ch,BYTE PTR [edx]
c000d968:	00 00                	add    BYTE PTR [eax],al
c000d96a:	20 20                	and    BYTE PTR [eax],ah
c000d96c:	00 00                	add    BYTE PTR [eax],al
c000d96e:	00 00                	add    BYTE PTR [eax],al
c000d970:	50                   	push   eax
c000d971:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d973:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d976:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d97b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d97d:	20 28                	and    BYTE PTR [eax],ch
c000d97f:	50                   	push   eax
c000d980:	4b                   	dec    ebx
c000d981:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d982:	29 20                	sub    DWORD PTR [eax],esp
c000d984:	76 65                	jbe    c000d9eb <keymap+0xf3>
c000d986:	72 73                	jb     c000d9fb <keymap+0x103>
c000d988:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d98f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d992:	74 65                	je     c000d9f9 <keymap+0x101>
c000d994:	73 74                	jae    c000da0a <keymap+0x112>
c000d996:	00 00                	add    BYTE PTR [eax],al
c000d998:	4d                   	dec    ebp
c000d999:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000d99b:	5f                   	pop    edi
c000d99c:	61                   	popa   
c000d99d:	6c                   	ins    BYTE PTR es:[edi],dx
c000d99e:	6c                   	ins    BYTE PTR es:[edi],dx
c000d99f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000d9a0:	63 3a                	arpl   WORD PTR [edx],di
c000d9a2:	20 30                	and    BYTE PTR [eax],dh
c000d9a4:	78 00                	js     c000d9a6 <keymap+0xae>
c000d9a6:	00 00                	add    BYTE PTR [eax],al
c000d9a8:	50                   	push   eax
c000d9a9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000d9ab:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000d9ae:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000d9b3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000d9b5:	20 28                	and    BYTE PTR [eax],ch
c000d9b7:	50                   	push   eax
c000d9b8:	4b                   	dec    ebx
c000d9b9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000d9ba:	29 20                	sub    DWORD PTR [eax],esp
c000d9bc:	76 65                	jbe    c000da23 <keymap+0x12b>
c000d9be:	72 73                	jb     c000da33 <digits.971+0x3>
c000d9c0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000d9c7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000d9ca:	74 65                	je     c000da31 <digits.971+0x1>
c000d9cc:	73 74                	jae    c000da42 <digits.971+0x12>
c000d9ce:	00 00                	add    BYTE PTR [eax],al
c000d9d0:	c1 9f 00 c0 7d 9f 00 	rcr    DWORD PTR [edi-0x60824000],0x0
c000d9d7:	c0 7d 9f 00          	sar    BYTE PTR [ebp-0x61],0x0
c000d9db:	c0 7d 9f 00          	sar    BYTE PTR [ebp-0x61],0x0
c000d9df:	c0 7d 9f 00          	sar    BYTE PTR [ebp-0x61],0x0
c000d9e3:	c0 7d 9f 00          	sar    BYTE PTR [ebp-0x61],0x0
c000d9e7:	c0 7d 9f 00          	sar    BYTE PTR [ebp-0x61],0x0
c000d9eb:	c0 7d 9f 00          	sar    BYTE PTR [ebp-0x61],0x0
c000d9ef:	c0 56 9f 00          	rcl    BYTE PTR [esi-0x61],0x0
c000d9f3:	c0                   	(bad)  
c000d9f4:	75 9f                	jne    c000d995 <keymap+0x9d>
c000d9f6:	00 c0                	add    al,al
c000d9f8:	64 9f                	fs lahf 
c000d9fa:	00 c0                	add    al,al
c000d9fc:	7d 9f                	jge    c000d99d <keymap+0xa5>
c000d9fe:	00 c0                	add    al,al
c000da00:	7d 9f                	jge    c000d9a1 <keymap+0xa9>
c000da02:	00 c0                	add    al,al
c000da04:	64 9f                	fs lahf 
c000da06:	00 c0                	add    al,al
c000da08:	50                   	push   eax
c000da09:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000da0b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000da0e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000da13:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000da15:	20 28                	and    BYTE PTR [eax],ch
c000da17:	50                   	push   eax
c000da18:	4b                   	dec    ebx
c000da19:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000da1a:	29 20                	sub    DWORD PTR [eax],esp
c000da1c:	76 65                	jbe    c000da83 <digits.990+0x2b>
c000da1e:	72 73                	jb     c000da93 <digits.990+0x3b>
c000da20:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000da27:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000da2a:	74 65                	je     c000da91 <digits.990+0x39>
c000da2c:	73 74                	jae    c000daa2 <digits.990+0x4a>
	...

c000da30 <digits.971>:
c000da30:	30 31                	xor    BYTE PTR [ecx],dh
c000da32:	32 33                	xor    dh,BYTE PTR [ebx]
c000da34:	34 35                	xor    al,0x35
c000da36:	36 37                	ss aaa 
c000da38:	38 39                	cmp    BYTE PTR [ecx],bh
c000da3a:	41                   	inc    ecx
c000da3b:	42                   	inc    edx
c000da3c:	43                   	inc    ebx
c000da3d:	44                   	inc    esp
c000da3e:	45                   	inc    ebp
c000da3f:	46                   	inc    esi
c000da40:	47                   	inc    edi
c000da41:	48                   	dec    eax
c000da42:	49                   	dec    ecx
c000da43:	4a                   	dec    edx
c000da44:	4b                   	dec    ebx
c000da45:	4c                   	dec    esp
c000da46:	4d                   	dec    ebp
c000da47:	4e                   	dec    esi
c000da48:	4f                   	dec    edi
c000da49:	50                   	push   eax
c000da4a:	51                   	push   ecx
c000da4b:	52                   	push   edx
c000da4c:	53                   	push   ebx
c000da4d:	54                   	push   esp
c000da4e:	55                   	push   ebp
c000da4f:	56                   	push   esi
c000da50:	57                   	push   edi
c000da51:	58                   	pop    eax
c000da52:	59                   	pop    ecx
c000da53:	5a                   	pop    edx
c000da54:	00 00                	add    BYTE PTR [eax],al
	...

c000da58 <digits.990>:
c000da58:	30 31                	xor    BYTE PTR [ecx],dh
c000da5a:	32 33                	xor    dh,BYTE PTR [ebx]
c000da5c:	34 35                	xor    al,0x35
c000da5e:	36 37                	ss aaa 
c000da60:	38 39                	cmp    BYTE PTR [ecx],bh
c000da62:	41                   	inc    ecx
c000da63:	42                   	inc    edx
c000da64:	43                   	inc    ebx
c000da65:	44                   	inc    esp
c000da66:	45                   	inc    ebp
c000da67:	46                   	inc    esi
c000da68:	47                   	inc    edi
c000da69:	48                   	dec    eax
c000da6a:	49                   	dec    ecx
c000da6b:	4a                   	dec    edx
c000da6c:	4b                   	dec    ebx
c000da6d:	4c                   	dec    esp
c000da6e:	4d                   	dec    ebp
c000da6f:	4e                   	dec    esi
c000da70:	4f                   	dec    edi
c000da71:	50                   	push   eax
c000da72:	51                   	push   ecx
c000da73:	52                   	push   edx
c000da74:	53                   	push   ebx
c000da75:	54                   	push   esp
c000da76:	55                   	push   ebp
c000da77:	56                   	push   esi
c000da78:	57                   	push   edi
c000da79:	58                   	pop    eax
c000da7a:	59                   	pop    ecx
c000da7b:	5a                   	pop    edx
c000da7c:	00 00                	add    BYTE PTR [eax],al
c000da7e:	00 00                	add    BYTE PTR [eax],al
c000da80:	64 73 74             	fs jae c000daf7 <digits.990+0x9f>
c000da83:	5f                   	pop    edi
c000da84:	5f                   	pop    edi
c000da85:	20 21                	and    BYTE PTR [ecx],ah
c000da87:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000da8c:	4c                   	dec    esp
c000da8d:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000da91:	2f                   	das    
c000da92:	73 74                	jae    c000db08 <__func__.842>
c000da94:	72 69                	jb     c000daff <digits.990+0xa7>
c000da96:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000da97:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c000da9b:	64 73 74             	fs jae c000db12 <__func__.854+0x2>
c000da9e:	5f                   	pop    edi
c000da9f:	5f                   	pop    edi
c000daa0:	20 21                	and    BYTE PTR [ecx],ah
c000daa2:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000daa7:	4c                   	dec    esp
c000daa8:	20 26                	and    BYTE PTR [esi],ah
c000daaa:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c000daae:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c000dab1:	20 21                	and    BYTE PTR [ecx],ah
c000dab3:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000dab8:	4c                   	dec    esp
c000dab9:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c000dabc:	5f                   	pop    edi
c000dabd:	5f                   	pop    edi
c000dabe:	20 21                	and    BYTE PTR [ecx],ah
c000dac0:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000dac5:	4c                   	dec    esp
c000dac6:	20 26                	and    BYTE PTR [esi],ah
c000dac8:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c000dacc:	5f                   	pop    edi
c000dacd:	5f                   	pop    edi
c000dace:	20 21                	and    BYTE PTR [ecx],ah
c000dad0:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000dad5:	4c                   	dec    esp
c000dad6:	00 00                	add    BYTE PTR [eax],al
c000dad8:	50                   	push   eax
c000dad9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000dadb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000dade:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000dae3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000dae5:	20 28                	and    BYTE PTR [eax],ch
c000dae7:	50                   	push   eax
c000dae8:	4b                   	dec    ebx
c000dae9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000daea:	29 20                	sub    DWORD PTR [eax],esp
c000daec:	76 65                	jbe    c000db53 <__func__.854+0x43>
c000daee:	72 73                	jb     c000db63 <__func__.854+0x53>
c000daf0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000daf7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000dafa:	74 65                	je     c000db61 <__func__.854+0x51>
c000dafc:	73 74                	jae    c000db72 <__func__.854+0x62>
	...

c000db00 <__func__.831>:
c000db00:	6d                   	ins    DWORD PTR es:[edi],dx
c000db01:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000db03:	73 65                	jae    c000db6a <__func__.854+0x5a>
c000db05:	74 00                	je     c000db07 <__func__.831+0x7>
	...

c000db08 <__func__.842>:
c000db08:	6d                   	ins    DWORD PTR es:[edi],dx
c000db09:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000db0b:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c000db10 <__func__.854>:
c000db10:	6d                   	ins    DWORD PTR es:[edi],dx
c000db11:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000db13:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
c000db16:	00 00                	add    BYTE PTR [eax],al
c000db18:	70 73                	jo     c000db8d <__func__.854+0x7d>
c000db1a:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000db1c:	61                   	popa   
c000db1d:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000db22:	75 65                	jne    c000db89 <__func__.854+0x79>
c000db24:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c000db2a:	6c                   	ins    BYTE PTR es:[edi],dx
c000db2b:	75 65                	jne    c000db92 <__func__.854+0x82>
c000db2d:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000db31:	65 61                	gs popa 
c000db33:	64 2f                	fs das 
c000db35:	73 79                	jae    c000dbb0 <__func__.854+0xa0>
c000db37:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000db38:	63 2e                	arpl   WORD PTR [esi],bp
c000db3a:	63 00                	arpl   WORD PTR [eax],ax
c000db3c:	21 28                	and    DWORD PTR [eax],ebp
c000db3e:	6c                   	ins    BYTE PTR es:[edi],dx
c000db3f:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000db46:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000db49:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c000db4c:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000db4e:	61                   	popa   
c000db4f:	2d 3e 77 61 69       	sub    eax,0x6961773e
c000db54:	74 65                	je     c000dbbb <__func__.854+0xab>
c000db56:	72 73                	jb     c000dbcb <__func__.854+0xbb>
c000db58:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c000db5b:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c000db5e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000db5f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000db60:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000db67:	65 61                	gs popa 
c000db69:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000db6c:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000db71:	65 72 61             	gs jb  c000dbd5 <__func__.854+0xc5>
c000db74:	6c                   	ins    BYTE PTR es:[edi],dx
c000db75:	5f                   	pop    edi
c000db76:	74 61                	je     c000dbd9 <__func__.854+0xc9>
c000db78:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000db7b:	29 00                	sub    DWORD PTR [eax],eax
c000db7d:	73 65                	jae    c000dbe4 <__func__.854+0xd4>
c000db7f:	6d                   	ins    DWORD PTR es:[edi],dx
c000db80:	61                   	popa   
c000db81:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000db85:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000db86:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c000db8a:	65 61                	gs popa 
c000db8c:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c000db90:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000db91:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c000db94:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c000db98:	73 20                	jae    c000dbba <__func__.854+0xaa>
c000db9a:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c000db9d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000db9e:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c000dba1:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c000dba4:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c000dbab:	69 
c000dbac:	73 74                	jae    c000dc22 <__func__.854+0x112>
c000dbae:	21 0a                	and    DWORD PTR [edx],ecx
c000dbb0:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c000dbb3:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000dbb5:	61                   	popa   
c000dbb6:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000dbbb:	75 65                	jne    c000dc22 <__func__.854+0x112>
c000dbbd:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c000dbc3:	70 73                	jo     c000dc38 <__func__.854+0x128>
c000dbc5:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000dbc7:	61                   	popa   
c000dbc8:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000dbcd:	75 65                	jne    c000dc34 <__func__.854+0x124>
c000dbcf:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000dbd5:	70 6c                	jo     c000dc43 <__func__.854+0x133>
c000dbd7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000dbd8:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000dbdb:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000dbe1:	72 5f                	jb     c000dc42 <__func__.854+0x132>
c000dbe3:	72 65                	jb     c000dc4a <__func__.854+0x13a>
c000dbe5:	70 65                	jo     c000dc4c <__func__.854+0x13c>
c000dbe7:	61                   	popa   
c000dbe8:	74 5f                	je     c000dc49 <__func__.854+0x139>
c000dbea:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dbeb:	72 20                	jb     c000dc0d <__func__.854+0xfd>
c000dbed:	3d 3d 20 30 00       	cmp    eax,0x30203d
c000dbf2:	70 6c                	jo     c000dc60 <__func__.967+0x4>
c000dbf4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000dbf5:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000dbf8:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000dbfe:	72 20                	jb     c000dc20 <__func__.854+0x110>
c000dc00:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c000dc05:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dc06:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dc07:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000dc0e:	65 61                	gs popa 
c000dc10:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000dc13:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c000dc16:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000dc17:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000dc1a:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000dc20:	72 5f                	jb     c000dc81 <__func__.988+0x5>
c000dc22:	72 65                	jb     c000dc89 <__func__.988+0xd>
c000dc24:	70 65                	jo     c000dc8b <__func__.988+0xf>
c000dc26:	61                   	popa   
c000dc27:	74 5f                	je     c000dc88 <__func__.988+0xc>
c000dc29:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dc2a:	72 20                	jb     c000dc4c <__func__.854+0x13c>
c000dc2c:	3d 3d 20 31 00       	cmp    eax,0x31203d
c000dc31:	00 00                	add    BYTE PTR [eax],al
c000dc33:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000dc36:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dc37:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000dc3a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000dc3f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000dc41:	20 28                	and    BYTE PTR [eax],ch
c000dc43:	50                   	push   eax
c000dc44:	4b                   	dec    ebx
c000dc45:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dc46:	29 20                	sub    DWORD PTR [eax],esp
c000dc48:	76 65                	jbe    c000dcaf <__func__.992+0x23>
c000dc4a:	72 73                	jb     c000dcbf <__func__.992+0x33>
c000dc4c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000dc53:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000dc56:	74 65                	je     c000dcbd <__func__.992+0x31>
c000dc58:	73 74                	jae    c000dcce <__func__.992+0x42>
	...

c000dc5c <__func__.967>:
c000dc5c:	73 65                	jae    c000dcc3 <__func__.992+0x37>
c000dc5e:	6d                   	ins    DWORD PTR es:[edi],dx
c000dc5f:	61                   	popa   
c000dc60:	5f                   	pop    edi
c000dc61:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c000dc68 <__func__.975>:
c000dc68:	73 65                	jae    c000dccf <__func__.992+0x43>
c000dc6a:	6d                   	ins    DWORD PTR es:[edi],dx
c000dc6b:	61                   	popa   
c000dc6c:	5f                   	pop    edi
c000dc6d:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c000dc6f:	77 6e                	ja     c000dcdf <__func__.992+0x53>
c000dc71:	00 00                	add    BYTE PTR [eax],al
	...

c000dc74 <__func__.983>:
c000dc74:	73 65                	jae    c000dcdb <__func__.992+0x4f>
c000dc76:	6d                   	ins    DWORD PTR es:[edi],dx
c000dc77:	61                   	popa   
c000dc78:	5f                   	pop    edi
c000dc79:	75 70                	jne    c000dceb <__func__.992+0x5f>
	...

c000dc7c <__func__.988>:
c000dc7c:	6c                   	ins    BYTE PTR es:[edi],dx
c000dc7d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000dc7e:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000dc81:	61                   	popa   
c000dc82:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c000dc85:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c000dc8c <__func__.992>:
c000dc8c:	6c                   	ins    BYTE PTR es:[edi],dx
c000dc8d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000dc8e:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000dc91:	72 65                	jb     c000dcf8 <__func__.992+0x6c>
c000dc93:	6c                   	ins    BYTE PTR es:[edi],dx
c000dc94:	65 61                	gs popa 
c000dc96:	73 65                	jae    c000dcfd <__func__.992+0x71>
c000dc98:	00 00                	add    BYTE PTR [eax],al
c000dc9a:	00 00                	add    BYTE PTR [eax],al
c000dc9c:	6d                   	ins    DWORD PTR es:[edi],dx
c000dc9d:	61                   	popa   
c000dc9e:	69 6e 00 21 6c 69 73 	imul   ebp,DWORD PTR [esi+0x0],0x73696c21
c000dca5:	74 5f                	je     c000dd06 <__func__.992+0x7a>
c000dca7:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000dcad:	72 65                	jb     c000dd14 <__func__.992+0x88>
c000dcaf:	61                   	popa   
c000dcb0:	64 79 5f             	fs jns c000dd12 <__func__.992+0x86>
c000dcb3:	6c                   	ins    BYTE PTR es:[edi],dx
c000dcb4:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000dcbb:	68 72 65 61 64       	push   0x64616572
c000dcc0:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000dcc5:	65 72 61             	gs jb  c000dd29 <__func__.992+0x9d>
c000dcc8:	6c                   	ins    BYTE PTR es:[edi],dx
c000dcc9:	5f                   	pop    edi
c000dcca:	74 61                	je     c000dd2d <__func__.992+0xa1>
c000dccc:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000dccf:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000dcd3:	65 61                	gs popa 
c000dcd5:	64 2f                	fs das 
c000dcd7:	74 68                	je     c000dd41 <__func__.992+0xb5>
c000dcd9:	72 65                	jb     c000dd40 <__func__.992+0xb4>
c000dcdb:	61                   	popa   
c000dcdc:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c000dce0:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c000dce4:	74 5f                	je     c000dd45 <__func__.992+0xb9>
c000dce6:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000dcec:	61                   	popa   
c000dced:	6c                   	ins    BYTE PTR es:[edi],dx
c000dcee:	6c                   	ins    BYTE PTR es:[edi],dx
c000dcef:	5f                   	pop    edi
c000dcf0:	6c                   	ins    BYTE PTR es:[edi],dx
c000dcf1:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000dcf8:	68 72 65 61 64       	push   0x64616572
c000dcfd:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c000dd02:	5f                   	pop    edi
c000dd03:	74 61                	je     c000dd66 <__func__.992+0xda>
c000dd05:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000dd08:	00 21                	add    BYTE PTR [ecx],ah
c000dd0a:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c000dd0e:	74 5f                	je     c000dd6f <__func__.992+0xe3>
c000dd10:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000dd16:	72 65                	jb     c000dd7d <__func__.992+0xf1>
c000dd18:	61                   	popa   
c000dd19:	64 79 5f             	fs jns c000dd7b <__func__.992+0xef>
c000dd1c:	6c                   	ins    BYTE PTR es:[edi],dx
c000dd1d:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c000dd24:	75 72                	jne    c000dd98 <__func__.992+0x10c>
c000dd26:	5f                   	pop    edi
c000dd27:	74 68                	je     c000dd91 <__func__.992+0x105>
c000dd29:	72 65                	jb     c000dd90 <__func__.992+0x104>
c000dd2b:	61                   	popa   
c000dd2c:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000dd32:	65 72 61             	gs jb  c000dd96 <__func__.992+0x10a>
c000dd35:	6c                   	ins    BYTE PTR es:[edi],dx
c000dd36:	5f                   	pop    edi
c000dd37:	74 61                	je     c000dd9a <__func__.992+0x10e>
c000dd39:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000dd3c:	29 00                	sub    DWORD PTR [eax],eax
c000dd3e:	21 28                	and    DWORD PTR [eax],ebp
c000dd40:	6c                   	ins    BYTE PTR es:[edi],dx
c000dd41:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c000dd48:	74 79                	je     c000ddc3 <__func__.992+0x137>
c000dd4a:	28 26                	sub    BYTE PTR [esi],ah
c000dd4c:	72 65                	jb     c000ddb3 <__func__.992+0x127>
c000dd4e:	61                   	popa   
c000dd4f:	64 79 5f             	fs jns c000ddb1 <__func__.992+0x125>
c000dd52:	6c                   	ins    BYTE PTR es:[edi],dx
c000dd53:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c000dd5a:	65 61                	gs popa 
c000dd5c:	64 79 5f             	fs jns c000ddbe <__func__.992+0x132>
c000dd5f:	6c                   	ins    BYTE PTR es:[edi],dx
c000dd60:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c000dd67:	6c                   	ins    BYTE PTR es:[edi],dx
c000dd68:	2e 70 72             	cs jo  c000dddd <__func__.992+0x151>
c000dd6b:	65 76 20             	gs jbe c000dd8e <__func__.992+0x102>
c000dd6e:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c000dd74:	61                   	popa   
c000dd75:	64 79 5f             	fs jns c000ddd7 <__func__.992+0x14b>
c000dd78:	6c                   	ins    BYTE PTR es:[edi],dx
c000dd79:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c000dd80:	64 00 73 74          	add    BYTE PTR fs:[ebx+0x74],dh
c000dd84:	61                   	popa   
c000dd85:	74 75                	je     c000ddfc <__func__.992+0x170>
c000dd87:	73 20                	jae    c000dda9 <__func__.992+0x11d>
c000dd89:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000dd8f:	4b                   	dec    ebx
c000dd90:	5f                   	pop    edi
c000dd91:	52                   	push   edx
c000dd92:	55                   	push   ebp
c000dd93:	4e                   	dec    esi
c000dd94:	4e                   	dec    esi
c000dd95:	49                   	dec    ecx
c000dd96:	4e                   	dec    esi
c000dd97:	47                   	inc    edi
c000dd98:	20 26                	and    BYTE PTR [esi],ah
c000dd9a:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c000dd9e:	61                   	popa   
c000dd9f:	74 75                	je     c000de16 <__func__.992+0x18a>
c000dda1:	73 20                	jae    c000ddc3 <__func__.992+0x137>
c000dda3:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000dda9:	4b                   	dec    ebx
c000ddaa:	5f                   	pop    edi
c000ddab:	52                   	push   edx
c000ddac:	45                   	inc    ebp
c000ddad:	41                   	inc    ecx
c000ddae:	44                   	inc    esp
c000ddaf:	59                   	pop    ecx
c000ddb0:	00 21                	add    BYTE PTR [ecx],ah
c000ddb2:	6c                   	ins    BYTE PTR es:[edi],dx
c000ddb3:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000ddba:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000ddbd:	72 65                	jb     c000de24 <__func__.992+0x198>
c000ddbf:	61                   	popa   
c000ddc0:	64 79 5f             	fs jns c000de22 <__func__.992+0x196>
c000ddc3:	6c                   	ins    BYTE PTR es:[edi],dx
c000ddc4:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000ddcb:	74 68                	je     c000de35 <__func__.992+0x1a9>
c000ddcd:	72 65                	jb     c000de34 <__func__.992+0x1a8>
c000ddcf:	61                   	popa   
c000ddd0:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000ddd6:	65 72 61             	gs jb  c000de3a <__func__.1152+0x2>
c000ddd9:	6c                   	ins    BYTE PTR es:[edi],dx
c000ddda:	5f                   	pop    edi
c000dddb:	74 61                	je     c000de3e <__func__.1152+0x6>
c000dddd:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000dde0:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000dde4:	65 61                	gs popa 
c000dde6:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c000ddea:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000ddee:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c000ddf1:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000ddf5:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c000ddf9:	74 68                	je     c000de63 <__func__.1164+0xf>
c000ddfb:	72 65                	jb     c000de62 <__func__.1164+0xe>
c000ddfd:	61                   	popa   
c000ddfe:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c000de02:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c000de05:	61                   	popa   
c000de06:	64 79 20             	fs jns c000de29 <__func__.992+0x19d>
c000de09:	6c                   	ins    BYTE PTR es:[edi],dx
c000de0a:	69 73 74 00 00 00 50 	imul   esi,DWORD PTR [ebx+0x74],0x50000000
c000de11:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000de13:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000de16:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000de1b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000de1d:	20 28                	and    BYTE PTR [eax],ch
c000de1f:	50                   	push   eax
c000de20:	4b                   	dec    ebx
c000de21:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000de22:	29 20                	sub    DWORD PTR [eax],esp
c000de24:	76 65                	jbe    c000de8b <__func__.1171+0x27>
c000de26:	72 73                	jb     c000de9b <__func__.1171+0x37>
c000de28:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000de2f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000de32:	74 65                	je     c000de99 <__func__.1171+0x35>
c000de34:	73 74                	jae    c000deaa <__func__.1171+0x46>
	...

c000de38 <__func__.1152>:
c000de38:	74 68                	je     c000dea2 <__func__.1171+0x3e>
c000de3a:	72 65                	jb     c000dea1 <__func__.1171+0x3d>
c000de3c:	61                   	popa   
c000de3d:	64 5f                	fs pop edi
c000de3f:	73 74                	jae    c000deb5 <__func__.1171+0x51>
c000de41:	61                   	popa   
c000de42:	72 74                	jb     c000deb8 <__func__.1171+0x54>
c000de44:	00 00                	add    BYTE PTR [eax],al
	...

c000de48 <__func__.1159>:
c000de48:	73 63                	jae    c000dead <__func__.1171+0x49>
c000de4a:	68 65 64 75 6c       	push   0x6c756465
c000de4f:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c000de54 <__func__.1164>:
c000de54:	74 68                	je     c000debe <__func__.1171+0x5a>
c000de56:	72 65                	jb     c000debd <__func__.1171+0x59>
c000de58:	61                   	popa   
c000de59:	64 5f                	fs pop edi
c000de5b:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000de5f:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c000de64 <__func__.1171>:
c000de64:	74 68                	je     c000dece <_bss+0xa>
c000de66:	72 65                	jb     c000decd <_bss+0x9>
c000de68:	61                   	popa   
c000de69:	64 5f                	fs pop edi
c000de6b:	75 6e                	jne    c000dedb <_bss+0x17>
c000de6d:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000de71:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c000de74:	50                   	push   eax
c000de75:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000de77:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000de7a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000de7f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000de81:	20 28                	and    BYTE PTR [eax],ch
c000de83:	50                   	push   eax
c000de84:	4b                   	dec    ebx
c000de85:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000de86:	29 20                	sub    DWORD PTR [eax],esp
c000de88:	76 65                	jbe    c000deef <buf+0x7>
c000de8a:	72 73                	jb     c000deff <buf+0x17>
c000de8c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000de93:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000de96:	74 65                	je     c000defd <buf+0x15>
c000de98:	73 74                	jae    c000df0e <buf+0x26>
c000de9a:	00 00                	add    BYTE PTR [eax],al
c000de9c:	50                   	push   eax
c000de9d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000de9f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000dea2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000dea7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000dea9:	20 28                	and    BYTE PTR [eax],ch
c000deab:	50                   	push   eax
c000deac:	4b                   	dec    ebx
c000dead:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000deae:	29 20                	sub    DWORD PTR [eax],esp
c000deb0:	76 65                	jbe    c000df17 <buf+0x2f>
c000deb2:	72 73                	jb     c000df27 <buf+0x3f>
c000deb4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000debb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000debe:	74 65                	je     c000df25 <buf+0x3d>
c000dec0:	73 74                	jae    c000df36 <ctrl_status+0x2>
	...

Disassembly of section .bss:

c000dec4 <_bss>:
	...

c000dee8 <buf>:
	...

c000df28 <shift_status>:
c000df28:	00 00                	add    BYTE PTR [eax],al
	...

c000df2c <casplock_status>:
c000df2c:	00 00                	add    BYTE PTR [eax],al
	...

c000df30 <ext_scandcode>:
c000df30:	00 00                	add    BYTE PTR [eax],al
	...

c000df34 <ctrl_status>:
c000df34:	00 00                	add    BYTE PTR [eax],al
	...

c000df38 <alt_status>:
c000df38:	00 00                	add    BYTE PTR [eax],al
	...

c000df3c <i>:
c000df3c:	00 00                	add    BYTE PTR [eax],al
	...

c000df40 <ticks>:
c000df40:	00 00                	add    BYTE PTR [eax],al
	...

c000df44 <_ebss>:
	...

c000df5c <Screen>:
	...

c000dfb8 <intr_name>:
	...

c000e074 <idt>:
	...

c000e1ec <idt_table>:
	...

c000e2a8 <keybuf>:
	...

c000e2c4 <user_pool>:
	...

c0015fd4 <user_vaddr>:
	...

c001dce4 <kernel_vaddr>:
	...

c00259f4 <kernel_pool>:
	...

c002d704 <this_thread_tag>:
c002d704:	00 00                	add    BYTE PTR [eax],al
	...

c002d708 <ready_list>:
	...

c002d720 <all_list>:
	...

c002d738 <main_thread>:
c002d738:	00 00                	add    BYTE PTR [eax],al
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
