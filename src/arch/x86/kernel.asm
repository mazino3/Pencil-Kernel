
kernel\kernel.o:     file format elf32-i386


Disassembly of section .text:

c0007f00 <_start>:
c0007f00:	66 b8 10 00          	mov    $0x10,%ax
c0007f04:	8e d8                	mov    %eax,%ds
c0007f06:	8e c0                	mov    %eax,%es
c0007f08:	8e d0                	mov    %eax,%ss
c0007f0a:	8e e0                	mov    %eax,%fs
c0007f0c:	8e e8                	mov    %eax,%gs
c0007f0e:	bc 00 70 00 c0       	mov    $0xc0007000,%esp
c0007f13:	0f 01 15 c8 aa 00 c0 	lgdtl  0xc000aac8
c0007f1a:	e9 05 00 00 00       	jmp    c0007f24 <kernel_main>
c0007f1f:	e9 fb ff ff ff       	jmp    c0007f1f <_start+0x1f>

c0007f24 <kernel_main>:
c0007f24:	55                   	push   %ebp
c0007f25:	89 e5                	mov    %esp,%ebp
c0007f27:	53                   	push   %ebx
c0007f28:	bb 23 00 00 00       	mov    $0x23,%ebx
c0007f2d:	50                   	push   %eax
c0007f2e:	50                   	push   %eax
c0007f2f:	50                   	push   %eax
c0007f30:	6a 0a                	push   $0xa
c0007f32:	6a 07                	push   $0x7
c0007f34:	e8 db 1f 00 00       	call   c0009f14 <put_char>
c0007f39:	83 c4 10             	add    $0x10,%esp
c0007f3c:	4b                   	dec    %ebx
c0007f3d:	75 ef                	jne    c0007f2e <kernel_main+0xa>
c0007f3f:	83 ec 0c             	sub    $0xc,%esp
c0007f42:	6a 00                	push   $0x0
c0007f44:	e8 a4 1f 00 00       	call   c0009eed <set_cursor>
c0007f49:	e8 66 0b 00 00       	call   c0008ab4 <init_all>
c0007f4e:	e8 a0 17 00 00       	call   c00096f3 <intr_enable>
c0007f53:	58                   	pop    %eax
c0007f54:	5a                   	pop    %edx
c0007f55:	68 f8 d2 00 c0       	push   $0xc000d2f8
c0007f5a:	6a 07                	push   $0x7
c0007f5c:	e8 54 20 00 00       	call   c0009fb5 <put_str>
c0007f61:	59                   	pop    %ecx
c0007f62:	5b                   	pop    %ebx
c0007f63:	68 21 d3 00 c0       	push   $0xc000d321
c0007f68:	6a 07                	push   $0x7
c0007f6a:	e8 46 20 00 00       	call   c0009fb5 <put_str>
c0007f6f:	58                   	pop    %eax
c0007f70:	5a                   	pop    %edx
c0007f71:	68 5b d3 00 c0       	push   $0xc000d35b
c0007f76:	6a 07                	push   $0x7
c0007f78:	e8 38 20 00 00       	call   c0009fb5 <put_str>
c0007f7d:	e8 28 06 00 00       	call   c00085aa <cpu_info>
c0007f82:	59                   	pop    %ecx
c0007f83:	5b                   	pop    %ebx
c0007f84:	6a 0a                	push   $0xa
c0007f86:	6a 07                	push   $0x7
c0007f88:	e8 87 1f 00 00       	call   c0009f14 <put_char>
c0007f8d:	58                   	pop    %eax
c0007f8e:	5a                   	pop    %edx
c0007f8f:	68 64 d3 00 c0       	push   $0xc000d364
c0007f94:	6a 07                	push   $0x7
c0007f96:	e8 1a 20 00 00       	call   c0009fb5 <put_str>
c0007f9b:	83 c4 0c             	add    $0xc,%esp
c0007f9e:	6a 0a                	push   $0xa
c0007fa0:	a1 00 7c 00 00       	mov    0x7c00,%eax
c0007fa5:	c1 e8 14             	shr    $0x14,%eax
c0007fa8:	50                   	push   %eax
c0007fa9:	6a 07                	push   $0x7
c0007fab:	e8 67 20 00 00       	call   c000a017 <put_int>
c0007fb0:	59                   	pop    %ecx
c0007fb1:	5b                   	pop    %ebx
c0007fb2:	68 6d d3 00 c0       	push   $0xc000d36d
c0007fb7:	6a 07                	push   $0x7
c0007fb9:	e8 f7 1f 00 00       	call   c0009fb5 <put_str>
c0007fbe:	83 c4 0c             	add    $0xc,%esp
c0007fc1:	6a 0a                	push   $0xa
c0007fc3:	a1 00 7c 00 00       	mov    0x7c00,%eax
c0007fc8:	c1 e8 0a             	shr    $0xa,%eax
c0007fcb:	50                   	push   %eax
c0007fcc:	6a 07                	push   $0x7
c0007fce:	e8 44 20 00 00       	call   c000a017 <put_int>
c0007fd3:	58                   	pop    %eax
c0007fd4:	5a                   	pop    %edx
c0007fd5:	68 73 d3 00 c0       	push   $0xc000d373
c0007fda:	6a 07                	push   $0x7
c0007fdc:	e8 d4 1f 00 00       	call   c0009fb5 <put_str>
c0007fe1:	59                   	pop    %ecx
c0007fe2:	5b                   	pop    %ebx
c0007fe3:	6a 0a                	push   $0xa
c0007fe5:	6a 07                	push   $0x7
c0007fe7:	e8 28 1f 00 00       	call   c0009f14 <put_char>
c0007fec:	58                   	pop    %eax
c0007fed:	5a                   	pop    %edx
c0007fee:	68 79 d3 00 c0       	push   $0xc000d379
c0007ff3:	6a 07                	push   $0x7
c0007ff5:	e8 bb 1f 00 00       	call   c0009fb5 <put_str>
c0007ffa:	83 c4 0c             	add    $0xc,%esp
c0007ffd:	6a 0a                	push   $0xa
c0007fff:	ff 35 08 7c 00 00    	pushl  0x7c08
c0008005:	6a 07                	push   $0x7
c0008007:	e8 0b 20 00 00       	call   c000a017 <put_int>
c000800c:	59                   	pop    %ecx
c000800d:	5b                   	pop    %ebx
c000800e:	6a 0a                	push   $0xa
c0008010:	6a 07                	push   $0x7
c0008012:	e8 fd 1e 00 00       	call   c0009f14 <put_char>
c0008017:	c7 04 24 82 d3 00 c0 	movl   $0xc000d382,(%esp)
c000801e:	68 ff ff ff 00       	push   $0xffffff
c0008023:	6a 14                	push   $0x14
c0008025:	6a 14                	push   $0x14
c0008027:	68 48 df 00 c0       	push   $0xc000df48
c000802c:	e8 49 0a 00 00       	call   c0008a7a <put_str_graphic>
c0008031:	83 c4 14             	add    $0x14,%esp
c0008034:	68 a9 d3 00 c0       	push   $0xc000d3a9
c0008039:	68 ff ff ff 00       	push   $0xffffff
c000803e:	6a 28                	push   $0x28
c0008040:	6a 14                	push   $0x14
c0008042:	68 48 df 00 c0       	push   $0xc000df48
c0008047:	e8 2e 0a 00 00       	call   c0008a7a <put_str_graphic>
c000804c:	83 c4 18             	add    $0x18,%esp
c000804f:	68 e2 d3 00 c0       	push   $0xc000d3e2
c0008054:	6a 07                	push   $0x7
c0008056:	e8 5a 1f 00 00       	call   c0009fb5 <put_str>
c000805b:	58                   	pop    %eax
c000805c:	5a                   	pop    %edx
c000805d:	68 e7 d3 00 c0       	push   $0xc000d3e7
c0008062:	6a 07                	push   $0x7
c0008064:	e8 4c 1f 00 00       	call   c0009fb5 <put_str>
c0008069:	e8 11 24 00 00       	call   c000a47f <running_thread>
c000806e:	83 c4 0c             	add    $0xc,%esp
c0008071:	6a 10                	push   $0x10
c0008073:	50                   	push   %eax
c0008074:	6a 07                	push   $0x7
c0008076:	e8 62 1f 00 00       	call   c0009fdd <put_uint>
c000807b:	59                   	pop    %ecx
c000807c:	5b                   	pop    %ebx
c000807d:	68 f8 d3 00 c0       	push   $0xc000d3f8
c0008082:	6a 07                	push   $0x7
c0008084:	e8 2c 1f 00 00       	call   c0009fb5 <put_str>
c0008089:	83 c4 10             	add    $0x10,%esp
c000808c:	eb fe                	jmp    c000808c <kernel_main+0x168>

c000808e <k_thread_a>:
c000808e:	55                   	push   %ebp
c000808f:	89 e5                	mov    %esp,%ebp
c0008091:	57                   	push   %edi
c0008092:	56                   	push   %esi
c0008093:	53                   	push   %ebx
c0008094:	83 ec 28             	sub    $0x28,%esp
c0008097:	c7 45 e2 30 30 30 30 	movl   $0x30303030,-0x1e(%ebp)
c000809e:	8d 5d e2             	lea    -0x1e(%ebp),%ebx
c00080a1:	66 c7 45 e6 30 00    	movw   $0x30,-0x1a(%ebp)
c00080a7:	8b 35 1c 7c 00 00    	mov    0x7c1c,%esi
c00080ad:	68 30 df 00 c0       	push   $0xc000df30
c00080b2:	e8 25 27 00 00       	call   c000a7dc <get_time>
c00080b7:	83 c4 10             	add    $0x10,%esp
c00080ba:	83 ee 22             	sub    $0x22,%esi
c00080bd:	8b 15 1c 7c 00 00    	mov    0x7c1c,%edx
c00080c3:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080c8:	51                   	push   %ecx
c00080c9:	8b 3d 30 df 00 c0    	mov    0xc000df30,%edi
c00080cf:	51                   	push   %ecx
c00080d0:	8d 4a f8             	lea    -0x8(%edx),%ecx
c00080d3:	83 ea 26             	sub    $0x26,%edx
c00080d6:	51                   	push   %ecx
c00080d7:	8d 48 f9             	lea    -0x7(%eax),%ecx
c00080da:	2d d1 00 00 00       	sub    $0xd1,%eax
c00080df:	51                   	push   %ecx
c00080e0:	52                   	push   %edx
c00080e1:	50                   	push   %eax
c00080e2:	68 84 84 84 00       	push   $0x848484
c00080e7:	68 48 df 00 c0       	push   $0xc000df48
c00080ec:	e8 9b 07 00 00       	call   c000888c <RectangleFill>
c00080f1:	8b 15 1c 7c 00 00    	mov    0x7c1c,%edx
c00080f7:	83 c4 18             	add    $0x18,%esp
c00080fa:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080ff:	8d 4a f5             	lea    -0xb(%edx),%ecx
c0008102:	83 ea 29             	sub    $0x29,%edx
c0008105:	51                   	push   %ecx
c0008106:	8d 48 f6             	lea    -0xa(%eax),%ecx
c0008109:	2d d4 00 00 00       	sub    $0xd4,%eax
c000810e:	51                   	push   %ecx
c000810f:	52                   	push   %edx
c0008110:	50                   	push   %eax
c0008111:	68 ff ff ff 00       	push   $0xffffff
c0008116:	68 48 df 00 c0       	push   $0xc000df48
c000811b:	e8 6c 07 00 00       	call   c000888c <RectangleFill>
c0008120:	a1 44 df 00 c0       	mov    0xc000df44,%eax
c0008125:	83 c4 1c             	add    $0x1c,%esp
c0008128:	6a 10                	push   $0x10
c000812a:	53                   	push   %ebx
c000812b:	50                   	push   %eax
c000812c:	e8 af 1c 00 00       	call   c0009de0 <itoa>
c0008131:	89 1c 24             	mov    %ebx,(%esp)
c0008134:	6a 00                	push   $0x0
c0008136:	56                   	push   %esi
c0008137:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000813c:	2d ca 00 00 00       	sub    $0xca,%eax
c0008141:	50                   	push   %eax
c0008142:	68 48 df 00 c0       	push   $0xc000df48
c0008147:	e8 2e 09 00 00       	call   c0008a7a <put_str_graphic>
c000814c:	83 c4 14             	add    $0x14,%esp
c000814f:	6a 2f                	push   $0x2f
c0008151:	6a 00                	push   $0x0
c0008153:	56                   	push   %esi
c0008154:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008159:	2d a2 00 00 00       	sub    $0xa2,%eax
c000815e:	50                   	push   %eax
c000815f:	68 48 df 00 c0       	push   $0xc000df48
c0008164:	e8 8d 08 00 00       	call   c00089f6 <put_char_graphic>
c0008169:	a1 40 df 00 c0       	mov    0xc000df40,%eax
c000816e:	83 c4 1c             	add    $0x1c,%esp
c0008171:	6a 10                	push   $0x10
c0008173:	53                   	push   %ebx
c0008174:	50                   	push   %eax
c0008175:	e8 66 1c 00 00       	call   c0009de0 <itoa>
c000817a:	89 1c 24             	mov    %ebx,(%esp)
c000817d:	6a 00                	push   $0x0
c000817f:	56                   	push   %esi
c0008180:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008185:	2d 98 00 00 00       	sub    $0x98,%eax
c000818a:	50                   	push   %eax
c000818b:	68 48 df 00 c0       	push   $0xc000df48
c0008190:	e8 e5 08 00 00       	call   c0008a7a <put_str_graphic>
c0008195:	83 c4 14             	add    $0x14,%esp
c0008198:	6a 2f                	push   $0x2f
c000819a:	6a 00                	push   $0x0
c000819c:	56                   	push   %esi
c000819d:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00081a2:	2d 84 00 00 00       	sub    $0x84,%eax
c00081a7:	50                   	push   %eax
c00081a8:	68 48 df 00 c0       	push   $0xc000df48
c00081ad:	e8 44 08 00 00       	call   c00089f6 <put_char_graphic>
c00081b2:	a1 3c df 00 c0       	mov    0xc000df3c,%eax
c00081b7:	83 c4 1c             	add    $0x1c,%esp
c00081ba:	6a 10                	push   $0x10
c00081bc:	53                   	push   %ebx
c00081bd:	50                   	push   %eax
c00081be:	e8 1d 1c 00 00       	call   c0009de0 <itoa>
c00081c3:	89 1c 24             	mov    %ebx,(%esp)
c00081c6:	6a 00                	push   $0x0
c00081c8:	56                   	push   %esi
c00081c9:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00081ce:	83 e8 7a             	sub    $0x7a,%eax
c00081d1:	50                   	push   %eax
c00081d2:	68 48 df 00 c0       	push   $0xc000df48
c00081d7:	e8 9e 08 00 00       	call   c0008a7a <put_str_graphic>
c00081dc:	83 c4 14             	add    $0x14,%esp
c00081df:	6a 20                	push   $0x20
c00081e1:	6a 00                	push   $0x0
c00081e3:	56                   	push   %esi
c00081e4:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00081e9:	83 e8 66             	sub    $0x66,%eax
c00081ec:	50                   	push   %eax
c00081ed:	68 48 df 00 c0       	push   $0xc000df48
c00081f2:	e8 ff 07 00 00       	call   c00089f6 <put_char_graphic>
c00081f7:	a1 38 df 00 c0       	mov    0xc000df38,%eax
c00081fc:	83 c4 1c             	add    $0x1c,%esp
c00081ff:	6a 10                	push   $0x10
c0008201:	53                   	push   %ebx
c0008202:	50                   	push   %eax
c0008203:	e8 d8 1b 00 00       	call   c0009de0 <itoa>
c0008208:	89 1c 24             	mov    %ebx,(%esp)
c000820b:	6a 00                	push   $0x0
c000820d:	56                   	push   %esi
c000820e:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008213:	83 e8 5c             	sub    $0x5c,%eax
c0008216:	50                   	push   %eax
c0008217:	68 48 df 00 c0       	push   $0xc000df48
c000821c:	e8 59 08 00 00       	call   c0008a7a <put_str_graphic>
c0008221:	83 c4 14             	add    $0x14,%esp
c0008224:	6a 3a                	push   $0x3a
c0008226:	6a 00                	push   $0x0
c0008228:	56                   	push   %esi
c0008229:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000822e:	83 e8 48             	sub    $0x48,%eax
c0008231:	50                   	push   %eax
c0008232:	68 48 df 00 c0       	push   $0xc000df48
c0008237:	e8 ba 07 00 00       	call   c00089f6 <put_char_graphic>
c000823c:	a1 34 df 00 c0       	mov    0xc000df34,%eax
c0008241:	83 c4 1c             	add    $0x1c,%esp
c0008244:	6a 10                	push   $0x10
c0008246:	53                   	push   %ebx
c0008247:	50                   	push   %eax
c0008248:	e8 93 1b 00 00       	call   c0009de0 <itoa>
c000824d:	89 1c 24             	mov    %ebx,(%esp)
c0008250:	6a 00                	push   $0x0
c0008252:	56                   	push   %esi
c0008253:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008258:	83 e8 3e             	sub    $0x3e,%eax
c000825b:	50                   	push   %eax
c000825c:	68 48 df 00 c0       	push   $0xc000df48
c0008261:	e8 14 08 00 00       	call   c0008a7a <put_str_graphic>
c0008266:	83 c4 14             	add    $0x14,%esp
c0008269:	6a 3a                	push   $0x3a
c000826b:	6a 00                	push   $0x0
c000826d:	56                   	push   %esi
c000826e:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008273:	83 e8 2a             	sub    $0x2a,%eax
c0008276:	50                   	push   %eax
c0008277:	68 48 df 00 c0       	push   $0xc000df48
c000827c:	e8 75 07 00 00       	call   c00089f6 <put_char_graphic>
c0008281:	a1 30 df 00 c0       	mov    0xc000df30,%eax
c0008286:	83 c4 1c             	add    $0x1c,%esp
c0008289:	6a 10                	push   $0x10
c000828b:	53                   	push   %ebx
c000828c:	50                   	push   %eax
c000828d:	e8 4e 1b 00 00       	call   c0009de0 <itoa>
c0008292:	89 1c 24             	mov    %ebx,(%esp)
c0008295:	6a 00                	push   $0x0
c0008297:	56                   	push   %esi
c0008298:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000829d:	83 e8 20             	sub    $0x20,%eax
c00082a0:	50                   	push   %eax
c00082a1:	68 48 df 00 c0       	push   $0xc000df48
c00082a6:	e8 cf 07 00 00       	call   c0008a7a <put_str_graphic>
c00082ab:	83 c4 20             	add    $0x20,%esp
c00082ae:	eb 10                	jmp    c00082c0 <k_thread_a+0x232>
c00082b0:	83 ec 0c             	sub    $0xc,%esp
c00082b3:	68 30 df 00 c0       	push   $0xc000df30
c00082b8:	e8 1f 25 00 00       	call   c000a7dc <get_time>
c00082bd:	83 c4 10             	add    $0x10,%esp
c00082c0:	a1 30 df 00 c0       	mov    0xc000df30,%eax
c00082c5:	39 f8                	cmp    %edi,%eax
c00082c7:	74 e7                	je     c00082b0 <k_thread_a+0x222>
c00082c9:	e9 ef fd ff ff       	jmp    c00080bd <k_thread_a+0x2f>

c00082ce <k_thread_b>:
c00082ce:	55                   	push   %ebp
c00082cf:	89 e5                	mov    %esp,%ebp
c00082d1:	eb fe                	jmp    c00082d1 <k_thread_b+0x3>
	...

c00082d4 <bitmap_init>:
c00082d4:	55                   	push   %ebp
c00082d5:	89 e5                	mov    %esp,%ebp
c00082d7:	83 ec 0c             	sub    $0xc,%esp
c00082da:	8b 45 08             	mov    0x8(%ebp),%eax
c00082dd:	ff 30                	pushl  (%eax)
c00082df:	6a 00                	push   $0x0
c00082e1:	ff 70 04             	pushl  0x4(%eax)
c00082e4:	e8 6b 1d 00 00       	call   c000a054 <memset>
c00082e9:	83 c4 10             	add    $0x10,%esp
c00082ec:	c9                   	leave  
c00082ed:	c3                   	ret    

c00082ee <bitmap_scan_test>:
c00082ee:	55                   	push   %ebp
c00082ef:	89 e5                	mov    %esp,%ebp
c00082f1:	8b 55 08             	mov    0x8(%ebp),%edx
c00082f4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00082f7:	5d                   	pop    %ebp
c00082f8:	8b 52 04             	mov    0x4(%edx),%edx
c00082fb:	89 c8                	mov    %ecx,%eax
c00082fd:	83 e1 07             	and    $0x7,%ecx
c0008300:	c1 e8 03             	shr    $0x3,%eax
c0008303:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0008307:	ba 01 00 00 00       	mov    $0x1,%edx
c000830c:	d3 e2                	shl    %cl,%edx
c000830e:	21 d0                	and    %edx,%eax
c0008310:	c3                   	ret    

c0008311 <bitmap_alloc>:
c0008311:	55                   	push   %ebp
c0008312:	89 e5                	mov    %esp,%ebp
c0008314:	57                   	push   %edi
c0008315:	56                   	push   %esi
c0008316:	31 f6                	xor    %esi,%esi
c0008318:	53                   	push   %ebx
c0008319:	83 ec 1c             	sub    $0x1c,%esp
c000831c:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000831f:	8b 43 04             	mov    0x4(%ebx),%eax
c0008322:	eb 01                	jmp    c0008325 <bitmap_alloc+0x14>
c0008324:	46                   	inc    %esi
c0008325:	80 3c 30 ff          	cmpb   $0xff,(%eax,%esi,1)
c0008329:	75 04                	jne    c000832f <bitmap_alloc+0x1e>
c000832b:	3b 33                	cmp    (%ebx),%esi
c000832d:	72 f5                	jb     c0008324 <bitmap_alloc+0x13>
c000832f:	3b 33                	cmp    (%ebx),%esi
c0008331:	72 19                	jb     c000834c <bitmap_alloc+0x3b>
c0008333:	68 24 d4 00 c0       	push   $0xc000d424
c0008338:	68 98 d4 00 c0       	push   $0xc000d498
c000833d:	6a 2e                	push   $0x2e
c000833f:	68 48 d4 00 c0       	push   $0xc000d448
c0008344:	e8 c7 02 00 00       	call   c0008610 <panic_spin>
c0008349:	83 c4 10             	add    $0x10,%esp
c000834c:	8b 13                	mov    (%ebx),%edx
c000834e:	83 c8 ff             	or     $0xffffffff,%eax
c0008351:	39 d6                	cmp    %edx,%esi
c0008353:	74 72                	je     c00083c7 <bitmap_alloc+0xb6>
c0008355:	8b 43 04             	mov    0x4(%ebx),%eax
c0008358:	31 c9                	xor    %ecx,%ecx
c000835a:	bf 01 00 00 00       	mov    $0x1,%edi
c000835f:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0008362:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0008365:	8a 04 30             	mov    (%eax,%esi,1),%al
c0008368:	eb 01                	jmp    c000836b <bitmap_alloc+0x5a>
c000836a:	41                   	inc    %ecx
c000836b:	89 fe                	mov    %edi,%esi
c000836d:	d3 e6                	shl    %cl,%esi
c000836f:	89 f2                	mov    %esi,%edx
c0008371:	84 d0                	test   %dl,%al
c0008373:	75 f5                	jne    c000836a <bitmap_alloc+0x59>
c0008375:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0008378:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
c000837c:	8b 55 dc             	mov    -0x24(%ebp),%edx
c000837f:	8d 0c f1             	lea    (%ecx,%esi,8),%ecx
c0008382:	89 c8                	mov    %ecx,%eax
c0008384:	74 41                	je     c00083c7 <bitmap_alloc+0xb6>
c0008386:	8d 3c d5 00 00 00 00 	lea    0x0(,%edx,8),%edi
c000838d:	be 01 00 00 00       	mov    $0x1,%esi
c0008392:	29 cf                	sub    %ecx,%edi
c0008394:	8d 51 01             	lea    0x1(%ecx),%edx
c0008397:	eb 27                	jmp    c00083c0 <bitmap_alloc+0xaf>
c0008399:	50                   	push   %eax
c000839a:	46                   	inc    %esi
c000839b:	50                   	push   %eax
c000839c:	52                   	push   %edx
c000839d:	53                   	push   %ebx
c000839e:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00083a1:	e8 48 ff ff ff       	call   c00082ee <bitmap_scan_test>
c00083a6:	83 c4 10             	add    $0x10,%esp
c00083a9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00083ac:	85 c0                	test   %eax,%eax
c00083ae:	74 02                	je     c00083b2 <bitmap_alloc+0xa1>
c00083b0:	31 f6                	xor    %esi,%esi
c00083b2:	3b 75 0c             	cmp    0xc(%ebp),%esi
c00083b5:	75 07                	jne    c00083be <bitmap_alloc+0xad>
c00083b7:	29 f2                	sub    %esi,%edx
c00083b9:	8d 42 01             	lea    0x1(%edx),%eax
c00083bc:	eb 09                	jmp    c00083c7 <bitmap_alloc+0xb6>
c00083be:	4f                   	dec    %edi
c00083bf:	42                   	inc    %edx
c00083c0:	85 ff                	test   %edi,%edi
c00083c2:	75 d5                	jne    c0008399 <bitmap_alloc+0x88>
c00083c4:	83 c8 ff             	or     $0xffffffff,%eax
c00083c7:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00083ca:	5b                   	pop    %ebx
c00083cb:	5e                   	pop    %esi
c00083cc:	5f                   	pop    %edi
c00083cd:	5d                   	pop    %ebp
c00083ce:	c3                   	ret    

c00083cf <bitmap_set>:
c00083cf:	55                   	push   %ebp
c00083d0:	89 e5                	mov    %esp,%ebp
c00083d2:	57                   	push   %edi
c00083d3:	56                   	push   %esi
c00083d4:	53                   	push   %ebx
c00083d5:	83 ec 0c             	sub    $0xc,%esp
c00083d8:	8a 5d 10             	mov    0x10(%ebp),%bl
c00083db:	8b 75 08             	mov    0x8(%ebp),%esi
c00083de:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00083e1:	80 fb 01             	cmp    $0x1,%bl
c00083e4:	76 19                	jbe    c00083ff <bitmap_set+0x30>
c00083e6:	68 55 d4 00 c0       	push   $0xc000d455
c00083eb:	68 a8 d4 00 c0       	push   $0xc000d4a8
c00083f0:	6a 65                	push   $0x65
c00083f2:	68 48 d4 00 c0       	push   $0xc000d448
c00083f7:	e8 14 02 00 00       	call   c0008610 <panic_spin>
c00083fc:	83 c4 10             	add    $0x10,%esp
c00083ff:	89 fa                	mov    %edi,%edx
c0008401:	89 f9                	mov    %edi,%ecx
c0008403:	c1 ea 03             	shr    $0x3,%edx
c0008406:	83 e1 07             	and    $0x7,%ecx
c0008409:	84 db                	test   %bl,%bl
c000840b:	74 06                	je     c0008413 <bitmap_set+0x44>
c000840d:	fe cb                	dec    %bl
c000840f:	75 1e                	jne    c000842f <bitmap_set+0x60>
c0008411:	eb 10                	jmp    c0008423 <bitmap_set+0x54>
c0008413:	03 56 04             	add    0x4(%esi),%edx
c0008416:	b8 01 00 00 00       	mov    $0x1,%eax
c000841b:	d3 e0                	shl    %cl,%eax
c000841d:	f7 d0                	not    %eax
c000841f:	20 02                	and    %al,(%edx)
c0008421:	eb 0c                	jmp    c000842f <bitmap_set+0x60>
c0008423:	03 56 04             	add    0x4(%esi),%edx
c0008426:	b8 01 00 00 00       	mov    $0x1,%eax
c000842b:	d3 e0                	shl    %cl,%eax
c000842d:	08 02                	or     %al,(%edx)
c000842f:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008432:	5b                   	pop    %ebx
c0008433:	5e                   	pop    %esi
c0008434:	5f                   	pop    %edi
c0008435:	5d                   	pop    %ebp
c0008436:	c3                   	ret    
	...

c0008438 <init_console>:
c0008438:	55                   	push   %ebp
c0008439:	89 e5                	mov    %esp,%ebp
c000843b:	83 ec 14             	sub    $0x14,%esp
c000843e:	68 b0 de 00 c0       	push   $0xc000deb0
c0008443:	e8 3f 1d 00 00       	call   c000a187 <lock_init>
c0008448:	83 c4 10             	add    $0x10,%esp
c000844b:	c9                   	leave  
c000844c:	c3                   	ret    

c000844d <console_char>:
c000844d:	55                   	push   %ebp
c000844e:	89 e5                	mov    %esp,%ebp
c0008450:	56                   	push   %esi
c0008451:	8b 75 0c             	mov    0xc(%ebp),%esi
c0008454:	53                   	push   %ebx
c0008455:	8a 5d 08             	mov    0x8(%ebp),%bl
c0008458:	83 ec 0c             	sub    $0xc,%esp
c000845b:	68 b0 de 00 c0       	push   $0xc000deb0
c0008460:	e8 ae 1e 00 00       	call   c000a313 <lock_acquire>
c0008465:	58                   	pop    %eax
c0008466:	5a                   	pop    %edx
c0008467:	89 f2                	mov    %esi,%edx
c0008469:	0f b6 c2             	movzbl %dl,%eax
c000846c:	50                   	push   %eax
c000846d:	0f b6 c3             	movzbl %bl,%eax
c0008470:	50                   	push   %eax
c0008471:	e8 9e 1a 00 00       	call   c0009f14 <put_char>
c0008476:	83 c4 10             	add    $0x10,%esp
c0008479:	c7 45 08 b0 de 00 c0 	movl   $0xc000deb0,0x8(%ebp)
c0008480:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0008483:	5b                   	pop    %ebx
c0008484:	5e                   	pop    %esi
c0008485:	5d                   	pop    %ebp
c0008486:	e9 e3 1e 00 00       	jmp    c000a36e <lock_release>

c000848b <console_str>:
c000848b:	55                   	push   %ebp
c000848c:	89 e5                	mov    %esp,%ebp
c000848e:	56                   	push   %esi
c000848f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0008492:	53                   	push   %ebx
c0008493:	8a 5d 08             	mov    0x8(%ebp),%bl
c0008496:	83 ec 0c             	sub    $0xc,%esp
c0008499:	68 b0 de 00 c0       	push   $0xc000deb0
c000849e:	e8 70 1e 00 00       	call   c000a313 <lock_acquire>
c00084a3:	59                   	pop    %ecx
c00084a4:	58                   	pop    %eax
c00084a5:	0f b6 c3             	movzbl %bl,%eax
c00084a8:	56                   	push   %esi
c00084a9:	50                   	push   %eax
c00084aa:	e8 06 1b 00 00       	call   c0009fb5 <put_str>
c00084af:	83 c4 10             	add    $0x10,%esp
c00084b2:	c7 45 08 b0 de 00 c0 	movl   $0xc000deb0,0x8(%ebp)
c00084b9:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00084bc:	5b                   	pop    %ebx
c00084bd:	5e                   	pop    %esi
c00084be:	5d                   	pop    %ebp
c00084bf:	e9 aa 1e 00 00       	jmp    c000a36e <lock_release>

c00084c4 <console_int>:
c00084c4:	55                   	push   %ebp
c00084c5:	89 e5                	mov    %esp,%ebp
c00084c7:	57                   	push   %edi
c00084c8:	56                   	push   %esi
c00084c9:	53                   	push   %ebx
c00084ca:	83 ec 18             	sub    $0x18,%esp
c00084cd:	8b 7d 10             	mov    0x10(%ebp),%edi
c00084d0:	8b 75 0c             	mov    0xc(%ebp),%esi
c00084d3:	8a 5d 08             	mov    0x8(%ebp),%bl
c00084d6:	68 b0 de 00 c0       	push   $0xc000deb0
c00084db:	e8 33 1e 00 00       	call   c000a313 <lock_acquire>
c00084e0:	83 c4 0c             	add    $0xc,%esp
c00084e3:	57                   	push   %edi
c00084e4:	56                   	push   %esi
c00084e5:	0f b6 c3             	movzbl %bl,%eax
c00084e8:	50                   	push   %eax
c00084e9:	e8 29 1b 00 00       	call   c000a017 <put_int>
c00084ee:	83 c4 10             	add    $0x10,%esp
c00084f1:	c7 45 08 b0 de 00 c0 	movl   $0xc000deb0,0x8(%ebp)
c00084f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00084fb:	5b                   	pop    %ebx
c00084fc:	5e                   	pop    %esi
c00084fd:	5f                   	pop    %edi
c00084fe:	5d                   	pop    %ebp
c00084ff:	e9 6a 1e 00 00       	jmp    c000a36e <lock_release>

c0008504 <console_uint>:
c0008504:	55                   	push   %ebp
c0008505:	89 e5                	mov    %esp,%ebp
c0008507:	57                   	push   %edi
c0008508:	56                   	push   %esi
c0008509:	53                   	push   %ebx
c000850a:	83 ec 18             	sub    $0x18,%esp
c000850d:	8b 7d 10             	mov    0x10(%ebp),%edi
c0008510:	8b 75 0c             	mov    0xc(%ebp),%esi
c0008513:	8a 5d 08             	mov    0x8(%ebp),%bl
c0008516:	68 b0 de 00 c0       	push   $0xc000deb0
c000851b:	e8 f3 1d 00 00       	call   c000a313 <lock_acquire>
c0008520:	83 c4 0c             	add    $0xc,%esp
c0008523:	57                   	push   %edi
c0008524:	56                   	push   %esi
c0008525:	0f b6 c3             	movzbl %bl,%eax
c0008528:	50                   	push   %eax
c0008529:	e8 af 1a 00 00       	call   c0009fdd <put_uint>
c000852e:	83 c4 10             	add    $0x10,%esp
c0008531:	c7 45 08 b0 de 00 c0 	movl   $0xc000deb0,0x8(%ebp)
c0008538:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000853b:	5b                   	pop    %ebx
c000853c:	5e                   	pop    %esi
c000853d:	5f                   	pop    %edi
c000853e:	5d                   	pop    %ebp
c000853f:	e9 2a 1e 00 00       	jmp    c000a36e <lock_release>

c0008544 <init_cpu>:
c0008544:	55                   	push   %ebp
c0008545:	31 c0                	xor    %eax,%eax
c0008547:	89 e5                	mov    %esp,%ebp
c0008549:	b9 04 00 00 00       	mov    $0x4,%ecx
c000854e:	57                   	push   %edi
c000854f:	56                   	push   %esi
c0008550:	53                   	push   %ebx
c0008551:	8d 7d d8             	lea    -0x28(%ebp),%edi
c0008554:	83 ec 3c             	sub    $0x3c,%esp
c0008557:	f3 ab                	rep stos %eax,%es:(%edi)
c0008559:	8d 7d c7             	lea    -0x39(%ebp),%edi
c000855c:	8d 75 c7             	lea    -0x39(%ebp),%esi
c000855f:	b1 11                	mov    $0x11,%cl
c0008561:	f3 aa                	rep stos %al,%es:(%edi)
c0008563:	bf 02 00 00 80       	mov    $0x80000002,%edi
c0008568:	eb 30                	jmp    c000859a <init_cpu+0x56>
c000856a:	89 f8                	mov    %edi,%eax
c000856c:	31 c9                	xor    %ecx,%ecx
c000856e:	0f a2                	cpuid  
c0008570:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0008573:	47                   	inc    %edi
c0008574:	89 45 c7             	mov    %eax,-0x39(%ebp)
c0008577:	50                   	push   %eax
c0008578:	50                   	push   %eax
c0008579:	56                   	push   %esi
c000857a:	6a 07                	push   $0x7
c000857c:	89 5d dc             	mov    %ebx,-0x24(%ebp)
c000857f:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0008582:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0008585:	89 5d cb             	mov    %ebx,-0x35(%ebp)
c0008588:	89 4d cf             	mov    %ecx,-0x31(%ebp)
c000858b:	89 55 d3             	mov    %edx,-0x2d(%ebp)
c000858e:	c6 45 d7 00          	movb   $0x0,-0x29(%ebp)
c0008592:	e8 1e 1a 00 00       	call   c0009fb5 <put_str>
c0008597:	83 c4 10             	add    $0x10,%esp
c000859a:	81 ff 05 00 00 80    	cmp    $0x80000005,%edi
c00085a0:	75 c8                	jne    c000856a <init_cpu+0x26>
c00085a2:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00085a5:	5b                   	pop    %ebx
c00085a6:	5e                   	pop    %esi
c00085a7:	5f                   	pop    %edi
c00085a8:	5d                   	pop    %ebp
c00085a9:	c3                   	ret    

c00085aa <cpu_info>:
c00085aa:	55                   	push   %ebp
c00085ab:	31 c0                	xor    %eax,%eax
c00085ad:	89 e5                	mov    %esp,%ebp
c00085af:	b9 04 00 00 00       	mov    $0x4,%ecx
c00085b4:	57                   	push   %edi
c00085b5:	56                   	push   %esi
c00085b6:	53                   	push   %ebx
c00085b7:	8d 7d d8             	lea    -0x28(%ebp),%edi
c00085ba:	83 ec 3c             	sub    $0x3c,%esp
c00085bd:	f3 ab                	rep stos %eax,%es:(%edi)
c00085bf:	8d 7d c7             	lea    -0x39(%ebp),%edi
c00085c2:	8d 75 c7             	lea    -0x39(%ebp),%esi
c00085c5:	b1 11                	mov    $0x11,%cl
c00085c7:	f3 aa                	rep stos %al,%es:(%edi)
c00085c9:	bf 02 00 00 80       	mov    $0x80000002,%edi
c00085ce:	eb 30                	jmp    c0008600 <cpu_info+0x56>
c00085d0:	89 f8                	mov    %edi,%eax
c00085d2:	31 c9                	xor    %ecx,%ecx
c00085d4:	0f a2                	cpuid  
c00085d6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00085d9:	47                   	inc    %edi
c00085da:	89 55 d3             	mov    %edx,-0x2d(%ebp)
c00085dd:	52                   	push   %edx
c00085de:	52                   	push   %edx
c00085df:	56                   	push   %esi
c00085e0:	6a 07                	push   $0x7
c00085e2:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00085e5:	89 5d dc             	mov    %ebx,-0x24(%ebp)
c00085e8:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00085eb:	89 45 c7             	mov    %eax,-0x39(%ebp)
c00085ee:	89 5d cb             	mov    %ebx,-0x35(%ebp)
c00085f1:	89 4d cf             	mov    %ecx,-0x31(%ebp)
c00085f4:	c6 45 d7 00          	movb   $0x0,-0x29(%ebp)
c00085f8:	e8 b8 19 00 00       	call   c0009fb5 <put_str>
c00085fd:	83 c4 10             	add    $0x10,%esp
c0008600:	81 ff 05 00 00 80    	cmp    $0x80000005,%edi
c0008606:	75 c8                	jne    c00085d0 <cpu_info+0x26>
c0008608:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000860b:	5b                   	pop    %ebx
c000860c:	5e                   	pop    %esi
c000860d:	5f                   	pop    %edi
c000860e:	5d                   	pop    %ebp
c000860f:	c3                   	ret    

c0008610 <panic_spin>:
c0008610:	55                   	push   %ebp
c0008611:	89 e5                	mov    %esp,%ebp
c0008613:	83 ec 08             	sub    $0x8,%esp
c0008616:	e8 1a 10 00 00       	call   c0009635 <intr_disable>
c000861b:	52                   	push   %edx
c000861c:	52                   	push   %edx
c000861d:	68 04 d5 00 c0       	push   $0xc000d504
c0008622:	6a 04                	push   $0x4
c0008624:	e8 8c 19 00 00       	call   c0009fb5 <put_str>
c0008629:	59                   	pop    %ecx
c000862a:	58                   	pop    %eax
c000862b:	68 0c d5 00 c0       	push   $0xc000d50c
c0008630:	6a 04                	push   $0x4
c0008632:	e8 7e 19 00 00       	call   c0009fb5 <put_str>
c0008637:	58                   	pop    %eax
c0008638:	5a                   	pop    %edx
c0008639:	ff 75 08             	pushl  0x8(%ebp)
c000863c:	6a 04                	push   $0x4
c000863e:	e8 72 19 00 00       	call   c0009fb5 <put_str>
c0008643:	59                   	pop    %ecx
c0008644:	58                   	pop    %eax
c0008645:	6a 0a                	push   $0xa
c0008647:	6a 04                	push   $0x4
c0008649:	e8 c6 18 00 00       	call   c0009f14 <put_char>
c000864e:	58                   	pop    %eax
c000864f:	5a                   	pop    %edx
c0008650:	68 1b d5 00 c0       	push   $0xc000d51b
c0008655:	6a 04                	push   $0x4
c0008657:	e8 59 19 00 00       	call   c0009fb5 <put_str>
c000865c:	59                   	pop    %ecx
c000865d:	58                   	pop    %eax
c000865e:	ff 75 10             	pushl  0x10(%ebp)
c0008661:	6a 04                	push   $0x4
c0008663:	e8 4d 19 00 00       	call   c0009fb5 <put_str>
c0008668:	58                   	pop    %eax
c0008669:	5a                   	pop    %edx
c000866a:	6a 0a                	push   $0xa
c000866c:	6a 04                	push   $0x4
c000866e:	e8 a1 18 00 00       	call   c0009f14 <put_char>
c0008673:	59                   	pop    %ecx
c0008674:	58                   	pop    %eax
c0008675:	68 2a d5 00 c0       	push   $0xc000d52a
c000867a:	6a 04                	push   $0x4
c000867c:	e8 34 19 00 00       	call   c0009fb5 <put_str>
c0008681:	83 c4 0c             	add    $0xc,%esp
c0008684:	6a 0a                	push   $0xa
c0008686:	ff 75 0c             	pushl  0xc(%ebp)
c0008689:	6a 04                	push   $0x4
c000868b:	e8 87 19 00 00       	call   c000a017 <put_int>
c0008690:	58                   	pop    %eax
c0008691:	5a                   	pop    %edx
c0008692:	6a 0a                	push   $0xa
c0008694:	6a 04                	push   $0x4
c0008696:	e8 79 18 00 00       	call   c0009f14 <put_char>
c000869b:	59                   	pop    %ecx
c000869c:	58                   	pop    %eax
c000869d:	68 39 d5 00 c0       	push   $0xc000d539
c00086a2:	6a 04                	push   $0x4
c00086a4:	e8 0c 19 00 00       	call   c0009fb5 <put_str>
c00086a9:	58                   	pop    %eax
c00086aa:	5a                   	pop    %edx
c00086ab:	ff 75 14             	pushl  0x14(%ebp)
c00086ae:	6a 04                	push   $0x4
c00086b0:	e8 00 19 00 00       	call   c0009fb5 <put_str>
c00086b5:	83 c4 10             	add    $0x10,%esp
c00086b8:	eb fe                	jmp    c00086b8 <panic_spin+0xa8>
	...

c00086bc <init_fifo>:
c00086bc:	55                   	push   %ebp
c00086bd:	89 e5                	mov    %esp,%ebp
c00086bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00086c2:	8b 55 14             	mov    0x14(%ebp),%edx
c00086c5:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00086c8:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c00086cf:	89 50 08             	mov    %edx,0x8(%eax)
c00086d2:	89 48 04             	mov    %ecx,0x4(%eax)
c00086d5:	89 50 0c             	mov    %edx,0xc(%eax)
c00086d8:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00086df:	5d                   	pop    %ebp
c00086e0:	c3                   	ret    

c00086e1 <fifo_put>:
c00086e1:	55                   	push   %ebp
c00086e2:	89 e5                	mov    %esp,%ebp
c00086e4:	57                   	push   %edi
c00086e5:	56                   	push   %esi
c00086e6:	53                   	push   %ebx
c00086e7:	83 ec 0c             	sub    $0xc,%esp
c00086ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00086ed:	8b 75 0c             	mov    0xc(%ebp),%esi
c00086f0:	e8 40 0f 00 00       	call   c0009635 <intr_disable>
c00086f5:	8b 53 0c             	mov    0xc(%ebx),%edx
c00086f8:	85 d2                	test   %edx,%edx
c00086fa:	75 09                	jne    c0008705 <fifo_put+0x24>
c00086fc:	c7 43 18 01 00 00 00 	movl   $0x1,0x18(%ebx)
c0008703:	eb 5d                	jmp    c0008762 <fifo_put+0x81>
c0008705:	4a                   	dec    %edx
c0008706:	89 53 0c             	mov    %edx,0xc(%ebx)
c0008709:	8b 53 04             	mov    0x4(%ebx),%edx
c000870c:	83 fa 10             	cmp    $0x10,%edx
c000870f:	74 24                	je     c0008735 <fifo_put+0x54>
c0008711:	7f 07                	jg     c000871a <fifo_put+0x39>
c0008713:	83 fa 08             	cmp    $0x8,%edx
c0008716:	75 4a                	jne    c0008762 <fifo_put+0x81>
c0008718:	eb 0c                	jmp    c0008726 <fifo_put+0x45>
c000871a:	83 fa 20             	cmp    $0x20,%edx
c000871d:	74 24                	je     c0008743 <fifo_put+0x62>
c000871f:	83 fa 40             	cmp    $0x40,%edx
c0008722:	75 3e                	jne    c0008762 <fifo_put+0x81>
c0008724:	eb 29                	jmp    c000874f <fifo_put+0x6e>
c0008726:	0f b6 36             	movzbl (%esi),%esi
c0008729:	8b 0b                	mov    (%ebx),%ecx
c000872b:	8b 7b 14             	mov    0x14(%ebx),%edi
c000872e:	89 f2                	mov    %esi,%edx
c0008730:	88 14 39             	mov    %dl,(%ecx,%edi,1)
c0008733:	eb 3e                	jmp    c0008773 <fifo_put+0x92>
c0008735:	66 8b 36             	mov    (%esi),%si
c0008738:	8b 4b 14             	mov    0x14(%ebx),%ecx
c000873b:	8b 13                	mov    (%ebx),%edx
c000873d:	66 89 34 4a          	mov    %si,(%edx,%ecx,2)
c0008741:	eb 30                	jmp    c0008773 <fifo_put+0x92>
c0008743:	8b 36                	mov    (%esi),%esi
c0008745:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0008748:	8b 13                	mov    (%ebx),%edx
c000874a:	89 34 8a             	mov    %esi,(%edx,%ecx,4)
c000874d:	eb 24                	jmp    c0008773 <fifo_put+0x92>
c000874f:	8b 7e 04             	mov    0x4(%esi),%edi
c0008752:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0008755:	8b 36                	mov    (%esi),%esi
c0008757:	8b 13                	mov    (%ebx),%edx
c0008759:	89 34 ca             	mov    %esi,(%edx,%ecx,8)
c000875c:	89 7c ca 04          	mov    %edi,0x4(%edx,%ecx,8)
c0008760:	eb 11                	jmp    c0008773 <fifo_put+0x92>
c0008762:	83 ec 0c             	sub    $0xc,%esp
c0008765:	50                   	push   %eax
c0008766:	e8 9f 0f 00 00       	call   c000970a <intr_set_status>
c000876b:	83 c4 10             	add    $0x10,%esp
c000876e:	83 c8 ff             	or     $0xffffffff,%eax
c0008771:	eb 21                	jmp    c0008794 <fifo_put+0xb3>
c0008773:	8b 53 14             	mov    0x14(%ebx),%edx
c0008776:	42                   	inc    %edx
c0008777:	3b 53 08             	cmp    0x8(%ebx),%edx
c000877a:	89 53 14             	mov    %edx,0x14(%ebx)
c000877d:	75 07                	jne    c0008786 <fifo_put+0xa5>
c000877f:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0008786:	83 ec 0c             	sub    $0xc,%esp
c0008789:	50                   	push   %eax
c000878a:	e8 7b 0f 00 00       	call   c000970a <intr_set_status>
c000878f:	83 c4 10             	add    $0x10,%esp
c0008792:	31 c0                	xor    %eax,%eax
c0008794:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008797:	5b                   	pop    %ebx
c0008798:	5e                   	pop    %esi
c0008799:	5f                   	pop    %edi
c000879a:	5d                   	pop    %ebp
c000879b:	c3                   	ret    

c000879c <fifo_get>:
c000879c:	55                   	push   %ebp
c000879d:	89 e5                	mov    %esp,%ebp
c000879f:	57                   	push   %edi
c00087a0:	56                   	push   %esi
c00087a1:	53                   	push   %ebx
c00087a2:	83 ec 0c             	sub    $0xc,%esp
c00087a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00087a8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00087ab:	e8 85 0e 00 00       	call   c0009635 <intr_disable>
c00087b0:	89 c7                	mov    %eax,%edi
c00087b2:	8b 43 08             	mov    0x8(%ebx),%eax
c00087b5:	39 43 0c             	cmp    %eax,0xc(%ebx)
c00087b8:	75 19                	jne    c00087d3 <fifo_get+0x37>
c00087ba:	68 70 d5 00 c0       	push   $0xc000d570
c00087bf:	68 c0 d5 00 c0       	push   $0xc000d5c0
c00087c4:	6a 46                	push   $0x46
c00087c6:	68 8c d5 00 c0       	push   $0xc000d58c
c00087cb:	e8 40 fe ff ff       	call   c0008610 <panic_spin>
c00087d0:	83 c4 10             	add    $0x10,%esp
c00087d3:	8b 43 0c             	mov    0xc(%ebx),%eax
c00087d6:	3b 43 08             	cmp    0x8(%ebx),%eax
c00087d9:	75 11                	jne    c00087ec <fifo_get+0x50>
c00087db:	83 ec 0c             	sub    $0xc,%esp
c00087de:	57                   	push   %edi
c00087df:	e8 26 0f 00 00       	call   c000970a <intr_set_status>
c00087e4:	83 c4 10             	add    $0x10,%esp
c00087e7:	83 c8 ff             	or     $0xffffffff,%eax
c00087ea:	eb 71                	jmp    c000885d <fifo_get+0xc1>
c00087ec:	8b 53 04             	mov    0x4(%ebx),%edx
c00087ef:	40                   	inc    %eax
c00087f0:	89 43 0c             	mov    %eax,0xc(%ebx)
c00087f3:	8b 43 10             	mov    0x10(%ebx),%eax
c00087f6:	83 fa 10             	cmp    $0x10,%edx
c00087f9:	74 1e                	je     c0008819 <fifo_get+0x7d>
c00087fb:	7f 07                	jg     c0008804 <fifo_get+0x68>
c00087fd:	83 fa 08             	cmp    $0x8,%edx
c0008800:	75 3a                	jne    c000883c <fifo_get+0xa0>
c0008802:	eb 0c                	jmp    c0008810 <fifo_get+0x74>
c0008804:	83 fa 20             	cmp    $0x20,%edx
c0008807:	74 1b                	je     c0008824 <fifo_get+0x88>
c0008809:	83 fa 40             	cmp    $0x40,%edx
c000880c:	75 2e                	jne    c000883c <fifo_get+0xa0>
c000880e:	eb 1d                	jmp    c000882d <fifo_get+0x91>
c0008810:	8b 13                	mov    (%ebx),%edx
c0008812:	8a 04 02             	mov    (%edx,%eax,1),%al
c0008815:	88 06                	mov    %al,(%esi)
c0008817:	eb 23                	jmp    c000883c <fifo_get+0xa0>
c0008819:	8b 13                	mov    (%ebx),%edx
c000881b:	66 8b 04 42          	mov    (%edx,%eax,2),%ax
c000881f:	66 89 06             	mov    %ax,(%esi)
c0008822:	eb 18                	jmp    c000883c <fifo_get+0xa0>
c0008824:	8b 13                	mov    (%ebx),%edx
c0008826:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0008829:	89 06                	mov    %eax,(%esi)
c000882b:	eb 0f                	jmp    c000883c <fifo_get+0xa0>
c000882d:	8b 13                	mov    (%ebx),%edx
c000882f:	8d 14 c2             	lea    (%edx,%eax,8),%edx
c0008832:	8b 02                	mov    (%edx),%eax
c0008834:	8b 52 04             	mov    0x4(%edx),%edx
c0008837:	89 06                	mov    %eax,(%esi)
c0008839:	89 56 04             	mov    %edx,0x4(%esi)
c000883c:	8b 43 10             	mov    0x10(%ebx),%eax
c000883f:	40                   	inc    %eax
c0008840:	3b 43 08             	cmp    0x8(%ebx),%eax
c0008843:	89 43 10             	mov    %eax,0x10(%ebx)
c0008846:	75 07                	jne    c000884f <fifo_get+0xb3>
c0008848:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c000884f:	83 ec 0c             	sub    $0xc,%esp
c0008852:	57                   	push   %edi
c0008853:	e8 b2 0e 00 00       	call   c000970a <intr_set_status>
c0008858:	83 c4 10             	add    $0x10,%esp
c000885b:	31 c0                	xor    %eax,%eax
c000885d:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008860:	5b                   	pop    %ebx
c0008861:	5e                   	pop    %esi
c0008862:	5f                   	pop    %edi
c0008863:	5d                   	pop    %ebp
c0008864:	c3                   	ret    

c0008865 <fifo_empty>:
c0008865:	55                   	push   %ebp
c0008866:	89 e5                	mov    %esp,%ebp
c0008868:	8b 45 08             	mov    0x8(%ebp),%eax
c000886b:	5d                   	pop    %ebp
c000886c:	8b 50 08             	mov    0x8(%eax),%edx
c000886f:	39 50 0c             	cmp    %edx,0xc(%eax)
c0008872:	0f 94 c0             	sete   %al
c0008875:	0f b6 c0             	movzbl %al,%eax
c0008878:	c3                   	ret    

c0008879 <fifo_fill>:
c0008879:	55                   	push   %ebp
c000887a:	89 e5                	mov    %esp,%ebp
c000887c:	8b 45 08             	mov    0x8(%ebp),%eax
c000887f:	5d                   	pop    %ebp
c0008880:	83 78 0c 00          	cmpl   $0x0,0xc(%eax)
c0008884:	0f 94 c0             	sete   %al
c0008887:	0f b6 c0             	movzbl %al,%eax
c000888a:	c3                   	ret    
	...

c000888c <RectangleFill>:
c000888c:	55                   	push   %ebp
c000888d:	89 e5                	mov    %esp,%ebp
c000888f:	57                   	push   %edi
c0008890:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0008893:	56                   	push   %esi
c0008894:	8b 45 14             	mov    0x14(%ebp),%eax
c0008897:	53                   	push   %ebx
c0008898:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000889b:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c00088a2:	75 30                	jne    c00088d4 <RectangleFill+0x48>
c00088a4:	89 ca                	mov    %ecx,%edx
c00088a6:	81 e2 00 00 00 ff    	and    $0xff000000,%edx
c00088ac:	81 fa 00 00 00 ff    	cmp    $0xff000000,%edx
c00088b2:	75 16                	jne    c00088ca <RectangleFill+0x3e>
c00088b4:	eb 1e                	jmp    c00088d4 <RectangleFill+0x48>
c00088b6:	8b 7b 04             	mov    0x4(%ebx),%edi
c00088b9:	8b 33                	mov    (%ebx),%esi
c00088bb:	0f af f8             	imul   %eax,%edi
c00088be:	01 d7                	add    %edx,%edi
c00088c0:	42                   	inc    %edx
c00088c1:	89 0c be             	mov    %ecx,(%esi,%edi,4)
c00088c4:	3b 55 18             	cmp    0x18(%ebp),%edx
c00088c7:	7e ed                	jle    c00088b6 <RectangleFill+0x2a>
c00088c9:	40                   	inc    %eax
c00088ca:	3b 45 1c             	cmp    0x1c(%ebp),%eax
c00088cd:	7f 05                	jg     c00088d4 <RectangleFill+0x48>
c00088cf:	8b 55 10             	mov    0x10(%ebp),%edx
c00088d2:	eb f0                	jmp    c00088c4 <RectangleFill+0x38>
c00088d4:	5b                   	pop    %ebx
c00088d5:	5e                   	pop    %esi
c00088d6:	5f                   	pop    %edi
c00088d7:	5d                   	pop    %ebp
c00088d8:	c3                   	ret    

c00088d9 <init_Rectangle>:
c00088d9:	55                   	push   %ebp
c00088da:	89 e5                	mov    %esp,%ebp
c00088dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00088df:	8b 55 0c             	mov    0xc(%ebp),%edx
c00088e2:	89 10                	mov    %edx,(%eax)
c00088e4:	8b 55 10             	mov    0x10(%ebp),%edx
c00088e7:	89 50 04             	mov    %edx,0x4(%eax)
c00088ea:	8b 55 14             	mov    0x14(%ebp),%edx
c00088ed:	89 50 08             	mov    %edx,0x8(%eax)
c00088f0:	8b 55 18             	mov    0x18(%ebp),%edx
c00088f3:	89 50 0c             	mov    %edx,0xc(%eax)
c00088f6:	8b 55 1c             	mov    0x1c(%ebp),%edx
c00088f9:	89 50 10             	mov    %edx,0x10(%eax)
c00088fc:	5d                   	pop    %ebp
c00088fd:	c3                   	ret    

c00088fe <init_screen>:
c00088fe:	55                   	push   %ebp
c00088ff:	89 e5                	mov    %esp,%ebp
c0008901:	53                   	push   %ebx
c0008902:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0008905:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c000890c:	0f 85 df 00 00 00    	jne    c00089f1 <init_screen+0xf3>
c0008912:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008917:	8b 15 18 7c 00 00    	mov    0x7c18,%edx
c000891d:	c7 03 00 00 00 fe    	movl   $0xfe000000,(%ebx)
c0008923:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c000892a:	89 43 08             	mov    %eax,0x8(%ebx)
c000892d:	89 53 04             	mov    %edx,0x4(%ebx)
c0008930:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0008937:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c000893c:	83 e8 33             	sub    $0x33,%eax
c000893f:	50                   	push   %eax
c0008940:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008945:	48                   	dec    %eax
c0008946:	50                   	push   %eax
c0008947:	6a 00                	push   $0x0
c0008949:	6a 00                	push   $0x0
c000894b:	68 84 84 00 00       	push   $0x8484
c0008950:	53                   	push   %ebx
c0008951:	e8 36 ff ff ff       	call   c000888c <RectangleFill>
c0008956:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c000895b:	8d 50 ff             	lea    -0x1(%eax),%edx
c000895e:	83 e8 33             	sub    $0x33,%eax
c0008961:	52                   	push   %edx
c0008962:	8b 15 18 7c 00 00    	mov    0x7c18,%edx
c0008968:	4a                   	dec    %edx
c0008969:	52                   	push   %edx
c000896a:	50                   	push   %eax
c000896b:	6a 00                	push   $0x0
c000896d:	68 c6 c6 c6 00       	push   $0xc6c6c6
c0008972:	53                   	push   %ebx
c0008973:	e8 14 ff ff ff       	call   c000888c <RectangleFill>
c0008978:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c000897d:	83 c4 30             	add    $0x30,%esp
c0008980:	8d 50 f8             	lea    -0x8(%eax),%edx
c0008983:	83 e8 26             	sub    $0x26,%eax
c0008986:	52                   	push   %edx
c0008987:	6a 2b                	push   $0x2b
c0008989:	50                   	push   %eax
c000898a:	6a 0d                	push   $0xd
c000898c:	68 84 84 84 00       	push   $0x848484
c0008991:	53                   	push   %ebx
c0008992:	e8 f5 fe ff ff       	call   c000888c <RectangleFill>
c0008997:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c000899c:	8d 50 f5             	lea    -0xb(%eax),%edx
c000899f:	83 e8 29             	sub    $0x29,%eax
c00089a2:	52                   	push   %edx
c00089a3:	6a 28                	push   $0x28
c00089a5:	50                   	push   %eax
c00089a6:	6a 0a                	push   $0xa
c00089a8:	68 ff ff ff 00       	push   $0xffffff
c00089ad:	53                   	push   %ebx
c00089ae:	e8 d9 fe ff ff       	call   c000888c <RectangleFill>
c00089b3:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c00089b8:	83 c4 30             	add    $0x30,%esp
c00089bb:	8d 50 f8             	lea    -0x8(%eax),%edx
c00089be:	83 e8 26             	sub    $0x26,%eax
c00089c1:	52                   	push   %edx
c00089c2:	6a 3a                	push   $0x3a
c00089c4:	50                   	push   %eax
c00089c5:	6a 35                	push   $0x35
c00089c7:	68 84 84 84 00       	push   $0x848484
c00089cc:	53                   	push   %ebx
c00089cd:	e8 ba fe ff ff       	call   c000888c <RectangleFill>
c00089d2:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c00089d7:	8d 50 f5             	lea    -0xb(%eax),%edx
c00089da:	83 e8 29             	sub    $0x29,%eax
c00089dd:	52                   	push   %edx
c00089de:	6a 37                	push   $0x37
c00089e0:	50                   	push   %eax
c00089e1:	6a 32                	push   $0x32
c00089e3:	68 ff ff ff 00       	push   $0xffffff
c00089e8:	53                   	push   %ebx
c00089e9:	e8 9e fe ff ff       	call   c000888c <RectangleFill>
c00089ee:	83 c4 30             	add    $0x30,%esp
c00089f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00089f4:	c9                   	leave  
c00089f5:	c3                   	ret    

c00089f6 <put_char_graphic>:
c00089f6:	55                   	push   %ebp
c00089f7:	89 e5                	mov    %esp,%ebp
c00089f9:	57                   	push   %edi
c00089fa:	0f be 7d 18          	movsbl 0x18(%ebp),%edi
c00089fe:	56                   	push   %esi
c00089ff:	8b 55 14             	mov    0x14(%ebp),%edx
c0008a02:	53                   	push   %ebx
c0008a03:	8b 75 08             	mov    0x8(%ebp),%esi
c0008a06:	c1 e7 04             	shl    $0x4,%edi
c0008a09:	81 c7 d0 aa 00 c0    	add    $0xc000aad0,%edi
c0008a0f:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c0008a16:	75 5d                	jne    c0008a75 <put_char_graphic+0x7f>
c0008a18:	31 db                	xor    %ebx,%ebx
c0008a1a:	8b 45 10             	mov    0x10(%ebp),%eax
c0008a1d:	8b 0e                	mov    (%esi),%ecx
c0008a1f:	01 d8                	add    %ebx,%eax
c0008a21:	0f af 46 04          	imul   0x4(%esi),%eax
c0008a25:	03 45 0c             	add    0xc(%ebp),%eax
c0008a28:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0008a2b:	8a 0c 1f             	mov    (%edi,%ebx,1),%cl
c0008a2e:	84 c9                	test   %cl,%cl
c0008a30:	79 02                	jns    c0008a34 <put_char_graphic+0x3e>
c0008a32:	89 10                	mov    %edx,(%eax)
c0008a34:	0f b6 c9             	movzbl %cl,%ecx
c0008a37:	f6 c1 40             	test   $0x40,%cl
c0008a3a:	74 03                	je     c0008a3f <put_char_graphic+0x49>
c0008a3c:	89 50 04             	mov    %edx,0x4(%eax)
c0008a3f:	f6 c1 20             	test   $0x20,%cl
c0008a42:	74 03                	je     c0008a47 <put_char_graphic+0x51>
c0008a44:	89 50 08             	mov    %edx,0x8(%eax)
c0008a47:	f6 c1 10             	test   $0x10,%cl
c0008a4a:	74 03                	je     c0008a4f <put_char_graphic+0x59>
c0008a4c:	89 50 0c             	mov    %edx,0xc(%eax)
c0008a4f:	f6 c1 08             	test   $0x8,%cl
c0008a52:	74 03                	je     c0008a57 <put_char_graphic+0x61>
c0008a54:	89 50 10             	mov    %edx,0x10(%eax)
c0008a57:	f6 c1 04             	test   $0x4,%cl
c0008a5a:	74 03                	je     c0008a5f <put_char_graphic+0x69>
c0008a5c:	89 50 14             	mov    %edx,0x14(%eax)
c0008a5f:	f6 c1 02             	test   $0x2,%cl
c0008a62:	74 03                	je     c0008a67 <put_char_graphic+0x71>
c0008a64:	89 50 18             	mov    %edx,0x18(%eax)
c0008a67:	80 e1 01             	and    $0x1,%cl
c0008a6a:	74 03                	je     c0008a6f <put_char_graphic+0x79>
c0008a6c:	89 50 1c             	mov    %edx,0x1c(%eax)
c0008a6f:	43                   	inc    %ebx
c0008a70:	83 fb 10             	cmp    $0x10,%ebx
c0008a73:	75 a5                	jne    c0008a1a <put_char_graphic+0x24>
c0008a75:	5b                   	pop    %ebx
c0008a76:	5e                   	pop    %esi
c0008a77:	5f                   	pop    %edi
c0008a78:	5d                   	pop    %ebp
c0008a79:	c3                   	ret    

c0008a7a <put_str_graphic>:
c0008a7a:	55                   	push   %ebp
c0008a7b:	89 e5                	mov    %esp,%ebp
c0008a7d:	57                   	push   %edi
c0008a7e:	8b 7d 14             	mov    0x14(%ebp),%edi
c0008a81:	56                   	push   %esi
c0008a82:	8b 75 0c             	mov    0xc(%ebp),%esi
c0008a85:	53                   	push   %ebx
c0008a86:	8b 5d 18             	mov    0x18(%ebp),%ebx
c0008a89:	eb 18                	jmp    c0008aa3 <put_str_graphic+0x29>
c0008a8b:	0f be c0             	movsbl %al,%eax
c0008a8e:	43                   	inc    %ebx
c0008a8f:	50                   	push   %eax
c0008a90:	57                   	push   %edi
c0008a91:	ff 75 10             	pushl  0x10(%ebp)
c0008a94:	56                   	push   %esi
c0008a95:	83 c6 0a             	add    $0xa,%esi
c0008a98:	ff 75 08             	pushl  0x8(%ebp)
c0008a9b:	e8 56 ff ff ff       	call   c00089f6 <put_char_graphic>
c0008aa0:	83 c4 14             	add    $0x14,%esp
c0008aa3:	8a 03                	mov    (%ebx),%al
c0008aa5:	84 c0                	test   %al,%al
c0008aa7:	75 e2                	jne    c0008a8b <put_str_graphic+0x11>
c0008aa9:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008aac:	5b                   	pop    %ebx
c0008aad:	5e                   	pop    %esi
c0008aae:	5f                   	pop    %edi
c0008aaf:	5d                   	pop    %ebp
c0008ab0:	c3                   	ret    
c0008ab1:	00 00                	add    %al,(%eax)
	...

c0008ab4 <init_all>:
c0008ab4:	55                   	push   %ebp
c0008ab5:	89 e5                	mov    %esp,%ebp
c0008ab7:	83 ec 10             	sub    $0x10,%esp
c0008aba:	68 f4 d5 00 c0       	push   $0xc000d5f4
c0008abf:	6a 02                	push   $0x2
c0008ac1:	e8 ef 14 00 00       	call   c0009fb5 <put_str>
c0008ac6:	e8 28 0b 00 00       	call   c00095f3 <init_idt>
c0008acb:	e8 b8 1d 00 00       	call   c000a888 <init_pit>
c0008ad0:	e8 4c 11 00 00       	call   c0009c21 <init_memory>
c0008ad5:	e8 46 0c 00 00       	call   c0009720 <init_keyboard>
c0008ada:	e8 ac 19 00 00       	call   c000a48b <init_thread>
c0008adf:	e8 54 f9 ff ff       	call   c0008438 <init_console>
c0008ae4:	c7 04 24 48 df 00 c0 	movl   $0xc000df48,(%esp)
c0008aeb:	e8 0e fe ff ff       	call   c00088fe <init_screen>
c0008af0:	58                   	pop    %eax
c0008af1:	5a                   	pop    %edx
c0008af2:	68 00 d6 00 c0       	push   $0xc000d600
c0008af7:	6a 02                	push   $0x2
c0008af9:	e8 b7 14 00 00       	call   c0009fb5 <put_str>
c0008afe:	83 c4 10             	add    $0x10,%esp
c0008b01:	c9                   	leave  
c0008b02:	c3                   	ret    
	...

c0008b10 <asm_intr0x00_handler>:
c0008b10:	68 00 00 00 00       	push   $0x0
c0008b15:	1e                   	push   %ds
c0008b16:	06                   	push   %es
c0008b17:	0f a0                	push   %fs
c0008b19:	0f a8                	push   %gs
c0008b1b:	60                   	pusha  
c0008b1c:	68 00 00 00 00       	push   $0x0
c0008b21:	66 8c d0             	mov    %ss,%ax
c0008b24:	8e d8                	mov    %eax,%ds
c0008b26:	8e c0                	mov    %eax,%es
c0008b28:	ff 15 d8 e1 00 c0    	call   *0xc000e1d8
c0008b2e:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b34:	61                   	popa   
c0008b35:	0f a9                	pop    %gs
c0008b37:	0f a1                	pop    %fs
c0008b39:	07                   	pop    %es
c0008b3a:	1f                   	pop    %ds
c0008b3b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b41:	cf                   	iret   

c0008b42 <asm_intr0x01_handler>:
c0008b42:	68 00 00 00 00       	push   $0x0
c0008b47:	1e                   	push   %ds
c0008b48:	06                   	push   %es
c0008b49:	0f a0                	push   %fs
c0008b4b:	0f a8                	push   %gs
c0008b4d:	60                   	pusha  
c0008b4e:	68 01 00 00 00       	push   $0x1
c0008b53:	66 8c d0             	mov    %ss,%ax
c0008b56:	8e d8                	mov    %eax,%ds
c0008b58:	8e c0                	mov    %eax,%es
c0008b5a:	ff 15 dc e1 00 c0    	call   *0xc000e1dc
c0008b60:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b66:	61                   	popa   
c0008b67:	0f a9                	pop    %gs
c0008b69:	0f a1                	pop    %fs
c0008b6b:	07                   	pop    %es
c0008b6c:	1f                   	pop    %ds
c0008b6d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b73:	cf                   	iret   

c0008b74 <asm_intr0x02_handler>:
c0008b74:	68 00 00 00 00       	push   $0x0
c0008b79:	1e                   	push   %ds
c0008b7a:	06                   	push   %es
c0008b7b:	0f a0                	push   %fs
c0008b7d:	0f a8                	push   %gs
c0008b7f:	60                   	pusha  
c0008b80:	68 02 00 00 00       	push   $0x2
c0008b85:	66 8c d0             	mov    %ss,%ax
c0008b88:	8e d8                	mov    %eax,%ds
c0008b8a:	8e c0                	mov    %eax,%es
c0008b8c:	ff 15 e0 e1 00 c0    	call   *0xc000e1e0
c0008b92:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b98:	61                   	popa   
c0008b99:	0f a9                	pop    %gs
c0008b9b:	0f a1                	pop    %fs
c0008b9d:	07                   	pop    %es
c0008b9e:	1f                   	pop    %ds
c0008b9f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ba5:	cf                   	iret   

c0008ba6 <asm_intr0x03_handler>:
c0008ba6:	68 00 00 00 00       	push   $0x0
c0008bab:	1e                   	push   %ds
c0008bac:	06                   	push   %es
c0008bad:	0f a0                	push   %fs
c0008baf:	0f a8                	push   %gs
c0008bb1:	60                   	pusha  
c0008bb2:	68 03 00 00 00       	push   $0x3
c0008bb7:	66 8c d0             	mov    %ss,%ax
c0008bba:	8e d8                	mov    %eax,%ds
c0008bbc:	8e c0                	mov    %eax,%es
c0008bbe:	ff 15 e4 e1 00 c0    	call   *0xc000e1e4
c0008bc4:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008bca:	61                   	popa   
c0008bcb:	0f a9                	pop    %gs
c0008bcd:	0f a1                	pop    %fs
c0008bcf:	07                   	pop    %es
c0008bd0:	1f                   	pop    %ds
c0008bd1:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008bd7:	cf                   	iret   

c0008bd8 <asm_intr0x04_handler>:
c0008bd8:	68 00 00 00 00       	push   $0x0
c0008bdd:	1e                   	push   %ds
c0008bde:	06                   	push   %es
c0008bdf:	0f a0                	push   %fs
c0008be1:	0f a8                	push   %gs
c0008be3:	60                   	pusha  
c0008be4:	68 04 00 00 00       	push   $0x4
c0008be9:	66 8c d0             	mov    %ss,%ax
c0008bec:	8e d8                	mov    %eax,%ds
c0008bee:	8e c0                	mov    %eax,%es
c0008bf0:	ff 15 e8 e1 00 c0    	call   *0xc000e1e8
c0008bf6:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008bfc:	61                   	popa   
c0008bfd:	0f a9                	pop    %gs
c0008bff:	0f a1                	pop    %fs
c0008c01:	07                   	pop    %es
c0008c02:	1f                   	pop    %ds
c0008c03:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c09:	cf                   	iret   

c0008c0a <asm_intr0x05_handler>:
c0008c0a:	68 00 00 00 00       	push   $0x0
c0008c0f:	1e                   	push   %ds
c0008c10:	06                   	push   %es
c0008c11:	0f a0                	push   %fs
c0008c13:	0f a8                	push   %gs
c0008c15:	60                   	pusha  
c0008c16:	68 05 00 00 00       	push   $0x5
c0008c1b:	66 8c d0             	mov    %ss,%ax
c0008c1e:	8e d8                	mov    %eax,%ds
c0008c20:	8e c0                	mov    %eax,%es
c0008c22:	ff 15 ec e1 00 c0    	call   *0xc000e1ec
c0008c28:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c2e:	61                   	popa   
c0008c2f:	0f a9                	pop    %gs
c0008c31:	0f a1                	pop    %fs
c0008c33:	07                   	pop    %es
c0008c34:	1f                   	pop    %ds
c0008c35:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c3b:	cf                   	iret   

c0008c3c <asm_intr0x06_handler>:
c0008c3c:	68 00 00 00 00       	push   $0x0
c0008c41:	1e                   	push   %ds
c0008c42:	06                   	push   %es
c0008c43:	0f a0                	push   %fs
c0008c45:	0f a8                	push   %gs
c0008c47:	60                   	pusha  
c0008c48:	68 06 00 00 00       	push   $0x6
c0008c4d:	66 8c d0             	mov    %ss,%ax
c0008c50:	8e d8                	mov    %eax,%ds
c0008c52:	8e c0                	mov    %eax,%es
c0008c54:	ff 15 f0 e1 00 c0    	call   *0xc000e1f0
c0008c5a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c60:	61                   	popa   
c0008c61:	0f a9                	pop    %gs
c0008c63:	0f a1                	pop    %fs
c0008c65:	07                   	pop    %es
c0008c66:	1f                   	pop    %ds
c0008c67:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c6d:	cf                   	iret   

c0008c6e <asm_intr0x07_handler>:
c0008c6e:	68 00 00 00 00       	push   $0x0
c0008c73:	1e                   	push   %ds
c0008c74:	06                   	push   %es
c0008c75:	0f a0                	push   %fs
c0008c77:	0f a8                	push   %gs
c0008c79:	60                   	pusha  
c0008c7a:	68 07 00 00 00       	push   $0x7
c0008c7f:	66 8c d0             	mov    %ss,%ax
c0008c82:	8e d8                	mov    %eax,%ds
c0008c84:	8e c0                	mov    %eax,%es
c0008c86:	ff 15 f4 e1 00 c0    	call   *0xc000e1f4
c0008c8c:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c92:	61                   	popa   
c0008c93:	0f a9                	pop    %gs
c0008c95:	0f a1                	pop    %fs
c0008c97:	07                   	pop    %es
c0008c98:	1f                   	pop    %ds
c0008c99:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c9f:	cf                   	iret   

c0008ca0 <asm_intr0x08_handler>:
c0008ca0:	90                   	nop
c0008ca1:	1e                   	push   %ds
c0008ca2:	06                   	push   %es
c0008ca3:	0f a0                	push   %fs
c0008ca5:	0f a8                	push   %gs
c0008ca7:	60                   	pusha  
c0008ca8:	68 08 00 00 00       	push   $0x8
c0008cad:	66 8c d0             	mov    %ss,%ax
c0008cb0:	8e d8                	mov    %eax,%ds
c0008cb2:	8e c0                	mov    %eax,%es
c0008cb4:	ff 15 f8 e1 00 c0    	call   *0xc000e1f8
c0008cba:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008cc0:	61                   	popa   
c0008cc1:	0f a9                	pop    %gs
c0008cc3:	0f a1                	pop    %fs
c0008cc5:	07                   	pop    %es
c0008cc6:	1f                   	pop    %ds
c0008cc7:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ccd:	cf                   	iret   

c0008cce <asm_intr0x09_handler>:
c0008cce:	68 00 00 00 00       	push   $0x0
c0008cd3:	1e                   	push   %ds
c0008cd4:	06                   	push   %es
c0008cd5:	0f a0                	push   %fs
c0008cd7:	0f a8                	push   %gs
c0008cd9:	60                   	pusha  
c0008cda:	68 09 00 00 00       	push   $0x9
c0008cdf:	66 8c d0             	mov    %ss,%ax
c0008ce2:	8e d8                	mov    %eax,%ds
c0008ce4:	8e c0                	mov    %eax,%es
c0008ce6:	ff 15 fc e1 00 c0    	call   *0xc000e1fc
c0008cec:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008cf2:	61                   	popa   
c0008cf3:	0f a9                	pop    %gs
c0008cf5:	0f a1                	pop    %fs
c0008cf7:	07                   	pop    %es
c0008cf8:	1f                   	pop    %ds
c0008cf9:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008cff:	cf                   	iret   

c0008d00 <asm_intr0x0a_handler>:
c0008d00:	90                   	nop
c0008d01:	1e                   	push   %ds
c0008d02:	06                   	push   %es
c0008d03:	0f a0                	push   %fs
c0008d05:	0f a8                	push   %gs
c0008d07:	60                   	pusha  
c0008d08:	68 0a 00 00 00       	push   $0xa
c0008d0d:	66 8c d0             	mov    %ss,%ax
c0008d10:	8e d8                	mov    %eax,%ds
c0008d12:	8e c0                	mov    %eax,%es
c0008d14:	ff 15 00 e2 00 c0    	call   *0xc000e200
c0008d1a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d20:	61                   	popa   
c0008d21:	0f a9                	pop    %gs
c0008d23:	0f a1                	pop    %fs
c0008d25:	07                   	pop    %es
c0008d26:	1f                   	pop    %ds
c0008d27:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d2d:	cf                   	iret   

c0008d2e <asm_intr0x0b_handler>:
c0008d2e:	90                   	nop
c0008d2f:	1e                   	push   %ds
c0008d30:	06                   	push   %es
c0008d31:	0f a0                	push   %fs
c0008d33:	0f a8                	push   %gs
c0008d35:	60                   	pusha  
c0008d36:	68 0b 00 00 00       	push   $0xb
c0008d3b:	66 8c d0             	mov    %ss,%ax
c0008d3e:	8e d8                	mov    %eax,%ds
c0008d40:	8e c0                	mov    %eax,%es
c0008d42:	ff 15 04 e2 00 c0    	call   *0xc000e204
c0008d48:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d4e:	61                   	popa   
c0008d4f:	0f a9                	pop    %gs
c0008d51:	0f a1                	pop    %fs
c0008d53:	07                   	pop    %es
c0008d54:	1f                   	pop    %ds
c0008d55:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d5b:	cf                   	iret   

c0008d5c <asm_intr0x0c_handler>:
c0008d5c:	68 00 00 00 00       	push   $0x0
c0008d61:	1e                   	push   %ds
c0008d62:	06                   	push   %es
c0008d63:	0f a0                	push   %fs
c0008d65:	0f a8                	push   %gs
c0008d67:	60                   	pusha  
c0008d68:	68 0c 00 00 00       	push   $0xc
c0008d6d:	66 8c d0             	mov    %ss,%ax
c0008d70:	8e d8                	mov    %eax,%ds
c0008d72:	8e c0                	mov    %eax,%es
c0008d74:	ff 15 08 e2 00 c0    	call   *0xc000e208
c0008d7a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d80:	61                   	popa   
c0008d81:	0f a9                	pop    %gs
c0008d83:	0f a1                	pop    %fs
c0008d85:	07                   	pop    %es
c0008d86:	1f                   	pop    %ds
c0008d87:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d8d:	cf                   	iret   

c0008d8e <asm_intr0x0d_handler>:
c0008d8e:	90                   	nop
c0008d8f:	1e                   	push   %ds
c0008d90:	06                   	push   %es
c0008d91:	0f a0                	push   %fs
c0008d93:	0f a8                	push   %gs
c0008d95:	60                   	pusha  
c0008d96:	68 0d 00 00 00       	push   $0xd
c0008d9b:	66 8c d0             	mov    %ss,%ax
c0008d9e:	8e d8                	mov    %eax,%ds
c0008da0:	8e c0                	mov    %eax,%es
c0008da2:	ff 15 0c e2 00 c0    	call   *0xc000e20c
c0008da8:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008dae:	61                   	popa   
c0008daf:	0f a9                	pop    %gs
c0008db1:	0f a1                	pop    %fs
c0008db3:	07                   	pop    %es
c0008db4:	1f                   	pop    %ds
c0008db5:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008dbb:	cf                   	iret   

c0008dbc <asm_intr0x0e_handler>:
c0008dbc:	90                   	nop
c0008dbd:	1e                   	push   %ds
c0008dbe:	06                   	push   %es
c0008dbf:	0f a0                	push   %fs
c0008dc1:	0f a8                	push   %gs
c0008dc3:	60                   	pusha  
c0008dc4:	68 0e 00 00 00       	push   $0xe
c0008dc9:	66 8c d0             	mov    %ss,%ax
c0008dcc:	8e d8                	mov    %eax,%ds
c0008dce:	8e c0                	mov    %eax,%es
c0008dd0:	ff 15 10 e2 00 c0    	call   *0xc000e210
c0008dd6:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ddc:	61                   	popa   
c0008ddd:	0f a9                	pop    %gs
c0008ddf:	0f a1                	pop    %fs
c0008de1:	07                   	pop    %es
c0008de2:	1f                   	pop    %ds
c0008de3:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008de9:	cf                   	iret   

c0008dea <asm_intr0x0f_handler>:
c0008dea:	68 00 00 00 00       	push   $0x0
c0008def:	1e                   	push   %ds
c0008df0:	06                   	push   %es
c0008df1:	0f a0                	push   %fs
c0008df3:	0f a8                	push   %gs
c0008df5:	60                   	pusha  
c0008df6:	68 0f 00 00 00       	push   $0xf
c0008dfb:	66 8c d0             	mov    %ss,%ax
c0008dfe:	8e d8                	mov    %eax,%ds
c0008e00:	8e c0                	mov    %eax,%es
c0008e02:	ff 15 14 e2 00 c0    	call   *0xc000e214
c0008e08:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e0e:	61                   	popa   
c0008e0f:	0f a9                	pop    %gs
c0008e11:	0f a1                	pop    %fs
c0008e13:	07                   	pop    %es
c0008e14:	1f                   	pop    %ds
c0008e15:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e1b:	cf                   	iret   

c0008e1c <asm_intr0x10_handler>:
c0008e1c:	68 00 00 00 00       	push   $0x0
c0008e21:	1e                   	push   %ds
c0008e22:	06                   	push   %es
c0008e23:	0f a0                	push   %fs
c0008e25:	0f a8                	push   %gs
c0008e27:	60                   	pusha  
c0008e28:	68 10 00 00 00       	push   $0x10
c0008e2d:	66 8c d0             	mov    %ss,%ax
c0008e30:	8e d8                	mov    %eax,%ds
c0008e32:	8e c0                	mov    %eax,%es
c0008e34:	ff 15 18 e2 00 c0    	call   *0xc000e218
c0008e3a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e40:	61                   	popa   
c0008e41:	0f a9                	pop    %gs
c0008e43:	0f a1                	pop    %fs
c0008e45:	07                   	pop    %es
c0008e46:	1f                   	pop    %ds
c0008e47:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e4d:	cf                   	iret   

c0008e4e <asm_intr0x11_handler>:
c0008e4e:	90                   	nop
c0008e4f:	1e                   	push   %ds
c0008e50:	06                   	push   %es
c0008e51:	0f a0                	push   %fs
c0008e53:	0f a8                	push   %gs
c0008e55:	60                   	pusha  
c0008e56:	68 11 00 00 00       	push   $0x11
c0008e5b:	66 8c d0             	mov    %ss,%ax
c0008e5e:	8e d8                	mov    %eax,%ds
c0008e60:	8e c0                	mov    %eax,%es
c0008e62:	ff 15 1c e2 00 c0    	call   *0xc000e21c
c0008e68:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e6e:	61                   	popa   
c0008e6f:	0f a9                	pop    %gs
c0008e71:	0f a1                	pop    %fs
c0008e73:	07                   	pop    %es
c0008e74:	1f                   	pop    %ds
c0008e75:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e7b:	cf                   	iret   

c0008e7c <asm_intr0x12_handler>:
c0008e7c:	68 00 00 00 00       	push   $0x0
c0008e81:	1e                   	push   %ds
c0008e82:	06                   	push   %es
c0008e83:	0f a0                	push   %fs
c0008e85:	0f a8                	push   %gs
c0008e87:	60                   	pusha  
c0008e88:	68 12 00 00 00       	push   $0x12
c0008e8d:	66 8c d0             	mov    %ss,%ax
c0008e90:	8e d8                	mov    %eax,%ds
c0008e92:	8e c0                	mov    %eax,%es
c0008e94:	ff 15 20 e2 00 c0    	call   *0xc000e220
c0008e9a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ea0:	61                   	popa   
c0008ea1:	0f a9                	pop    %gs
c0008ea3:	0f a1                	pop    %fs
c0008ea5:	07                   	pop    %es
c0008ea6:	1f                   	pop    %ds
c0008ea7:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ead:	cf                   	iret   

c0008eae <asm_intr0x13_handler>:
c0008eae:	68 00 00 00 00       	push   $0x0
c0008eb3:	1e                   	push   %ds
c0008eb4:	06                   	push   %es
c0008eb5:	0f a0                	push   %fs
c0008eb7:	0f a8                	push   %gs
c0008eb9:	60                   	pusha  
c0008eba:	68 13 00 00 00       	push   $0x13
c0008ebf:	66 8c d0             	mov    %ss,%ax
c0008ec2:	8e d8                	mov    %eax,%ds
c0008ec4:	8e c0                	mov    %eax,%es
c0008ec6:	ff 15 24 e2 00 c0    	call   *0xc000e224
c0008ecc:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ed2:	61                   	popa   
c0008ed3:	0f a9                	pop    %gs
c0008ed5:	0f a1                	pop    %fs
c0008ed7:	07                   	pop    %es
c0008ed8:	1f                   	pop    %ds
c0008ed9:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008edf:	cf                   	iret   

c0008ee0 <asm_intr0x14_handler>:
c0008ee0:	68 00 00 00 00       	push   $0x0
c0008ee5:	1e                   	push   %ds
c0008ee6:	06                   	push   %es
c0008ee7:	0f a0                	push   %fs
c0008ee9:	0f a8                	push   %gs
c0008eeb:	60                   	pusha  
c0008eec:	68 14 00 00 00       	push   $0x14
c0008ef1:	66 8c d0             	mov    %ss,%ax
c0008ef4:	8e d8                	mov    %eax,%ds
c0008ef6:	8e c0                	mov    %eax,%es
c0008ef8:	ff 15 28 e2 00 c0    	call   *0xc000e228
c0008efe:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f04:	61                   	popa   
c0008f05:	0f a9                	pop    %gs
c0008f07:	0f a1                	pop    %fs
c0008f09:	07                   	pop    %es
c0008f0a:	1f                   	pop    %ds
c0008f0b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f11:	cf                   	iret   

c0008f12 <asm_intr0x15_handler>:
c0008f12:	68 00 00 00 00       	push   $0x0
c0008f17:	1e                   	push   %ds
c0008f18:	06                   	push   %es
c0008f19:	0f a0                	push   %fs
c0008f1b:	0f a8                	push   %gs
c0008f1d:	60                   	pusha  
c0008f1e:	68 15 00 00 00       	push   $0x15
c0008f23:	66 8c d0             	mov    %ss,%ax
c0008f26:	8e d8                	mov    %eax,%ds
c0008f28:	8e c0                	mov    %eax,%es
c0008f2a:	ff 15 2c e2 00 c0    	call   *0xc000e22c
c0008f30:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f36:	61                   	popa   
c0008f37:	0f a9                	pop    %gs
c0008f39:	0f a1                	pop    %fs
c0008f3b:	07                   	pop    %es
c0008f3c:	1f                   	pop    %ds
c0008f3d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f43:	cf                   	iret   

c0008f44 <asm_intr0x16_handler>:
c0008f44:	68 00 00 00 00       	push   $0x0
c0008f49:	1e                   	push   %ds
c0008f4a:	06                   	push   %es
c0008f4b:	0f a0                	push   %fs
c0008f4d:	0f a8                	push   %gs
c0008f4f:	60                   	pusha  
c0008f50:	68 16 00 00 00       	push   $0x16
c0008f55:	66 8c d0             	mov    %ss,%ax
c0008f58:	8e d8                	mov    %eax,%ds
c0008f5a:	8e c0                	mov    %eax,%es
c0008f5c:	ff 15 30 e2 00 c0    	call   *0xc000e230
c0008f62:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f68:	61                   	popa   
c0008f69:	0f a9                	pop    %gs
c0008f6b:	0f a1                	pop    %fs
c0008f6d:	07                   	pop    %es
c0008f6e:	1f                   	pop    %ds
c0008f6f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f75:	cf                   	iret   

c0008f76 <asm_intr0x17_handler>:
c0008f76:	68 00 00 00 00       	push   $0x0
c0008f7b:	1e                   	push   %ds
c0008f7c:	06                   	push   %es
c0008f7d:	0f a0                	push   %fs
c0008f7f:	0f a8                	push   %gs
c0008f81:	60                   	pusha  
c0008f82:	68 17 00 00 00       	push   $0x17
c0008f87:	66 8c d0             	mov    %ss,%ax
c0008f8a:	8e d8                	mov    %eax,%ds
c0008f8c:	8e c0                	mov    %eax,%es
c0008f8e:	ff 15 34 e2 00 c0    	call   *0xc000e234
c0008f94:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f9a:	61                   	popa   
c0008f9b:	0f a9                	pop    %gs
c0008f9d:	0f a1                	pop    %fs
c0008f9f:	07                   	pop    %es
c0008fa0:	1f                   	pop    %ds
c0008fa1:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008fa7:	cf                   	iret   

c0008fa8 <asm_intr0x18_handler>:
c0008fa8:	90                   	nop
c0008fa9:	1e                   	push   %ds
c0008faa:	06                   	push   %es
c0008fab:	0f a0                	push   %fs
c0008fad:	0f a8                	push   %gs
c0008faf:	60                   	pusha  
c0008fb0:	68 18 00 00 00       	push   $0x18
c0008fb5:	66 8c d0             	mov    %ss,%ax
c0008fb8:	8e d8                	mov    %eax,%ds
c0008fba:	8e c0                	mov    %eax,%es
c0008fbc:	ff 15 38 e2 00 c0    	call   *0xc000e238
c0008fc2:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008fc8:	61                   	popa   
c0008fc9:	0f a9                	pop    %gs
c0008fcb:	0f a1                	pop    %fs
c0008fcd:	07                   	pop    %es
c0008fce:	1f                   	pop    %ds
c0008fcf:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008fd5:	cf                   	iret   

c0008fd6 <asm_intr0x19_handler>:
c0008fd6:	68 00 00 00 00       	push   $0x0
c0008fdb:	1e                   	push   %ds
c0008fdc:	06                   	push   %es
c0008fdd:	0f a0                	push   %fs
c0008fdf:	0f a8                	push   %gs
c0008fe1:	60                   	pusha  
c0008fe2:	68 19 00 00 00       	push   $0x19
c0008fe7:	66 8c d0             	mov    %ss,%ax
c0008fea:	8e d8                	mov    %eax,%ds
c0008fec:	8e c0                	mov    %eax,%es
c0008fee:	ff 15 3c e2 00 c0    	call   *0xc000e23c
c0008ff4:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ffa:	61                   	popa   
c0008ffb:	0f a9                	pop    %gs
c0008ffd:	0f a1                	pop    %fs
c0008fff:	07                   	pop    %es
c0009000:	1f                   	pop    %ds
c0009001:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009007:	cf                   	iret   

c0009008 <asm_intr0x1a_handler>:
c0009008:	90                   	nop
c0009009:	1e                   	push   %ds
c000900a:	06                   	push   %es
c000900b:	0f a0                	push   %fs
c000900d:	0f a8                	push   %gs
c000900f:	60                   	pusha  
c0009010:	68 1a 00 00 00       	push   $0x1a
c0009015:	66 8c d0             	mov    %ss,%ax
c0009018:	8e d8                	mov    %eax,%ds
c000901a:	8e c0                	mov    %eax,%es
c000901c:	ff 15 40 e2 00 c0    	call   *0xc000e240
c0009022:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009028:	61                   	popa   
c0009029:	0f a9                	pop    %gs
c000902b:	0f a1                	pop    %fs
c000902d:	07                   	pop    %es
c000902e:	1f                   	pop    %ds
c000902f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009035:	cf                   	iret   

c0009036 <asm_intr0x1b_handler>:
c0009036:	90                   	nop
c0009037:	1e                   	push   %ds
c0009038:	06                   	push   %es
c0009039:	0f a0                	push   %fs
c000903b:	0f a8                	push   %gs
c000903d:	60                   	pusha  
c000903e:	68 1b 00 00 00       	push   $0x1b
c0009043:	66 8c d0             	mov    %ss,%ax
c0009046:	8e d8                	mov    %eax,%ds
c0009048:	8e c0                	mov    %eax,%es
c000904a:	ff 15 44 e2 00 c0    	call   *0xc000e244
c0009050:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009056:	61                   	popa   
c0009057:	0f a9                	pop    %gs
c0009059:	0f a1                	pop    %fs
c000905b:	07                   	pop    %es
c000905c:	1f                   	pop    %ds
c000905d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009063:	cf                   	iret   

c0009064 <asm_intr0x1c_handler>:
c0009064:	68 00 00 00 00       	push   $0x0
c0009069:	1e                   	push   %ds
c000906a:	06                   	push   %es
c000906b:	0f a0                	push   %fs
c000906d:	0f a8                	push   %gs
c000906f:	60                   	pusha  
c0009070:	68 1c 00 00 00       	push   $0x1c
c0009075:	66 8c d0             	mov    %ss,%ax
c0009078:	8e d8                	mov    %eax,%ds
c000907a:	8e c0                	mov    %eax,%es
c000907c:	ff 15 48 e2 00 c0    	call   *0xc000e248
c0009082:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009088:	61                   	popa   
c0009089:	0f a9                	pop    %gs
c000908b:	0f a1                	pop    %fs
c000908d:	07                   	pop    %es
c000908e:	1f                   	pop    %ds
c000908f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009095:	cf                   	iret   

c0009096 <asm_intr0x1d_handler>:
c0009096:	90                   	nop
c0009097:	1e                   	push   %ds
c0009098:	06                   	push   %es
c0009099:	0f a0                	push   %fs
c000909b:	0f a8                	push   %gs
c000909d:	60                   	pusha  
c000909e:	68 1d 00 00 00       	push   $0x1d
c00090a3:	66 8c d0             	mov    %ss,%ax
c00090a6:	8e d8                	mov    %eax,%ds
c00090a8:	8e c0                	mov    %eax,%es
c00090aa:	ff 15 4c e2 00 c0    	call   *0xc000e24c
c00090b0:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090b6:	61                   	popa   
c00090b7:	0f a9                	pop    %gs
c00090b9:	0f a1                	pop    %fs
c00090bb:	07                   	pop    %es
c00090bc:	1f                   	pop    %ds
c00090bd:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090c3:	cf                   	iret   

c00090c4 <asm_intr0x1e_handler>:
c00090c4:	90                   	nop
c00090c5:	1e                   	push   %ds
c00090c6:	06                   	push   %es
c00090c7:	0f a0                	push   %fs
c00090c9:	0f a8                	push   %gs
c00090cb:	60                   	pusha  
c00090cc:	68 1e 00 00 00       	push   $0x1e
c00090d1:	66 8c d0             	mov    %ss,%ax
c00090d4:	8e d8                	mov    %eax,%ds
c00090d6:	8e c0                	mov    %eax,%es
c00090d8:	ff 15 50 e2 00 c0    	call   *0xc000e250
c00090de:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090e4:	61                   	popa   
c00090e5:	0f a9                	pop    %gs
c00090e7:	0f a1                	pop    %fs
c00090e9:	07                   	pop    %es
c00090ea:	1f                   	pop    %ds
c00090eb:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090f1:	cf                   	iret   

c00090f2 <asm_intr0x1f_handler>:
c00090f2:	68 00 00 00 00       	push   $0x0
c00090f7:	1e                   	push   %ds
c00090f8:	06                   	push   %es
c00090f9:	0f a0                	push   %fs
c00090fb:	0f a8                	push   %gs
c00090fd:	60                   	pusha  
c00090fe:	68 1f 00 00 00       	push   $0x1f
c0009103:	66 8c d0             	mov    %ss,%ax
c0009106:	8e d8                	mov    %eax,%ds
c0009108:	8e c0                	mov    %eax,%es
c000910a:	ff 15 54 e2 00 c0    	call   *0xc000e254
c0009110:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009116:	61                   	popa   
c0009117:	0f a9                	pop    %gs
c0009119:	0f a1                	pop    %fs
c000911b:	07                   	pop    %es
c000911c:	1f                   	pop    %ds
c000911d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009123:	cf                   	iret   

c0009124 <asm_intr0x20_handler>:
c0009124:	68 00 00 00 00       	push   $0x0
c0009129:	1e                   	push   %ds
c000912a:	06                   	push   %es
c000912b:	0f a0                	push   %fs
c000912d:	0f a8                	push   %gs
c000912f:	60                   	pusha  
c0009130:	68 20 00 00 00       	push   $0x20
c0009135:	66 8c d0             	mov    %ss,%ax
c0009138:	8e d8                	mov    %eax,%ds
c000913a:	8e c0                	mov    %eax,%es
c000913c:	ff 15 58 e2 00 c0    	call   *0xc000e258
c0009142:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009148:	61                   	popa   
c0009149:	0f a9                	pop    %gs
c000914b:	0f a1                	pop    %fs
c000914d:	07                   	pop    %es
c000914e:	1f                   	pop    %ds
c000914f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009155:	cf                   	iret   

c0009156 <asm_intr0x21_handler>:
c0009156:	68 00 00 00 00       	push   $0x0
c000915b:	1e                   	push   %ds
c000915c:	06                   	push   %es
c000915d:	0f a0                	push   %fs
c000915f:	0f a8                	push   %gs
c0009161:	60                   	pusha  
c0009162:	68 21 00 00 00       	push   $0x21
c0009167:	66 8c d0             	mov    %ss,%ax
c000916a:	8e d8                	mov    %eax,%ds
c000916c:	8e c0                	mov    %eax,%es
c000916e:	ff 15 5c e2 00 c0    	call   *0xc000e25c
c0009174:	81 c4 04 00 00 00    	add    $0x4,%esp
c000917a:	61                   	popa   
c000917b:	0f a9                	pop    %gs
c000917d:	0f a1                	pop    %fs
c000917f:	07                   	pop    %es
c0009180:	1f                   	pop    %ds
c0009181:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009187:	cf                   	iret   

c0009188 <asm_intr0x22_handler>:
c0009188:	68 00 00 00 00       	push   $0x0
c000918d:	1e                   	push   %ds
c000918e:	06                   	push   %es
c000918f:	0f a0                	push   %fs
c0009191:	0f a8                	push   %gs
c0009193:	60                   	pusha  
c0009194:	68 22 00 00 00       	push   $0x22
c0009199:	66 8c d0             	mov    %ss,%ax
c000919c:	8e d8                	mov    %eax,%ds
c000919e:	8e c0                	mov    %eax,%es
c00091a0:	ff 15 60 e2 00 c0    	call   *0xc000e260
c00091a6:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091ac:	61                   	popa   
c00091ad:	0f a9                	pop    %gs
c00091af:	0f a1                	pop    %fs
c00091b1:	07                   	pop    %es
c00091b2:	1f                   	pop    %ds
c00091b3:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091b9:	cf                   	iret   

c00091ba <asm_intr0x23_handler>:
c00091ba:	68 00 00 00 00       	push   $0x0
c00091bf:	1e                   	push   %ds
c00091c0:	06                   	push   %es
c00091c1:	0f a0                	push   %fs
c00091c3:	0f a8                	push   %gs
c00091c5:	60                   	pusha  
c00091c6:	68 23 00 00 00       	push   $0x23
c00091cb:	66 8c d0             	mov    %ss,%ax
c00091ce:	8e d8                	mov    %eax,%ds
c00091d0:	8e c0                	mov    %eax,%es
c00091d2:	ff 15 64 e2 00 c0    	call   *0xc000e264
c00091d8:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091de:	61                   	popa   
c00091df:	0f a9                	pop    %gs
c00091e1:	0f a1                	pop    %fs
c00091e3:	07                   	pop    %es
c00091e4:	1f                   	pop    %ds
c00091e5:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091eb:	cf                   	iret   

c00091ec <asm_intr0x24_handler>:
c00091ec:	68 00 00 00 00       	push   $0x0
c00091f1:	1e                   	push   %ds
c00091f2:	06                   	push   %es
c00091f3:	0f a0                	push   %fs
c00091f5:	0f a8                	push   %gs
c00091f7:	60                   	pusha  
c00091f8:	68 24 00 00 00       	push   $0x24
c00091fd:	66 8c d0             	mov    %ss,%ax
c0009200:	8e d8                	mov    %eax,%ds
c0009202:	8e c0                	mov    %eax,%es
c0009204:	ff 15 68 e2 00 c0    	call   *0xc000e268
c000920a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009210:	61                   	popa   
c0009211:	0f a9                	pop    %gs
c0009213:	0f a1                	pop    %fs
c0009215:	07                   	pop    %es
c0009216:	1f                   	pop    %ds
c0009217:	81 c4 04 00 00 00    	add    $0x4,%esp
c000921d:	cf                   	iret   

c000921e <asm_intr0x25_handler>:
c000921e:	68 00 00 00 00       	push   $0x0
c0009223:	1e                   	push   %ds
c0009224:	06                   	push   %es
c0009225:	0f a0                	push   %fs
c0009227:	0f a8                	push   %gs
c0009229:	60                   	pusha  
c000922a:	68 25 00 00 00       	push   $0x25
c000922f:	66 8c d0             	mov    %ss,%ax
c0009232:	8e d8                	mov    %eax,%ds
c0009234:	8e c0                	mov    %eax,%es
c0009236:	ff 15 6c e2 00 c0    	call   *0xc000e26c
c000923c:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009242:	61                   	popa   
c0009243:	0f a9                	pop    %gs
c0009245:	0f a1                	pop    %fs
c0009247:	07                   	pop    %es
c0009248:	1f                   	pop    %ds
c0009249:	81 c4 04 00 00 00    	add    $0x4,%esp
c000924f:	cf                   	iret   

c0009250 <asm_intr0x26_handler>:
c0009250:	68 00 00 00 00       	push   $0x0
c0009255:	1e                   	push   %ds
c0009256:	06                   	push   %es
c0009257:	0f a0                	push   %fs
c0009259:	0f a8                	push   %gs
c000925b:	60                   	pusha  
c000925c:	68 26 00 00 00       	push   $0x26
c0009261:	66 8c d0             	mov    %ss,%ax
c0009264:	8e d8                	mov    %eax,%ds
c0009266:	8e c0                	mov    %eax,%es
c0009268:	ff 15 70 e2 00 c0    	call   *0xc000e270
c000926e:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009274:	61                   	popa   
c0009275:	0f a9                	pop    %gs
c0009277:	0f a1                	pop    %fs
c0009279:	07                   	pop    %es
c000927a:	1f                   	pop    %ds
c000927b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009281:	cf                   	iret   

c0009282 <asm_intr0x27_handler>:
c0009282:	68 00 00 00 00       	push   $0x0
c0009287:	1e                   	push   %ds
c0009288:	06                   	push   %es
c0009289:	0f a0                	push   %fs
c000928b:	0f a8                	push   %gs
c000928d:	60                   	pusha  
c000928e:	68 27 00 00 00       	push   $0x27
c0009293:	66 8c d0             	mov    %ss,%ax
c0009296:	8e d8                	mov    %eax,%ds
c0009298:	8e c0                	mov    %eax,%es
c000929a:	ff 15 74 e2 00 c0    	call   *0xc000e274
c00092a0:	81 c4 04 00 00 00    	add    $0x4,%esp
c00092a6:	61                   	popa   
c00092a7:	0f a9                	pop    %gs
c00092a9:	0f a1                	pop    %fs
c00092ab:	07                   	pop    %es
c00092ac:	1f                   	pop    %ds
c00092ad:	81 c4 04 00 00 00    	add    $0x4,%esp
c00092b3:	cf                   	iret   

c00092b4 <asm_intr0x28_handler>:
c00092b4:	68 00 00 00 00       	push   $0x0
c00092b9:	1e                   	push   %ds
c00092ba:	06                   	push   %es
c00092bb:	0f a0                	push   %fs
c00092bd:	0f a8                	push   %gs
c00092bf:	60                   	pusha  
c00092c0:	68 28 00 00 00       	push   $0x28
c00092c5:	66 8c d0             	mov    %ss,%ax
c00092c8:	8e d8                	mov    %eax,%ds
c00092ca:	8e c0                	mov    %eax,%es
c00092cc:	ff 15 78 e2 00 c0    	call   *0xc000e278
c00092d2:	81 c4 04 00 00 00    	add    $0x4,%esp
c00092d8:	61                   	popa   
c00092d9:	0f a9                	pop    %gs
c00092db:	0f a1                	pop    %fs
c00092dd:	07                   	pop    %es
c00092de:	1f                   	pop    %ds
c00092df:	81 c4 04 00 00 00    	add    $0x4,%esp
c00092e5:	cf                   	iret   

c00092e6 <asm_intr0x29_handler>:
c00092e6:	68 00 00 00 00       	push   $0x0
c00092eb:	1e                   	push   %ds
c00092ec:	06                   	push   %es
c00092ed:	0f a0                	push   %fs
c00092ef:	0f a8                	push   %gs
c00092f1:	60                   	pusha  
c00092f2:	68 29 00 00 00       	push   $0x29
c00092f7:	66 8c d0             	mov    %ss,%ax
c00092fa:	8e d8                	mov    %eax,%ds
c00092fc:	8e c0                	mov    %eax,%es
c00092fe:	ff 15 7c e2 00 c0    	call   *0xc000e27c
c0009304:	81 c4 04 00 00 00    	add    $0x4,%esp
c000930a:	61                   	popa   
c000930b:	0f a9                	pop    %gs
c000930d:	0f a1                	pop    %fs
c000930f:	07                   	pop    %es
c0009310:	1f                   	pop    %ds
c0009311:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009317:	cf                   	iret   

c0009318 <asm_intr0x2a_handler>:
c0009318:	68 00 00 00 00       	push   $0x0
c000931d:	1e                   	push   %ds
c000931e:	06                   	push   %es
c000931f:	0f a0                	push   %fs
c0009321:	0f a8                	push   %gs
c0009323:	60                   	pusha  
c0009324:	68 2a 00 00 00       	push   $0x2a
c0009329:	66 8c d0             	mov    %ss,%ax
c000932c:	8e d8                	mov    %eax,%ds
c000932e:	8e c0                	mov    %eax,%es
c0009330:	ff 15 80 e2 00 c0    	call   *0xc000e280
c0009336:	81 c4 04 00 00 00    	add    $0x4,%esp
c000933c:	61                   	popa   
c000933d:	0f a9                	pop    %gs
c000933f:	0f a1                	pop    %fs
c0009341:	07                   	pop    %es
c0009342:	1f                   	pop    %ds
c0009343:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009349:	cf                   	iret   

c000934a <asm_intr0x2b_handler>:
c000934a:	68 00 00 00 00       	push   $0x0
c000934f:	1e                   	push   %ds
c0009350:	06                   	push   %es
c0009351:	0f a0                	push   %fs
c0009353:	0f a8                	push   %gs
c0009355:	60                   	pusha  
c0009356:	68 2b 00 00 00       	push   $0x2b
c000935b:	66 8c d0             	mov    %ss,%ax
c000935e:	8e d8                	mov    %eax,%ds
c0009360:	8e c0                	mov    %eax,%es
c0009362:	ff 15 84 e2 00 c0    	call   *0xc000e284
c0009368:	81 c4 04 00 00 00    	add    $0x4,%esp
c000936e:	61                   	popa   
c000936f:	0f a9                	pop    %gs
c0009371:	0f a1                	pop    %fs
c0009373:	07                   	pop    %es
c0009374:	1f                   	pop    %ds
c0009375:	81 c4 04 00 00 00    	add    $0x4,%esp
c000937b:	cf                   	iret   

c000937c <asm_intr0x2c_handler>:
c000937c:	68 00 00 00 00       	push   $0x0
c0009381:	1e                   	push   %ds
c0009382:	06                   	push   %es
c0009383:	0f a0                	push   %fs
c0009385:	0f a8                	push   %gs
c0009387:	60                   	pusha  
c0009388:	68 2c 00 00 00       	push   $0x2c
c000938d:	66 8c d0             	mov    %ss,%ax
c0009390:	8e d8                	mov    %eax,%ds
c0009392:	8e c0                	mov    %eax,%es
c0009394:	ff 15 88 e2 00 c0    	call   *0xc000e288
c000939a:	81 c4 04 00 00 00    	add    $0x4,%esp
c00093a0:	61                   	popa   
c00093a1:	0f a9                	pop    %gs
c00093a3:	0f a1                	pop    %fs
c00093a5:	07                   	pop    %es
c00093a6:	1f                   	pop    %ds
c00093a7:	81 c4 04 00 00 00    	add    $0x4,%esp
c00093ad:	cf                   	iret   

c00093ae <asm_intr0x2d_handler>:
c00093ae:	68 00 00 00 00       	push   $0x0
c00093b3:	1e                   	push   %ds
c00093b4:	06                   	push   %es
c00093b5:	0f a0                	push   %fs
c00093b7:	0f a8                	push   %gs
c00093b9:	60                   	pusha  
c00093ba:	68 2d 00 00 00       	push   $0x2d
c00093bf:	66 8c d0             	mov    %ss,%ax
c00093c2:	8e d8                	mov    %eax,%ds
c00093c4:	8e c0                	mov    %eax,%es
c00093c6:	ff 15 8c e2 00 c0    	call   *0xc000e28c
c00093cc:	81 c4 04 00 00 00    	add    $0x4,%esp
c00093d2:	61                   	popa   
c00093d3:	0f a9                	pop    %gs
c00093d5:	0f a1                	pop    %fs
c00093d7:	07                   	pop    %es
c00093d8:	1f                   	pop    %ds
c00093d9:	81 c4 04 00 00 00    	add    $0x4,%esp
c00093df:	cf                   	iret   

c00093e0 <asm_intr0x2e_handler>:
c00093e0:	68 00 00 00 00       	push   $0x0
c00093e5:	1e                   	push   %ds
c00093e6:	06                   	push   %es
c00093e7:	0f a0                	push   %fs
c00093e9:	0f a8                	push   %gs
c00093eb:	60                   	pusha  
c00093ec:	68 2e 00 00 00       	push   $0x2e
c00093f1:	66 8c d0             	mov    %ss,%ax
c00093f4:	8e d8                	mov    %eax,%ds
c00093f6:	8e c0                	mov    %eax,%es
c00093f8:	ff 15 90 e2 00 c0    	call   *0xc000e290
c00093fe:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009404:	61                   	popa   
c0009405:	0f a9                	pop    %gs
c0009407:	0f a1                	pop    %fs
c0009409:	07                   	pop    %es
c000940a:	1f                   	pop    %ds
c000940b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009411:	cf                   	iret   

c0009412 <asm_intr0x2f_handler>:
c0009412:	68 00 00 00 00       	push   $0x0
c0009417:	1e                   	push   %ds
c0009418:	06                   	push   %es
c0009419:	0f a0                	push   %fs
c000941b:	0f a8                	push   %gs
c000941d:	60                   	pusha  
c000941e:	68 2f 00 00 00       	push   $0x2f
c0009423:	66 8c d0             	mov    %ss,%ax
c0009426:	8e d8                	mov    %eax,%ds
c0009428:	8e c0                	mov    %eax,%es
c000942a:	ff 15 94 e2 00 c0    	call   *0xc000e294
c0009430:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009436:	61                   	popa   
c0009437:	0f a9                	pop    %gs
c0009439:	0f a1                	pop    %fs
c000943b:	07                   	pop    %es
c000943c:	1f                   	pop    %ds
c000943d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009443:	cf                   	iret   

c0009444 <intr0x27_handler>:
c0009444:	55                   	push   %ebp
c0009445:	ba 20 00 00 00       	mov    $0x20,%edx
c000944a:	89 e5                	mov    %esp,%ebp
c000944c:	b8 20 00 00 00       	mov    $0x20,%eax
c0009451:	ee                   	out    %al,(%dx)
c0009452:	5d                   	pop    %ebp
c0009453:	c3                   	ret    

c0009454 <init_pic>:
c0009454:	55                   	push   %ebp
c0009455:	ba 21 00 00 00       	mov    $0x21,%edx
c000945a:	89 e5                	mov    %esp,%ebp
c000945c:	b8 ff 00 00 00       	mov    $0xff,%eax
c0009461:	ee                   	out    %al,(%dx)
c0009462:	b2 a1                	mov    $0xa1,%dl
c0009464:	ee                   	out    %al,(%dx)
c0009465:	b2 20                	mov    $0x20,%dl
c0009467:	b0 11                	mov    $0x11,%al
c0009469:	ee                   	out    %al,(%dx)
c000946a:	b2 21                	mov    $0x21,%dl
c000946c:	b0 20                	mov    $0x20,%al
c000946e:	ee                   	out    %al,(%dx)
c000946f:	b0 04                	mov    $0x4,%al
c0009471:	ee                   	out    %al,(%dx)
c0009472:	b0 01                	mov    $0x1,%al
c0009474:	ee                   	out    %al,(%dx)
c0009475:	b2 a0                	mov    $0xa0,%dl
c0009477:	b0 11                	mov    $0x11,%al
c0009479:	ee                   	out    %al,(%dx)
c000947a:	b2 a1                	mov    $0xa1,%dl
c000947c:	b0 28                	mov    $0x28,%al
c000947e:	ee                   	out    %al,(%dx)
c000947f:	b0 02                	mov    $0x2,%al
c0009481:	ee                   	out    %al,(%dx)
c0009482:	b0 01                	mov    $0x1,%al
c0009484:	ee                   	out    %al,(%dx)
c0009485:	b2 21                	mov    $0x21,%dl
c0009487:	b0 fc                	mov    $0xfc,%al
c0009489:	ee                   	out    %al,(%dx)
c000948a:	b2 a1                	mov    $0xa1,%dl
c000948c:	b0 ff                	mov    $0xff,%al
c000948e:	ee                   	out    %al,(%dx)
c000948f:	5d                   	pop    %ebp
c0009490:	c3                   	ret    

c0009491 <idt_desc_init>:
c0009491:	55                   	push   %ebp
c0009492:	31 c0                	xor    %eax,%eax
c0009494:	89 e5                	mov    %esp,%ebp
c0009496:	c7 04 85 d8 e1 00 c0 	movl   $0xc0009649,-0x3fff1e28(,%eax,4)
c000949d:	49 96 00 c0 
c00094a1:	40                   	inc    %eax
c00094a2:	83 f8 2f             	cmp    $0x2f,%eax
c00094a5:	75 ef                	jne    c0009496 <idt_desc_init+0x5>
c00094a7:	c7 05 58 e2 00 c0 a0 	movl   $0xc000a8a0,0xc000e258
c00094ae:	a8 00 c0 
c00094b1:	30 c0                	xor    %al,%al
c00094b3:	c7 05 5c e2 00 c0 3e 	movl   $0xc000973e,0xc000e25c
c00094ba:	97 00 c0 
c00094bd:	c7 05 74 e2 00 c0 44 	movl   $0xc0009444,0xc000e274
c00094c4:	94 00 c0 
c00094c7:	8b 0c 85 d0 ba 00 c0 	mov    -0x3fff4530(,%eax,4),%ecx
c00094ce:	8d 14 c5 60 e0 00 c0 	lea    -0x3fff1fa0(,%eax,8),%edx
c00094d5:	66 89 0c c5 60 e0 00 	mov    %cx,-0x3fff1fa0(,%eax,8)
c00094dc:	c0 
c00094dd:	40                   	inc    %eax
c00094de:	c1 e9 10             	shr    $0x10,%ecx
c00094e1:	83 f8 2f             	cmp    $0x2f,%eax
c00094e4:	66 c7 42 02 08 00    	movw   $0x8,0x2(%edx)
c00094ea:	c6 42 04 00          	movb   $0x0,0x4(%edx)
c00094ee:	c6 42 05 8e          	movb   $0x8e,0x5(%edx)
c00094f2:	66 89 4a 06          	mov    %cx,0x6(%edx)
c00094f6:	75 cf                	jne    c00094c7 <idt_desc_init+0x36>
c00094f8:	5d                   	pop    %ebp
c00094f9:	c3                   	ret    

c00094fa <set_gatedesc>:
c00094fa:	55                   	push   %ebp
c00094fb:	89 e5                	mov    %esp,%ebp
c00094fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0009500:	53                   	push   %ebx
c0009501:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0009504:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0009507:	8b 55 0c             	mov    0xc(%ebp),%edx
c000950a:	88 48 05             	mov    %cl,0x5(%eax)
c000950d:	66 89 58 02          	mov    %bx,0x2(%eax)
c0009511:	89 cb                	mov    %ecx,%ebx
c0009513:	66 89 10             	mov    %dx,(%eax)
c0009516:	c1 fb 08             	sar    $0x8,%ebx
c0009519:	c1 ea 10             	shr    $0x10,%edx
c000951c:	88 58 04             	mov    %bl,0x4(%eax)
c000951f:	66 89 50 06          	mov    %dx,0x6(%eax)
c0009523:	5b                   	pop    %ebx
c0009524:	5d                   	pop    %ebp
c0009525:	c3                   	ret    

c0009526 <exception_init>:
c0009526:	55                   	push   %ebp
c0009527:	89 e5                	mov    %esp,%ebp
c0009529:	c7 05 a4 df 00 c0 3c 	movl   $0xc000d63c,0xc000dfa4
c0009530:	d6 00 c0 
c0009533:	c7 05 a8 df 00 c0 4d 	movl   $0xc000d64d,0xc000dfa8
c000953a:	d6 00 c0 
c000953d:	c7 05 ac df 00 c0 61 	movl   $0xc000d661,0xc000dfac
c0009544:	d6 00 c0 
c0009547:	c7 05 b0 df 00 c0 6f 	movl   $0xc000d66f,0xc000dfb0
c000954e:	d6 00 c0 
c0009551:	c7 05 b4 df 00 c0 88 	movl   $0xc000d688,0xc000dfb4
c0009558:	d6 00 c0 
c000955b:	c7 05 b8 df 00 c0 9f 	movl   $0xc000d69f,0xc000dfb8
c0009562:	d6 00 c0 
c0009565:	c7 05 bc df 00 c0 c2 	movl   $0xc000d6c2,0xc000dfbc
c000956c:	d6 00 c0 
c000956f:	c7 05 c0 df 00 c0 df 	movl   $0xc000d6df,0xc000dfc0
c0009576:	d6 00 c0 
c0009579:	c7 05 c4 df 00 c0 02 	movl   $0xc000d702,0xc000dfc4
c0009580:	d7 00 c0 
c0009583:	c7 05 c8 df 00 c0 1d 	movl   $0xc000d71d,0xc000dfc8
c000958a:	d7 00 c0 
c000958d:	c7 05 cc df 00 c0 39 	movl   $0xc000d739,0xc000dfcc
c0009594:	d7 00 c0 
c0009597:	c7 05 d0 df 00 c0 53 	movl   $0xc000d753,0xc000dfd0
c000959e:	d7 00 c0 
c00095a1:	c7 05 d4 df 00 c0 6b 	movl   $0xc000d76b,0xc000dfd4
c00095a8:	d7 00 c0 
c00095ab:	c7 05 d8 df 00 c0 85 	movl   $0xc000d785,0xc000dfd8
c00095b2:	d7 00 c0 
c00095b5:	c7 05 dc df 00 c0 a6 	movl   $0xc000d7a6,0xc000dfdc
c00095bc:	d7 00 c0 
c00095bf:	c7 05 e0 df 00 c0 bf 	movl   $0xc000d7bf,0xc000dfe0
c00095c6:	d7 00 c0 
c00095c9:	c7 05 e4 df 00 c0 c8 	movl   $0xc000d7c8,0xc000dfe4
c00095d0:	d7 00 c0 
c00095d3:	c7 05 e8 df 00 c0 e9 	movl   $0xc000d7e9,0xc000dfe8
c00095da:	d7 00 c0 
c00095dd:	c7 05 ec df 00 c0 07 	movl   $0xc000d807,0xc000dfec
c00095e4:	d8 00 c0 
c00095e7:	c7 05 f0 df 00 c0 23 	movl   $0xc000d823,0xc000dff0
c00095ee:	d8 00 c0 
c00095f1:	5d                   	pop    %ebp
c00095f2:	c3                   	ret    

c00095f3 <init_idt>:
c00095f3:	55                   	push   %ebp
c00095f4:	89 e5                	mov    %esp,%ebp
c00095f6:	83 ec 10             	sub    $0x10,%esp
c00095f9:	e8 93 fe ff ff       	call   c0009491 <idt_desc_init>
c00095fe:	e8 51 fe ff ff       	call   c0009454 <init_pic>
c0009603:	b8 60 e0 00 c0       	mov    $0xc000e060,%eax
c0009608:	c1 e0 10             	shl    $0x10,%eax
c000960b:	0d 77 01 00 00       	or     $0x177,%eax
c0009610:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0009613:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c000961a:	e8 07 ff ff ff       	call   c0009526 <exception_init>
c000961f:	0f 01 5d f8          	lidtl  -0x8(%ebp)
c0009623:	c9                   	leave  
c0009624:	c3                   	ret    

c0009625 <intr_get_status>:
c0009625:	55                   	push   %ebp
c0009626:	89 e5                	mov    %esp,%ebp
c0009628:	9c                   	pushf  
c0009629:	58                   	pop    %eax
c000962a:	f6 c4 02             	test   $0x2,%ah
c000962d:	0f 95 c0             	setne  %al
c0009630:	0f b6 c0             	movzbl %al,%eax
c0009633:	5d                   	pop    %ebp
c0009634:	c3                   	ret    

c0009635 <intr_disable>:
c0009635:	55                   	push   %ebp
c0009636:	89 e5                	mov    %esp,%ebp
c0009638:	e8 e8 ff ff ff       	call   c0009625 <intr_get_status>
c000963d:	31 d2                	xor    %edx,%edx
c000963f:	48                   	dec    %eax
c0009640:	75 03                	jne    c0009645 <intr_disable+0x10>
c0009642:	fa                   	cli    
c0009643:	b2 01                	mov    $0x1,%dl
c0009645:	89 d0                	mov    %edx,%eax
c0009647:	5d                   	pop    %ebp
c0009648:	c3                   	ret    

c0009649 <general_intr_handler>:
c0009649:	55                   	push   %ebp
c000964a:	89 e5                	mov    %esp,%ebp
c000964c:	56                   	push   %esi
c000964d:	53                   	push   %ebx
c000964e:	8a 5d 08             	mov    0x8(%ebp),%bl
c0009651:	e8 df ff ff ff       	call   c0009635 <intr_disable>
c0009656:	83 ec 0c             	sub    $0xc,%esp
c0009659:	6a 00                	push   $0x0
c000965b:	e8 8d 08 00 00       	call   c0009eed <set_cursor>
c0009660:	58                   	pop    %eax
c0009661:	0f b6 f3             	movzbl %bl,%esi
c0009664:	5a                   	pop    %edx
c0009665:	68 45 d8 00 c0       	push   $0xc000d845
c000966a:	6a 17                	push   $0x17
c000966c:	e8 44 09 00 00       	call   c0009fb5 <put_str>
c0009671:	83 c4 0c             	add    $0xc,%esp
c0009674:	6a 10                	push   $0x10
c0009676:	56                   	push   %esi
c0009677:	6a 17                	push   $0x17
c0009679:	e8 99 09 00 00       	call   c000a017 <put_int>
c000967e:	59                   	pop    %ecx
c000967f:	58                   	pop    %eax
c0009680:	68 50 d8 00 c0       	push   $0xc000d850
c0009685:	6a 17                	push   $0x17
c0009687:	e8 29 09 00 00       	call   c0009fb5 <put_str>
c000968c:	83 c4 10             	add    $0x10,%esp
c000968f:	80 fb 13             	cmp    $0x13,%bl
c0009692:	77 47                	ja     c00096db <general_intr_handler+0x92>
c0009694:	50                   	push   %eax
c0009695:	50                   	push   %eax
c0009696:	ff 34 b5 a4 df 00 c0 	pushl  -0x3fff205c(,%esi,4)
c000969d:	6a 17                	push   $0x17
c000969f:	e8 11 09 00 00       	call   c0009fb5 <put_str>
c00096a4:	83 c4 10             	add    $0x10,%esp
c00096a7:	80 fb 0e             	cmp    $0xe,%bl
c00096aa:	75 2f                	jne    c00096db <general_intr_handler+0x92>
c00096ac:	0f 20 d3             	mov    %cr2,%ebx
c00096af:	52                   	push   %edx
c00096b0:	52                   	push   %edx
c00096b1:	68 53 d8 00 c0       	push   $0xc000d853
c00096b6:	6a 17                	push   $0x17
c00096b8:	e8 f8 08 00 00       	call   c0009fb5 <put_str>
c00096bd:	83 c4 0c             	add    $0xc,%esp
c00096c0:	6a 10                	push   $0x10
c00096c2:	53                   	push   %ebx
c00096c3:	6a 17                	push   $0x17
c00096c5:	e8 13 09 00 00       	call   c0009fdd <put_uint>
c00096ca:	59                   	pop    %ecx
c00096cb:	5b                   	pop    %ebx
c00096cc:	68 68 d8 00 c0       	push   $0xc000d868
c00096d1:	6a 17                	push   $0x17
c00096d3:	e8 dd 08 00 00       	call   c0009fb5 <put_str>
c00096d8:	83 c4 10             	add    $0x10,%esp
c00096db:	50                   	push   %eax
c00096dc:	50                   	push   %eax
c00096dd:	68 6c d8 00 c0       	push   $0xc000d86c
c00096e2:	6a 17                	push   $0x17
c00096e4:	e8 cc 08 00 00       	call   c0009fb5 <put_str>
c00096e9:	e8 bc ee ff ff       	call   c00085aa <cpu_info>
c00096ee:	83 c4 10             	add    $0x10,%esp
c00096f1:	eb fe                	jmp    c00096f1 <general_intr_handler+0xa8>

c00096f3 <intr_enable>:
c00096f3:	55                   	push   %ebp
c00096f4:	89 e5                	mov    %esp,%ebp
c00096f6:	e8 2a ff ff ff       	call   c0009625 <intr_get_status>
c00096fb:	ba 01 00 00 00       	mov    $0x1,%edx
c0009700:	48                   	dec    %eax
c0009701:	74 03                	je     c0009706 <intr_enable+0x13>
c0009703:	fb                   	sti    
c0009704:	30 d2                	xor    %dl,%dl
c0009706:	89 d0                	mov    %edx,%eax
c0009708:	5d                   	pop    %ebp
c0009709:	c3                   	ret    

c000970a <intr_set_status>:
c000970a:	55                   	push   %ebp
c000970b:	89 e5                	mov    %esp,%ebp
c000970d:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0009711:	75 06                	jne    c0009719 <intr_set_status+0xf>
c0009713:	5d                   	pop    %ebp
c0009714:	e9 da ff ff ff       	jmp    c00096f3 <intr_enable>
c0009719:	5d                   	pop    %ebp
c000971a:	e9 16 ff ff ff       	jmp    c0009635 <intr_disable>
	...

c0009720 <init_keyboard>:
c0009720:	55                   	push   %ebp
c0009721:	89 e5                	mov    %esp,%ebp
c0009723:	83 ec 08             	sub    $0x8,%esp
c0009726:	6a 40                	push   $0x40
c0009728:	6a 08                	push   $0x8
c000972a:	68 d4 de 00 c0       	push   $0xc000ded4
c000972f:	68 94 e2 00 c0       	push   $0xc000e294
c0009734:	e8 83 ef ff ff       	call   c00086bc <init_fifo>
c0009739:	83 c4 10             	add    $0x10,%esp
c000973c:	c9                   	leave  
c000973d:	c3                   	ret    

c000973e <intr0x21_handler>:
c000973e:	55                   	push   %ebp
c000973f:	b8 20 00 00 00       	mov    $0x20,%eax
c0009744:	89 e5                	mov    %esp,%ebp
c0009746:	89 c2                	mov    %eax,%edx
c0009748:	53                   	push   %ebx
c0009749:	83 ec 14             	sub    $0x14,%esp
c000974c:	ee                   	out    %al,(%dx)
c000974d:	8b 0d 14 df 00 c0    	mov    0xc000df14,%ecx
c0009753:	b2 60                	mov    $0x60,%dl
c0009755:	8b 1d 18 df 00 c0    	mov    0xc000df18,%ebx
c000975b:	ec                   	in     (%dx),%al
c000975c:	66 3d e0 00          	cmp    $0xe0,%ax
c0009760:	75 0f                	jne    c0009771 <intr0x21_handler+0x33>
c0009762:	c7 05 1c df 00 c0 01 	movl   $0x1,0xc000df1c
c0009769:	00 00 00 
c000976c:	e9 9e 01 00 00       	jmp    c000990f <intr0x21_handler+0x1d1>
c0009771:	83 3d 1c df 00 c0 01 	cmpl   $0x1,0xc000df1c
c0009778:	75 0e                	jne    c0009788 <intr0x21_handler+0x4a>
c000977a:	66 0d 00 e0          	or     $0xe000,%ax
c000977e:	c7 05 1c df 00 c0 00 	movl   $0x0,0xc000df1c
c0009785:	00 00 00 
c0009788:	a8 80                	test   $0x80,%al
c000978a:	74 61                	je     c00097ed <intr0x21_handler+0xaf>
c000978c:	24 7f                	and    $0x7f,%al
c000978e:	66 83 f8 36          	cmp    $0x36,%ax
c0009792:	74 3b                	je     c00097cf <intr0x21_handler+0x91>
c0009794:	77 12                	ja     c00097a8 <intr0x21_handler+0x6a>
c0009796:	66 83 f8 1d          	cmp    $0x1d,%ax
c000979a:	74 24                	je     c00097c0 <intr0x21_handler+0x82>
c000979c:	66 83 f8 2a          	cmp    $0x2a,%ax
c00097a0:	0f 85 69 01 00 00    	jne    c000990f <intr0x21_handler+0x1d1>
c00097a6:	eb 27                	jmp    c00097cf <intr0x21_handler+0x91>
c00097a8:	66 3d 1d e0          	cmp    $0xe01d,%ax
c00097ac:	74 12                	je     c00097c0 <intr0x21_handler+0x82>
c00097ae:	66 3d 38 e0          	cmp    $0xe038,%ax
c00097b2:	74 2a                	je     c00097de <intr0x21_handler+0xa0>
c00097b4:	66 83 f8 38          	cmp    $0x38,%ax
c00097b8:	0f 85 51 01 00 00    	jne    c000990f <intr0x21_handler+0x1d1>
c00097be:	eb 1e                	jmp    c00097de <intr0x21_handler+0xa0>
c00097c0:	c7 05 20 df 00 c0 00 	movl   $0x0,0xc000df20
c00097c7:	00 00 00 
c00097ca:	e9 40 01 00 00       	jmp    c000990f <intr0x21_handler+0x1d1>
c00097cf:	c7 05 14 df 00 c0 00 	movl   $0x0,0xc000df14
c00097d6:	00 00 00 
c00097d9:	e9 31 01 00 00       	jmp    c000990f <intr0x21_handler+0x1d1>
c00097de:	c7 05 24 df 00 c0 00 	movl   $0x0,0xc000df24
c00097e5:	00 00 00 
c00097e8:	e9 22 01 00 00       	jmp    c000990f <intr0x21_handler+0x1d1>
c00097ed:	8d 50 ff             	lea    -0x1(%eax),%edx
c00097f0:	66 83 fa 39          	cmp    $0x39,%dx
c00097f4:	76 10                	jbe    c0009806 <intr0x21_handler+0xc8>
c00097f6:	66 3d 38 e0          	cmp    $0xe038,%ax
c00097fa:	74 0a                	je     c0009806 <intr0x21_handler+0xc8>
c00097fc:	66 3d 1d e0          	cmp    $0xe01d,%ax
c0009800:	0f 85 09 01 00 00    	jne    c000990f <intr0x21_handler+0x1d1>
c0009806:	66 83 f8 29          	cmp    $0x29,%ax
c000980a:	74 2d                	je     c0009839 <intr0x21_handler+0xfb>
c000980c:	66 83 f8 0d          	cmp    $0xd,%ax
c0009810:	76 27                	jbe    c0009839 <intr0x21_handler+0xfb>
c0009812:	66 83 f8 1b          	cmp    $0x1b,%ax
c0009816:	74 21                	je     c0009839 <intr0x21_handler+0xfb>
c0009818:	66 83 f8 1a          	cmp    $0x1a,%ax
c000981c:	74 1b                	je     c0009839 <intr0x21_handler+0xfb>
c000981e:	66 83 f8 27          	cmp    $0x27,%ax
c0009822:	74 15                	je     c0009839 <intr0x21_handler+0xfb>
c0009824:	66 83 f8 2b          	cmp    $0x2b,%ax
c0009828:	74 0f                	je     c0009839 <intr0x21_handler+0xfb>
c000982a:	66 83 f8 28          	cmp    $0x28,%ax
c000982e:	74 09                	je     c0009839 <intr0x21_handler+0xfb>
c0009830:	8d 50 cd             	lea    -0x33(%eax),%edx
c0009833:	66 83 fa 02          	cmp    $0x2,%dx
c0009837:	77 06                	ja     c000983f <intr0x21_handler+0x101>
c0009839:	49                   	dec    %ecx
c000983a:	0f 94 c2             	sete   %dl
c000983d:	eb 0f                	jmp    c000984e <intr0x21_handler+0x110>
c000983f:	85 db                	test   %ebx,%ebx
c0009841:	74 06                	je     c0009849 <intr0x21_handler+0x10b>
c0009843:	31 d2                	xor    %edx,%edx
c0009845:	85 c9                	test   %ecx,%ecx
c0009847:	75 08                	jne    c0009851 <intr0x21_handler+0x113>
c0009849:	09 cb                	or     %ecx,%ebx
c000984b:	0f 95 c2             	setne  %dl
c000984e:	0f b6 d2             	movzbl %dl,%edx
c0009851:	66 25 ff 00          	and    $0xff,%ax
c0009855:	0f b7 c8             	movzwl %ax,%ecx
c0009858:	8a 94 4a e4 d8 00 c0 	mov    -0x3fff271c(%edx,%ecx,2),%dl
c000985f:	84 d2                	test   %dl,%dl
c0009861:	88 55 f7             	mov    %dl,-0x9(%ebp)
c0009864:	74 3d                	je     c00098a3 <intr0x21_handler+0x165>
c0009866:	83 ec 0c             	sub    $0xc,%esp
c0009869:	68 94 e2 00 c0       	push   $0xc000e294
c000986e:	e8 06 f0 ff ff       	call   c0008879 <fifo_fill>
c0009873:	83 c4 10             	add    $0x10,%esp
c0009876:	85 c0                	test   %eax,%eax
c0009878:	75 20                	jne    c000989a <intr0x21_handler+0x15c>
c000987a:	53                   	push   %ebx
c000987b:	53                   	push   %ebx
c000987c:	8d 45 f7             	lea    -0x9(%ebp),%eax
c000987f:	50                   	push   %eax
c0009880:	68 94 e2 00 c0       	push   $0xc000e294
c0009885:	e8 57 ee ff ff       	call   c00086e1 <fifo_put>
c000988a:	58                   	pop    %eax
c000988b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000988f:	5a                   	pop    %edx
c0009890:	50                   	push   %eax
c0009891:	6a 07                	push   $0x7
c0009893:	e8 7c 06 00 00       	call   c0009f14 <put_char>
c0009898:	eb 72                	jmp    c000990c <intr0x21_handler+0x1ce>
c000989a:	51                   	push   %ecx
c000989b:	51                   	push   %ecx
c000989c:	68 9c d8 00 c0       	push   $0xc000d89c
c00098a1:	eb 62                	jmp    c0009905 <intr0x21_handler+0x1c7>
c00098a3:	66 83 f8 36          	cmp    $0x36,%ax
c00098a7:	74 2a                	je     c00098d3 <intr0x21_handler+0x195>
c00098a9:	77 0e                	ja     c00098b9 <intr0x21_handler+0x17b>
c00098ab:	66 83 f8 1d          	cmp    $0x1d,%ax
c00098af:	74 16                	je     c00098c7 <intr0x21_handler+0x189>
c00098b1:	66 83 f8 2a          	cmp    $0x2a,%ax
c00098b5:	75 47                	jne    c00098fe <intr0x21_handler+0x1c0>
c00098b7:	eb 1a                	jmp    c00098d3 <intr0x21_handler+0x195>
c00098b9:	66 83 f8 38          	cmp    $0x38,%ax
c00098bd:	74 20                	je     c00098df <intr0x21_handler+0x1a1>
c00098bf:	66 83 f8 3a          	cmp    $0x3a,%ax
c00098c3:	75 39                	jne    c00098fe <intr0x21_handler+0x1c0>
c00098c5:	eb 24                	jmp    c00098eb <intr0x21_handler+0x1ad>
c00098c7:	c7 05 20 df 00 c0 01 	movl   $0x1,0xc000df20
c00098ce:	00 00 00 
c00098d1:	eb 3c                	jmp    c000990f <intr0x21_handler+0x1d1>
c00098d3:	c7 05 14 df 00 c0 01 	movl   $0x1,0xc000df14
c00098da:	00 00 00 
c00098dd:	eb 30                	jmp    c000990f <intr0x21_handler+0x1d1>
c00098df:	c7 05 24 df 00 c0 01 	movl   $0x1,0xc000df24
c00098e6:	00 00 00 
c00098e9:	eb 24                	jmp    c000990f <intr0x21_handler+0x1d1>
c00098eb:	31 c0                	xor    %eax,%eax
c00098ed:	83 3d 18 df 00 c0 00 	cmpl   $0x0,0xc000df18
c00098f4:	0f 94 c0             	sete   %al
c00098f7:	a3 18 df 00 c0       	mov    %eax,0xc000df18
c00098fc:	eb 11                	jmp    c000990f <intr0x21_handler+0x1d1>
c00098fe:	52                   	push   %edx
c00098ff:	52                   	push   %edx
c0009900:	68 b0 d8 00 c0       	push   $0xc000d8b0
c0009905:	6a 04                	push   $0x4
c0009907:	e8 a9 06 00 00       	call   c0009fb5 <put_str>
c000990c:	83 c4 10             	add    $0x10,%esp
c000990f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0009912:	c9                   	leave  
c0009913:	c3                   	ret    

c0009914 <list_init>:
c0009914:	55                   	push   %ebp
c0009915:	89 e5                	mov    %esp,%ebp
c0009917:	8b 45 08             	mov    0x8(%ebp),%eax
c000991a:	8d 50 0c             	lea    0xc(%eax),%edx
c000991d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0009923:	89 50 08             	mov    %edx,0x8(%eax)
c0009926:	89 40 0c             	mov    %eax,0xc(%eax)
c0009929:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0009930:	5d                   	pop    %ebp
c0009931:	c3                   	ret    

c0009932 <list_in>:
c0009932:	55                   	push   %ebp
c0009933:	89 e5                	mov    %esp,%ebp
c0009935:	56                   	push   %esi
c0009936:	8b 75 08             	mov    0x8(%ebp),%esi
c0009939:	53                   	push   %ebx
c000993a:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c000993d:	e8 f3 fc ff ff       	call   c0009635 <intr_disable>
c0009942:	8b 13                	mov    (%ebx),%edx
c0009944:	89 72 08             	mov    %esi,0x8(%edx)
c0009947:	8b 13                	mov    (%ebx),%edx
c0009949:	89 5e 08             	mov    %ebx,0x8(%esi)
c000994c:	89 16                	mov    %edx,(%esi)
c000994e:	89 33                	mov    %esi,(%ebx)
c0009950:	89 45 08             	mov    %eax,0x8(%ebp)
c0009953:	5b                   	pop    %ebx
c0009954:	5e                   	pop    %esi
c0009955:	5d                   	pop    %ebp
c0009956:	e9 af fd ff ff       	jmp    c000970a <intr_set_status>

c000995b <list_push>:
c000995b:	55                   	push   %ebp
c000995c:	89 e5                	mov    %esp,%ebp
c000995e:	8b 55 08             	mov    0x8(%ebp),%edx
c0009961:	8b 45 0c             	mov    0xc(%ebp),%eax
c0009964:	8b 52 08             	mov    0x8(%edx),%edx
c0009967:	89 45 08             	mov    %eax,0x8(%ebp)
c000996a:	89 55 0c             	mov    %edx,0xc(%ebp)
c000996d:	5d                   	pop    %ebp
c000996e:	e9 bf ff ff ff       	jmp    c0009932 <list_in>

c0009973 <list_append>:
c0009973:	55                   	push   %ebp
c0009974:	89 e5                	mov    %esp,%ebp
c0009976:	8b 55 08             	mov    0x8(%ebp),%edx
c0009979:	8b 45 0c             	mov    0xc(%ebp),%eax
c000997c:	83 c2 0c             	add    $0xc,%edx
c000997f:	89 55 0c             	mov    %edx,0xc(%ebp)
c0009982:	89 45 08             	mov    %eax,0x8(%ebp)
c0009985:	5d                   	pop    %ebp
c0009986:	e9 a7 ff ff ff       	jmp    c0009932 <list_in>

c000998b <list_remove>:
c000998b:	55                   	push   %ebp
c000998c:	89 e5                	mov    %esp,%ebp
c000998e:	53                   	push   %ebx
c000998f:	50                   	push   %eax
c0009990:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0009993:	e8 9d fc ff ff       	call   c0009635 <intr_disable>
c0009998:	8b 13                	mov    (%ebx),%edx
c000999a:	8b 4b 08             	mov    0x8(%ebx),%ecx
c000999d:	89 4a 08             	mov    %ecx,0x8(%edx)
c00099a0:	8b 53 08             	mov    0x8(%ebx),%edx
c00099a3:	8b 0b                	mov    (%ebx),%ecx
c00099a5:	89 0a                	mov    %ecx,(%edx)
c00099a7:	89 45 08             	mov    %eax,0x8(%ebp)
c00099aa:	5a                   	pop    %edx
c00099ab:	5b                   	pop    %ebx
c00099ac:	5d                   	pop    %ebp
c00099ad:	e9 58 fd ff ff       	jmp    c000970a <intr_set_status>

c00099b2 <list_pop>:
c00099b2:	55                   	push   %ebp
c00099b3:	89 e5                	mov    %esp,%ebp
c00099b5:	53                   	push   %ebx
c00099b6:	83 ec 10             	sub    $0x10,%esp
c00099b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00099bc:	8b 58 08             	mov    0x8(%eax),%ebx
c00099bf:	53                   	push   %ebx
c00099c0:	e8 c6 ff ff ff       	call   c000998b <list_remove>
c00099c5:	89 d8                	mov    %ebx,%eax
c00099c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00099ca:	c9                   	leave  
c00099cb:	c3                   	ret    

c00099cc <list_find>:
c00099cc:	55                   	push   %ebp
c00099cd:	89 e5                	mov    %esp,%ebp
c00099cf:	8b 55 08             	mov    0x8(%ebp),%edx
c00099d2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00099d5:	8b 42 08             	mov    0x8(%edx),%eax
c00099d8:	83 c2 0c             	add    $0xc,%edx
c00099db:	eb 07                	jmp    c00099e4 <list_find+0x18>
c00099dd:	39 c8                	cmp    %ecx,%eax
c00099df:	74 0b                	je     c00099ec <list_find+0x20>
c00099e1:	8b 40 08             	mov    0x8(%eax),%eax
c00099e4:	39 d0                	cmp    %edx,%eax
c00099e6:	75 f5                	jne    c00099dd <list_find+0x11>
c00099e8:	31 c0                	xor    %eax,%eax
c00099ea:	eb 05                	jmp    c00099f1 <list_find+0x25>
c00099ec:	b8 01 00 00 00       	mov    $0x1,%eax
c00099f1:	5d                   	pop    %ebp
c00099f2:	c3                   	ret    

c00099f3 <list_traversal>:
c00099f3:	55                   	push   %ebp
c00099f4:	89 e5                	mov    %esp,%ebp
c00099f6:	57                   	push   %edi
c00099f7:	56                   	push   %esi
c00099f8:	53                   	push   %ebx
c00099f9:	83 ec 0c             	sub    $0xc,%esp
c00099fc:	8b 75 08             	mov    0x8(%ebp),%esi
c00099ff:	8b 7d 10             	mov    0x10(%ebp),%edi
c0009a02:	8b 5e 08             	mov    0x8(%esi),%ebx
c0009a05:	83 c6 0c             	add    $0xc,%esi
c0009a08:	eb 11                	jmp    c0009a1b <list_traversal+0x28>
c0009a0a:	51                   	push   %ecx
c0009a0b:	51                   	push   %ecx
c0009a0c:	57                   	push   %edi
c0009a0d:	53                   	push   %ebx
c0009a0e:	ff 55 0c             	call   *0xc(%ebp)
c0009a11:	83 c4 10             	add    $0x10,%esp
c0009a14:	85 c0                	test   %eax,%eax
c0009a16:	75 09                	jne    c0009a21 <list_traversal+0x2e>
c0009a18:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0009a1b:	39 f3                	cmp    %esi,%ebx
c0009a1d:	75 eb                	jne    c0009a0a <list_traversal+0x17>
c0009a1f:	31 db                	xor    %ebx,%ebx
c0009a21:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0009a24:	89 d8                	mov    %ebx,%eax
c0009a26:	5b                   	pop    %ebx
c0009a27:	5e                   	pop    %esi
c0009a28:	5f                   	pop    %edi
c0009a29:	5d                   	pop    %ebp
c0009a2a:	c3                   	ret    

c0009a2b <list_len>:
c0009a2b:	55                   	push   %ebp
c0009a2c:	31 c0                	xor    %eax,%eax
c0009a2e:	89 e5                	mov    %esp,%ebp
c0009a30:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0009a33:	8b 51 08             	mov    0x8(%ecx),%edx
c0009a36:	83 c1 0c             	add    $0xc,%ecx
c0009a39:	eb 04                	jmp    c0009a3f <list_len+0x14>
c0009a3b:	8b 52 08             	mov    0x8(%edx),%edx
c0009a3e:	40                   	inc    %eax
c0009a3f:	39 ca                	cmp    %ecx,%edx
c0009a41:	75 f8                	jne    c0009a3b <list_len+0x10>
c0009a43:	5d                   	pop    %ebp
c0009a44:	c3                   	ret    

c0009a45 <list_empty>:
c0009a45:	55                   	push   %ebp
c0009a46:	89 e5                	mov    %esp,%ebp
c0009a48:	8b 45 08             	mov    0x8(%ebp),%eax
c0009a4b:	5d                   	pop    %ebp
c0009a4c:	8d 50 0c             	lea    0xc(%eax),%edx
c0009a4f:	39 50 08             	cmp    %edx,0x8(%eax)
c0009a52:	0f 94 c0             	sete   %al
c0009a55:	0f b6 c0             	movzbl %al,%eax
c0009a58:	c3                   	ret    
c0009a59:	00 00                	add    %al,(%eax)
	...

c0009a5c <init_memmam>:
c0009a5c:	55                   	push   %ebp
c0009a5d:	89 e5                	mov    %esp,%ebp
c0009a5f:	8b 45 08             	mov    0x8(%ebp),%eax
c0009a62:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0009a68:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0009a6f:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0009a76:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0009a7d:	5d                   	pop    %ebp
c0009a7e:	c3                   	ret    

c0009a7f <TotalFreeSize>:
c0009a7f:	55                   	push   %ebp
c0009a80:	31 d2                	xor    %edx,%edx
c0009a82:	89 e5                	mov    %esp,%ebp
c0009a84:	31 c0                	xor    %eax,%eax
c0009a86:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0009a89:	53                   	push   %ebx
c0009a8a:	8b 19                	mov    (%ecx),%ebx
c0009a8c:	eb 05                	jmp    c0009a93 <TotalFreeSize+0x14>
c0009a8e:	03 44 d1 14          	add    0x14(%ecx,%edx,8),%eax
c0009a92:	42                   	inc    %edx
c0009a93:	39 da                	cmp    %ebx,%edx
c0009a95:	75 f7                	jne    c0009a8e <TotalFreeSize+0xf>
c0009a97:	5b                   	pop    %ebx
c0009a98:	5d                   	pop    %ebp
c0009a99:	c3                   	ret    

c0009a9a <mem_alloc>:
c0009a9a:	55                   	push   %ebp
c0009a9b:	89 e5                	mov    %esp,%ebp
c0009a9d:	57                   	push   %edi
c0009a9e:	56                   	push   %esi
c0009a9f:	53                   	push   %ebx
c0009aa0:	51                   	push   %ecx
c0009aa1:	8b 55 08             	mov    0x8(%ebp),%edx
c0009aa4:	31 c9                	xor    %ecx,%ecx
c0009aa6:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0009aa9:	8b 02                	mov    (%edx),%eax
c0009aab:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0009aae:	eb 40                	jmp    c0009af0 <mem_alloc+0x56>
c0009ab0:	39 7c ca 14          	cmp    %edi,0x14(%edx,%ecx,8)
c0009ab4:	72 39                	jb     c0009aef <mem_alloc+0x55>
c0009ab6:	8d 71 02             	lea    0x2(%ecx),%esi
c0009ab9:	8b 04 f2             	mov    (%edx,%esi,8),%eax
c0009abc:	8d 1c 38             	lea    (%eax,%edi,1),%ebx
c0009abf:	89 1c f2             	mov    %ebx,(%edx,%esi,8)
c0009ac2:	8b 5c f2 04          	mov    0x4(%edx,%esi,8),%ebx
c0009ac6:	29 fb                	sub    %edi,%ebx
c0009ac8:	85 db                	test   %ebx,%ebx
c0009aca:	89 5c f2 04          	mov    %ebx,0x4(%edx,%esi,8)
c0009ace:	75 27                	jne    c0009af7 <mem_alloc+0x5d>
c0009ad0:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0009ad3:	4b                   	dec    %ebx
c0009ad4:	89 1a                	mov    %ebx,(%edx)
c0009ad6:	eb 11                	jmp    c0009ae9 <mem_alloc+0x4f>
c0009ad8:	41                   	inc    %ecx
c0009ad9:	8b 74 ca 10          	mov    0x10(%edx,%ecx,8),%esi
c0009add:	8b 7c ca 14          	mov    0x14(%edx,%ecx,8),%edi
c0009ae1:	89 74 ca 08          	mov    %esi,0x8(%edx,%ecx,8)
c0009ae5:	89 7c ca 0c          	mov    %edi,0xc(%edx,%ecx,8)
c0009ae9:	39 d9                	cmp    %ebx,%ecx
c0009aeb:	72 eb                	jb     c0009ad8 <mem_alloc+0x3e>
c0009aed:	eb 08                	jmp    c0009af7 <mem_alloc+0x5d>
c0009aef:	41                   	inc    %ecx
c0009af0:	3b 4d f0             	cmp    -0x10(%ebp),%ecx
c0009af3:	75 bb                	jne    c0009ab0 <mem_alloc+0x16>
c0009af5:	31 c0                	xor    %eax,%eax
c0009af7:	5a                   	pop    %edx
c0009af8:	5b                   	pop    %ebx
c0009af9:	5e                   	pop    %esi
c0009afa:	5f                   	pop    %edi
c0009afb:	5d                   	pop    %ebp
c0009afc:	c3                   	ret    

c0009afd <mem_alloc_page>:
c0009afd:	55                   	push   %ebp
c0009afe:	89 e5                	mov    %esp,%ebp
c0009b00:	c1 65 0c 0c          	shll   $0xc,0xc(%ebp)
c0009b04:	5d                   	pop    %ebp
c0009b05:	e9 90 ff ff ff       	jmp    c0009a9a <mem_alloc>

c0009b0a <mem_free>:
c0009b0a:	55                   	push   %ebp
c0009b0b:	31 c9                	xor    %ecx,%ecx
c0009b0d:	89 e5                	mov    %esp,%ebp
c0009b0f:	57                   	push   %edi
c0009b10:	56                   	push   %esi
c0009b11:	53                   	push   %ebx
c0009b12:	83 ec 10             	sub    $0x10,%esp
c0009b15:	8b 55 08             	mov    0x8(%ebp),%edx
c0009b18:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0009b1b:	8b 75 10             	mov    0x10(%ebp),%esi
c0009b1e:	8b 02                	mov    (%edx),%eax
c0009b20:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0009b23:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0009b26:	eb 07                	jmp    c0009b2f <mem_free+0x25>
c0009b28:	39 5c ca 10          	cmp    %ebx,0x10(%edx,%ecx,8)
c0009b2c:	77 06                	ja     c0009b34 <mem_free+0x2a>
c0009b2e:	41                   	inc    %ecx
c0009b2f:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0009b32:	75 f4                	jne    c0009b28 <mem_free+0x1e>
c0009b34:	85 c9                	test   %ecx,%ecx
c0009b36:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0009b39:	74 60                	je     c0009b9b <mem_free+0x91>
c0009b3b:	8d 79 01             	lea    0x1(%ecx),%edi
c0009b3e:	8b 44 fa 04          	mov    0x4(%edx,%edi,8),%eax
c0009b42:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0009b45:	03 04 fa             	add    (%edx,%edi,8),%eax
c0009b48:	39 d8                	cmp    %ebx,%eax
c0009b4a:	75 4f                	jne    c0009b9b <mem_free+0x91>
c0009b4c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0009b4f:	01 f0                	add    %esi,%eax
c0009b51:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0009b54:	89 44 fa 04          	mov    %eax,0x4(%edx,%edi,8)
c0009b58:	31 c0                	xor    %eax,%eax
c0009b5a:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0009b5d:	0f 83 a9 00 00 00    	jae    c0009c0c <mem_free+0x102>
c0009b63:	01 de                	add    %ebx,%esi
c0009b65:	8d 59 02             	lea    0x2(%ecx),%ebx
c0009b68:	39 34 da             	cmp    %esi,(%edx,%ebx,8)
c0009b6b:	0f 85 9b 00 00 00    	jne    c0009c0c <mem_free+0x102>
c0009b71:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0009b74:	03 44 da 04          	add    0x4(%edx,%ebx,8),%eax
c0009b78:	89 44 fa 04          	mov    %eax,0x4(%edx,%edi,8)
c0009b7c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0009b7f:	48                   	dec    %eax
c0009b80:	89 02                	mov    %eax,(%edx)
c0009b82:	eb 11                	jmp    c0009b95 <mem_free+0x8b>
c0009b84:	41                   	inc    %ecx
c0009b85:	8b 74 ca 10          	mov    0x10(%edx,%ecx,8),%esi
c0009b89:	8b 7c ca 14          	mov    0x14(%edx,%ecx,8),%edi
c0009b8d:	89 74 ca 08          	mov    %esi,0x8(%edx,%ecx,8)
c0009b91:	89 7c ca 0c          	mov    %edi,0xc(%edx,%ecx,8)
c0009b95:	39 c1                	cmp    %eax,%ecx
c0009b97:	72 eb                	jb     c0009b84 <mem_free+0x7a>
c0009b99:	eb 1d                	jmp    c0009bb8 <mem_free+0xae>
c0009b9b:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0009b9e:	73 1c                	jae    c0009bbc <mem_free+0xb2>
c0009ba0:	8d 3c 33             	lea    (%ebx,%esi,1),%edi
c0009ba3:	89 7d f0             	mov    %edi,-0x10(%ebp)
c0009ba6:	8d 79 02             	lea    0x2(%ecx),%edi
c0009ba9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0009bac:	39 04 fa             	cmp    %eax,(%edx,%edi,8)
c0009baf:	75 0b                	jne    c0009bbc <mem_free+0xb2>
c0009bb1:	01 74 fa 04          	add    %esi,0x4(%edx,%edi,8)
c0009bb5:	89 1c fa             	mov    %ebx,(%edx,%edi,8)
c0009bb8:	31 c0                	xor    %eax,%eax
c0009bba:	eb 50                	jmp    c0009c0c <mem_free+0x102>
c0009bbc:	81 7d ec 9f 0f 00 00 	cmpl   $0xf9f,-0x14(%ebp)
c0009bc3:	76 15                	jbe    c0009bda <mem_free+0xd0>
c0009bc5:	eb 3a                	jmp    c0009c01 <mem_free+0xf7>
c0009bc7:	8b 74 c2 08          	mov    0x8(%edx,%eax,8),%esi
c0009bcb:	8b 7c c2 0c          	mov    0xc(%edx,%eax,8),%edi
c0009bcf:	89 74 c2 10          	mov    %esi,0x10(%edx,%eax,8)
c0009bd3:	89 7c c2 14          	mov    %edi,0x14(%edx,%eax,8)
c0009bd7:	40                   	inc    %eax
c0009bd8:	eb 06                	jmp    c0009be0 <mem_free+0xd6>
c0009bda:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0009bdd:	89 75 f0             	mov    %esi,-0x10(%ebp)
c0009be0:	39 c8                	cmp    %ecx,%eax
c0009be2:	7f e3                	jg     c0009bc7 <mem_free+0xbd>
c0009be4:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0009be7:	8b 75 f0             	mov    -0x10(%ebp),%esi
c0009bea:	40                   	inc    %eax
c0009beb:	39 42 04             	cmp    %eax,0x4(%edx)
c0009bee:	89 02                	mov    %eax,(%edx)
c0009bf0:	73 03                	jae    c0009bf5 <mem_free+0xeb>
c0009bf2:	89 42 04             	mov    %eax,0x4(%edx)
c0009bf5:	83 c1 02             	add    $0x2,%ecx
c0009bf8:	89 1c ca             	mov    %ebx,(%edx,%ecx,8)
c0009bfb:	89 74 ca 04          	mov    %esi,0x4(%edx,%ecx,8)
c0009bff:	eb b7                	jmp    c0009bb8 <mem_free+0xae>
c0009c01:	ff 42 0c             	incl   0xc(%edx)
c0009c04:	b8 01 00 00 00       	mov    $0x1,%eax
c0009c09:	01 72 08             	add    %esi,0x8(%edx)
c0009c0c:	83 c4 10             	add    $0x10,%esp
c0009c0f:	5b                   	pop    %ebx
c0009c10:	5e                   	pop    %esi
c0009c11:	5f                   	pop    %edi
c0009c12:	5d                   	pop    %ebp
c0009c13:	c3                   	ret    

c0009c14 <mem_free_page>:
c0009c14:	55                   	push   %ebp
c0009c15:	89 e5                	mov    %esp,%ebp
c0009c17:	c1 65 10 0c          	shll   $0xc,0x10(%ebp)
c0009c1b:	5d                   	pop    %ebp
c0009c1c:	e9 e9 fe ff ff       	jmp    c0009b0a <mem_free>

c0009c21 <init_memory>:
c0009c21:	55                   	push   %ebp
c0009c22:	89 e5                	mov    %esp,%ebp
c0009c24:	56                   	push   %esi
c0009c25:	53                   	push   %ebx
c0009c26:	8b 35 00 7c 00 00    	mov    0x7c00,%esi
c0009c2c:	8d 9e 00 e0 5f ff    	lea    -0xa02000(%esi),%ebx
c0009c32:	d1 eb                	shr    %ebx
c0009c34:	53                   	push   %ebx
c0009c35:	29 de                	sub    %ebx,%esi
c0009c37:	68 00 20 a0 00       	push   $0xa02000
c0009c3c:	81 c3 00 20 a0 00    	add    $0xa02000,%ebx
c0009c42:	68 e0 59 02 c0       	push   $0xc00259e0
c0009c47:	e8 c8 ff ff ff       	call   c0009c14 <mem_free_page>
c0009c4c:	56                   	push   %esi
c0009c4d:	53                   	push   %ebx
c0009c4e:	68 b0 e2 00 c0       	push   $0xc000e2b0
c0009c53:	e8 bc ff ff ff       	call   c0009c14 <mem_free_page>
c0009c58:	68 ff ff ff 3d       	push   $0x3dffffff
c0009c5d:	68 00 20 a0 c0       	push   $0xc0a02000
c0009c62:	68 d0 dc 01 c0       	push   $0xc001dcd0
c0009c67:	e8 a8 ff ff ff       	call   c0009c14 <mem_free_page>
c0009c6c:	83 c4 24             	add    $0x24,%esp
c0009c6f:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009c72:	5b                   	pop    %ebx
c0009c73:	5e                   	pop    %esi
c0009c74:	5d                   	pop    %ebp
c0009c75:	c3                   	ret    

c0009c76 <pde_ptr>:
c0009c76:	55                   	push   %ebp
c0009c77:	89 e5                	mov    %esp,%ebp
c0009c79:	8b 45 08             	mov    0x8(%ebp),%eax
c0009c7c:	5d                   	pop    %ebp
c0009c7d:	c1 e8 16             	shr    $0x16,%eax
c0009c80:	8d 04 85 00 f0 ff ff 	lea    -0x1000(,%eax,4),%eax
c0009c87:	c3                   	ret    

c0009c88 <pte_ptr>:
c0009c88:	55                   	push   %ebp
c0009c89:	89 e5                	mov    %esp,%ebp
c0009c8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0009c8e:	5d                   	pop    %ebp
c0009c8f:	89 c2                	mov    %eax,%edx
c0009c91:	25 00 f0 3f 00       	and    $0x3ff000,%eax
c0009c96:	81 e2 00 00 c0 ff    	and    $0xffc00000,%edx
c0009c9c:	c1 ea 0a             	shr    $0xa,%edx
c0009c9f:	c1 e8 0a             	shr    $0xa,%eax
c0009ca2:	8d 84 02 00 00 c0 ff 	lea    -0x400000(%edx,%eax,1),%eax
c0009ca9:	c3                   	ret    

c0009caa <page_table_add>:
c0009caa:	55                   	push   %ebp
c0009cab:	89 e5                	mov    %esp,%ebp
c0009cad:	57                   	push   %edi
c0009cae:	56                   	push   %esi
c0009caf:	53                   	push   %ebx
c0009cb0:	83 ec 0c             	sub    $0xc,%esp
c0009cb3:	8b 45 08             	mov    0x8(%ebp),%eax
c0009cb6:	8b 75 0c             	mov    0xc(%ebp),%esi
c0009cb9:	50                   	push   %eax
c0009cba:	89 c7                	mov    %eax,%edi
c0009cbc:	e8 c7 ff ff ff       	call   c0009c88 <pte_ptr>
c0009cc1:	c1 ef 16             	shr    $0x16,%edi
c0009cc4:	f6 04 bd 00 f0 ff ff 	testb  $0x1,-0x1000(,%edi,4)
c0009ccb:	01 
c0009ccc:	5b                   	pop    %ebx
c0009ccd:	89 c3                	mov    %eax,%ebx
c0009ccf:	74 0c                	je     c0009cdd <page_table_add+0x33>
c0009cd1:	f6 00 01             	testb  $0x1,(%eax)
c0009cd4:	75 3c                	jne    c0009d12 <page_table_add+0x68>
c0009cd6:	83 ce 07             	or     $0x7,%esi
c0009cd9:	89 30                	mov    %esi,(%eax)
c0009cdb:	eb 35                	jmp    c0009d12 <page_table_add+0x68>
c0009cdd:	6a 01                	push   $0x1
c0009cdf:	83 ce 07             	or     $0x7,%esi
c0009ce2:	68 e0 59 02 c0       	push   $0xc00259e0
c0009ce7:	e8 11 fe ff ff       	call   c0009afd <mem_alloc_page>
c0009cec:	83 ec 0c             	sub    $0xc,%esp
c0009cef:	83 c8 07             	or     $0x7,%eax
c0009cf2:	89 04 bd 00 f0 ff ff 	mov    %eax,-0x1000(,%edi,4)
c0009cf9:	89 d8                	mov    %ebx,%eax
c0009cfb:	68 00 10 00 00       	push   $0x1000
c0009d00:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0009d05:	6a 00                	push   $0x0
c0009d07:	50                   	push   %eax
c0009d08:	e8 47 03 00 00       	call   c000a054 <memset>
c0009d0d:	83 c4 20             	add    $0x20,%esp
c0009d10:	89 33                	mov    %esi,(%ebx)
c0009d12:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0009d15:	5b                   	pop    %ebx
c0009d16:	5e                   	pop    %esi
c0009d17:	5f                   	pop    %edi
c0009d18:	5d                   	pop    %ebp
c0009d19:	c3                   	ret    

c0009d1a <page_alloc>:
c0009d1a:	55                   	push   %ebp
c0009d1b:	89 e5                	mov    %esp,%ebp
c0009d1d:	57                   	push   %edi
c0009d1e:	56                   	push   %esi
c0009d1f:	53                   	push   %ebx
c0009d20:	83 ec 1c             	sub    $0x1c,%esp
c0009d23:	8b 75 0c             	mov    0xc(%ebp),%esi
c0009d26:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0009d2a:	c7 45 e4 b0 e2 00 c0 	movl   $0xc000e2b0,-0x1c(%ebp)
c0009d31:	75 07                	jne    c0009d3a <page_alloc+0x20>
c0009d33:	c7 45 e4 e0 59 02 c0 	movl   $0xc00259e0,-0x1c(%ebp)
c0009d3a:	56                   	push   %esi
c0009d3b:	ff 75 e4             	pushl  -0x1c(%ebp)
c0009d3e:	e8 ba fd ff ff       	call   c0009afd <mem_alloc_page>
c0009d43:	59                   	pop    %ecx
c0009d44:	5f                   	pop    %edi
c0009d45:	85 c0                	test   %eax,%eax
c0009d47:	89 c3                	mov    %eax,%ebx
c0009d49:	89 c7                	mov    %eax,%edi
c0009d4b:	75 25                	jne    c0009d72 <page_alloc+0x58>
c0009d4d:	eb 2b                	jmp    c0009d7a <page_alloc+0x60>
c0009d4f:	6a 01                	push   $0x1
c0009d51:	ff 75 e4             	pushl  -0x1c(%ebp)
c0009d54:	e8 a4 fd ff ff       	call   c0009afd <mem_alloc_page>
c0009d59:	59                   	pop    %ecx
c0009d5a:	5a                   	pop    %edx
c0009d5b:	85 c0                	test   %eax,%eax
c0009d5d:	74 19                	je     c0009d78 <page_alloc+0x5e>
c0009d5f:	52                   	push   %edx
c0009d60:	4e                   	dec    %esi
c0009d61:	52                   	push   %edx
c0009d62:	50                   	push   %eax
c0009d63:	57                   	push   %edi
c0009d64:	81 c7 00 10 00 00    	add    $0x1000,%edi
c0009d6a:	e8 3b ff ff ff       	call   c0009caa <page_table_add>
c0009d6f:	83 c4 10             	add    $0x10,%esp
c0009d72:	85 f6                	test   %esi,%esi
c0009d74:	75 d9                	jne    c0009d4f <page_alloc+0x35>
c0009d76:	eb 02                	jmp    c0009d7a <page_alloc+0x60>
c0009d78:	31 db                	xor    %ebx,%ebx
c0009d7a:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0009d7d:	89 d8                	mov    %ebx,%eax
c0009d7f:	5b                   	pop    %ebx
c0009d80:	5e                   	pop    %esi
c0009d81:	5f                   	pop    %edi
c0009d82:	5d                   	pop    %ebp
c0009d83:	c3                   	ret    

c0009d84 <get_kernel_page>:
c0009d84:	55                   	push   %ebp
c0009d85:	89 e5                	mov    %esp,%ebp
c0009d87:	56                   	push   %esi
c0009d88:	53                   	push   %ebx
c0009d89:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0009d8c:	56                   	push   %esi
c0009d8d:	56                   	push   %esi
c0009d8e:	53                   	push   %ebx
c0009d8f:	6a 01                	push   $0x1
c0009d91:	e8 84 ff ff ff       	call   c0009d1a <page_alloc>
c0009d96:	83 c4 10             	add    $0x10,%esp
c0009d99:	85 c0                	test   %eax,%eax
c0009d9b:	89 c6                	mov    %eax,%esi
c0009d9d:	74 10                	je     c0009daf <get_kernel_page+0x2b>
c0009d9f:	c1 e3 0c             	shl    $0xc,%ebx
c0009da2:	51                   	push   %ecx
c0009da3:	53                   	push   %ebx
c0009da4:	6a 00                	push   $0x0
c0009da6:	50                   	push   %eax
c0009da7:	e8 a8 02 00 00       	call   c000a054 <memset>
c0009dac:	83 c4 10             	add    $0x10,%esp
c0009daf:	50                   	push   %eax
c0009db0:	50                   	push   %eax
c0009db1:	68 84 d9 00 c0       	push   $0xc000d984
c0009db6:	6a 07                	push   $0x7
c0009db8:	e8 f8 01 00 00       	call   c0009fb5 <put_str>
c0009dbd:	83 c4 0c             	add    $0xc,%esp
c0009dc0:	6a 10                	push   $0x10
c0009dc2:	56                   	push   %esi
c0009dc3:	6a 07                	push   $0x7
c0009dc5:	e8 13 02 00 00       	call   c0009fdd <put_uint>
c0009dca:	58                   	pop    %eax
c0009dcb:	5a                   	pop    %edx
c0009dcc:	6a 0a                	push   $0xa
c0009dce:	6a 07                	push   $0x7
c0009dd0:	e8 3f 01 00 00       	call   c0009f14 <put_char>
c0009dd5:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009dd8:	89 f0                	mov    %esi,%eax
c0009dda:	5b                   	pop    %ebx
c0009ddb:	5e                   	pop    %esi
c0009ddc:	5d                   	pop    %ebp
c0009ddd:	c3                   	ret    
	...

c0009de0 <itoa>:
c0009de0:	55                   	push   %ebp
c0009de1:	89 e5                	mov    %esp,%ebp
c0009de3:	57                   	push   %edi
c0009de4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0009de7:	56                   	push   %esi
c0009de8:	8b 75 08             	mov    0x8(%ebp),%esi
c0009deb:	53                   	push   %ebx
c0009dec:	8b 7d 10             	mov    0x10(%ebp),%edi
c0009def:	31 db                	xor    %ebx,%ebx
c0009df1:	89 f0                	mov    %esi,%eax
c0009df3:	99                   	cltd   
c0009df4:	89 d0                	mov    %edx,%eax
c0009df6:	31 f0                	xor    %esi,%eax
c0009df8:	29 d0                	sub    %edx,%eax
c0009dfa:	eb 02                	jmp    c0009dfe <itoa+0x1e>
c0009dfc:	89 d3                	mov    %edx,%ebx
c0009dfe:	99                   	cltd   
c0009dff:	f7 ff                	idiv   %edi
c0009e01:	8a 92 1c da 00 c0    	mov    -0x3fff25e4(%edx),%dl
c0009e07:	85 c0                	test   %eax,%eax
c0009e09:	88 14 19             	mov    %dl,(%ecx,%ebx,1)
c0009e0c:	8d 53 01             	lea    0x1(%ebx),%edx
c0009e0f:	7f eb                	jg     c0009dfc <itoa+0x1c>
c0009e11:	85 f6                	test   %esi,%esi
c0009e13:	79 07                	jns    c0009e1c <itoa+0x3c>
c0009e15:	c6 04 11 2d          	movb   $0x2d,(%ecx,%edx,1)
c0009e19:	8d 53 02             	lea    0x2(%ebx),%edx
c0009e1c:	c6 04 11 00          	movb   $0x0,(%ecx,%edx,1)
c0009e20:	89 c8                	mov    %ecx,%eax
c0009e22:	eb 01                	jmp    c0009e25 <itoa+0x45>
c0009e24:	40                   	inc    %eax
c0009e25:	80 38 00             	cmpb   $0x0,(%eax)
c0009e28:	75 fa                	jne    c0009e24 <itoa+0x44>
c0009e2a:	eb 09                	jmp    c0009e35 <itoa+0x55>
c0009e2c:	8a 11                	mov    (%ecx),%dl
c0009e2e:	8a 18                	mov    (%eax),%bl
c0009e30:	88 19                	mov    %bl,(%ecx)
c0009e32:	41                   	inc    %ecx
c0009e33:	88 10                	mov    %dl,(%eax)
c0009e35:	48                   	dec    %eax
c0009e36:	39 c8                	cmp    %ecx,%eax
c0009e38:	77 f2                	ja     c0009e2c <itoa+0x4c>
c0009e3a:	5b                   	pop    %ebx
c0009e3b:	5e                   	pop    %esi
c0009e3c:	5f                   	pop    %edi
c0009e3d:	5d                   	pop    %ebp
c0009e3e:	c3                   	ret    

c0009e3f <utoa>:
c0009e3f:	55                   	push   %ebp
c0009e40:	89 e5                	mov    %esp,%ebp
c0009e42:	8b 45 08             	mov    0x8(%ebp),%eax
c0009e45:	56                   	push   %esi
c0009e46:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0009e49:	8b 75 10             	mov    0x10(%ebp),%esi
c0009e4c:	53                   	push   %ebx
c0009e4d:	31 db                	xor    %ebx,%ebx
c0009e4f:	31 d2                	xor    %edx,%edx
c0009e51:	f7 f6                	div    %esi
c0009e53:	8a 92 44 da 00 c0    	mov    -0x3fff25bc(%edx),%dl
c0009e59:	88 14 19             	mov    %dl,(%ecx,%ebx,1)
c0009e5c:	43                   	inc    %ebx
c0009e5d:	85 c0                	test   %eax,%eax
c0009e5f:	75 ee                	jne    c0009e4f <utoa+0x10>
c0009e61:	c6 04 19 00          	movb   $0x0,(%ecx,%ebx,1)
c0009e65:	89 c8                	mov    %ecx,%eax
c0009e67:	eb 01                	jmp    c0009e6a <utoa+0x2b>
c0009e69:	40                   	inc    %eax
c0009e6a:	80 38 00             	cmpb   $0x0,(%eax)
c0009e6d:	75 fa                	jne    c0009e69 <utoa+0x2a>
c0009e6f:	eb 09                	jmp    c0009e7a <utoa+0x3b>
c0009e71:	8a 11                	mov    (%ecx),%dl
c0009e73:	8a 18                	mov    (%eax),%bl
c0009e75:	88 19                	mov    %bl,(%ecx)
c0009e77:	41                   	inc    %ecx
c0009e78:	88 10                	mov    %dl,(%eax)
c0009e7a:	48                   	dec    %eax
c0009e7b:	39 c8                	cmp    %ecx,%eax
c0009e7d:	77 f2                	ja     c0009e71 <utoa+0x32>
c0009e7f:	5b                   	pop    %ebx
c0009e80:	5e                   	pop    %esi
c0009e81:	5d                   	pop    %ebp
c0009e82:	c3                   	ret    

c0009e83 <roll_screen>:
c0009e83:	55                   	push   %ebp
c0009e84:	89 e5                	mov    %esp,%ebp
c0009e86:	53                   	push   %ebx
c0009e87:	83 3d 0c 7c 00 00 00 	cmpl   $0x0,0x7c0c
c0009e8e:	75 2c                	jne    c0009ebc <roll_screen+0x39>
c0009e90:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0009e95:	8b 0d 10 7c 00 00    	mov    0x7c10,%ecx
c0009e9b:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0009e9e:	31 c0                	xor    %eax,%eax
c0009ea0:	eb 09                	jmp    c0009eab <roll_screen+0x28>
c0009ea2:	66 8b 14 43          	mov    (%ebx,%eax,2),%dx
c0009ea6:	66 89 14 41          	mov    %dx,(%ecx,%eax,2)
c0009eaa:	40                   	inc    %eax
c0009eab:	8b 15 1c 7c 00 00    	mov    0x7c1c,%edx
c0009eb1:	0f af 15 18 7c 00 00 	imul   0x7c18,%edx
c0009eb8:	39 d0                	cmp    %edx,%eax
c0009eba:	72 e6                	jb     c0009ea2 <roll_screen+0x1f>
c0009ebc:	5b                   	pop    %ebx
c0009ebd:	5d                   	pop    %ebp
c0009ebe:	c3                   	ret    

c0009ebf <get_cursor>:
c0009ebf:	55                   	push   %ebp
c0009ec0:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0009ec5:	89 e5                	mov    %esp,%ebp
c0009ec7:	b8 0e 00 00 00       	mov    $0xe,%eax
c0009ecc:	53                   	push   %ebx
c0009ecd:	ee                   	out    %al,(%dx)
c0009ece:	bb d5 03 00 00       	mov    $0x3d5,%ebx
c0009ed3:	89 da                	mov    %ebx,%edx
c0009ed5:	ec                   	in     (%dx),%al
c0009ed6:	89 c1                	mov    %eax,%ecx
c0009ed8:	b2 d4                	mov    $0xd4,%dl
c0009eda:	b8 0f 00 00 00       	mov    $0xf,%eax
c0009edf:	ee                   	out    %al,(%dx)
c0009ee0:	89 da                	mov    %ebx,%edx
c0009ee2:	ec                   	in     (%dx),%al
c0009ee3:	c1 e1 08             	shl    $0x8,%ecx
c0009ee6:	09 c1                	or     %eax,%ecx
c0009ee8:	89 c8                	mov    %ecx,%eax
c0009eea:	5b                   	pop    %ebx
c0009eeb:	5d                   	pop    %ebp
c0009eec:	c3                   	ret    

c0009eed <set_cursor>:
c0009eed:	55                   	push   %ebp
c0009eee:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0009ef3:	89 e5                	mov    %esp,%ebp
c0009ef5:	b8 0e 00 00 00       	mov    $0xe,%eax
c0009efa:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0009efd:	ee                   	out    %al,(%dx)
c0009efe:	0f b6 c5             	movzbl %ch,%eax
c0009f01:	b2 d5                	mov    $0xd5,%dl
c0009f03:	ee                   	out    %al,(%dx)
c0009f04:	b8 0f 00 00 00       	mov    $0xf,%eax
c0009f09:	b2 d4                	mov    $0xd4,%dl
c0009f0b:	ee                   	out    %al,(%dx)
c0009f0c:	0f b6 c1             	movzbl %cl,%eax
c0009f0f:	b2 d5                	mov    $0xd5,%dl
c0009f11:	ee                   	out    %al,(%dx)
c0009f12:	5d                   	pop    %ebp
c0009f13:	c3                   	ret    

c0009f14 <put_char>:
c0009f14:	55                   	push   %ebp
c0009f15:	89 e5                	mov    %esp,%ebp
c0009f17:	53                   	push   %ebx
c0009f18:	51                   	push   %ecx
c0009f19:	8a 4d 08             	mov    0x8(%ebp),%cl
c0009f1c:	83 3d 0c 7c 00 00 00 	cmpl   $0x0,0x7c0c
c0009f23:	8a 5d 0c             	mov    0xc(%ebp),%bl
c0009f26:	0f 85 85 00 00 00    	jne    c0009fb1 <put_char+0x9d>
c0009f2c:	88 4d f8             	mov    %cl,-0x8(%ebp)
c0009f2f:	e8 8b ff ff ff       	call   c0009ebf <get_cursor>
c0009f34:	80 fb 0d             	cmp    $0xd,%bl
c0009f37:	8a 4d f8             	mov    -0x8(%ebp),%cl
c0009f3a:	77 31                	ja     c0009f6d <put_char+0x59>
c0009f3c:	0f b6 d3             	movzbl %bl,%edx
c0009f3f:	ff 24 95 bc d9 00 c0 	jmp    *-0x3fff2644(,%edx,4)
c0009f46:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0009f49:	a1 10 7c 00 00       	mov    0x7c10,%eax
c0009f4e:	c6 04 48 20          	movb   $0x20,(%eax,%ecx,2)
c0009f52:	eb 2f                	jmp    c0009f83 <put_char+0x6f>
c0009f54:	8b 1d 18 7c 00 00    	mov    0x7c18,%ebx
c0009f5a:	31 d2                	xor    %edx,%edx
c0009f5c:	8d 0c 18             	lea    (%eax,%ebx,1),%ecx
c0009f5f:	f7 f3                	div    %ebx
c0009f61:	29 d1                	sub    %edx,%ecx
c0009f63:	eb 1e                	jmp    c0009f83 <put_char+0x6f>
c0009f65:	8d 48 04             	lea    0x4(%eax),%ecx
c0009f68:	83 e1 fc             	and    $0xfffffffc,%ecx
c0009f6b:	eb 16                	jmp    c0009f83 <put_char+0x6f>
c0009f6d:	8b 15 10 7c 00 00    	mov    0x7c10,%edx
c0009f73:	88 1c 42             	mov    %bl,(%edx,%eax,2)
c0009f76:	8b 15 10 7c 00 00    	mov    0x7c10,%edx
c0009f7c:	88 4c 42 01          	mov    %cl,0x1(%edx,%eax,2)
c0009f80:	8d 48 01             	lea    0x1(%eax),%ecx
c0009f83:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0009f88:	0f af 05 18 7c 00 00 	imul   0x7c18,%eax
c0009f8f:	39 c1                	cmp    %eax,%ecx
c0009f91:	72 13                	jb     c0009fa6 <put_char+0x92>
c0009f93:	e8 eb fe ff ff       	call   c0009e83 <roll_screen>
c0009f98:	8b 0d 1c 7c 00 00    	mov    0x7c1c,%ecx
c0009f9e:	49                   	dec    %ecx
c0009f9f:	0f af 0d 18 7c 00 00 	imul   0x7c18,%ecx
c0009fa6:	89 4d 08             	mov    %ecx,0x8(%ebp)
c0009fa9:	5a                   	pop    %edx
c0009faa:	5b                   	pop    %ebx
c0009fab:	5d                   	pop    %ebp
c0009fac:	e9 3c ff ff ff       	jmp    c0009eed <set_cursor>
c0009fb1:	58                   	pop    %eax
c0009fb2:	5b                   	pop    %ebx
c0009fb3:	5d                   	pop    %ebp
c0009fb4:	c3                   	ret    

c0009fb5 <put_str>:
c0009fb5:	55                   	push   %ebp
c0009fb6:	89 e5                	mov    %esp,%ebp
c0009fb8:	56                   	push   %esi
c0009fb9:	0f b6 75 08          	movzbl 0x8(%ebp),%esi
c0009fbd:	53                   	push   %ebx
c0009fbe:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0009fc1:	eb 0d                	jmp    c0009fd0 <put_str+0x1b>
c0009fc3:	0f b6 c0             	movzbl %al,%eax
c0009fc6:	43                   	inc    %ebx
c0009fc7:	50                   	push   %eax
c0009fc8:	56                   	push   %esi
c0009fc9:	e8 46 ff ff ff       	call   c0009f14 <put_char>
c0009fce:	58                   	pop    %eax
c0009fcf:	5a                   	pop    %edx
c0009fd0:	8a 03                	mov    (%ebx),%al
c0009fd2:	84 c0                	test   %al,%al
c0009fd4:	75 ed                	jne    c0009fc3 <put_str+0xe>
c0009fd6:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009fd9:	5b                   	pop    %ebx
c0009fda:	5e                   	pop    %esi
c0009fdb:	5d                   	pop    %ebp
c0009fdc:	c3                   	ret    

c0009fdd <put_uint>:
c0009fdd:	55                   	push   %ebp
c0009fde:	31 c0                	xor    %eax,%eax
c0009fe0:	89 e5                	mov    %esp,%ebp
c0009fe2:	b9 42 00 00 00       	mov    $0x42,%ecx
c0009fe7:	57                   	push   %edi
c0009fe8:	53                   	push   %ebx
c0009fe9:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c0009fec:	83 ec 50             	sub    $0x50,%esp
c0009fef:	8a 5d 08             	mov    0x8(%ebp),%bl
c0009ff2:	f3 aa                	rep stos %al,%es:(%edi)
c0009ff4:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c0009ff7:	ff 75 10             	pushl  0x10(%ebp)
c0009ffa:	0f b6 db             	movzbl %bl,%ebx
c0009ffd:	57                   	push   %edi
c0009ffe:	ff 75 0c             	pushl  0xc(%ebp)
c000a001:	e8 39 fe ff ff       	call   c0009e3f <utoa>
c000a006:	57                   	push   %edi
c000a007:	53                   	push   %ebx
c000a008:	e8 a8 ff ff ff       	call   c0009fb5 <put_str>
c000a00d:	83 c4 14             	add    $0x14,%esp
c000a010:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a013:	5b                   	pop    %ebx
c000a014:	5f                   	pop    %edi
c000a015:	5d                   	pop    %ebp
c000a016:	c3                   	ret    

c000a017 <put_int>:
c000a017:	55                   	push   %ebp
c000a018:	31 c0                	xor    %eax,%eax
c000a01a:	89 e5                	mov    %esp,%ebp
c000a01c:	b9 42 00 00 00       	mov    $0x42,%ecx
c000a021:	57                   	push   %edi
c000a022:	53                   	push   %ebx
c000a023:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c000a026:	83 ec 50             	sub    $0x50,%esp
c000a029:	8a 5d 08             	mov    0x8(%ebp),%bl
c000a02c:	f3 aa                	rep stos %al,%es:(%edi)
c000a02e:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c000a031:	ff 75 10             	pushl  0x10(%ebp)
c000a034:	0f b6 db             	movzbl %bl,%ebx
c000a037:	57                   	push   %edi
c000a038:	ff 75 0c             	pushl  0xc(%ebp)
c000a03b:	e8 a0 fd ff ff       	call   c0009de0 <itoa>
c000a040:	57                   	push   %edi
c000a041:	53                   	push   %ebx
c000a042:	e8 6e ff ff ff       	call   c0009fb5 <put_str>
c000a047:	83 c4 14             	add    $0x14,%esp
c000a04a:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a04d:	5b                   	pop    %ebx
c000a04e:	5f                   	pop    %edi
c000a04f:	5d                   	pop    %ebp
c000a050:	c3                   	ret    
c000a051:	00 00                	add    %al,(%eax)
	...

c000a054 <memset>:
c000a054:	55                   	push   %ebp
c000a055:	89 e5                	mov    %esp,%ebp
c000a057:	56                   	push   %esi
c000a058:	53                   	push   %ebx
c000a059:	83 ec 10             	sub    $0x10,%esp
c000a05c:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a05f:	8b 75 10             	mov    0x10(%ebp),%esi
c000a062:	8a 55 0c             	mov    0xc(%ebp),%dl
c000a065:	85 db                	test   %ebx,%ebx
c000a067:	75 1f                	jne    c000a088 <memset+0x34>
c000a069:	68 6c da 00 c0       	push   $0xc000da6c
c000a06e:	68 ec da 00 c0       	push   $0xc000daec
c000a073:	6a 0f                	push   $0xf
c000a075:	68 7a da 00 c0       	push   $0xc000da7a
c000a07a:	88 55 f4             	mov    %dl,-0xc(%ebp)
c000a07d:	e8 8e e5 ff ff       	call   c0008610 <panic_spin>
c000a082:	8a 55 f4             	mov    -0xc(%ebp),%dl
c000a085:	83 c4 10             	add    $0x10,%esp
c000a088:	31 c0                	xor    %eax,%eax
c000a08a:	eb 04                	jmp    c000a090 <memset+0x3c>
c000a08c:	88 14 03             	mov    %dl,(%ebx,%eax,1)
c000a08f:	40                   	inc    %eax
c000a090:	39 f0                	cmp    %esi,%eax
c000a092:	75 f8                	jne    c000a08c <memset+0x38>
c000a094:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a097:	5b                   	pop    %ebx
c000a098:	5e                   	pop    %esi
c000a099:	5d                   	pop    %ebp
c000a09a:	c3                   	ret    

c000a09b <memcpy>:
c000a09b:	55                   	push   %ebp
c000a09c:	89 e5                	mov    %esp,%ebp
c000a09e:	57                   	push   %edi
c000a09f:	56                   	push   %esi
c000a0a0:	53                   	push   %ebx
c000a0a1:	83 ec 0c             	sub    $0xc,%esp
c000a0a4:	8b 75 0c             	mov    0xc(%ebp),%esi
c000a0a7:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a0aa:	8b 7d 10             	mov    0x10(%ebp),%edi
c000a0ad:	85 f6                	test   %esi,%esi
c000a0af:	74 04                	je     c000a0b5 <memcpy+0x1a>
c000a0b1:	85 db                	test   %ebx,%ebx
c000a0b3:	75 19                	jne    c000a0ce <memcpy+0x33>
c000a0b5:	68 87 da 00 c0       	push   $0xc000da87
c000a0ba:	68 f4 da 00 c0       	push   $0xc000daf4
c000a0bf:	6a 22                	push   $0x22
c000a0c1:	68 7a da 00 c0       	push   $0xc000da7a
c000a0c6:	e8 45 e5 ff ff       	call   c0008610 <panic_spin>
c000a0cb:	83 c4 10             	add    $0x10,%esp
c000a0ce:	31 c0                	xor    %eax,%eax
c000a0d0:	eb 07                	jmp    c000a0d9 <memcpy+0x3e>
c000a0d2:	8a 14 06             	mov    (%esi,%eax,1),%dl
c000a0d5:	88 14 03             	mov    %dl,(%ebx,%eax,1)
c000a0d8:	40                   	inc    %eax
c000a0d9:	39 f8                	cmp    %edi,%eax
c000a0db:	75 f5                	jne    c000a0d2 <memcpy+0x37>
c000a0dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000a0e0:	5b                   	pop    %ebx
c000a0e1:	5e                   	pop    %esi
c000a0e2:	5f                   	pop    %edi
c000a0e3:	5d                   	pop    %ebp
c000a0e4:	c3                   	ret    

c000a0e5 <memcmp>:
c000a0e5:	55                   	push   %ebp
c000a0e6:	89 e5                	mov    %esp,%ebp
c000a0e8:	56                   	push   %esi
c000a0e9:	8b 75 08             	mov    0x8(%ebp),%esi
c000a0ec:	53                   	push   %ebx
c000a0ed:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c000a0f0:	85 db                	test   %ebx,%ebx
c000a0f2:	74 04                	je     c000a0f8 <memcmp+0x13>
c000a0f4:	85 f6                	test   %esi,%esi
c000a0f6:	75 19                	jne    c000a111 <memcmp+0x2c>
c000a0f8:	68 a6 da 00 c0       	push   $0xc000daa6
c000a0fd:	68 fc da 00 c0       	push   $0xc000dafc
c000a102:	6a 3b                	push   $0x3b
c000a104:	68 7a da 00 c0       	push   $0xc000da7a
c000a109:	e8 02 e5 ff ff       	call   c0008610 <panic_spin>
c000a10e:	83 c4 10             	add    $0x10,%esp
c000a111:	8a 13                	mov    (%ebx),%dl
c000a113:	83 c8 ff             	or     $0xffffffff,%eax
c000a116:	38 16                	cmp    %dl,(%esi)
c000a118:	72 06                	jb     c000a120 <memcmp+0x3b>
c000a11a:	0f 97 c0             	seta   %al
c000a11d:	0f b6 c0             	movzbl %al,%eax
c000a120:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a123:	5b                   	pop    %ebx
c000a124:	5e                   	pop    %esi
c000a125:	5d                   	pop    %ebp
c000a126:	c3                   	ret    

c000a127 <strcpy>:
c000a127:	55                   	push   %ebp
c000a128:	31 d2                	xor    %edx,%edx
c000a12a:	89 e5                	mov    %esp,%ebp
c000a12c:	8b 45 08             	mov    0x8(%ebp),%eax
c000a12f:	53                   	push   %ebx
c000a130:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c000a133:	8a 0c 13             	mov    (%ebx,%edx,1),%cl
c000a136:	88 0c 10             	mov    %cl,(%eax,%edx,1)
c000a139:	42                   	inc    %edx
c000a13a:	84 c9                	test   %cl,%cl
c000a13c:	75 f5                	jne    c000a133 <strcpy+0xc>
c000a13e:	5b                   	pop    %ebx
c000a13f:	5d                   	pop    %ebp
c000a140:	c3                   	ret    
c000a141:	00 00                	add    %al,(%eax)
	...

c000a144 <sema_init>:
c000a144:	55                   	push   %ebp
c000a145:	89 e5                	mov    %esp,%ebp
c000a147:	56                   	push   %esi
c000a148:	0f b6 75 0c          	movzbl 0xc(%ebp),%esi
c000a14c:	53                   	push   %ebx
c000a14d:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a150:	83 ec 0c             	sub    $0xc,%esp
c000a153:	8d 43 04             	lea    0x4(%ebx),%eax
c000a156:	89 33                	mov    %esi,(%ebx)
c000a158:	50                   	push   %eax
c000a159:	e8 b6 f7 ff ff       	call   c0009914 <list_init>
c000a15e:	8b 03                	mov    (%ebx),%eax
c000a160:	83 c4 10             	add    $0x10,%esp
c000a163:	39 f0                	cmp    %esi,%eax
c000a165:	74 19                	je     c000a180 <sema_init+0x3c>
c000a167:	68 04 db 00 c0       	push   $0xc000db04
c000a16c:	68 48 dc 00 c0       	push   $0xc000dc48
c000a171:	6a 0d                	push   $0xd
c000a173:	68 1a db 00 c0       	push   $0xc000db1a
c000a178:	e8 93 e4 ff ff       	call   c0008610 <panic_spin>
c000a17d:	83 c4 10             	add    $0x10,%esp
c000a180:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a183:	5b                   	pop    %ebx
c000a184:	5e                   	pop    %esi
c000a185:	5d                   	pop    %ebp
c000a186:	c3                   	ret    

c000a187 <lock_init>:
c000a187:	55                   	push   %ebp
c000a188:	89 e5                	mov    %esp,%ebp
c000a18a:	83 ec 10             	sub    $0x10,%esp
c000a18d:	8b 45 08             	mov    0x8(%ebp),%eax
c000a190:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c000a196:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%eax)
c000a19d:	83 c0 04             	add    $0x4,%eax
c000a1a0:	6a 01                	push   $0x1
c000a1a2:	50                   	push   %eax
c000a1a3:	e8 9c ff ff ff       	call   c000a144 <sema_init>
c000a1a8:	83 c4 10             	add    $0x10,%esp
c000a1ab:	c9                   	leave  
c000a1ac:	c3                   	ret    

c000a1ad <sema_down>:
c000a1ad:	55                   	push   %ebp
c000a1ae:	89 e5                	mov    %esp,%ebp
c000a1b0:	57                   	push   %edi
c000a1b1:	56                   	push   %esi
c000a1b2:	53                   	push   %ebx
c000a1b3:	83 ec 0c             	sub    $0xc,%esp
c000a1b6:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a1b9:	e8 77 f4 ff ff       	call   c0009635 <intr_disable>
c000a1be:	8d 73 04             	lea    0x4(%ebx),%esi
c000a1c1:	89 c7                	mov    %eax,%edi
c000a1c3:	e9 82 00 00 00       	jmp    c000a24a <sema_down+0x9d>
c000a1c8:	e8 b2 02 00 00       	call   c000a47f <running_thread>
c000a1cd:	52                   	push   %edx
c000a1ce:	83 c0 2c             	add    $0x2c,%eax
c000a1d1:	52                   	push   %edx
c000a1d2:	50                   	push   %eax
c000a1d3:	56                   	push   %esi
c000a1d4:	e8 f3 f7 ff ff       	call   c00099cc <list_find>
c000a1d9:	83 c4 10             	add    $0x10,%esp
c000a1dc:	85 c0                	test   %eax,%eax
c000a1de:	74 19                	je     c000a1f9 <sema_down+0x4c>
c000a1e0:	68 28 db 00 c0       	push   $0xc000db28
c000a1e5:	68 54 dc 00 c0       	push   $0xc000dc54
c000a1ea:	6a 24                	push   $0x24
c000a1ec:	68 1a db 00 c0       	push   $0xc000db1a
c000a1f1:	e8 1a e4 ff ff       	call   c0008610 <panic_spin>
c000a1f6:	83 c4 10             	add    $0x10,%esp
c000a1f9:	e8 81 02 00 00       	call   c000a47f <running_thread>
c000a1fe:	51                   	push   %ecx
c000a1ff:	83 c0 2c             	add    $0x2c,%eax
c000a202:	51                   	push   %ecx
c000a203:	50                   	push   %eax
c000a204:	56                   	push   %esi
c000a205:	e8 c2 f7 ff ff       	call   c00099cc <list_find>
c000a20a:	83 c4 10             	add    $0x10,%esp
c000a20d:	85 c0                	test   %eax,%eax
c000a20f:	74 19                	je     c000a22a <sema_down+0x7d>
c000a211:	68 69 db 00 c0       	push   $0xc000db69
c000a216:	68 54 dc 00 c0       	push   $0xc000dc54
c000a21b:	6a 27                	push   $0x27
c000a21d:	68 1a db 00 c0       	push   $0xc000db1a
c000a222:	e8 e9 e3 ff ff       	call   c0008610 <panic_spin>
c000a227:	83 c4 10             	add    $0x10,%esp
c000a22a:	e8 50 02 00 00       	call   c000a47f <running_thread>
c000a22f:	52                   	push   %edx
c000a230:	83 c0 2c             	add    $0x2c,%eax
c000a233:	52                   	push   %edx
c000a234:	50                   	push   %eax
c000a235:	56                   	push   %esi
c000a236:	e8 38 f7 ff ff       	call   c0009973 <list_append>
c000a23b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c000a242:	e8 a6 04 00 00       	call   c000a6ed <thread_block>
c000a247:	83 c4 10             	add    $0x10,%esp
c000a24a:	8b 03                	mov    (%ebx),%eax
c000a24c:	85 c0                	test   %eax,%eax
c000a24e:	0f 84 74 ff ff ff    	je     c000a1c8 <sema_down+0x1b>
c000a254:	8b 03                	mov    (%ebx),%eax
c000a256:	48                   	dec    %eax
c000a257:	89 03                	mov    %eax,(%ebx)
c000a259:	8b 03                	mov    (%ebx),%eax
c000a25b:	85 c0                	test   %eax,%eax
c000a25d:	74 19                	je     c000a278 <sema_down+0xcb>
c000a25f:	68 9d db 00 c0       	push   $0xc000db9d
c000a264:	68 54 dc 00 c0       	push   $0xc000dc54
c000a269:	6a 2d                	push   $0x2d
c000a26b:	68 1a db 00 c0       	push   $0xc000db1a
c000a270:	e8 9b e3 ff ff       	call   c0008610 <panic_spin>
c000a275:	83 c4 10             	add    $0x10,%esp
c000a278:	89 7d 08             	mov    %edi,0x8(%ebp)
c000a27b:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000a27e:	5b                   	pop    %ebx
c000a27f:	5e                   	pop    %esi
c000a280:	5f                   	pop    %edi
c000a281:	5d                   	pop    %ebp
c000a282:	e9 83 f4 ff ff       	jmp    c000970a <intr_set_status>

c000a287 <sema_up>:
c000a287:	55                   	push   %ebp
c000a288:	89 e5                	mov    %esp,%ebp
c000a28a:	57                   	push   %edi
c000a28b:	56                   	push   %esi
c000a28c:	53                   	push   %ebx
c000a28d:	83 ec 0c             	sub    $0xc,%esp
c000a290:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a293:	e8 9d f3 ff ff       	call   c0009635 <intr_disable>
c000a298:	89 c7                	mov    %eax,%edi
c000a29a:	8b 03                	mov    (%ebx),%eax
c000a29c:	85 c0                	test   %eax,%eax
c000a29e:	74 19                	je     c000a2b9 <sema_up+0x32>
c000a2a0:	68 9d db 00 c0       	push   $0xc000db9d
c000a2a5:	68 60 dc 00 c0       	push   $0xc000dc60
c000a2aa:	6a 38                	push   $0x38
c000a2ac:	68 1a db 00 c0       	push   $0xc000db1a
c000a2b1:	e8 5a e3 ff ff       	call   c0008610 <panic_spin>
c000a2b6:	83 c4 10             	add    $0x10,%esp
c000a2b9:	83 ec 0c             	sub    $0xc,%esp
c000a2bc:	8d 73 04             	lea    0x4(%ebx),%esi
c000a2bf:	56                   	push   %esi
c000a2c0:	e8 80 f7 ff ff       	call   c0009a45 <list_empty>
c000a2c5:	83 c4 10             	add    $0x10,%esp
c000a2c8:	85 c0                	test   %eax,%eax
c000a2ca:	75 15                	jne    c000a2e1 <sema_up+0x5a>
c000a2cc:	83 ec 0c             	sub    $0xc,%esp
c000a2cf:	56                   	push   %esi
c000a2d0:	e8 dd f6 ff ff       	call   c00099b2 <list_pop>
c000a2d5:	59                   	pop    %ecx
c000a2d6:	ff 70 04             	pushl  0x4(%eax)
c000a2d9:	e8 5a 04 00 00       	call   c000a738 <thread_unblock>
c000a2de:	83 c4 10             	add    $0x10,%esp
c000a2e1:	8b 03                	mov    (%ebx),%eax
c000a2e3:	40                   	inc    %eax
c000a2e4:	89 03                	mov    %eax,(%ebx)
c000a2e6:	8b 03                	mov    (%ebx),%eax
c000a2e8:	48                   	dec    %eax
c000a2e9:	74 19                	je     c000a304 <sema_up+0x7d>
c000a2eb:	68 af db 00 c0       	push   $0xc000dbaf
c000a2f0:	68 60 dc 00 c0       	push   $0xc000dc60
c000a2f5:	6a 3f                	push   $0x3f
c000a2f7:	68 1a db 00 c0       	push   $0xc000db1a
c000a2fc:	e8 0f e3 ff ff       	call   c0008610 <panic_spin>
c000a301:	83 c4 10             	add    $0x10,%esp
c000a304:	89 7d 08             	mov    %edi,0x8(%ebp)
c000a307:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000a30a:	5b                   	pop    %ebx
c000a30b:	5e                   	pop    %esi
c000a30c:	5f                   	pop    %edi
c000a30d:	5d                   	pop    %ebp
c000a30e:	e9 f7 f3 ff ff       	jmp    c000970a <intr_set_status>

c000a313 <lock_acquire>:
c000a313:	55                   	push   %ebp
c000a314:	89 e5                	mov    %esp,%ebp
c000a316:	56                   	push   %esi
c000a317:	53                   	push   %ebx
c000a318:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a31b:	8b 33                	mov    (%ebx),%esi
c000a31d:	e8 5d 01 00 00       	call   c000a47f <running_thread>
c000a322:	39 c6                	cmp    %eax,%esi
c000a324:	74 3e                	je     c000a364 <lock_acquire+0x51>
c000a326:	83 ec 0c             	sub    $0xc,%esp
c000a329:	8d 43 04             	lea    0x4(%ebx),%eax
c000a32c:	50                   	push   %eax
c000a32d:	e8 7b fe ff ff       	call   c000a1ad <sema_down>
c000a332:	e8 48 01 00 00       	call   c000a47f <running_thread>
c000a337:	83 c4 10             	add    $0x10,%esp
c000a33a:	83 7b 20 00          	cmpl   $0x0,0x20(%ebx)
c000a33e:	89 03                	mov    %eax,(%ebx)
c000a340:	74 19                	je     c000a35b <lock_acquire+0x48>
c000a342:	68 c1 db 00 c0       	push   $0xc000dbc1
c000a347:	68 68 dc 00 c0       	push   $0xc000dc68
c000a34c:	6a 4d                	push   $0x4d
c000a34e:	68 1a db 00 c0       	push   $0xc000db1a
c000a353:	e8 b8 e2 ff ff       	call   c0008610 <panic_spin>
c000a358:	83 c4 10             	add    $0x10,%esp
c000a35b:	c7 43 20 01 00 00 00 	movl   $0x1,0x20(%ebx)
c000a362:	eb 03                	jmp    c000a367 <lock_acquire+0x54>
c000a364:	ff 43 20             	incl   0x20(%ebx)
c000a367:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a36a:	5b                   	pop    %ebx
c000a36b:	5e                   	pop    %esi
c000a36c:	5d                   	pop    %ebp
c000a36d:	c3                   	ret    

c000a36e <lock_release>:
c000a36e:	55                   	push   %ebp
c000a36f:	89 e5                	mov    %esp,%ebp
c000a371:	56                   	push   %esi
c000a372:	53                   	push   %ebx
c000a373:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a376:	8b 33                	mov    (%ebx),%esi
c000a378:	e8 02 01 00 00       	call   c000a47f <running_thread>
c000a37d:	39 c6                	cmp    %eax,%esi
c000a37f:	74 19                	je     c000a39a <lock_release+0x2c>
c000a381:	68 de db 00 c0       	push   $0xc000dbde
c000a386:	68 78 dc 00 c0       	push   $0xc000dc78
c000a38b:	6a 5c                	push   $0x5c
c000a38d:	68 1a db 00 c0       	push   $0xc000db1a
c000a392:	e8 79 e2 ff ff       	call   c0008610 <panic_spin>
c000a397:	83 c4 10             	add    $0x10,%esp
c000a39a:	8b 43 20             	mov    0x20(%ebx),%eax
c000a39d:	83 f8 01             	cmp    $0x1,%eax
c000a3a0:	76 0b                	jbe    c000a3ad <lock_release+0x3f>
c000a3a2:	48                   	dec    %eax
c000a3a3:	89 43 20             	mov    %eax,0x20(%ebx)
c000a3a6:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a3a9:	5b                   	pop    %ebx
c000a3aa:	5e                   	pop    %esi
c000a3ab:	5d                   	pop    %ebp
c000a3ac:	c3                   	ret    
c000a3ad:	74 19                	je     c000a3c8 <lock_release+0x5a>
c000a3af:	68 00 dc 00 c0       	push   $0xc000dc00
c000a3b4:	68 78 dc 00 c0       	push   $0xc000dc78
c000a3b9:	6a 62                	push   $0x62
c000a3bb:	68 1a db 00 c0       	push   $0xc000db1a
c000a3c0:	e8 4b e2 ff ff       	call   c0008610 <panic_spin>
c000a3c5:	83 c4 10             	add    $0x10,%esp
c000a3c8:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c000a3ce:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
c000a3d5:	83 c3 04             	add    $0x4,%ebx
c000a3d8:	89 5d 08             	mov    %ebx,0x8(%ebp)
c000a3db:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a3de:	5b                   	pop    %ebx
c000a3df:	5e                   	pop    %esi
c000a3e0:	5d                   	pop    %ebp
c000a3e1:	e9 a1 fe ff ff       	jmp    c000a287 <sema_up>
	...

c000a3f0 <switch_to>:
c000a3f0:	56                   	push   %esi
c000a3f1:	57                   	push   %edi
c000a3f2:	53                   	push   %ebx
c000a3f3:	55                   	push   %ebp
c000a3f4:	8b 44 24 14          	mov    0x14(%esp),%eax
c000a3f8:	89 20                	mov    %esp,(%eax)
c000a3fa:	8b 44 24 18          	mov    0x18(%esp),%eax
c000a3fe:	8b 20                	mov    (%eax),%esp
c000a400:	5d                   	pop    %ebp
c000a401:	5b                   	pop    %ebx
c000a402:	5f                   	pop    %edi
c000a403:	5e                   	pop    %esi
c000a404:	c3                   	ret    
c000a405:	00 00                	add    %al,(%eax)
	...

c000a408 <kernel_thread>:
c000a408:	55                   	push   %ebp
c000a409:	89 e5                	mov    %esp,%ebp
c000a40b:	56                   	push   %esi
c000a40c:	8b 75 0c             	mov    0xc(%ebp),%esi
c000a40f:	53                   	push   %ebx
c000a410:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a413:	e8 db f2 ff ff       	call   c00096f3 <intr_enable>
c000a418:	89 75 08             	mov    %esi,0x8(%ebp)
c000a41b:	89 d8                	mov    %ebx,%eax
c000a41d:	5b                   	pop    %ebx
c000a41e:	5e                   	pop    %esi
c000a41f:	5d                   	pop    %ebp
c000a420:	ff e0                	jmp    *%eax

c000a422 <thread_init>:
c000a422:	55                   	push   %ebp
c000a423:	89 e5                	mov    %esp,%ebp
c000a425:	53                   	push   %ebx
c000a426:	83 ec 18             	sub    $0x18,%esp
c000a429:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a42c:	8a 55 10             	mov    0x10(%ebp),%dl
c000a42f:	6a 40                	push   $0x40
c000a431:	6a 00                	push   $0x0
c000a433:	53                   	push   %ebx
c000a434:	88 55 f4             	mov    %dl,-0xc(%ebp)
c000a437:	e8 18 fc ff ff       	call   c000a054 <memset>
c000a43c:	58                   	pop    %eax
c000a43d:	5a                   	pop    %edx
c000a43e:	ff 75 0c             	pushl  0xc(%ebp)
c000a441:	8d 43 08             	lea    0x8(%ebx),%eax
c000a444:	50                   	push   %eax
c000a445:	e8 dd fc ff ff       	call   c000a127 <strcpy>
c000a44a:	83 c4 10             	add    $0x10,%esp
c000a44d:	8a 55 f4             	mov    -0xc(%ebp),%dl
c000a450:	3b 1d 24 d7 02 c0    	cmp    0xc002d724,%ebx
c000a456:	75 09                	jne    c000a461 <thread_init+0x3f>
c000a458:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c000a45f:	eb 07                	jmp    c000a468 <thread_init+0x46>
c000a461:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
c000a468:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c000a46e:	88 53 18             	mov    %dl,0x18(%ebx)
c000a471:	89 03                	mov    %eax,(%ebx)
c000a473:	c7 43 3c 78 56 34 12 	movl   $0x12345678,0x3c(%ebx)
c000a47a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000a47d:	c9                   	leave  
c000a47e:	c3                   	ret    

c000a47f <running_thread>:
c000a47f:	55                   	push   %ebp
c000a480:	89 e5                	mov    %esp,%ebp
c000a482:	89 e0                	mov    %esp,%eax
c000a484:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000a489:	5d                   	pop    %ebp
c000a48a:	c3                   	ret    

c000a48b <init_thread>:
c000a48b:	55                   	push   %ebp
c000a48c:	89 e5                	mov    %esp,%ebp
c000a48e:	83 ec 14             	sub    $0x14,%esp
c000a491:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a496:	e8 79 f4 ff ff       	call   c0009914 <list_init>
c000a49b:	c7 04 24 0c d7 02 c0 	movl   $0xc002d70c,(%esp)
c000a4a2:	e8 6d f4 ff ff       	call   c0009914 <list_init>
c000a4a7:	e8 d3 ff ff ff       	call   c000a47f <running_thread>
c000a4ac:	83 c4 0c             	add    $0xc,%esp
c000a4af:	6a 1f                	push   $0x1f
c000a4b1:	68 88 dc 00 c0       	push   $0xc000dc88
c000a4b6:	50                   	push   %eax
c000a4b7:	a3 24 d7 02 c0       	mov    %eax,0xc002d724
c000a4bc:	e8 61 ff ff ff       	call   c000a422 <thread_init>
c000a4c1:	a1 24 d7 02 c0       	mov    0xc002d724,%eax
c000a4c6:	89 40 24             	mov    %eax,0x24(%eax)
c000a4c9:	89 40 30             	mov    %eax,0x30(%eax)
c000a4cc:	83 c0 20             	add    $0x20,%eax
c000a4cf:	59                   	pop    %ecx
c000a4d0:	5a                   	pop    %edx
c000a4d1:	50                   	push   %eax
c000a4d2:	68 0c d7 02 c0       	push   $0xc002d70c
c000a4d7:	e8 97 f4 ff ff       	call   c0009973 <list_append>
c000a4dc:	83 c4 10             	add    $0x10,%esp
c000a4df:	c9                   	leave  
c000a4e0:	c3                   	ret    

c000a4e1 <thread_create>:
c000a4e1:	55                   	push   %ebp
c000a4e2:	89 e5                	mov    %esp,%ebp
c000a4e4:	8b 55 08             	mov    0x8(%ebp),%edx
c000a4e7:	8b 02                	mov    (%edx),%eax
c000a4e9:	8d 88 50 fe ff ff    	lea    -0x1b0(%eax),%ecx
c000a4ef:	89 0a                	mov    %ecx,(%edx)
c000a4f1:	8b 55 0c             	mov    0xc(%ebp),%edx
c000a4f4:	c7 80 60 fe ff ff 08 	movl   $0xc000a408,-0x1a0(%eax)
c000a4fb:	a4 00 c0 
c000a4fe:	c7 80 50 fe ff ff 00 	movl   $0x0,-0x1b0(%eax)
c000a505:	00 00 00 
c000a508:	c7 80 54 fe ff ff 00 	movl   $0x0,-0x1ac(%eax)
c000a50f:	00 00 00 
c000a512:	89 90 68 fe ff ff    	mov    %edx,-0x198(%eax)
c000a518:	8b 55 10             	mov    0x10(%ebp),%edx
c000a51b:	c7 80 5c fe ff ff 00 	movl   $0x0,-0x1a4(%eax)
c000a522:	00 00 00 
c000a525:	c7 80 58 fe ff ff 00 	movl   $0x0,-0x1a8(%eax)
c000a52c:	00 00 00 
c000a52f:	89 90 6c fe ff ff    	mov    %edx,-0x194(%eax)
c000a535:	5d                   	pop    %ebp
c000a536:	c3                   	ret    

c000a537 <thread_start>:
c000a537:	55                   	push   %ebp
c000a538:	89 e5                	mov    %esp,%ebp
c000a53a:	56                   	push   %esi
c000a53b:	8b 75 0c             	mov    0xc(%ebp),%esi
c000a53e:	53                   	push   %ebx
c000a53f:	83 ec 0c             	sub    $0xc,%esp
c000a542:	6a 01                	push   $0x1
c000a544:	e8 3b f8 ff ff       	call   c0009d84 <get_kernel_page>
c000a549:	81 e6 ff 00 00 00    	and    $0xff,%esi
c000a54f:	83 c4 0c             	add    $0xc,%esp
c000a552:	56                   	push   %esi
c000a553:	ff 75 08             	pushl  0x8(%ebp)
c000a556:	50                   	push   %eax
c000a557:	89 c3                	mov    %eax,%ebx
c000a559:	e8 c4 fe ff ff       	call   c000a422 <thread_init>
c000a55e:	83 c4 0c             	add    $0xc,%esp
c000a561:	ff 75 14             	pushl  0x14(%ebp)
c000a564:	ff 75 10             	pushl  0x10(%ebp)
c000a567:	8d 73 2c             	lea    0x2c(%ebx),%esi
c000a56a:	53                   	push   %ebx
c000a56b:	e8 71 ff ff ff       	call   c000a4e1 <thread_create>
c000a570:	89 5b 24             	mov    %ebx,0x24(%ebx)
c000a573:	89 5b 30             	mov    %ebx,0x30(%ebx)
c000a576:	59                   	pop    %ecx
c000a577:	58                   	pop    %eax
c000a578:	56                   	push   %esi
c000a579:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a57e:	e8 49 f4 ff ff       	call   c00099cc <list_find>
c000a583:	83 c4 10             	add    $0x10,%esp
c000a586:	85 c0                	test   %eax,%eax
c000a588:	74 19                	je     c000a5a3 <thread_start+0x6c>
c000a58a:	68 8d dc 00 c0       	push   $0xc000dc8d
c000a58f:	68 24 de 00 c0       	push   $0xc000de24
c000a594:	6a 5f                	push   $0x5f
c000a596:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a59b:	e8 70 e0 ff ff       	call   c0008610 <panic_spin>
c000a5a0:	83 c4 10             	add    $0x10,%esp
c000a5a3:	50                   	push   %eax
c000a5a4:	50                   	push   %eax
c000a5a5:	56                   	push   %esi
c000a5a6:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a5ab:	e8 c3 f3 ff ff       	call   c0009973 <list_append>
c000a5b0:	8d 73 20             	lea    0x20(%ebx),%esi
c000a5b3:	58                   	pop    %eax
c000a5b4:	5a                   	pop    %edx
c000a5b5:	56                   	push   %esi
c000a5b6:	68 0c d7 02 c0       	push   $0xc002d70c
c000a5bb:	e8 0c f4 ff ff       	call   c00099cc <list_find>
c000a5c0:	83 c4 10             	add    $0x10,%esp
c000a5c3:	85 c0                	test   %eax,%eax
c000a5c5:	74 19                	je     c000a5e0 <thread_start+0xa9>
c000a5c7:	68 cc dc 00 c0       	push   $0xc000dccc
c000a5cc:	68 24 de 00 c0       	push   $0xc000de24
c000a5d1:	6a 62                	push   $0x62
c000a5d3:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a5d8:	e8 33 e0 ff ff       	call   c0008610 <panic_spin>
c000a5dd:	83 c4 10             	add    $0x10,%esp
c000a5e0:	51                   	push   %ecx
c000a5e1:	51                   	push   %ecx
c000a5e2:	56                   	push   %esi
c000a5e3:	68 0c d7 02 c0       	push   $0xc002d70c
c000a5e8:	e8 86 f3 ff ff       	call   c0009973 <list_append>
c000a5ed:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a5f0:	89 d8                	mov    %ebx,%eax
c000a5f2:	5b                   	pop    %ebx
c000a5f3:	5e                   	pop    %esi
c000a5f4:	5d                   	pop    %ebp
c000a5f5:	c3                   	ret    

c000a5f6 <schedule>:
c000a5f6:	55                   	push   %ebp
c000a5f7:	89 e5                	mov    %esp,%ebp
c000a5f9:	56                   	push   %esi
c000a5fa:	53                   	push   %ebx
c000a5fb:	e8 7f fe ff ff       	call   c000a47f <running_thread>
c000a600:	89 c3                	mov    %eax,%ebx
c000a602:	8b 40 04             	mov    0x4(%eax),%eax
c000a605:	85 c0                	test   %eax,%eax
c000a607:	75 53                	jne    c000a65c <schedule+0x66>
c000a609:	50                   	push   %eax
c000a60a:	50                   	push   %eax
c000a60b:	8d 73 2c             	lea    0x2c(%ebx),%esi
c000a60e:	56                   	push   %esi
c000a60f:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a614:	e8 b3 f3 ff ff       	call   c00099cc <list_find>
c000a619:	83 c4 10             	add    $0x10,%esp
c000a61c:	85 c0                	test   %eax,%eax
c000a61e:	74 19                	je     c000a639 <schedule+0x43>
c000a620:	68 f5 dc 00 c0       	push   $0xc000dcf5
c000a625:	68 34 de 00 c0       	push   $0xc000de34
c000a62a:	6a 76                	push   $0x76
c000a62c:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a631:	e8 da df ff ff       	call   c0008610 <panic_spin>
c000a636:	83 c4 10             	add    $0x10,%esp
c000a639:	50                   	push   %eax
c000a63a:	50                   	push   %eax
c000a63b:	56                   	push   %esi
c000a63c:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a641:	e8 2d f3 ff ff       	call   c0009973 <list_append>
c000a646:	83 c4 10             	add    $0x10,%esp
c000a649:	80 7b 19 00          	cmpb   $0x0,0x19(%ebx)
c000a64d:	75 06                	jne    c000a655 <schedule+0x5f>
c000a64f:	8a 43 18             	mov    0x18(%ebx),%al
c000a652:	88 43 19             	mov    %al,0x19(%ebx)
c000a655:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c000a65c:	83 ec 0c             	sub    $0xc,%esp
c000a65f:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a664:	c7 05 f0 d6 02 c0 00 	movl   $0x0,0xc002d6f0
c000a66b:	00 00 00 
c000a66e:	e8 d2 f3 ff ff       	call   c0009a45 <list_empty>
c000a673:	83 c4 10             	add    $0x10,%esp
c000a676:	85 c0                	test   %eax,%eax
c000a678:	74 1c                	je     c000a696 <schedule+0xa0>
c000a67a:	68 2a dd 00 c0       	push   $0xc000dd2a
c000a67f:	68 34 de 00 c0       	push   $0xc000de34
c000a684:	68 86 00 00 00       	push   $0x86
c000a689:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a68e:	e8 7d df ff ff       	call   c0008610 <panic_spin>
c000a693:	83 c4 10             	add    $0x10,%esp
c000a696:	81 3d 00 d7 02 c0 f4 	cmpl   $0xc002d6f4,0xc002d700
c000a69d:	d6 02 c0 
c000a6a0:	75 1c                	jne    c000a6be <schedule+0xc8>
c000a6a2:	68 45 dd 00 c0       	push   $0xc000dd45
c000a6a7:	68 34 de 00 c0       	push   $0xc000de34
c000a6ac:	68 87 00 00 00       	push   $0x87
c000a6b1:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a6b6:	e8 55 df ff ff       	call   c0008610 <panic_spin>
c000a6bb:	83 c4 10             	add    $0x10,%esp
c000a6be:	83 ec 0c             	sub    $0xc,%esp
c000a6c1:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a6c6:	e8 e7 f2 ff ff       	call   c00099b2 <list_pop>
c000a6cb:	a3 f0 d6 02 c0       	mov    %eax,0xc002d6f0
c000a6d0:	8b 40 04             	mov    0x4(%eax),%eax
c000a6d3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c000a6da:	5a                   	pop    %edx
c000a6db:	59                   	pop    %ecx
c000a6dc:	50                   	push   %eax
c000a6dd:	53                   	push   %ebx
c000a6de:	e8 0d fd ff ff       	call   c000a3f0 <switch_to>
c000a6e3:	83 c4 10             	add    $0x10,%esp
c000a6e6:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a6e9:	5b                   	pop    %ebx
c000a6ea:	5e                   	pop    %esi
c000a6eb:	5d                   	pop    %ebp
c000a6ec:	c3                   	ret    

c000a6ed <thread_block>:
c000a6ed:	55                   	push   %ebp
c000a6ee:	89 e5                	mov    %esp,%ebp
c000a6f0:	56                   	push   %esi
c000a6f1:	53                   	push   %ebx
c000a6f2:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a6f5:	83 fb 01             	cmp    $0x1,%ebx
c000a6f8:	77 1c                	ja     c000a716 <thread_block+0x29>
c000a6fa:	68 6e dd 00 c0       	push   $0xc000dd6e
c000a6ff:	68 40 de 00 c0       	push   $0xc000de40
c000a704:	68 91 00 00 00       	push   $0x91
c000a709:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a70e:	e8 fd de ff ff       	call   c0008610 <panic_spin>
c000a713:	83 c4 10             	add    $0x10,%esp
c000a716:	e8 1a ef ff ff       	call   c0009635 <intr_disable>
c000a71b:	89 c6                	mov    %eax,%esi
c000a71d:	e8 5d fd ff ff       	call   c000a47f <running_thread>
c000a722:	89 58 04             	mov    %ebx,0x4(%eax)
c000a725:	e8 cc fe ff ff       	call   c000a5f6 <schedule>
c000a72a:	89 75 08             	mov    %esi,0x8(%ebp)
c000a72d:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a730:	5b                   	pop    %ebx
c000a731:	5e                   	pop    %esi
c000a732:	5d                   	pop    %ebp
c000a733:	e9 d2 ef ff ff       	jmp    c000970a <intr_set_status>

c000a738 <thread_unblock>:
c000a738:	55                   	push   %ebp
c000a739:	89 e5                	mov    %esp,%ebp
c000a73b:	57                   	push   %edi
c000a73c:	56                   	push   %esi
c000a73d:	53                   	push   %ebx
c000a73e:	83 ec 0c             	sub    $0xc,%esp
c000a741:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a744:	e8 ec ee ff ff       	call   c0009635 <intr_disable>
c000a749:	89 c7                	mov    %eax,%edi
c000a74b:	8b 43 04             	mov    0x4(%ebx),%eax
c000a74e:	48                   	dec    %eax
c000a74f:	74 7a                	je     c000a7cb <thread_unblock+0x93>
c000a751:	50                   	push   %eax
c000a752:	50                   	push   %eax
c000a753:	8d 73 2c             	lea    0x2c(%ebx),%esi
c000a756:	56                   	push   %esi
c000a757:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a75c:	e8 6b f2 ff ff       	call   c00099cc <list_find>
c000a761:	83 c4 10             	add    $0x10,%esp
c000a764:	85 c0                	test   %eax,%eax
c000a766:	74 1c                	je     c000a784 <thread_unblock+0x4c>
c000a768:	68 9d dd 00 c0       	push   $0xc000dd9d
c000a76d:	68 50 de 00 c0       	push   $0xc000de50
c000a772:	68 9f 00 00 00       	push   $0x9f
c000a777:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a77c:	e8 8f de ff ff       	call   c0008610 <panic_spin>
c000a781:	83 c4 10             	add    $0x10,%esp
c000a784:	50                   	push   %eax
c000a785:	50                   	push   %eax
c000a786:	56                   	push   %esi
c000a787:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a78c:	e8 3b f2 ff ff       	call   c00099cc <list_find>
c000a791:	83 c4 10             	add    $0x10,%esp
c000a794:	85 c0                	test   %eax,%eax
c000a796:	74 1c                	je     c000a7b4 <thread_unblock+0x7c>
c000a798:	68 cd dd 00 c0       	push   $0xc000ddcd
c000a79d:	68 50 de 00 c0       	push   $0xc000de50
c000a7a2:	68 a2 00 00 00       	push   $0xa2
c000a7a7:	68 bc dc 00 c0       	push   $0xc000dcbc
c000a7ac:	e8 5f de ff ff       	call   c0008610 <panic_spin>
c000a7b1:	83 c4 10             	add    $0x10,%esp
c000a7b4:	50                   	push   %eax
c000a7b5:	50                   	push   %eax
c000a7b6:	56                   	push   %esi
c000a7b7:	68 f4 d6 02 c0       	push   $0xc002d6f4
c000a7bc:	e8 9a f1 ff ff       	call   c000995b <list_push>
c000a7c1:	83 c4 10             	add    $0x10,%esp
c000a7c4:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
c000a7cb:	89 7d 08             	mov    %edi,0x8(%ebp)
c000a7ce:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000a7d1:	5b                   	pop    %ebx
c000a7d2:	5e                   	pop    %esi
c000a7d3:	5f                   	pop    %edi
c000a7d4:	5d                   	pop    %ebp
c000a7d5:	e9 30 ef ff ff       	jmp    c000970a <intr_set_status>
	...

c000a7dc <get_time>:
c000a7dc:	55                   	push   %ebp
c000a7dd:	89 e5                	mov    %esp,%ebp
c000a7df:	57                   	push   %edi
c000a7e0:	56                   	push   %esi
c000a7e1:	be 70 00 00 00       	mov    $0x70,%esi
c000a7e6:	53                   	push   %ebx
c000a7e7:	83 ec 1c             	sub    $0x1c,%esp
c000a7ea:	8b 7d 08             	mov    0x8(%ebp),%edi
c000a7ed:	e8 33 ee ff ff       	call   c0009625 <intr_get_status>
c000a7f2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c000a7f5:	b8 89 00 00 00       	mov    $0x89,%eax
c000a7fa:	89 f2                	mov    %esi,%edx
c000a7fc:	ee                   	out    %al,(%dx)
c000a7fd:	bb 71 00 00 00       	mov    $0x71,%ebx
c000a802:	89 da                	mov    %ebx,%edx
c000a804:	ec                   	in     (%dx),%al
c000a805:	89 c1                	mov    %eax,%ecx
c000a807:	89 f2                	mov    %esi,%edx
c000a809:	b8 b2 00 00 00       	mov    $0xb2,%eax
c000a80e:	ee                   	out    %al,(%dx)
c000a80f:	89 da                	mov    %ebx,%edx
c000a811:	ec                   	in     (%dx),%al
c000a812:	c1 e0 08             	shl    $0x8,%eax
c000a815:	89 f2                	mov    %esi,%edx
c000a817:	01 c1                	add    %eax,%ecx
c000a819:	b8 88 00 00 00       	mov    $0x88,%eax
c000a81e:	89 4f 14             	mov    %ecx,0x14(%edi)
c000a821:	ee                   	out    %al,(%dx)
c000a822:	89 da                	mov    %ebx,%edx
c000a824:	ec                   	in     (%dx),%al
c000a825:	89 47 10             	mov    %eax,0x10(%edi)
c000a828:	89 f2                	mov    %esi,%edx
c000a82a:	b8 87 00 00 00       	mov    $0x87,%eax
c000a82f:	ee                   	out    %al,(%dx)
c000a830:	89 da                	mov    %ebx,%edx
c000a832:	ec                   	in     (%dx),%al
c000a833:	89 47 0c             	mov    %eax,0xc(%edi)
c000a836:	89 f2                	mov    %esi,%edx
c000a838:	b8 84 00 00 00       	mov    $0x84,%eax
c000a83d:	ee                   	out    %al,(%dx)
c000a83e:	89 da                	mov    %ebx,%edx
c000a840:	ec                   	in     (%dx),%al
c000a841:	89 47 08             	mov    %eax,0x8(%edi)
c000a844:	89 f2                	mov    %esi,%edx
c000a846:	b8 82 00 00 00       	mov    $0x82,%eax
c000a84b:	ee                   	out    %al,(%dx)
c000a84c:	89 da                	mov    %ebx,%edx
c000a84e:	ec                   	in     (%dx),%al
c000a84f:	b9 80 00 00 00       	mov    $0x80,%ecx
c000a854:	89 f2                	mov    %esi,%edx
c000a856:	89 47 04             	mov    %eax,0x4(%edi)
c000a859:	89 c8                	mov    %ecx,%eax
c000a85b:	ee                   	out    %al,(%dx)
c000a85c:	89 da                	mov    %ebx,%edx
c000a85e:	ec                   	in     (%dx),%al
c000a85f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c000a862:	89 f2                	mov    %esi,%edx
c000a864:	89 07                	mov    %eax,(%edi)
c000a866:	89 c8                	mov    %ecx,%eax
c000a868:	ee                   	out    %al,(%dx)
c000a869:	89 da                	mov    %ebx,%edx
c000a86b:	ec                   	in     (%dx),%al
c000a86c:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c000a86f:	75 84                	jne    c000a7f5 <get_time+0x19>
c000a871:	b2 70                	mov    $0x70,%dl
c000a873:	31 c0                	xor    %eax,%eax
c000a875:	ee                   	out    %al,(%dx)
c000a876:	8b 45 e0             	mov    -0x20(%ebp),%eax
c000a879:	89 45 08             	mov    %eax,0x8(%ebp)
c000a87c:	83 c4 1c             	add    $0x1c,%esp
c000a87f:	5b                   	pop    %ebx
c000a880:	5e                   	pop    %esi
c000a881:	5f                   	pop    %edi
c000a882:	5d                   	pop    %ebp
c000a883:	e9 82 ee ff ff       	jmp    c000970a <intr_set_status>

c000a888 <init_pit>:
c000a888:	55                   	push   %ebp
c000a889:	ba 43 00 00 00       	mov    $0x43,%edx
c000a88e:	89 e5                	mov    %esp,%ebp
c000a890:	b8 34 00 00 00       	mov    $0x34,%eax
c000a895:	ee                   	out    %al,(%dx)
c000a896:	b2 40                	mov    $0x40,%dl
c000a898:	b0 9c                	mov    $0x9c,%al
c000a89a:	ee                   	out    %al,(%dx)
c000a89b:	b0 2e                	mov    $0x2e,%al
c000a89d:	ee                   	out    %al,(%dx)
c000a89e:	5d                   	pop    %ebp
c000a89f:	c3                   	ret    

c000a8a0 <intr0x20_handler>:
c000a8a0:	55                   	push   %ebp
c000a8a1:	b8 20 00 00 00       	mov    $0x20,%eax
c000a8a6:	89 e5                	mov    %esp,%ebp
c000a8a8:	83 ec 08             	sub    $0x8,%esp
c000a8ab:	89 c2                	mov    %eax,%edx
c000a8ad:	ee                   	out    %al,(%dx)
c000a8ae:	e8 cc fb ff ff       	call   c000a47f <running_thread>
c000a8b3:	ff 05 2c df 00 c0    	incl   0xc000df2c
c000a8b9:	8a 50 19             	mov    0x19(%eax),%dl
c000a8bc:	ff 40 1c             	incl   0x1c(%eax)
c000a8bf:	84 d2                	test   %dl,%dl
c000a8c1:	75 06                	jne    c000a8c9 <intr0x20_handler+0x29>
c000a8c3:	c9                   	leave  
c000a8c4:	e9 2d fd ff ff       	jmp    c000a5f6 <schedule>
c000a8c9:	4a                   	dec    %edx
c000a8ca:	88 50 19             	mov    %dl,0x19(%eax)
c000a8cd:	c9                   	leave  
c000a8ce:	c3                   	ret    

Disassembly of section .data:

c000a8d0 <_data>:
	...

c000a8d8 <SectionCode32>:
c000a8d8:	ff                   	(bad)  
c000a8d9:	ff 00                	incl   (%eax)
c000a8db:	00 00                	add    %al,(%eax)
c000a8dd:	98                   	cwtl   
c000a8de:	cf                   	iret   
	...

c000a8e0 <SectionData32>:
c000a8e0:	ff                   	(bad)  
c000a8e1:	ff 00                	incl   (%eax)
c000a8e3:	00 00                	add    %al,(%eax)
c000a8e5:	92                   	xchg   %eax,%edx
c000a8e6:	cf                   	iret   
	...

c000aac8 <gdt_ptr>:
c000aac8:	17                   	pop    %ss
c000aac9:	00 d0                	add    %dl,%al
c000aacb:	a8 00                	test   $0x0,%al
c000aacd:	c0 00 00             	rolb   $0x0,(%eax)

c000aad0 <PKnFont>:
	...
c000ace0:	00 10                	add    %dl,(%eax)
c000ace2:	10 10                	adc    %dl,(%eax)
c000ace4:	10 10                	adc    %dl,(%eax)
c000ace6:	10 10                	adc    %dl,(%eax)
c000ace8:	10 10                	adc    %dl,(%eax)
c000acea:	00 00                	add    %al,(%eax)
c000acec:	10 10                	adc    %dl,(%eax)
c000acee:	00 00                	add    %al,(%eax)
c000acf0:	28 28                	sub    %ch,(%eax)
c000acf2:	28 00                	sub    %al,(%eax)
	...
c000ad00:	00 44 44 44          	add    %al,0x44(%esp,%eax,2)
c000ad04:	fe 44 44 44          	incb   0x44(%esp,%eax,2)
c000ad08:	44                   	inc    %esp
c000ad09:	44                   	inc    %esp
c000ad0a:	fe 44 44 44          	incb   0x44(%esp,%eax,2)
c000ad0e:	00 00                	add    %al,(%eax)
c000ad10:	10 3a                	adc    %bh,(%edx)
c000ad12:	56                   	push   %esi
c000ad13:	92                   	xchg   %eax,%edx
c000ad14:	92                   	xchg   %eax,%edx
c000ad15:	90                   	nop
c000ad16:	50                   	push   %eax
c000ad17:	38 14 12             	cmp    %dl,(%edx,%edx,1)
c000ad1a:	92                   	xchg   %eax,%edx
c000ad1b:	92                   	xchg   %eax,%edx
c000ad1c:	d4 b8                	aam    $0xb8
c000ad1e:	10 10                	adc    %dl,(%eax)
c000ad20:	62 92 94 94 68 08    	bound  %edx,0x8689494(%edx)
c000ad26:	10 10                	adc    %dl,(%eax)
c000ad28:	20 2c 52             	and    %ch,(%edx,%edx,2)
c000ad2b:	52                   	push   %edx
c000ad2c:	92                   	xchg   %eax,%edx
c000ad2d:	8c 00                	mov    %es,(%eax)
c000ad2f:	00 00                	add    %al,(%eax)
c000ad31:	70 88                	jo     c000acbb <PKnFont+0x1eb>
c000ad33:	88 88 90 60 47 a2    	mov    %cl,-0x5db89f70(%eax)
c000ad39:	92                   	xchg   %eax,%edx
c000ad3a:	8a 84 46 39 00 00 04 	mov    0x4000039(%esi,%eax,2),%al
c000ad41:	08 10                	or     %dl,(%eax)
	...
c000ad4f:	00 02                	add    %al,(%edx)
c000ad51:	04 08                	add    $0x8,%al
c000ad53:	08 10                	or     %dl,(%eax)
c000ad55:	10 10                	adc    %dl,(%eax)
c000ad57:	10 10                	adc    %dl,(%eax)
c000ad59:	10 10                	adc    %dl,(%eax)
c000ad5b:	08 08                	or     %cl,(%eax)
c000ad5d:	04 02                	add    $0x2,%al
c000ad5f:	00 80 40 20 20 10    	add    %al,0x10202040(%eax)
c000ad65:	10 10                	adc    %dl,(%eax)
c000ad67:	10 10                	adc    %dl,(%eax)
c000ad69:	10 10                	adc    %dl,(%eax)
c000ad6b:	20 20                	and    %ah,(%eax)
c000ad6d:	40                   	inc    %eax
c000ad6e:	80 00 00             	addb   $0x0,(%eax)
c000ad71:	00 00                	add    %al,(%eax)
c000ad73:	00 00                	add    %al,(%eax)
c000ad75:	10 92 54 38 54 92    	adc    %dl,-0x6dabc7ac(%edx)
c000ad7b:	10 00                	adc    %al,(%eax)
	...
c000ad85:	10 10                	adc    %dl,(%eax)
c000ad87:	10 fe                	adc    %bh,%dh
c000ad89:	10 10                	adc    %dl,(%eax)
c000ad8b:	10 00                	adc    %al,(%eax)
	...
c000ad99:	00 00                	add    %al,(%eax)
c000ad9b:	18 18                	sbb    %bl,(%eax)
c000ad9d:	08 08                	or     %cl,(%eax)
c000ad9f:	10 00                	adc    %al,(%eax)
c000ada1:	00 00                	add    %al,(%eax)
c000ada3:	00 00                	add    %al,(%eax)
c000ada5:	00 00                	add    %al,(%eax)
c000ada7:	00 fe                	add    %bh,%dh
	...
c000adb9:	00 00                	add    %al,(%eax)
c000adbb:	00 18                	add    %bl,(%eax)
c000adbd:	18 00                	sbb    %al,(%eax)
c000adbf:	00 02                	add    %al,(%edx)
c000adc1:	02 04 04             	add    (%esp,%eax,1),%al
c000adc4:	08 08                	or     %cl,(%eax)
c000adc6:	08 10                	or     %dl,(%eax)
c000adc8:	10 20                	adc    %ah,(%eax)
c000adca:	20 40 40             	and    %al,0x40(%eax)
c000adcd:	40                   	inc    %eax
c000adce:	80 80 00 18 24 24 42 	addb   $0x42,0x24241800(%eax)
c000add5:	42                   	inc    %edx
c000add6:	42                   	inc    %edx
c000add7:	42                   	inc    %edx
c000add8:	42                   	inc    %edx
c000add9:	42                   	inc    %edx
c000adda:	42                   	inc    %edx
c000addb:	24 24                	and    $0x24,%al
c000addd:	18 00                	sbb    %al,(%eax)
c000addf:	00 00                	add    %al,(%eax)
c000ade1:	08 18                	or     %bl,(%eax)
c000ade3:	28 08                	sub    %cl,(%eax)
c000ade5:	08 08                	or     %cl,(%eax)
c000ade7:	08 08                	or     %cl,(%eax)
c000ade9:	08 08                	or     %cl,(%eax)
c000adeb:	08 08                	or     %cl,(%eax)
c000aded:	3e 00 00             	add    %al,%ds:(%eax)
c000adf0:	00 18                	add    %bl,(%eax)
c000adf2:	24 42                	and    $0x42,%al
c000adf4:	42                   	inc    %edx
c000adf5:	02 04 08             	add    (%eax,%ecx,1),%al
c000adf8:	10 20                	adc    %ah,(%eax)
c000adfa:	20 40 40             	and    %al,0x40(%eax)
c000adfd:	7e 00                	jle    c000adff <PKnFont+0x32f>
c000adff:	00 00                	add    %al,(%eax)
c000ae01:	18 24 42             	sbb    %ah,(%edx,%eax,2)
c000ae04:	02 02                	add    (%edx),%al
c000ae06:	04 18                	add    $0x18,%al
c000ae08:	04 02                	add    $0x2,%al
c000ae0a:	02 42 24             	add    0x24(%edx),%al
c000ae0d:	18 00                	sbb    %al,(%eax)
c000ae0f:	00 00                	add    %al,(%eax)
c000ae11:	0c 0c                	or     $0xc,%al
c000ae13:	0c 14                	or     $0x14,%al
c000ae15:	14 14                	adc    $0x14,%al
c000ae17:	24 24                	and    $0x24,%al
c000ae19:	44                   	inc    %esp
c000ae1a:	7e 04                	jle    c000ae20 <PKnFont+0x350>
c000ae1c:	04 1e                	add    $0x1e,%al
c000ae1e:	00 00                	add    %al,(%eax)
c000ae20:	00 7c 40 40          	add    %bh,0x40(%eax,%eax,2)
c000ae24:	40                   	inc    %eax
c000ae25:	58                   	pop    %eax
c000ae26:	64 02 02             	add    %fs:(%edx),%al
c000ae29:	02 02                	add    (%edx),%al
c000ae2b:	42                   	inc    %edx
c000ae2c:	24 18                	and    $0x18,%al
c000ae2e:	00 00                	add    %al,(%eax)
c000ae30:	00 18                	add    %bl,(%eax)
c000ae32:	24 42                	and    $0x42,%al
c000ae34:	40                   	inc    %eax
c000ae35:	58                   	pop    %eax
c000ae36:	64 42                	fs inc %edx
c000ae38:	42                   	inc    %edx
c000ae39:	42                   	inc    %edx
c000ae3a:	42                   	inc    %edx
c000ae3b:	42                   	inc    %edx
c000ae3c:	24 18                	and    $0x18,%al
c000ae3e:	00 00                	add    %al,(%eax)
c000ae40:	00 7e 42             	add    %bh,0x42(%esi)
c000ae43:	42                   	inc    %edx
c000ae44:	04 04                	add    $0x4,%al
c000ae46:	08 08                	or     %cl,(%eax)
c000ae48:	08 10                	or     %dl,(%eax)
c000ae4a:	10 10                	adc    %dl,(%eax)
c000ae4c:	10 38                	adc    %bh,(%eax)
c000ae4e:	00 00                	add    %al,(%eax)
c000ae50:	00 18                	add    %bl,(%eax)
c000ae52:	24 42                	and    $0x42,%al
c000ae54:	42                   	inc    %edx
c000ae55:	42                   	inc    %edx
c000ae56:	24 18                	and    $0x18,%al
c000ae58:	24 42                	and    $0x42,%al
c000ae5a:	42                   	inc    %edx
c000ae5b:	42                   	inc    %edx
c000ae5c:	24 18                	and    $0x18,%al
c000ae5e:	00 00                	add    %al,(%eax)
c000ae60:	00 18                	add    %bl,(%eax)
c000ae62:	24 42                	and    $0x42,%al
c000ae64:	42                   	inc    %edx
c000ae65:	42                   	inc    %edx
c000ae66:	42                   	inc    %edx
c000ae67:	42                   	inc    %edx
c000ae68:	26 1a 02             	sbb    %es:(%edx),%al
c000ae6b:	42                   	inc    %edx
c000ae6c:	24 18                	and    $0x18,%al
c000ae6e:	00 00                	add    %al,(%eax)
c000ae70:	00 00                	add    %al,(%eax)
c000ae72:	00 00                	add    %al,(%eax)
c000ae74:	00 18                	add    %bl,(%eax)
c000ae76:	18 00                	sbb    %al,(%eax)
c000ae78:	00 00                	add    %al,(%eax)
c000ae7a:	00 00                	add    %al,(%eax)
c000ae7c:	18 18                	sbb    %bl,(%eax)
c000ae7e:	00 00                	add    %al,(%eax)
c000ae80:	00 00                	add    %al,(%eax)
c000ae82:	00 00                	add    %al,(%eax)
c000ae84:	00 18                	add    %bl,(%eax)
c000ae86:	18 00                	sbb    %al,(%eax)
c000ae88:	00 00                	add    %al,(%eax)
c000ae8a:	00 18                	add    %bl,(%eax)
c000ae8c:	18 08                	sbb    %cl,(%eax)
c000ae8e:	08 10                	or     %dl,(%eax)
c000ae90:	00 02                	add    %al,(%edx)
c000ae92:	04 08                	add    $0x8,%al
c000ae94:	10 20                	adc    %ah,(%eax)
c000ae96:	40                   	inc    %eax
c000ae97:	80 80 40 20 10 08 04 	addb   $0x4,0x8102040(%eax)
c000ae9e:	02 00                	add    (%eax),%al
c000aea0:	00 00                	add    %al,(%eax)
c000aea2:	00 00                	add    %al,(%eax)
c000aea4:	00 00                	add    %al,(%eax)
c000aea6:	fe 00                	incb   (%eax)
c000aea8:	00 fe                	add    %bh,%dh
c000aeaa:	00 00                	add    %al,(%eax)
c000aeac:	00 00                	add    %al,(%eax)
c000aeae:	00 00                	add    %al,(%eax)
c000aeb0:	00 80 40 20 10 08    	add    %al,0x8102040(%eax)
c000aeb6:	04 02                	add    $0x2,%al
c000aeb8:	02 04 08             	add    (%eax,%ecx,1),%al
c000aebb:	10 20                	adc    %ah,(%eax)
c000aebd:	40                   	inc    %eax
c000aebe:	80 00 00             	addb   $0x0,(%eax)
c000aec1:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c000aec5:	82                   	(bad)  
c000aec6:	04 08                	add    $0x8,%al
c000aec8:	10 10                	adc    %dl,(%eax)
c000aeca:	00 00                	add    %al,(%eax)
c000aecc:	18 18                	sbb    %bl,(%eax)
c000aece:	00 00                	add    %al,(%eax)
c000aed0:	00 38                	add    %bh,(%eax)
c000aed2:	44                   	inc    %esp
c000aed3:	82                   	(bad)  
c000aed4:	9a aa aa aa aa aa 9c 	lcall  $0x9caa,$0xaaaaaaaa
c000aedb:	80 46 38 00          	addb   $0x0,0x38(%esi)
c000aedf:	00 00                	add    %al,(%eax)
c000aee1:	18 18                	sbb    %bl,(%eax)
c000aee3:	18 18                	sbb    %bl,(%eax)
c000aee5:	24 24                	and    $0x24,%al
c000aee7:	24 24                	and    $0x24,%al
c000aee9:	7e 42                	jle    c000af2d <PKnFont+0x45d>
c000aeeb:	42                   	inc    %edx
c000aeec:	42                   	inc    %edx
c000aeed:	e7 00                	out    %eax,$0x0
c000aeef:	00 00                	add    %al,(%eax)
c000aef1:	f0 48                	lock dec %eax
c000aef3:	44                   	inc    %esp
c000aef4:	44                   	inc    %esp
c000aef5:	44                   	inc    %esp
c000aef6:	48                   	dec    %eax
c000aef7:	78 44                	js     c000af3d <PKnFont+0x46d>
c000aef9:	42                   	inc    %edx
c000aefa:	42                   	inc    %edx
c000aefb:	42                   	inc    %edx
c000aefc:	44                   	inc    %esp
c000aefd:	f8                   	clc    
c000aefe:	00 00                	add    %al,(%eax)
c000af00:	00 3a                	add    %bh,(%edx)
c000af02:	46                   	inc    %esi
c000af03:	42                   	inc    %edx
c000af04:	82                   	(bad)  
c000af05:	80 80 80 80 80 82 42 	addb   $0x42,-0x7d7f7f80(%eax)
c000af0c:	44                   	inc    %esp
c000af0d:	38 00                	cmp    %al,(%eax)
c000af0f:	00 00                	add    %al,(%eax)
c000af11:	f8                   	clc    
c000af12:	44                   	inc    %esp
c000af13:	44                   	inc    %esp
c000af14:	42                   	inc    %edx
c000af15:	42                   	inc    %edx
c000af16:	42                   	inc    %edx
c000af17:	42                   	inc    %edx
c000af18:	42                   	inc    %edx
c000af19:	42                   	inc    %edx
c000af1a:	42                   	inc    %edx
c000af1b:	44                   	inc    %esp
c000af1c:	44                   	inc    %esp
c000af1d:	f8                   	clc    
c000af1e:	00 00                	add    %al,(%eax)
c000af20:	00 fe                	add    %bh,%dh
c000af22:	42                   	inc    %edx
c000af23:	42                   	inc    %edx
c000af24:	40                   	inc    %eax
c000af25:	40                   	inc    %eax
c000af26:	44                   	inc    %esp
c000af27:	7c 44                	jl     c000af6d <PKnFont+0x49d>
c000af29:	40                   	inc    %eax
c000af2a:	40                   	inc    %eax
c000af2b:	42                   	inc    %edx
c000af2c:	42                   	inc    %edx
c000af2d:	fe 00                	incb   (%eax)
c000af2f:	00 00                	add    %al,(%eax)
c000af31:	fe 42 42             	incb   0x42(%edx)
c000af34:	40                   	inc    %eax
c000af35:	40                   	inc    %eax
c000af36:	44                   	inc    %esp
c000af37:	7c 44                	jl     c000af7d <PKnFont+0x4ad>
c000af39:	44                   	inc    %esp
c000af3a:	40                   	inc    %eax
c000af3b:	40                   	inc    %eax
c000af3c:	40                   	inc    %eax
c000af3d:	f0 00 00             	lock add %al,(%eax)
c000af40:	00 3a                	add    %bh,(%edx)
c000af42:	46                   	inc    %esi
c000af43:	42                   	inc    %edx
c000af44:	82                   	(bad)  
c000af45:	80 80 9e 82 82 82 42 	addb   $0x42,-0x7d7d7d62(%eax)
c000af4c:	46                   	inc    %esi
c000af4d:	38 00                	cmp    %al,(%eax)
c000af4f:	00 00                	add    %al,(%eax)
c000af51:	e7 42                	out    %eax,$0x42
c000af53:	42                   	inc    %edx
c000af54:	42                   	inc    %edx
c000af55:	42                   	inc    %edx
c000af56:	42                   	inc    %edx
c000af57:	7e 42                	jle    c000af9b <PKnFont+0x4cb>
c000af59:	42                   	inc    %edx
c000af5a:	42                   	inc    %edx
c000af5b:	42                   	inc    %edx
c000af5c:	42                   	inc    %edx
c000af5d:	e7 00                	out    %eax,$0x0
c000af5f:	00 00                	add    %al,(%eax)
c000af61:	7c 10                	jl     c000af73 <PKnFont+0x4a3>
c000af63:	10 10                	adc    %dl,(%eax)
c000af65:	10 10                	adc    %dl,(%eax)
c000af67:	10 10                	adc    %dl,(%eax)
c000af69:	10 10                	adc    %dl,(%eax)
c000af6b:	10 10                	adc    %dl,(%eax)
c000af6d:	7c 00                	jl     c000af6f <PKnFont+0x49f>
c000af6f:	00 00                	add    %al,(%eax)
c000af71:	1f                   	pop    %ds
c000af72:	04 04                	add    $0x4,%al
c000af74:	04 04                	add    $0x4,%al
c000af76:	04 04                	add    $0x4,%al
c000af78:	04 04                	add    $0x4,%al
c000af7a:	04 04                	add    $0x4,%al
c000af7c:	84 48 30             	test   %cl,0x30(%eax)
c000af7f:	00 00                	add    %al,(%eax)
c000af81:	e7 42                	out    %eax,$0x42
c000af83:	44                   	inc    %esp
c000af84:	48                   	dec    %eax
c000af85:	50                   	push   %eax
c000af86:	50                   	push   %eax
c000af87:	60                   	pusha  
c000af88:	50                   	push   %eax
c000af89:	50                   	push   %eax
c000af8a:	48                   	dec    %eax
c000af8b:	44                   	inc    %esp
c000af8c:	42                   	inc    %edx
c000af8d:	e7 00                	out    %eax,$0x0
c000af8f:	00 00                	add    %al,(%eax)
c000af91:	f0 40                	lock inc %eax
c000af93:	40                   	inc    %eax
c000af94:	40                   	inc    %eax
c000af95:	40                   	inc    %eax
c000af96:	40                   	inc    %eax
c000af97:	40                   	inc    %eax
c000af98:	40                   	inc    %eax
c000af99:	40                   	inc    %eax
c000af9a:	40                   	inc    %eax
c000af9b:	42                   	inc    %edx
c000af9c:	42                   	inc    %edx
c000af9d:	fe 00                	incb   (%eax)
c000af9f:	00 00                	add    %al,(%eax)
c000afa1:	c3                   	ret    
c000afa2:	42                   	inc    %edx
c000afa3:	66 66 66 5a          	data16 data16 pop %dx
c000afa7:	5a                   	pop    %edx
c000afa8:	5a                   	pop    %edx
c000afa9:	42                   	inc    %edx
c000afaa:	42                   	inc    %edx
c000afab:	42                   	inc    %edx
c000afac:	42                   	inc    %edx
c000afad:	e7 00                	out    %eax,$0x0
c000afaf:	00 00                	add    %al,(%eax)
c000afb1:	c7 42 62 62 52 52 52 	movl   $0x52525262,0x62(%edx)
c000afb8:	4a                   	dec    %edx
c000afb9:	4a                   	dec    %edx
c000afba:	4a                   	dec    %edx
c000afbb:	46                   	inc    %esi
c000afbc:	46                   	inc    %esi
c000afbd:	e2 00                	loop   c000afbf <PKnFont+0x4ef>
c000afbf:	00 00                	add    %al,(%eax)
c000afc1:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c000afc5:	82                   	(bad)  
c000afc6:	82                   	(bad)  
c000afc7:	82                   	(bad)  
c000afc8:	82                   	(bad)  
c000afc9:	82                   	(bad)  
c000afca:	82                   	(bad)  
c000afcb:	82                   	(bad)  
c000afcc:	44                   	inc    %esp
c000afcd:	38 00                	cmp    %al,(%eax)
c000afcf:	00 00                	add    %al,(%eax)
c000afd1:	f8                   	clc    
c000afd2:	44                   	inc    %esp
c000afd3:	42                   	inc    %edx
c000afd4:	42                   	inc    %edx
c000afd5:	42                   	inc    %edx
c000afd6:	44                   	inc    %esp
c000afd7:	78 40                	js     c000b019 <PKnFont+0x549>
c000afd9:	40                   	inc    %eax
c000afda:	40                   	inc    %eax
c000afdb:	40                   	inc    %eax
c000afdc:	40                   	inc    %eax
c000afdd:	f0 00 00             	lock add %al,(%eax)
c000afe0:	00 38                	add    %bh,(%eax)
c000afe2:	44                   	inc    %esp
c000afe3:	82                   	(bad)  
c000afe4:	82                   	(bad)  
c000afe5:	82                   	(bad)  
c000afe6:	82                   	(bad)  
c000afe7:	82                   	(bad)  
c000afe8:	82                   	(bad)  
c000afe9:	82                   	(bad)  
c000afea:	92                   	xchg   %eax,%edx
c000afeb:	8a 44 3a 00          	mov    0x0(%edx,%edi,1),%al
c000afef:	00 00                	add    %al,(%eax)
c000aff1:	fc                   	cld    
c000aff2:	42                   	inc    %edx
c000aff3:	42                   	inc    %edx
c000aff4:	42                   	inc    %edx
c000aff5:	42                   	inc    %edx
c000aff6:	7c 44                	jl     c000b03c <PKnFont+0x56c>
c000aff8:	42                   	inc    %edx
c000aff9:	42                   	inc    %edx
c000affa:	42                   	inc    %edx
c000affb:	42                   	inc    %edx
c000affc:	42                   	inc    %edx
c000affd:	e7 00                	out    %eax,$0x0
c000afff:	00 00                	add    %al,(%eax)
c000b001:	3a 46 82             	cmp    -0x7e(%esi),%al
c000b004:	82                   	(bad)  
c000b005:	80 40 38 04          	addb   $0x4,0x38(%eax)
c000b009:	02 82 82 c4 b8 00    	add    0xb8c482(%edx),%al
c000b00f:	00 00                	add    %al,(%eax)
c000b011:	fe                   	(bad)  
c000b012:	92                   	xchg   %eax,%edx
c000b013:	92                   	xchg   %eax,%edx
c000b014:	10 10                	adc    %dl,(%eax)
c000b016:	10 10                	adc    %dl,(%eax)
c000b018:	10 10                	adc    %dl,(%eax)
c000b01a:	10 10                	adc    %dl,(%eax)
c000b01c:	10 7c 00 00          	adc    %bh,0x0(%eax,%eax,1)
c000b020:	00 e7                	add    %ah,%bh
c000b022:	42                   	inc    %edx
c000b023:	42                   	inc    %edx
c000b024:	42                   	inc    %edx
c000b025:	42                   	inc    %edx
c000b026:	42                   	inc    %edx
c000b027:	42                   	inc    %edx
c000b028:	42                   	inc    %edx
c000b029:	42                   	inc    %edx
c000b02a:	42                   	inc    %edx
c000b02b:	42                   	inc    %edx
c000b02c:	24 3c                	and    $0x3c,%al
c000b02e:	00 00                	add    %al,(%eax)
c000b030:	00 e7                	add    %ah,%bh
c000b032:	42                   	inc    %edx
c000b033:	42                   	inc    %edx
c000b034:	42                   	inc    %edx
c000b035:	42                   	inc    %edx
c000b036:	24 24                	and    $0x24,%al
c000b038:	24 24                	and    $0x24,%al
c000b03a:	18 18                	sbb    %bl,(%eax)
c000b03c:	18 18                	sbb    %bl,(%eax)
c000b03e:	00 00                	add    %al,(%eax)
c000b040:	00 e7                	add    %ah,%bh
c000b042:	42                   	inc    %edx
c000b043:	42                   	inc    %edx
c000b044:	42                   	inc    %edx
c000b045:	5a                   	pop    %edx
c000b046:	5a                   	pop    %edx
c000b047:	5a                   	pop    %edx
c000b048:	5a                   	pop    %edx
c000b049:	24 24                	and    $0x24,%al
c000b04b:	24 24                	and    $0x24,%al
c000b04d:	24 00                	and    $0x0,%al
c000b04f:	00 00                	add    %al,(%eax)
c000b051:	e7 42                	out    %eax,$0x42
c000b053:	42                   	inc    %edx
c000b054:	24 24                	and    $0x24,%al
c000b056:	24 18                	and    $0x18,%al
c000b058:	24 24                	and    $0x24,%al
c000b05a:	24 42                	and    $0x42,%al
c000b05c:	42                   	inc    %edx
c000b05d:	e7 00                	out    %eax,$0x0
c000b05f:	00 00                	add    %al,(%eax)
c000b061:	ee                   	out    %al,(%dx)
c000b062:	44                   	inc    %esp
c000b063:	44                   	inc    %esp
c000b064:	44                   	inc    %esp
c000b065:	28 28                	sub    %ch,(%eax)
c000b067:	28 10                	sub    %dl,(%eax)
c000b069:	10 10                	adc    %dl,(%eax)
c000b06b:	10 10                	adc    %dl,(%eax)
c000b06d:	7c 00                	jl     c000b06f <PKnFont+0x59f>
c000b06f:	00 00                	add    %al,(%eax)
c000b071:	fe 84 84 08 08 10 10 	incb   0x10100808(%esp,%eax,4)
c000b078:	20 20                	and    %ah,(%eax)
c000b07a:	40                   	inc    %eax
c000b07b:	42                   	inc    %edx
c000b07c:	82                   	(bad)  
c000b07d:	fe 00                	incb   (%eax)
c000b07f:	00 00                	add    %al,(%eax)
c000b081:	3e 20 20             	and    %ah,%ds:(%eax)
c000b084:	20 20                	and    %ah,(%eax)
c000b086:	20 20                	and    %ah,(%eax)
c000b088:	20 20                	and    %ah,(%eax)
c000b08a:	20 20                	and    %ah,(%eax)
c000b08c:	20 20                	and    %ah,(%eax)
c000b08e:	3e 00 80 80 40 40 20 	add    %al,%ds:0x20404080(%eax)
c000b095:	20 20                	and    %ah,(%eax)
c000b097:	10 10                	adc    %dl,(%eax)
c000b099:	08 08                	or     %cl,(%eax)
c000b09b:	04 04                	add    $0x4,%al
c000b09d:	04 02                	add    $0x2,%al
c000b09f:	02 00                	add    (%eax),%al
c000b0a1:	7c 04                	jl     c000b0a7 <PKnFont+0x5d7>
c000b0a3:	04 04                	add    $0x4,%al
c000b0a5:	04 04                	add    $0x4,%al
c000b0a7:	04 04                	add    $0x4,%al
c000b0a9:	04 04                	add    $0x4,%al
c000b0ab:	04 04                	add    $0x4,%al
c000b0ad:	04 7c                	add    $0x7c,%al
c000b0af:	00 00                	add    %al,(%eax)
c000b0b1:	10 28                	adc    %ch,(%eax)
c000b0b3:	44                   	inc    %esp
c000b0b4:	82                   	(bad)  
	...
c000b0cd:	00 fe                	add    %bh,%dh
c000b0cf:	00 10                	add    %dl,(%eax)
c000b0d1:	08 04 00             	or     %al,(%eax,%eax,1)
	...
c000b0e4:	00 70 08             	add    %dh,0x8(%eax)
c000b0e7:	04 3c                	add    $0x3c,%al
c000b0e9:	44                   	inc    %esp
c000b0ea:	84 84 8c 76 00 00 c0 	test   %al,-0x3fffff8a(%esp,%ecx,4)
c000b0f1:	40                   	inc    %eax
c000b0f2:	40                   	inc    %eax
c000b0f3:	40                   	inc    %eax
c000b0f4:	40                   	inc    %eax
c000b0f5:	58                   	pop    %eax
c000b0f6:	64 42                	fs inc %edx
c000b0f8:	42                   	inc    %edx
c000b0f9:	42                   	inc    %edx
c000b0fa:	42                   	inc    %edx
c000b0fb:	42                   	inc    %edx
c000b0fc:	64 58                	fs pop %eax
c000b0fe:	00 00                	add    %al,(%eax)
c000b100:	00 00                	add    %al,(%eax)
c000b102:	00 00                	add    %al,(%eax)
c000b104:	00 30                	add    %dh,(%eax)
c000b106:	4c                   	dec    %esp
c000b107:	84 84 80 80 82 44 38 	test   %al,0x38448280(%eax,%eax,4)
c000b10e:	00 00                	add    %al,(%eax)
c000b110:	0c 04                	or     $0x4,%al
c000b112:	04 04                	add    $0x4,%al
c000b114:	04 34                	add    $0x34,%al
c000b116:	4c                   	dec    %esp
c000b117:	84 84 84 84 84 4c 36 	test   %al,0x364c8484(%esp,%eax,4)
c000b11e:	00 00                	add    %al,(%eax)
c000b120:	00 00                	add    %al,(%eax)
c000b122:	00 00                	add    %al,(%eax)
c000b124:	00 38                	add    %bh,(%eax)
c000b126:	44                   	inc    %esp
c000b127:	82                   	(bad)  
c000b128:	82                   	(bad)  
c000b129:	fc                   	cld    
c000b12a:	80 82 42 3c 00 00 0e 	addb   $0xe,0x3c42(%edx)
c000b131:	10 10                	adc    %dl,(%eax)
c000b133:	10 10                	adc    %dl,(%eax)
c000b135:	7c 10                	jl     c000b147 <PKnFont+0x677>
c000b137:	10 10                	adc    %dl,(%eax)
c000b139:	10 10                	adc    %dl,(%eax)
c000b13b:	10 10                	adc    %dl,(%eax)
c000b13d:	7c 00                	jl     c000b13f <PKnFont+0x66f>
c000b13f:	00 00                	add    %al,(%eax)
c000b141:	00 00                	add    %al,(%eax)
c000b143:	00 00                	add    %al,(%eax)
c000b145:	36 4c                	ss dec %esp
c000b147:	84 84 84 84 4c 34 04 	test   %al,0x4344c84(%esp,%eax,4)
c000b14e:	04 38                	add    $0x38,%al
c000b150:	c0 40 40 40          	rolb   $0x40,0x40(%eax)
c000b154:	40                   	inc    %eax
c000b155:	58                   	pop    %eax
c000b156:	64 42                	fs inc %edx
c000b158:	42                   	inc    %edx
c000b159:	42                   	inc    %edx
c000b15a:	42                   	inc    %edx
c000b15b:	42                   	inc    %edx
c000b15c:	42                   	inc    %edx
c000b15d:	e3 00                	jecxz  c000b15f <PKnFont+0x68f>
c000b15f:	00 00                	add    %al,(%eax)
c000b161:	10 10                	adc    %dl,(%eax)
c000b163:	00 00                	add    %al,(%eax)
c000b165:	30 10                	xor    %dl,(%eax)
c000b167:	10 10                	adc    %dl,(%eax)
c000b169:	10 10                	adc    %dl,(%eax)
c000b16b:	10 10                	adc    %dl,(%eax)
c000b16d:	38 00                	cmp    %al,(%eax)
c000b16f:	00 00                	add    %al,(%eax)
c000b171:	04 04                	add    $0x4,%al
c000b173:	00 00                	add    %al,(%eax)
c000b175:	0c 04                	or     $0x4,%al
c000b177:	04 04                	add    $0x4,%al
c000b179:	04 04                	add    $0x4,%al
c000b17b:	04 04                	add    $0x4,%al
c000b17d:	08 08                	or     %cl,(%eax)
c000b17f:	30 c0                	xor    %al,%al
c000b181:	40                   	inc    %eax
c000b182:	40                   	inc    %eax
c000b183:	40                   	inc    %eax
c000b184:	40                   	inc    %eax
c000b185:	4e                   	dec    %esi
c000b186:	44                   	inc    %esp
c000b187:	48                   	dec    %eax
c000b188:	50                   	push   %eax
c000b189:	60                   	pusha  
c000b18a:	50                   	push   %eax
c000b18b:	48                   	dec    %eax
c000b18c:	44                   	inc    %esp
c000b18d:	e6 00                	out    %al,$0x0
c000b18f:	00 30                	add    %dh,(%eax)
c000b191:	10 10                	adc    %dl,(%eax)
c000b193:	10 10                	adc    %dl,(%eax)
c000b195:	10 10                	adc    %dl,(%eax)
c000b197:	10 10                	adc    %dl,(%eax)
c000b199:	10 10                	adc    %dl,(%eax)
c000b19b:	10 10                	adc    %dl,(%eax)
c000b19d:	38 00                	cmp    %al,(%eax)
c000b19f:	00 00                	add    %al,(%eax)
c000b1a1:	00 00                	add    %al,(%eax)
c000b1a3:	00 00                	add    %al,(%eax)
c000b1a5:	f6                   	(bad)  
c000b1a6:	49                   	dec    %ecx
c000b1a7:	49                   	dec    %ecx
c000b1a8:	49                   	dec    %ecx
c000b1a9:	49                   	dec    %ecx
c000b1aa:	49                   	dec    %ecx
c000b1ab:	49                   	dec    %ecx
c000b1ac:	49                   	dec    %ecx
c000b1ad:	db 00                	fildl  (%eax)
c000b1af:	00 00                	add    %al,(%eax)
c000b1b1:	00 00                	add    %al,(%eax)
c000b1b3:	00 00                	add    %al,(%eax)
c000b1b5:	d8 64 42 42          	fsubs  0x42(%edx,%eax,2)
c000b1b9:	42                   	inc    %edx
c000b1ba:	42                   	inc    %edx
c000b1bb:	42                   	inc    %edx
c000b1bc:	42                   	inc    %edx
c000b1bd:	e3 00                	jecxz  c000b1bf <PKnFont+0x6ef>
c000b1bf:	00 00                	add    %al,(%eax)
c000b1c1:	00 00                	add    %al,(%eax)
c000b1c3:	00 00                	add    %al,(%eax)
c000b1c5:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c000b1c9:	82                   	(bad)  
c000b1ca:	82                   	(bad)  
c000b1cb:	82                   	(bad)  
c000b1cc:	44                   	inc    %esp
c000b1cd:	38 00                	cmp    %al,(%eax)
c000b1cf:	00 00                	add    %al,(%eax)
c000b1d1:	00 00                	add    %al,(%eax)
c000b1d3:	00 d8                	add    %bl,%al
c000b1d5:	64 42                	fs inc %edx
c000b1d7:	42                   	inc    %edx
c000b1d8:	42                   	inc    %edx
c000b1d9:	42                   	inc    %edx
c000b1da:	42                   	inc    %edx
c000b1db:	64 58                	fs pop %eax
c000b1dd:	40                   	inc    %eax
c000b1de:	40                   	inc    %eax
c000b1df:	e0 00                	loopne c000b1e1 <PKnFont+0x711>
c000b1e1:	00 00                	add    %al,(%eax)
c000b1e3:	00 34 4c             	add    %dh,(%esp,%ecx,2)
c000b1e6:	84 84 84 84 84 4c 34 	test   %al,0x344c8484(%esp,%eax,4)
c000b1ed:	04 04                	add    $0x4,%al
c000b1ef:	0e                   	push   %cs
c000b1f0:	00 00                	add    %al,(%eax)
c000b1f2:	00 00                	add    %al,(%eax)
c000b1f4:	00 dc                	add    %bl,%ah
c000b1f6:	62 42 40             	bound  %eax,0x40(%edx)
c000b1f9:	40                   	inc    %eax
c000b1fa:	40                   	inc    %eax
c000b1fb:	40                   	inc    %eax
c000b1fc:	40                   	inc    %eax
c000b1fd:	e0 00                	loopne c000b1ff <PKnFont+0x72f>
c000b1ff:	00 00                	add    %al,(%eax)
c000b201:	00 00                	add    %al,(%eax)
c000b203:	00 00                	add    %al,(%eax)
c000b205:	7a 86                	jp     c000b18d <PKnFont+0x6bd>
c000b207:	82                   	(bad)  
c000b208:	c0 38 06             	sarb   $0x6,(%eax)
c000b20b:	82                   	(bad)  
c000b20c:	c2 bc 00             	ret    $0xbc
c000b20f:	00 00                	add    %al,(%eax)
c000b211:	00 10                	add    %dl,(%eax)
c000b213:	10 10                	adc    %dl,(%eax)
c000b215:	7c 10                	jl     c000b227 <PKnFont+0x757>
c000b217:	10 10                	adc    %dl,(%eax)
c000b219:	10 10                	adc    %dl,(%eax)
c000b21b:	10 10                	adc    %dl,(%eax)
c000b21d:	0e                   	push   %cs
c000b21e:	00 00                	add    %al,(%eax)
c000b220:	00 00                	add    %al,(%eax)
c000b222:	00 00                	add    %al,(%eax)
c000b224:	00 c6                	add    %al,%dh
c000b226:	42                   	inc    %edx
c000b227:	42                   	inc    %edx
c000b228:	42                   	inc    %edx
c000b229:	42                   	inc    %edx
c000b22a:	42                   	inc    %edx
c000b22b:	42                   	inc    %edx
c000b22c:	46                   	inc    %esi
c000b22d:	3b 00                	cmp    (%eax),%eax
c000b22f:	00 00                	add    %al,(%eax)
c000b231:	00 00                	add    %al,(%eax)
c000b233:	00 00                	add    %al,(%eax)
c000b235:	e7 42                	out    %eax,$0x42
c000b237:	42                   	inc    %edx
c000b238:	42                   	inc    %edx
c000b239:	24 24                	and    $0x24,%al
c000b23b:	24 18                	and    $0x18,%al
c000b23d:	18 00                	sbb    %al,(%eax)
c000b23f:	00 00                	add    %al,(%eax)
c000b241:	00 00                	add    %al,(%eax)
c000b243:	00 00                	add    %al,(%eax)
c000b245:	e7 42                	out    %eax,$0x42
c000b247:	42                   	inc    %edx
c000b248:	5a                   	pop    %edx
c000b249:	5a                   	pop    %edx
c000b24a:	5a                   	pop    %edx
c000b24b:	24 24                	and    $0x24,%al
c000b24d:	24 00                	and    $0x0,%al
c000b24f:	00 00                	add    %al,(%eax)
c000b251:	00 00                	add    %al,(%eax)
c000b253:	00 00                	add    %al,(%eax)
c000b255:	c6 44 28 28 10       	movb   $0x10,0x28(%eax,%ebp,1)
c000b25a:	28 28                	sub    %ch,(%eax)
c000b25c:	44                   	inc    %esp
c000b25d:	c6 00 00             	movb   $0x0,(%eax)
c000b260:	00 00                	add    %al,(%eax)
c000b262:	00 00                	add    %al,(%eax)
c000b264:	00 e7                	add    %ah,%bh
c000b266:	42                   	inc    %edx
c000b267:	42                   	inc    %edx
c000b268:	24 24                	and    $0x24,%al
c000b26a:	24 18                	and    $0x18,%al
c000b26c:	18 10                	sbb    %dl,(%eax)
c000b26e:	10 60 00             	adc    %ah,0x0(%eax)
c000b271:	00 00                	add    %al,(%eax)
c000b273:	00 00                	add    %al,(%eax)
c000b275:	fe 82 84 08 10 20    	incb   0x20100884(%edx)
c000b27b:	42                   	inc    %edx
c000b27c:	82                   	(bad)  
c000b27d:	fe 00                	incb   (%eax)
c000b27f:	00 00                	add    %al,(%eax)
c000b281:	06                   	push   %es
c000b282:	08 10                	or     %dl,(%eax)
c000b284:	10 10                	adc    %dl,(%eax)
c000b286:	10 60 10             	adc    %ah,0x10(%eax)
c000b289:	10 10                	adc    %dl,(%eax)
c000b28b:	10 08                	adc    %cl,(%eax)
c000b28d:	06                   	push   %es
c000b28e:	00 00                	add    %al,(%eax)
c000b290:	10 10                	adc    %dl,(%eax)
c000b292:	10 10                	adc    %dl,(%eax)
c000b294:	10 10                	adc    %dl,(%eax)
c000b296:	10 10                	adc    %dl,(%eax)
c000b298:	10 10                	adc    %dl,(%eax)
c000b29a:	10 10                	adc    %dl,(%eax)
c000b29c:	10 10                	adc    %dl,(%eax)
c000b29e:	10 10                	adc    %dl,(%eax)
c000b2a0:	00 60 10             	add    %ah,0x10(%eax)
c000b2a3:	08 08                	or     %cl,(%eax)
c000b2a5:	08 08                	or     %cl,(%eax)
c000b2a7:	06                   	push   %es
c000b2a8:	08 08                	or     %cl,(%eax)
c000b2aa:	08 08                	or     %cl,(%eax)
c000b2ac:	10 60 00             	adc    %ah,0x0(%eax)
c000b2af:	00 00                	add    %al,(%eax)
c000b2b1:	72 8c                	jb     c000b23f <PKnFont+0x76f>
	...

c000bad0 <intr_entry_table>:
c000bad0:	10 8b 00 c0 42 8b    	adc    %cl,-0x74bd4000(%ebx)
c000bad6:	00 c0                	add    %al,%al
c000bad8:	74 8b                	je     c000ba65 <PKnFont+0xf95>
c000bada:	00 c0                	add    %al,%al
c000badc:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
c000badd:	8b 00                	mov    (%eax),%eax
c000badf:	c0 d8 8b             	rcr    $0x8b,%al
c000bae2:	00 c0                	add    %al,%al
c000bae4:	0a 8c 00 c0 3c 8c 00 	or     0x8c3cc0(%eax,%eax,1),%cl
c000baeb:	c0 6e 8c 00          	shrb   $0x0,-0x74(%esi)
c000baef:	c0 a0 8c 00 c0 ce 8c 	shlb   $0x8c,-0x313fff74(%eax)
c000baf6:	00 c0                	add    %al,%al
c000baf8:	00 8d 00 c0 2e 8d    	add    %cl,-0x72d14000(%ebp)
c000bafe:	00 c0                	add    %al,%al
c000bb00:	5c                   	pop    %esp
c000bb01:	8d 00                	lea    (%eax),%eax
c000bb03:	c0 8e 8d 00 c0 bc 8d 	rorb   $0x8d,-0x433fff73(%esi)
c000bb0a:	00 c0                	add    %al,%al
c000bb0c:	ea 8d 00 c0 1c 8e 00 	ljmp   $0x8e,$0x1cc0008d
c000bb13:	c0 4e 8e 00          	rorb   $0x0,-0x72(%esi)
c000bb17:	c0 7c 8e 00 c0       	sarb   $0xc0,0x0(%esi,%ecx,4)
c000bb1c:	ae                   	scas   %es:(%edi),%al
c000bb1d:	8e 00                	mov    (%eax),%es
c000bb1f:	c0 e0 8e             	shl    $0x8e,%al
c000bb22:	00 c0                	add    %al,%al
c000bb24:	12 8f 00 c0 44 8f    	adc    -0x70bb4000(%edi),%cl
c000bb2a:	00 c0                	add    %al,%al
c000bb2c:	76 8f                	jbe    c000babd <PKnFont+0xfed>
c000bb2e:	00 c0                	add    %al,%al
c000bb30:	a8 8f                	test   $0x8f,%al
c000bb32:	00 c0                	add    %al,%al
c000bb34:	d6                   	(bad)  
c000bb35:	8f 00                	popl   (%eax)
c000bb37:	c0 08 90             	rorb   $0x90,(%eax)
c000bb3a:	00 c0                	add    %al,%al
c000bb3c:	36 90                	ss nop
c000bb3e:	00 c0                	add    %al,%al
c000bb40:	64 90                	fs nop
c000bb42:	00 c0                	add    %al,%al
c000bb44:	96                   	xchg   %eax,%esi
c000bb45:	90                   	nop
c000bb46:	00 c0                	add    %al,%al
c000bb48:	c4 90 00 c0 f2 90    	les    -0x6f0d4000(%eax),%edx
c000bb4e:	00 c0                	add    %al,%al
c000bb50:	24 91                	and    $0x91,%al
c000bb52:	00 c0                	add    %al,%al
c000bb54:	56                   	push   %esi
c000bb55:	91                   	xchg   %eax,%ecx
c000bb56:	00 c0                	add    %al,%al
c000bb58:	88 91 00 c0 ba 91    	mov    %dl,-0x6e454000(%ecx)
c000bb5e:	00 c0                	add    %al,%al
c000bb60:	ec                   	in     (%dx),%al
c000bb61:	91                   	xchg   %eax,%ecx
c000bb62:	00 c0                	add    %al,%al
c000bb64:	1e                   	push   %ds
c000bb65:	92                   	xchg   %eax,%edx
c000bb66:	00 c0                	add    %al,%al
c000bb68:	50                   	push   %eax
c000bb69:	92                   	xchg   %eax,%edx
c000bb6a:	00 c0                	add    %al,%al
c000bb6c:	82                   	(bad)  
c000bb6d:	92                   	xchg   %eax,%edx
c000bb6e:	00 c0                	add    %al,%al
c000bb70:	b4 92                	mov    $0x92,%ah
c000bb72:	00 c0                	add    %al,%al
c000bb74:	e6 92                	out    %al,$0x92
c000bb76:	00 c0                	add    %al,%al
c000bb78:	18 93 00 c0 4a 93    	sbb    %dl,-0x6cb54000(%ebx)
c000bb7e:	00 c0                	add    %al,%al
c000bb80:	7c 93                	jl     c000bb15 <intr_entry_table+0x45>
c000bb82:	00 c0                	add    %al,%al
c000bb84:	ae                   	scas   %es:(%edi),%al
c000bb85:	93                   	xchg   %eax,%ebx
c000bb86:	00 c0                	add    %al,%al
c000bb88:	e0 93                	loopne c000bb1d <intr_entry_table+0x4d>
c000bb8a:	00 c0                	add    %al,%al
c000bb8c:	12                   	.byte 0x12
c000bb8d:	94                   	xchg   %eax,%esp
c000bb8e:	00 c0                	add    %al,%al

Disassembly of section .eh_frame:

c000bb90 <.eh_frame>:
c000bb90:	10 00                	adc    %al,(%eax)
c000bb92:	00 00                	add    %al,(%eax)
c000bb94:	00 00                	add    %al,(%eax)
c000bb96:	00 00                	add    %al,(%eax)
c000bb98:	01 00                	add    %eax,(%eax)
c000bb9a:	01 7c 08 0c          	add    %edi,0xc(%eax,%ecx,1)
c000bb9e:	04 04                	add    $0x4,%al
c000bba0:	88 01                	mov    %al,(%ecx)
c000bba2:	00 00                	add    %al,(%eax)
c000bba4:	2c 01                	sub    $0x1,%al
c000bba6:	00 00                	add    %al,(%eax)
c000bba8:	18 00                	sbb    %al,(%eax)
c000bbaa:	00 00                	add    %al,(%eax)
c000bbac:	24 7f                	and    $0x7f,%al
c000bbae:	00 c0                	add    %al,%al
c000bbb0:	6a 01                	push   $0x1
c000bbb2:	00 00                	add    %al,(%eax)
c000bbb4:	41                   	inc    %ecx
c000bbb5:	0e                   	push   %cs
c000bbb6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bbbc:	41                   	inc    %ecx
c000bbbd:	83 03 47             	addl   $0x47,(%ebx)
c000bbc0:	2e 04 04             	cs add $0x4,%al
c000bbc3:	01 00                	add    %eax,(%eax)
c000bbc5:	00 00                	add    %al,(%eax)
c000bbc7:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bbcb:	0c 42                	or     $0x42,%al
c000bbcd:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bbd1:	00 46 2e             	add    %al,0x2e(%esi)
c000bbd4:	0c 42                	or     $0x42,%al
c000bbd6:	2e 10 50 2e          	adc    %dl,%cs:0x2e(%eax)
c000bbda:	0c 41                	or     $0x41,%al
c000bbdc:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bbe0:	0c 42                	or     $0x42,%al
c000bbe2:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bbe6:	0c 41                	or     $0x41,%al
c000bbe8:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bbec:	0c 42                	or     $0x42,%al
c000bbee:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bbf2:	0c 41                	or     $0x41,%al
c000bbf4:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bbf8:	0c 42                	or     $0x42,%al
c000bbfa:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000bbfe:	0c 41                	or     $0x41,%al
c000bc00:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bc04:	0c 42                	or     $0x42,%al
c000bc06:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc0a:	0c 41                	or     $0x41,%al
c000bc0c:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc10:	0c 42                	or     $0x42,%al
c000bc12:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bc16:	04 04                	add    $0x4,%al
c000bc18:	02 00                	add    (%eax),%al
c000bc1a:	00 00                	add    %al,(%eax)
c000bc1c:	2e 08 49 2e          	or     %cl,%cs:0x2e(%ecx)
c000bc20:	0c 42                	or     $0x42,%al
c000bc22:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc26:	0c 41                	or     $0x41,%al
c000bc28:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc2c:	0c 42                	or     $0x42,%al
c000bc2e:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bc32:	04 04                	add    $0x4,%al
c000bc34:	02 00                	add    (%eax),%al
c000bc36:	00 00                	add    %al,(%eax)
c000bc38:	2e 08 49 2e          	or     %cl,%cs:0x2e(%ecx)
c000bc3c:	0c 42                	or     $0x42,%al
c000bc3e:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc42:	0c 41                	or     $0x41,%al
c000bc44:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc48:	0c 42                	or     $0x42,%al
c000bc4a:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc4e:	0c 41                	or     $0x41,%al
c000bc50:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bc54:	0c 42                	or     $0x42,%al
c000bc56:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc5a:	0c 41                	or     $0x41,%al
c000bc5c:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc60:	0c 42                	or     $0x42,%al
c000bc62:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bc66:	04 04                	add    $0x4,%al
c000bc68:	02 00                	add    (%eax),%al
c000bc6a:	00 00                	add    %al,(%eax)
c000bc6c:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000bc70:	0c 42                	or     $0x42,%al
c000bc72:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc76:	0c 41                	or     $0x41,%al
c000bc78:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bc7c:	0c 42                	or     $0x42,%al
c000bc7e:	2e 10 51 2e          	adc    %dl,%cs:0x2e(%ecx)
c000bc82:	14 42                	adc    $0x42,%al
c000bc84:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000bc88:	1c 45                	sbb    $0x45,%al
c000bc8a:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000bc8e:	0c 45                	or     $0x45,%al
c000bc90:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000bc94:	14 42                	adc    $0x42,%al
c000bc96:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000bc9a:	1c 45                	sbb    $0x45,%al
c000bc9c:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000bca0:	08 45 2e             	or     %al,0x2e(%ebp)
c000bca3:	0c 42                	or     $0x42,%al
c000bca5:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bca9:	0c 41                	or     $0x41,%al
c000bcab:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bcaf:	0c 42                	or     $0x42,%al
c000bcb1:	2e 10 4d 2e          	adc    %cl,%cs:0x2e(%ebp)
c000bcb5:	04 04                	add    $0x4,%al
c000bcb7:	02 00                	add    (%eax),%al
c000bcb9:	00 00                	add    %al,(%eax)
c000bcbb:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bcbf:	0c 42                	or     $0x42,%al
c000bcc1:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bcc5:	0c 41                	or     $0x41,%al
c000bcc7:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bccb:	0c 42                	or     $0x42,%al
c000bccd:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bcd1:	00 00                	add    %al,(%eax)
c000bcd3:	00 64 01 00          	add    %ah,0x0(%ecx,%eax,1)
c000bcd7:	00 48 01             	add    %cl,0x1(%eax)
c000bcda:	00 00                	add    %al,(%eax)
c000bcdc:	8e 80 00 c0 40 02    	mov    0x240c000(%eax),%es
c000bce2:	00 00                	add    %al,(%eax)
c000bce4:	41                   	inc    %ecx
c000bce5:	0e                   	push   %cs
c000bce6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bcec:	46                   	inc    %esi
c000bced:	2e 0c 83             	cs or  $0x83,%al
c000bcf0:	05 86 04 87 03       	add    $0x3870486,%eax
c000bcf5:	5b                   	pop    %ebx
c000bcf6:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bcfa:	00 4f 2e             	add    %cl,0x2e(%edi)
c000bcfd:	04 04                	add    $0x4,%al
c000bcff:	07                   	pop    %es
c000bd00:	00 00                	add    %al,(%eax)
c000bd02:	00 2e                	add    %ch,(%esi)
c000bd04:	08 47 2e             	or     %al,0x2e(%edi)
c000bd07:	0c 49                	or     $0x49,%al
c000bd09:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000bd0d:	14 41                	adc    $0x41,%al
c000bd0f:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000bd13:	1c 45                	sbb    $0x45,%al
c000bd15:	2e 20 4e 2e          	and    %cl,%cs:0x2e(%esi)
c000bd19:	08 4c 2e 0c          	or     %cl,0xc(%esi,%ebp,1)
c000bd1d:	49                   	dec    %ecx
c000bd1e:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000bd22:	14 41                	adc    $0x41,%al
c000bd24:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000bd28:	1c 45                	sbb    $0x45,%al
c000bd2a:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000bd2e:	04 04                	add    $0x4,%al
c000bd30:	02 00                	add    (%eax),%al
c000bd32:	00 00                	add    %al,(%eax)
c000bd34:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bd38:	0c 41                	or     $0x41,%al
c000bd3a:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000bd3e:	14 41                	adc    $0x41,%al
c000bd40:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000bd44:	1c 45                	sbb    $0x45,%al
c000bd46:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000bd4a:	0c 42                	or     $0x42,%al
c000bd4c:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000bd50:	14 41                	adc    $0x41,%al
c000bd52:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000bd56:	1c 45                	sbb    $0x45,%al
c000bd58:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000bd5c:	04 04                	add    $0x4,%al
c000bd5e:	02 00                	add    (%eax),%al
c000bd60:	00 00                	add    %al,(%eax)
c000bd62:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bd66:	0c 41                	or     $0x41,%al
c000bd68:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000bd6c:	14 41                	adc    $0x41,%al
c000bd6e:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000bd72:	1c 45                	sbb    $0x45,%al
c000bd74:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000bd78:	0c 42                	or     $0x42,%al
c000bd7a:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000bd7e:	14 41                	adc    $0x41,%al
c000bd80:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000bd84:	1c 45                	sbb    $0x45,%al
c000bd86:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000bd8a:	04 04                	add    $0x4,%al
c000bd8c:	02 00                	add    (%eax),%al
c000bd8e:	00 00                	add    %al,(%eax)
c000bd90:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bd94:	0c 41                	or     $0x41,%al
c000bd96:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000bd9a:	14 41                	adc    $0x41,%al
c000bd9c:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000bda0:	1c 45                	sbb    $0x45,%al
c000bda2:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000bda6:	0c 42                	or     $0x42,%al
c000bda8:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000bdac:	14 41                	adc    $0x41,%al
c000bdae:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000bdb2:	1c 45                	sbb    $0x45,%al
c000bdb4:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000bdb8:	04 04                	add    $0x4,%al
c000bdba:	02 00                	add    (%eax),%al
c000bdbc:	00 00                	add    %al,(%eax)
c000bdbe:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bdc2:	0c 41                	or     $0x41,%al
c000bdc4:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000bdc8:	14 41                	adc    $0x41,%al
c000bdca:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000bdce:	1c 45                	sbb    $0x45,%al
c000bdd0:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000bdd4:	0c 42                	or     $0x42,%al
c000bdd6:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000bdda:	14 41                	adc    $0x41,%al
c000bddc:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000bde0:	1c 45                	sbb    $0x45,%al
c000bde2:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000bde6:	04 04                	add    $0x4,%al
c000bde8:	02 00                	add    (%eax),%al
c000bdea:	00 00                	add    %al,(%eax)
c000bdec:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bdf0:	0c 41                	or     $0x41,%al
c000bdf2:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000bdf6:	14 41                	adc    $0x41,%al
c000bdf8:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000bdfc:	1c 45                	sbb    $0x45,%al
c000bdfe:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000be02:	0c 42                	or     $0x42,%al
c000be04:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000be08:	14 41                	adc    $0x41,%al
c000be0a:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000be0e:	1c 45                	sbb    $0x45,%al
c000be10:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000be14:	04 04                	add    $0x4,%al
c000be16:	02 00                	add    (%eax),%al
c000be18:	00 00                	add    %al,(%eax)
c000be1a:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000be1e:	0c 41                	or     $0x41,%al
c000be20:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000be24:	14 41                	adc    $0x41,%al
c000be26:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000be2a:	1c 45                	sbb    $0x45,%al
c000be2c:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000be30:	00 45 2e             	add    %al,0x2e(%ebp)
c000be33:	0c 45                	or     $0x45,%al
c000be35:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000be39:	00 00                	add    %al,(%eax)
c000be3b:	00 14 00             	add    %dl,(%eax,%eax,1)
c000be3e:	00 00                	add    %al,(%eax)
c000be40:	b0 02                	mov    $0x2,%al
c000be42:	00 00                	add    %al,(%eax)
c000be44:	ce                   	into   
c000be45:	82                   	(bad)  
c000be46:	00 c0                	add    %al,%al
c000be48:	05 00 00 00 41       	add    $0x41000000,%eax
c000be4d:	0e                   	push   %cs
c000be4e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000be54:	2c 00                	sub    $0x0,%al
c000be56:	00 00                	add    %al,(%eax)
c000be58:	c8 02 00 00          	enter  $0x2,$0x0
c000be5c:	d4 82                	aam    $0x82
c000be5e:	00 c0                	add    %al,%al
c000be60:	1a 00                	sbb    (%eax),%al
c000be62:	00 00                	add    %al,(%eax)
c000be64:	41                   	inc    %ecx
c000be65:	0e                   	push   %cs
c000be66:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000be6c:	43                   	inc    %ebx
c000be6d:	2e 04 04             	cs add $0x4,%al
c000be70:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000be75:	08 42 2e             	or     %al,0x2e(%edx)
c000be78:	0c 43                	or     $0x43,%al
c000be7a:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000be7e:	00 41 c5             	add    %al,-0x3b(%ecx)
c000be81:	0c 04                	or     $0x4,%al
c000be83:	04 1c                	add    $0x1c,%al
c000be85:	00 00                	add    %al,(%eax)
c000be87:	00 f8                	add    %bh,%al
c000be89:	02 00                	add    (%eax),%al
c000be8b:	00 ee                	add    %ch,%dh
c000be8d:	82                   	(bad)  
c000be8e:	00 c0                	add    %al,%al
c000be90:	23 00                	and    (%eax),%eax
c000be92:	00 00                	add    %al,(%eax)
c000be94:	41                   	inc    %ecx
c000be95:	0e                   	push   %cs
c000be96:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000be9c:	47                   	inc    %edi
c000be9d:	0c 04                	or     $0x4,%al
c000be9f:	04 c5                	add    $0xc5,%al
c000bea1:	00 00                	add    %al,(%eax)
c000bea3:	00 50 00             	add    %dl,0x0(%eax)
c000bea6:	00 00                	add    %al,(%eax)
c000bea8:	18 03                	sbb    %al,(%ebx)
c000beaa:	00 00                	add    %al,(%eax)
c000beac:	11 83 00 c0 be 00    	adc    %eax,0xbec000(%ebx)
c000beb2:	00 00                	add    %al,(%eax)
c000beb4:	41                   	inc    %ecx
c000beb5:	0e                   	push   %cs
c000beb6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bebc:	42                   	inc    %edx
c000bebd:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000bec0:	03 46 83             	add    -0x7d(%esi),%eax
c000bec3:	05 5c 2e 04 04       	add    $0x4042e5c,%eax
c000bec8:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000becd:	08 42 2e             	or     %al,0x2e(%edx)
c000bed0:	0c 45                	or     $0x45,%al
c000bed2:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bed6:	00 02                	add    %al,(%edx)
c000bed8:	4e                   	dec    %esi
c000bed9:	2e 04 04             	cs add $0x4,%al
c000bedc:	02 00                	add    (%eax),%al
c000bede:	00 00                	add    %al,(%eax)
c000bee0:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bee4:	0c 41                	or     $0x41,%al
c000bee6:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000beea:	00 62 c3             	add    %ah,-0x3d(%edx)
c000beed:	41                   	inc    %ecx
c000beee:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bef2:	0c 04                	or     $0x4,%al
c000bef4:	04 c5                	add    $0xc5,%al
c000bef6:	00 00                	add    %al,(%eax)
c000bef8:	3c 00                	cmp    $0x0,%al
c000befa:	00 00                	add    %al,(%eax)
c000befc:	6c                   	insb   (%dx),%es:(%edi)
c000befd:	03 00                	add    (%eax),%eax
c000beff:	00 cf                	add    %cl,%bh
c000bf01:	83 00 c0             	addl   $0xffffffc0,(%eax)
c000bf04:	68 00 00 00 41       	push   $0x41000000
c000bf09:	0e                   	push   %cs
c000bf0a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bf10:	46                   	inc    %esi
c000bf11:	83 05 86 04 87 03 53 	addl   $0x53,0x3870486
c000bf18:	2e 04 04             	cs add $0x4,%al
c000bf1b:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000bf20:	08 42 2e             	or     %al,0x2e(%edx)
c000bf23:	0c 45                	or     $0x45,%al
c000bf25:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bf29:	00 74 c3 41          	add    %dh,0x41(%ebx,%eax,8)
c000bf2d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bf31:	0c 04                	or     $0x4,%al
c000bf33:	04 c5                	add    $0xc5,%al
c000bf35:	00 00                	add    %al,(%eax)
c000bf37:	00 24 00             	add    %ah,(%eax,%eax,1)
c000bf3a:	00 00                	add    %al,(%eax)
c000bf3c:	ac                   	lods   %ds:(%esi),%al
c000bf3d:	03 00                	add    (%eax),%eax
c000bf3f:	00 38                	add    %bh,(%eax)
c000bf41:	84 00                	test   %al,(%eax)
c000bf43:	c0 15 00 00 00 41 0e 	rclb   $0xe,0x41000000
c000bf4a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bf50:	43                   	inc    %ebx
c000bf51:	2e 0c 45             	cs or  $0x45,%al
c000bf54:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bf58:	00 41 c5             	add    %al,-0x3b(%ecx)
c000bf5b:	0c 04                	or     $0x4,%al
c000bf5d:	04 00                	add    $0x0,%al
c000bf5f:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000bf62:	00 00                	add    %al,(%eax)
c000bf64:	d4 03                	aam    $0x3
c000bf66:	00 00                	add    %al,(%eax)
c000bf68:	4d                   	dec    %ebp
c000bf69:	84 00                	test   %al,(%eax)
c000bf6b:	c0 3e 00             	sarb   $0x0,(%esi)
c000bf6e:	00 00                	add    %al,(%eax)
c000bf70:	41                   	inc    %ecx
c000bf71:	0e                   	push   %cs
c000bf72:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bf78:	41                   	inc    %ecx
c000bf79:	86 03                	xchg   %al,(%ebx)
c000bf7b:	44                   	inc    %esp
c000bf7c:	83 04 04 06          	addl   $0x6,(%esp,%eax,1)
c000bf80:	00 00                	add    %al,(%eax)
c000bf82:	00 2e                	add    %ch,(%esi)
c000bf84:	0c 45                	or     $0x45,%al
c000bf86:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bf8a:	0c 41                	or     $0x41,%al
c000bf8c:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000bf90:	0c 44                	or     $0x44,%al
c000bf92:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bf96:	00 4b c3             	add    %cl,-0x3d(%ebx)
c000bf99:	41                   	inc    %ecx
c000bf9a:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000bf9e:	04 c5                	add    $0xc5,%al
c000bfa0:	3c 00                	cmp    $0x0,%al
c000bfa2:	00 00                	add    %al,(%eax)
c000bfa4:	14 04                	adc    $0x4,%al
c000bfa6:	00 00                	add    %al,(%eax)
c000bfa8:	8b 84 00 c0 39 00 00 	mov    0x39c0(%eax,%eax,1),%eax
c000bfaf:	00 41 0e             	add    %al,0xe(%ecx)
c000bfb2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bfb8:	41                   	inc    %ecx
c000bfb9:	86 03                	xchg   %al,(%ebx)
c000bfbb:	44                   	inc    %esp
c000bfbc:	83 04 04 06          	addl   $0x6,(%esp,%eax,1)
c000bfc0:	00 00                	add    %al,(%eax)
c000bfc2:	00 2e                	add    %ch,(%esi)
c000bfc4:	0c 45                	or     $0x45,%al
c000bfc6:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bfca:	0c 41                	or     $0x41,%al
c000bfcc:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000bfd1:	41                   	inc    %ecx
c000bfd2:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bfd6:	00 4b c3             	add    %cl,-0x3d(%ebx)
c000bfd9:	41                   	inc    %ecx
c000bfda:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000bfde:	04 c5                	add    $0xc5,%al
c000bfe0:	40                   	inc    %eax
c000bfe1:	00 00                	add    %al,(%eax)
c000bfe3:	00 54 04 00          	add    %dl,0x0(%esp,%eax,1)
c000bfe7:	00 c4                	add    %al,%ah
c000bfe9:	84 00                	test   %al,(%eax)
c000bfeb:	c0 40 00 00          	rolb   $0x0,0x0(%eax)
c000bfef:	00 41 0e             	add    %al,0xe(%ecx)
c000bff2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bff8:	46                   	inc    %esi
c000bff9:	2e 0c 83             	cs or  $0x83,%al
c000bffc:	05 86 04 87 03       	add    $0x3870486,%eax
c000c001:	4e                   	dec    %esi
c000c002:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c006:	04 04                	add    $0x4,%al
c000c008:	01 00                	add    %eax,(%eax)
c000c00a:	00 00                	add    %al,(%eax)
c000c00c:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c010:	0c 44                	or     $0x44,%al
c000c012:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c016:	00 4b c3             	add    %cl,-0x3d(%ebx)
c000c019:	41                   	inc    %ecx
c000c01a:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c01e:	0c 04                	or     $0x4,%al
c000c020:	04 c5                	add    $0xc5,%al
c000c022:	00 00                	add    %al,(%eax)
c000c024:	40                   	inc    %eax
c000c025:	00 00                	add    %al,(%eax)
c000c027:	00 98 04 00 00 04    	add    %bl,0x4000004(%eax)
c000c02d:	85 00                	test   %eax,(%eax)
c000c02f:	c0 40 00 00          	rolb   $0x0,0x0(%eax)
c000c033:	00 41 0e             	add    %al,0xe(%ecx)
c000c036:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c03c:	46                   	inc    %esi
c000c03d:	2e 0c 83             	cs or  $0x83,%al
c000c040:	05 86 04 87 03       	add    $0x3870486,%eax
c000c045:	4e                   	dec    %esi
c000c046:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c04a:	04 04                	add    $0x4,%al
c000c04c:	01 00                	add    %eax,(%eax)
c000c04e:	00 00                	add    %al,(%eax)
c000c050:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c054:	0c 44                	or     $0x44,%al
c000c056:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c05a:	00 4b c3             	add    %cl,-0x3d(%ebx)
c000c05d:	41                   	inc    %ecx
c000c05e:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c062:	0c 04                	or     $0x4,%al
c000c064:	04 c5                	add    $0xc5,%al
c000c066:	00 00                	add    %al,(%eax)
c000c068:	3c 00                	cmp    $0x0,%al
c000c06a:	00 00                	add    %al,(%eax)
c000c06c:	dc 04 00             	faddl  (%eax,%eax,1)
c000c06f:	00 44 85 00          	add    %al,0x0(%ebp,%eax,4)
c000c073:	c0 66 00 00          	shlb   $0x0,0x0(%esi)
c000c077:	00 41 0e             	add    %al,0xe(%ecx)
c000c07a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c080:	48                   	dec    %eax
c000c081:	83 05 86 04 87 03 67 	addl   $0x67,0x3870486
c000c088:	2e 04 04             	cs add $0x4,%al
c000c08b:	01 00                	add    %eax,(%eax)
c000c08d:	00 00                	add    %al,(%eax)
c000c08f:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c093:	0c 42                	or     $0x42,%al
c000c095:	2e 10 5e 2e          	adc    %bl,%cs:0x2e(%esi)
c000c099:	00 4c c3 41          	add    %cl,0x41(%ebx,%eax,8)
c000c09d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c0a1:	0c 04                	or     $0x4,%al
c000c0a3:	04 c5                	add    $0xc5,%al
c000c0a5:	00 00                	add    %al,(%eax)
c000c0a7:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000c0aa:	00 00                	add    %al,(%eax)
c000c0ac:	1c 05                	sbb    $0x5,%al
c000c0ae:	00 00                	add    %al,(%eax)
c000c0b0:	aa                   	stos   %al,%es:(%edi)
c000c0b1:	85 00                	test   %eax,(%eax)
c000c0b3:	c0 66 00 00          	shlb   $0x0,0x0(%esi)
c000c0b7:	00 41 0e             	add    %al,0xe(%ecx)
c000c0ba:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c0c0:	48                   	dec    %eax
c000c0c1:	83 05 86 04 87 03 67 	addl   $0x67,0x3870486
c000c0c8:	2e 04 04             	cs add $0x4,%al
c000c0cb:	01 00                	add    %eax,(%eax)
c000c0cd:	00 00                	add    %al,(%eax)
c000c0cf:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c0d3:	0c 42                	or     $0x42,%al
c000c0d5:	2e 10 5e 2e          	adc    %bl,%cs:0x2e(%esi)
c000c0d9:	00 4c c3 41          	add    %cl,0x41(%ebx,%eax,8)
c000c0dd:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c0e1:	0c 04                	or     $0x4,%al
c000c0e3:	04 c5                	add    $0xc5,%al
c000c0e5:	00 00                	add    %al,(%eax)
c000c0e7:	00 b0 00 00 00 5c    	add    %dh,0x5c000000(%eax)
c000c0ed:	05 00 00 10 86       	add    $0x86100000,%eax
c000c0f2:	00 c0                	add    %al,%al
c000c0f4:	aa                   	stos   %al,%es:(%edi)
c000c0f5:	00 00                	add    %al,(%eax)
c000c0f7:	00 41 0e             	add    %al,0xe(%ecx)
c000c0fa:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c100:	49                   	dec    %ecx
c000c101:	2e 04 04             	cs add $0x4,%al
c000c104:	01 00                	add    %eax,(%eax)
c000c106:	00 00                	add    %al,(%eax)
c000c108:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c10c:	0c 42                	or     $0x42,%al
c000c10e:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c112:	0c 41                	or     $0x41,%al
c000c114:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c118:	0c 42                	or     $0x42,%al
c000c11a:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c11e:	0c 41                	or     $0x41,%al
c000c120:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c124:	0c 42                	or     $0x42,%al
c000c126:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c12a:	0c 41                	or     $0x41,%al
c000c12c:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000c130:	0c 42                	or     $0x42,%al
c000c132:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c136:	0c 41                	or     $0x41,%al
c000c138:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c13c:	0c 42                	or     $0x42,%al
c000c13e:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c142:	0c 41                	or     $0x41,%al
c000c144:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c148:	0c 42                	or     $0x42,%al
c000c14a:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c14e:	0c 41                	or     $0x41,%al
c000c150:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000c154:	0c 42                	or     $0x42,%al
c000c156:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c15a:	0c 41                	or     $0x41,%al
c000c15c:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c160:	0c 42                	or     $0x42,%al
c000c162:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c166:	04 04                	add    $0x4,%al
c000c168:	02 00                	add    (%eax),%al
c000c16a:	00 00                	add    %al,(%eax)
c000c16c:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c170:	0c 42                	or     $0x42,%al
c000c172:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c176:	0c 41                	or     $0x41,%al
c000c178:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000c17c:	0c 42                	or     $0x42,%al
c000c17e:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c182:	0c 41                	or     $0x41,%al
c000c184:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c188:	0c 42                	or     $0x42,%al
c000c18a:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c18e:	0c 41                	or     $0x41,%al
c000c190:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c194:	0c 42                	or     $0x42,%al
c000c196:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c19a:	00 00                	add    %al,(%eax)
c000c19c:	1c 00                	sbb    $0x0,%al
c000c19e:	00 00                	add    %al,(%eax)
c000c1a0:	10 06                	adc    %al,(%esi)
c000c1a2:	00 00                	add    %al,(%eax)
c000c1a4:	bc 86 00 c0 25       	mov    $0x25c00086,%esp
c000c1a9:	00 00                	add    %al,(%eax)
c000c1ab:	00 41 0e             	add    %al,0xe(%ecx)
c000c1ae:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c1b4:	61                   	popa   
c000c1b5:	0c 04                	or     $0x4,%al
c000c1b7:	04 c5                	add    $0xc5,%al
c000c1b9:	00 00                	add    %al,(%eax)
c000c1bb:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000c1be:	00 00                	add    %al,(%eax)
c000c1c0:	30 06                	xor    %al,(%esi)
c000c1c2:	00 00                	add    %al,(%eax)
c000c1c4:	e1 86                	loope  c000c14c <_edata+0x5bc>
c000c1c6:	00 c0                	add    %al,%al
c000c1c8:	bb 00 00 00 41       	mov    $0x41000000,%ebx
c000c1cd:	0e                   	push   %cs
c000c1ce:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c1d4:	46                   	inc    %esi
c000c1d5:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000c1dc:	7b 2e                	jnp    c000c20c <_edata+0x67c>
c000c1de:	0c 41                	or     $0x41,%al
c000c1e0:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c1e4:	00 5b 2e             	add    %bl,0x2e(%ebx)
c000c1e7:	0c 41                	or     $0x41,%al
c000c1e9:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c1ed:	00 46 c3             	add    %al,-0x3d(%esi)
c000c1f0:	41                   	inc    %ecx
c000c1f1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c1f5:	0c 04                	or     $0x4,%al
c000c1f7:	04 c5                	add    $0xc5,%al
c000c1f9:	00 00                	add    %al,(%eax)
c000c1fb:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c000c1ff:	00 70 06             	add    %dh,0x6(%eax)
c000c202:	00 00                	add    %al,(%eax)
c000c204:	9c                   	pushf  
c000c205:	87 00                	xchg   %eax,(%eax)
c000c207:	c0 c9 00             	ror    $0x0,%cl
c000c20a:	00 00                	add    %al,(%eax)
c000c20c:	41                   	inc    %ecx
c000c20d:	0e                   	push   %cs
c000c20e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c214:	46                   	inc    %esi
c000c215:	83 05 86 04 87 03 5a 	addl   $0x5a,0x3870486
c000c21c:	2e 04 04             	cs add $0x4,%al
c000c21f:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000c224:	08 42 2e             	or     %al,0x2e(%edx)
c000c227:	0c 45                	or     $0x45,%al
c000c229:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c22d:	00 4b 2e             	add    %cl,0x2e(%ebx)
c000c230:	0c 41                	or     $0x41,%al
c000c232:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c236:	00 02                	add    %al,(%edx)
c000c238:	6b 2e 0c             	imul   $0xc,(%esi),%ebp
c000c23b:	41                   	inc    %ecx
c000c23c:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c240:	00 46 c3             	add    %al,-0x3d(%esi)
c000c243:	41                   	inc    %ecx
c000c244:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c248:	0c 04                	or     $0x4,%al
c000c24a:	04 c5                	add    $0xc5,%al
c000c24c:	1c 00                	sbb    $0x0,%al
c000c24e:	00 00                	add    %al,(%eax)
c000c250:	c0 06 00             	rolb   $0x0,(%esi)
c000c253:	00 65 88             	add    %ah,-0x78(%ebp)
c000c256:	00 c0                	add    %al,%al
c000c258:	14 00                	adc    $0x0,%al
c000c25a:	00 00                	add    %al,(%eax)
c000c25c:	41                   	inc    %ecx
c000c25d:	0e                   	push   %cs
c000c25e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c264:	44                   	inc    %esp
c000c265:	0c 04                	or     $0x4,%al
c000c267:	04 c5                	add    $0xc5,%al
c000c269:	00 00                	add    %al,(%eax)
c000c26b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c26e:	00 00                	add    %al,(%eax)
c000c270:	e0 06                	loopne c000c278 <_edata+0x6e8>
c000c272:	00 00                	add    %al,(%eax)
c000c274:	79 88                	jns    c000c1fe <_edata+0x66e>
c000c276:	00 c0                	add    %al,%al
c000c278:	12 00                	adc    (%eax),%al
c000c27a:	00 00                	add    %al,(%eax)
c000c27c:	41                   	inc    %ecx
c000c27d:	0e                   	push   %cs
c000c27e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c284:	44                   	inc    %esp
c000c285:	0c 04                	or     $0x4,%al
c000c287:	04 c5                	add    $0xc5,%al
c000c289:	00 00                	add    %al,(%eax)
c000c28b:	00 28                	add    %ch,(%eax)
c000c28d:	00 00                	add    %al,(%eax)
c000c28f:	00 00                	add    %al,(%eax)
c000c291:	07                   	pop    %es
c000c292:	00 00                	add    %al,(%eax)
c000c294:	8c 88 00 c0 4d 00    	mov    %cs,0x4dc000(%eax)
c000c29a:	00 00                	add    %al,(%eax)
c000c29c:	41                   	inc    %ecx
c000c29d:	0e                   	push   %cs
c000c29e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c2a4:	49                   	dec    %ecx
c000c2a5:	83 05 86 04 87 03 7d 	addl   $0x7d,0x3870486
c000c2ac:	c3                   	ret    
c000c2ad:	41                   	inc    %ecx
c000c2ae:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c2b2:	0c 04                	or     $0x4,%al
c000c2b4:	04 c5                	add    $0xc5,%al
c000c2b6:	00 00                	add    %al,(%eax)
c000c2b8:	1c 00                	sbb    $0x0,%al
c000c2ba:	00 00                	add    %al,(%eax)
c000c2bc:	2c 07                	sub    $0x7,%al
c000c2be:	00 00                	add    %al,(%eax)
c000c2c0:	d9 88 00 c0 25 00    	(bad)  0x25c000(%eax)
c000c2c6:	00 00                	add    %al,(%eax)
c000c2c8:	41                   	inc    %ecx
c000c2c9:	0e                   	push   %cs
c000c2ca:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c2d0:	61                   	popa   
c000c2d1:	0c 04                	or     $0x4,%al
c000c2d3:	04 c5                	add    $0xc5,%al
c000c2d5:	00 00                	add    %al,(%eax)
c000c2d7:	00 a0 00 00 00 4c    	add    %ah,0x4c000000(%eax)
c000c2dd:	07                   	pop    %es
c000c2de:	00 00                	add    %al,(%eax)
c000c2e0:	fe 88 00 c0 f8 00    	decb   0xf8c000(%eax)
c000c2e6:	00 00                	add    %al,(%eax)
c000c2e8:	41                   	inc    %ecx
c000c2e9:	0e                   	push   %cs
c000c2ea:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c2f0:	41                   	inc    %ecx
c000c2f1:	83 03 7e             	addl   $0x7e,(%ebx)
c000c2f4:	2e 04 04             	cs add $0x4,%al
c000c2f7:	07                   	pop    %es
c000c2f8:	00 00                	add    %al,(%eax)
c000c2fa:	00 2e                	add    %ch,(%esi)
c000c2fc:	08 42 2e             	or     %al,0x2e(%edx)
c000c2ff:	0c 42                	or     $0x42,%al
c000c301:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000c305:	14 41                	adc    $0x41,%al
c000c307:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000c30b:	1c 48                	sbb    $0x48,%al
c000c30d:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000c311:	24 42                	and    $0x42,%al
c000c313:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000c317:	2c 41                	sub    $0x41,%al
c000c319:	2e 30 4d 2e          	xor    %cl,%cs:0x2e(%ebp)
c000c31d:	00 47 2e             	add    %al,0x2e(%edi)
c000c320:	04 04                	add    $0x4,%al
c000c322:	02 00                	add    (%eax),%al
c000c324:	00 00                	add    %al,(%eax)
c000c326:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c32a:	0c 42                	or     $0x42,%al
c000c32c:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000c330:	14 41                	adc    $0x41,%al
c000c332:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000c336:	1c 42                	sbb    $0x42,%al
c000c338:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000c33c:	24 42                	and    $0x42,%al
c000c33e:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000c342:	2c 41                	sub    $0x41,%al
c000c344:	2e 30 4d 2e          	xor    %cl,%cs:0x2e(%ebp)
c000c348:	00 47 2e             	add    %al,0x2e(%edi)
c000c34b:	04 04                	add    $0x4,%al
c000c34d:	02 00                	add    (%eax),%al
c000c34f:	00 00                	add    %al,(%eax)
c000c351:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c355:	0c 42                	or     $0x42,%al
c000c357:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000c35b:	14 41                	adc    $0x41,%al
c000c35d:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000c361:	1c 42                	sbb    $0x42,%al
c000c363:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000c367:	24 42                	and    $0x42,%al
c000c369:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000c36d:	2c 41                	sub    $0x41,%al
c000c36f:	2e 30 48 2e          	xor    %cl,%cs:0x2e(%eax)
c000c373:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000c377:	04 04                	add    $0x4,%al
c000c379:	c3                   	ret    
c000c37a:	00 00                	add    %al,(%eax)
c000c37c:	2c 00                	sub    $0x0,%al
c000c37e:	00 00                	add    %al,(%eax)
c000c380:	f0 07                	lock pop %es
c000c382:	00 00                	add    %al,(%eax)
c000c384:	f6                   	(bad)  
c000c385:	89 00                	mov    %eax,(%eax)
c000c387:	c0 84 00 00 00 41 0e 	rolb   $0x8,0xe410000(%eax,%eax,1)
c000c38e:	08 
c000c38f:	85 02                	test   %eax,(%edx)
c000c391:	42                   	inc    %edx
c000c392:	0d 05 41 87 03       	or     $0x3874105,%eax
c000c397:	49                   	dec    %ecx
c000c398:	83 05 86 04 04 73 00 	addl   $0x0,0x73040486
c000c39f:	00 00                	add    %al,(%eax)
c000c3a1:	c3                   	ret    
c000c3a2:	41                   	inc    %ecx
c000c3a3:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c3a7:	0c 04                	or     $0x4,%al
c000c3a9:	04 c5                	add    $0xc5,%al
c000c3ab:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c000c3af:	00 20                	add    %ah,(%eax)
c000c3b1:	08 00                	or     %al,(%eax)
c000c3b3:	00 7a 8a             	add    %bh,-0x76(%edx)
c000c3b6:	00 c0                	add    %al,%al
c000c3b8:	37                   	aaa    
c000c3b9:	00 00                	add    %al,(%eax)
c000c3bb:	00 41 0e             	add    %al,0xe(%ecx)
c000c3be:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c3c4:	41                   	inc    %ecx
c000c3c5:	87 03                	xchg   %eax,(%ebx)
c000c3c7:	44                   	inc    %esp
c000c3c8:	86 04 04             	xchg   %al,(%esp,%eax,1)
c000c3cb:	04 00                	add    $0x0,%al
c000c3cd:	00 00                	add    %al,(%eax)
c000c3cf:	83 05 4a 2e 04 04 01 	addl   $0x1,0x4042e4a
c000c3d6:	00 00                	add    %al,(%eax)
c000c3d8:	00 2e                	add    %ch,(%esi)
c000c3da:	08 43 2e             	or     %al,0x2e(%ebx)
c000c3dd:	0c 41                	or     $0x41,%al
c000c3df:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c3e3:	14 48                	adc    $0x48,%al
c000c3e5:	2e 00 4a c3          	add    %cl,%cs:-0x3d(%edx)
c000c3e9:	41                   	inc    %ecx
c000c3ea:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c3ee:	0c 04                	or     $0x4,%al
c000c3f0:	04 c5                	add    $0xc5,%al
c000c3f2:	00 00                	add    %al,(%eax)
c000c3f4:	34 00                	xor    $0x0,%al
c000c3f6:	00 00                	add    %al,(%eax)
c000c3f8:	68 08 00 00 b4       	push   $0xb4000008
c000c3fd:	8a 00                	mov    (%eax),%al
c000c3ff:	c0 4f 00 00          	rorb   $0x0,0x0(%edi)
c000c403:	00 41 0e             	add    %al,0xe(%ecx)
c000c406:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c40c:	43                   	inc    %ebx
c000c40d:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c411:	0c 42                	or     $0x42,%al
c000c413:	2e 10 70 2e          	adc    %dh,%cs:0x2e(%eax)
c000c417:	0c 41                	or     $0x41,%al
c000c419:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c41d:	0c 42                	or     $0x42,%al
c000c41f:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c423:	00 41 c5             	add    %al,-0x3b(%ecx)
c000c426:	0c 04                	or     $0x4,%al
c000c428:	04 00                	add    $0x0,%al
c000c42a:	00 00                	add    %al,(%eax)
c000c42c:	1c 00                	sbb    $0x0,%al
c000c42e:	00 00                	add    %al,(%eax)
c000c430:	a0 08 00 00 44       	mov    0x44000008,%al
c000c435:	94                   	xchg   %eax,%esp
c000c436:	00 c0                	add    %al,%al
c000c438:	10 00                	adc    %al,(%eax)
c000c43a:	00 00                	add    %al,(%eax)
c000c43c:	41                   	inc    %ecx
c000c43d:	0e                   	push   %cs
c000c43e:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000c444:	47                   	inc    %edi
c000c445:	0c 04                	or     $0x4,%al
c000c447:	04 c5                	add    $0xc5,%al
c000c449:	00 00                	add    %al,(%eax)
c000c44b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c44e:	00 00                	add    %al,(%eax)
c000c450:	c0 08 00             	rorb   $0x0,(%eax)
c000c453:	00 54 94 00          	add    %dl,0x0(%esp,%edx,4)
c000c457:	c0 3d 00 00 00 41 0e 	sarb   $0xe,0x41000000
c000c45e:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000c464:	74 0c                	je     c000c472 <_edata+0x8e2>
c000c466:	04 04                	add    $0x4,%al
c000c468:	c5 00                	lds    (%eax),%eax
c000c46a:	00 00                	add    %al,(%eax)
c000c46c:	1c 00                	sbb    $0x0,%al
c000c46e:	00 00                	add    %al,(%eax)
c000c470:	e0 08                	loopne c000c47a <_edata+0x8ea>
c000c472:	00 00                	add    %al,(%eax)
c000c474:	91                   	xchg   %eax,%ecx
c000c475:	94                   	xchg   %eax,%esp
c000c476:	00 c0                	add    %al,%al
c000c478:	69 00 00 00 41 0e    	imul   $0xe410000,(%eax),%eax
c000c47e:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c484:	02 63 0c             	add    0xc(%ebx),%ah
c000c487:	04 04                	add    $0x4,%al
c000c489:	c5 00                	lds    (%eax),%eax
c000c48b:	00 20                	add    %ah,(%eax)
c000c48d:	00 00                	add    %al,(%eax)
c000c48f:	00 00                	add    %al,(%eax)
c000c491:	09 00                	or     %eax,(%eax)
c000c493:	00 fa                	add    %bh,%dl
c000c495:	94                   	xchg   %eax,%esp
c000c496:	00 c0                	add    %al,%al
c000c498:	2c 00                	sub    $0x0,%al
c000c49a:	00 00                	add    %al,(%eax)
c000c49c:	41                   	inc    %ecx
c000c49d:	0e                   	push   %cs
c000c49e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c4a4:	44                   	inc    %esp
c000c4a5:	83 03 63             	addl   $0x63,(%ebx)
c000c4a8:	c3                   	ret    
c000c4a9:	41                   	inc    %ecx
c000c4aa:	0c 04                	or     $0x4,%al
c000c4ac:	04 c5                	add    $0xc5,%al
c000c4ae:	00 00                	add    %al,(%eax)
c000c4b0:	1c 00                	sbb    $0x0,%al
c000c4b2:	00 00                	add    %al,(%eax)
c000c4b4:	24 09                	and    $0x9,%al
c000c4b6:	00 00                	add    %al,(%eax)
c000c4b8:	26 95                	es xchg %eax,%ebp
c000c4ba:	00 c0                	add    %al,%al
c000c4bc:	cd 00                	int    $0x0
c000c4be:	00 00                	add    %al,(%eax)
c000c4c0:	41                   	inc    %ecx
c000c4c1:	0e                   	push   %cs
c000c4c2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c4c8:	02 c9                	add    %cl,%cl
c000c4ca:	0c 04                	or     $0x4,%al
c000c4cc:	04 c5                	add    $0xc5,%al
c000c4ce:	00 00                	add    %al,(%eax)
c000c4d0:	1c 00                	sbb    $0x0,%al
c000c4d2:	00 00                	add    %al,(%eax)
c000c4d4:	44                   	inc    %esp
c000c4d5:	09 00                	or     %eax,(%eax)
c000c4d7:	00 f3                	add    %dh,%bl
c000c4d9:	95                   	xchg   %eax,%ebp
c000c4da:	00 c0                	add    %al,%al
c000c4dc:	32 00                	xor    (%eax),%al
c000c4de:	00 00                	add    %al,(%eax)
c000c4e0:	41                   	inc    %ecx
c000c4e1:	0e                   	push   %cs
c000c4e2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c4e8:	6e                   	outsb  %ds:(%esi),(%dx)
c000c4e9:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000c4ec:	04 00                	add    $0x0,%al
c000c4ee:	00 00                	add    %al,(%eax)
c000c4f0:	1c 00                	sbb    $0x0,%al
c000c4f2:	00 00                	add    %al,(%eax)
c000c4f4:	64 09 00             	or     %eax,%fs:(%eax)
c000c4f7:	00 25 96 00 c0 10    	add    %ah,0x10c00096
c000c4fd:	00 00                	add    %al,(%eax)
c000c4ff:	00 41 0e             	add    %al,0xe(%ecx)
c000c502:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c508:	4c                   	dec    %esp
c000c509:	0c 04                	or     $0x4,%al
c000c50b:	04 c5                	add    $0xc5,%al
c000c50d:	00 00                	add    %al,(%eax)
c000c50f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c512:	00 00                	add    %al,(%eax)
c000c514:	84 09                	test   %cl,(%ecx)
c000c516:	00 00                	add    %al,(%eax)
c000c518:	35 96 00 c0 14       	xor    $0x14c00096,%eax
c000c51d:	00 00                	add    %al,(%eax)
c000c51f:	00 41 0e             	add    %al,0xe(%ecx)
c000c522:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c528:	50                   	push   %eax
c000c529:	0c 04                	or     $0x4,%al
c000c52b:	04 c5                	add    $0xc5,%al
c000c52d:	00 00                	add    %al,(%eax)
c000c52f:	00 a0 00 00 00 a4    	add    %ah,-0x5c000000(%eax)
c000c535:	09 00                	or     %eax,(%eax)
c000c537:	00 49 96             	add    %cl,-0x6a(%ecx)
c000c53a:	00 c0                	add    %al,%al
c000c53c:	aa                   	stos   %al,%es:(%edi)
c000c53d:	00 00                	add    %al,(%eax)
c000c53f:	00 41 0e             	add    %al,0xe(%ecx)
c000c542:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c548:	42                   	inc    %edx
c000c549:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000c54d:	4b                   	dec    %ebx
c000c54e:	2e 0c 42             	cs or  $0x42,%al
c000c551:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c555:	0c 44                	or     $0x44,%al
c000c557:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c55b:	0c 42                	or     $0x42,%al
c000c55d:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c561:	04 04                	add    $0x4,%al
c000c563:	02 00                	add    (%eax),%al
c000c565:	00 00                	add    %al,(%eax)
c000c567:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c56b:	0c 42                	or     $0x42,%al
c000c56d:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c571:	0c 41                	or     $0x41,%al
c000c573:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c577:	0c 42                	or     $0x42,%al
c000c579:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c57d:	00 46 2e             	add    %al,0x2e(%esi)
c000c580:	04 04                	add    $0x4,%al
c000c582:	01 00                	add    %eax,(%eax)
c000c584:	00 00                	add    %al,(%eax)
c000c586:	2e 08 47 2e          	or     %al,%cs:0x2e(%edi)
c000c58a:	0c 42                	or     $0x42,%al
c000c58c:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c590:	00 49 2e             	add    %cl,0x2e(%ecx)
c000c593:	04 04                	add    $0x4,%al
c000c595:	01 00                	add    %eax,(%eax)
c000c597:	00 00                	add    %al,(%eax)
c000c599:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c59d:	0c 42                	or     $0x42,%al
c000c59f:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c5a3:	04 04                	add    $0x4,%al
c000c5a5:	02 00                	add    (%eax),%al
c000c5a7:	00 00                	add    %al,(%eax)
c000c5a9:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c5ad:	0c 42                	or     $0x42,%al
c000c5af:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c5b3:	0c 41                	or     $0x41,%al
c000c5b5:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c5b9:	0c 42                	or     $0x42,%al
c000c5bb:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c5bf:	00 41 2e             	add    %al,0x2e(%ecx)
c000c5c2:	04 04                	add    $0x4,%al
c000c5c4:	01 00                	add    %eax,(%eax)
c000c5c6:	00 00                	add    %al,(%eax)
c000c5c8:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c5cc:	0c 42                	or     $0x42,%al
c000c5ce:	2e 10 4d 2e          	adc    %cl,%cs:0x2e(%ebp)
c000c5d2:	00 00                	add    %al,(%eax)
c000c5d4:	1c 00                	sbb    $0x0,%al
c000c5d6:	00 00                	add    %al,(%eax)
c000c5d8:	48                   	dec    %eax
c000c5d9:	0a 00                	or     (%eax),%al
c000c5db:	00 f3                	add    %dh,%bl
c000c5dd:	96                   	xchg   %eax,%esi
c000c5de:	00 c0                	add    %al,%al
c000c5e0:	17                   	pop    %ss
c000c5e1:	00 00                	add    %al,(%eax)
c000c5e3:	00 41 0e             	add    %al,0xe(%ecx)
c000c5e6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c5ec:	53                   	push   %ebx
c000c5ed:	0c 04                	or     $0x4,%al
c000c5ef:	04 c5                	add    $0xc5,%al
c000c5f1:	00 00                	add    %al,(%eax)
c000c5f3:	00 24 00             	add    %ah,(%eax,%eax,1)
c000c5f6:	00 00                	add    %al,(%eax)
c000c5f8:	68 0a 00 00 0a       	push   $0xa00000a
c000c5fd:	97                   	xchg   %eax,%edi
c000c5fe:	00 c0                	add    %al,%al
c000c600:	15 00 00 00 41       	adc    $0x41000000,%eax
c000c605:	0e                   	push   %cs
c000c606:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c60c:	47                   	inc    %edi
c000c60d:	0a 0c 04             	or     (%esp,%eax,1),%cl
c000c610:	04 c5                	add    $0xc5,%al
c000c612:	45                   	inc    %ebp
c000c613:	0b 41 0c             	or     0xc(%ecx),%eax
c000c616:	04 04                	add    $0x4,%al
c000c618:	c5 00                	lds    (%eax),%eax
c000c61a:	00 00                	add    %al,(%eax)
c000c61c:	2c 00                	sub    $0x0,%al
c000c61e:	00 00                	add    %al,(%eax)
c000c620:	90                   	nop
c000c621:	0a 00                	or     (%eax),%al
c000c623:	00 20                	add    %ah,(%eax)
c000c625:	97                   	xchg   %eax,%edi
c000c626:	00 c0                	add    %al,%al
c000c628:	1e                   	push   %ds
c000c629:	00 00                	add    %al,(%eax)
c000c62b:	00 41 0e             	add    %al,0xe(%ecx)
c000c62e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c634:	45                   	inc    %ebp
c000c635:	2e 04 04             	cs add $0x4,%al
c000c638:	02 00                	add    (%eax),%al
c000c63a:	00 00                	add    %al,(%eax)
c000c63c:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c640:	0c 45                	or     $0x45,%al
c000c642:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c646:	00 41 c5             	add    %al,-0x3b(%ecx)
c000c649:	0c 04                	or     $0x4,%al
c000c64b:	04 6c                	add    $0x6c,%al
c000c64d:	00 00                	add    %al,(%eax)
c000c64f:	00 c0                	add    %al,%al
c000c651:	0a 00                	or     (%eax),%al
c000c653:	00 3e                	add    %bh,(%esi)
c000c655:	97                   	xchg   %eax,%edi
c000c656:	00 c0                	add    %al,%al
c000c658:	d6                   	(bad)  
c000c659:	01 00                	add    %eax,(%eax)
c000c65b:	00 41 0e             	add    %al,0xe(%ecx)
c000c65e:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000c664:	46                   	inc    %esi
c000c665:	83 03 03             	addl   $0x3,(%ebx)
c000c668:	1d 01 2e 0c 45       	sbb    $0x450c2e01,%eax
c000c66d:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c671:	00 45 2e             	add    %al,0x2e(%ebp)
c000c674:	04 04                	add    $0x4,%al
c000c676:	01 00                	add    %eax,(%eax)
c000c678:	00 00                	add    %al,(%eax)
c000c67a:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000c67f:	45                   	inc    %ebp
c000c680:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c684:	0c 45                	or     $0x45,%al
c000c686:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c68a:	0c 42                	or     $0x42,%al
c000c68c:	2e 10 47 2e          	adc    %al,%cs:0x2e(%edi)
c000c690:	00 41 2e             	add    %al,0x2e(%ecx)
c000c693:	04 04                	add    $0x4,%al
c000c695:	01 00                	add    %eax,(%eax)
c000c697:	00 00                	add    %al,(%eax)
c000c699:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c69d:	0c 42                	or     $0x42,%al
c000c69f:	2e 00 02             	add    %al,%cs:(%edx)
c000c6a2:	5c                   	pop    %esp
c000c6a3:	2e 04 04             	cs add $0x4,%al
c000c6a6:	01 00                	add    %eax,(%eax)
c000c6a8:	00 00                	add    %al,(%eax)
c000c6aa:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c6ae:	0c 42                	or     $0x42,%al
c000c6b0:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c6b4:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000c6b8:	04 04                	add    $0x4,%al
c000c6ba:	c3                   	ret    
c000c6bb:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c6be:	00 00                	add    %al,(%eax)
c000c6c0:	30 0b                	xor    %cl,(%ebx)
c000c6c2:	00 00                	add    %al,(%eax)
c000c6c4:	14 99                	adc    $0x99,%al
c000c6c6:	00 c0                	add    %al,%al
c000c6c8:	1e                   	push   %ds
c000c6c9:	00 00                	add    %al,(%eax)
c000c6cb:	00 41 0e             	add    %al,0xe(%ecx)
c000c6ce:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c6d4:	5a                   	pop    %edx
c000c6d5:	0c 04                	or     $0x4,%al
c000c6d7:	04 c5                	add    $0xc5,%al
c000c6d9:	00 00                	add    %al,(%eax)
c000c6db:	00 28                	add    %ch,(%eax)
c000c6dd:	00 00                	add    %al,(%eax)
c000c6df:	00 50 0b             	add    %dl,0xb(%eax)
c000c6e2:	00 00                	add    %al,(%eax)
c000c6e4:	32 99 00 c0 29 00    	xor    0x29c000(%ecx),%bl
c000c6ea:	00 00                	add    %al,(%eax)
c000c6ec:	41                   	inc    %ecx
c000c6ed:	0e                   	push   %cs
c000c6ee:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c6f4:	41                   	inc    %ecx
c000c6f5:	86 03                	xchg   %al,(%ebx)
c000c6f7:	44                   	inc    %esp
c000c6f8:	83 04 04 1a          	addl   $0x1a,(%esp,%eax,1)
c000c6fc:	00 00                	add    %al,(%eax)
c000c6fe:	00 c3                	add    %al,%bl
c000c700:	41                   	inc    %ecx
c000c701:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c705:	04 c5                	add    $0xc5,%al
c000c707:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c70a:	00 00                	add    %al,(%eax)
c000c70c:	7c 0b                	jl     c000c719 <_edata+0xb89>
c000c70e:	00 00                	add    %al,(%eax)
c000c710:	5b                   	pop    %ebx
c000c711:	99                   	cltd   
c000c712:	00 c0                	add    %al,%al
c000c714:	18 00                	sbb    %al,(%eax)
c000c716:	00 00                	add    %al,(%eax)
c000c718:	41                   	inc    %ecx
c000c719:	0e                   	push   %cs
c000c71a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c720:	50                   	push   %eax
c000c721:	0c 04                	or     $0x4,%al
c000c723:	04 c5                	add    $0xc5,%al
c000c725:	00 00                	add    %al,(%eax)
c000c727:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c72a:	00 00                	add    %al,(%eax)
c000c72c:	9c                   	pushf  
c000c72d:	0b 00                	or     (%eax),%eax
c000c72f:	00 73 99             	add    %dh,-0x67(%ebx)
c000c732:	00 c0                	add    %al,%al
c000c734:	18 00                	sbb    %al,(%eax)
c000c736:	00 00                	add    %al,(%eax)
c000c738:	41                   	inc    %ecx
c000c739:	0e                   	push   %cs
c000c73a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c740:	50                   	push   %eax
c000c741:	0c 04                	or     $0x4,%al
c000c743:	04 c5                	add    $0xc5,%al
c000c745:	00 00                	add    %al,(%eax)
c000c747:	00 20                	add    %ah,(%eax)
c000c749:	00 00                	add    %al,(%eax)
c000c74b:	00 bc 0b 00 00 8b 99 	add    %bh,-0x66750000(%ebx,%ecx,1)
c000c752:	00 c0                	add    %al,%al
c000c754:	27                   	daa    
c000c755:	00 00                	add    %al,(%eax)
c000c757:	00 41 0e             	add    %al,0xe(%ecx)
c000c75a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c760:	42                   	inc    %edx
c000c761:	83 03 5c             	addl   $0x5c,(%ebx)
c000c764:	c3                   	ret    
c000c765:	41                   	inc    %ecx
c000c766:	0c 04                	or     $0x4,%al
c000c768:	04 c5                	add    $0xc5,%al
c000c76a:	00 00                	add    %al,(%eax)
c000c76c:	28 00                	sub    %al,(%eax)
c000c76e:	00 00                	add    %al,(%eax)
c000c770:	e0 0b                	loopne c000c77d <_edata+0xbed>
c000c772:	00 00                	add    %al,(%eax)
c000c774:	b2 99                	mov    $0x99,%dl
c000c776:	00 c0                	add    %al,%al
c000c778:	1a 00                	sbb    (%eax),%al
c000c77a:	00 00                	add    %al,(%eax)
c000c77c:	41                   	inc    %ecx
c000c77d:	0e                   	push   %cs
c000c77e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c784:	44                   	inc    %esp
c000c785:	2e 0c 83             	cs or  $0x83,%al
c000c788:	03 47 2e             	add    0x2e(%edi),%eax
c000c78b:	10 4b c5             	adc    %cl,-0x3b(%ebx)
c000c78e:	0c 04                	or     $0x4,%al
c000c790:	04 c3                	add    $0xc3,%al
c000c792:	41                   	inc    %ecx
c000c793:	13 03                	adc    (%ebx),%eax
c000c795:	2e 00 00             	add    %al,%cs:(%eax)
c000c798:	1c 00                	sbb    $0x0,%al
c000c79a:	00 00                	add    %al,(%eax)
c000c79c:	0c 0c                	or     $0xc,%al
c000c79e:	00 00                	add    %al,(%eax)
c000c7a0:	cc                   	int3   
c000c7a1:	99                   	cltd   
c000c7a2:	00 c0                	add    %al,%al
c000c7a4:	27                   	daa    
c000c7a5:	00 00                	add    %al,(%eax)
c000c7a7:	00 41 0e             	add    %al,0xe(%ecx)
c000c7aa:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c7b0:	63 0c 04             	arpl   %cx,(%esp,%eax,1)
c000c7b3:	04 c5                	add    $0xc5,%al
c000c7b5:	00 00                	add    %al,(%eax)
c000c7b7:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000c7ba:	00 00                	add    %al,(%eax)
c000c7bc:	2c 0c                	sub    $0xc,%al
c000c7be:	00 00                	add    %al,(%eax)
c000c7c0:	f3 99                	repz cltd 
c000c7c2:	00 c0                	add    %al,%al
c000c7c4:	38 00                	cmp    %al,(%eax)
c000c7c6:	00 00                	add    %al,(%eax)
c000c7c8:	41                   	inc    %ecx
c000c7c9:	0e                   	push   %cs
c000c7ca:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c7d0:	46                   	inc    %esi
c000c7d1:	83 05 86 04 87 03 4f 	addl   $0x4f,0x3870486
c000c7d8:	2e 04 04             	cs add $0x4,%al
c000c7db:	01 00                	add    %eax,(%eax)
c000c7dd:	00 00                	add    %al,(%eax)
c000c7df:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c7e3:	0c 41                	or     $0x41,%al
c000c7e5:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c7e9:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000c7ec:	41                   	inc    %ecx
c000c7ed:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c7f1:	0c 04                	or     $0x4,%al
c000c7f3:	04 c5                	add    $0xc5,%al
c000c7f5:	00 00                	add    %al,(%eax)
c000c7f7:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c7fa:	00 00                	add    %al,(%eax)
c000c7fc:	6c                   	insb   (%dx),%es:(%edi)
c000c7fd:	0c 00                	or     $0x0,%al
c000c7ff:	00 2b                	add    %ch,(%ebx)
c000c801:	9a 00 c0 1a 00 00 00 	lcall  $0x0,$0x1ac000
c000c808:	41                   	inc    %ecx
c000c809:	0e                   	push   %cs
c000c80a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c810:	54                   	push   %esp
c000c811:	0c 04                	or     $0x4,%al
c000c813:	04 c5                	add    $0xc5,%al
c000c815:	00 00                	add    %al,(%eax)
c000c817:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c81a:	00 00                	add    %al,(%eax)
c000c81c:	8c 0c 00             	mov    %cs,(%eax,%eax,1)
c000c81f:	00 45 9a             	add    %al,-0x66(%ebp)
c000c822:	00 c0                	add    %al,%al
c000c824:	14 00                	adc    $0x0,%al
c000c826:	00 00                	add    %al,(%eax)
c000c828:	41                   	inc    %ecx
c000c829:	0e                   	push   %cs
c000c82a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c830:	44                   	inc    %esp
c000c831:	0c 04                	or     $0x4,%al
c000c833:	04 c5                	add    $0xc5,%al
c000c835:	00 00                	add    %al,(%eax)
c000c837:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c83a:	00 00                	add    %al,(%eax)
c000c83c:	ac                   	lods   %ds:(%esi),%al
c000c83d:	0c 00                	or     $0x0,%al
c000c83f:	00 5c 9a 00          	add    %bl,0x0(%edx,%ebx,4)
c000c843:	c0 23 00             	shlb   $0x0,(%ebx)
c000c846:	00 00                	add    %al,(%eax)
c000c848:	41                   	inc    %ecx
c000c849:	0e                   	push   %cs
c000c84a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c850:	5f                   	pop    %edi
c000c851:	0c 04                	or     $0x4,%al
c000c853:	04 c5                	add    $0xc5,%al
c000c855:	00 00                	add    %al,(%eax)
c000c857:	00 20                	add    %ah,(%eax)
c000c859:	00 00                	add    %al,(%eax)
c000c85b:	00 cc                	add    %cl,%ah
c000c85d:	0c 00                	or     $0x0,%al
c000c85f:	00 7f 9a             	add    %bh,-0x66(%edi)
c000c862:	00 c0                	add    %al,%al
c000c864:	1b 00                	sbb    (%eax),%eax
c000c866:	00 00                	add    %al,(%eax)
c000c868:	41                   	inc    %ecx
c000c869:	0e                   	push   %cs
c000c86a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c870:	46                   	inc    %esi
c000c871:	83 03 4e             	addl   $0x4e,(%ebx)
c000c874:	c3                   	ret    
c000c875:	41                   	inc    %ecx
c000c876:	0c 04                	or     $0x4,%al
c000c878:	04 c5                	add    $0xc5,%al
c000c87a:	00 00                	add    %al,(%eax)
c000c87c:	28 00                	sub    %al,(%eax)
c000c87e:	00 00                	add    %al,(%eax)
c000c880:	f0 0c 00             	lock or $0x0,%al
c000c883:	00 9a 9a 00 c0 63    	add    %bl,0x63c0009a(%edx)
c000c889:	00 00                	add    %al,(%eax)
c000c88b:	00 41 0e             	add    %al,0xe(%ecx)
c000c88e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c894:	44                   	inc    %esp
c000c895:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000c89c:	58                   	pop    %eax
c000c89d:	c3                   	ret    
c000c89e:	41                   	inc    %ecx
c000c89f:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c8a3:	0c 04                	or     $0x4,%al
c000c8a5:	04 c5                	add    $0xc5,%al
c000c8a7:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c8aa:	00 00                	add    %al,(%eax)
c000c8ac:	1c 0d                	sbb    $0xd,%al
c000c8ae:	00 00                	add    %al,(%eax)
c000c8b0:	fd                   	std    
c000c8b1:	9a 00 c0 0d 00 00 00 	lcall  $0x0,$0xdc000
c000c8b8:	41                   	inc    %ecx
c000c8b9:	0e                   	push   %cs
c000c8ba:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c8c0:	45                   	inc    %ebp
c000c8c1:	0c 04                	or     $0x4,%al
c000c8c3:	04 c5                	add    $0xc5,%al
c000c8c5:	00 00                	add    %al,(%eax)
c000c8c7:	00 28                	add    %ch,(%eax)
c000c8c9:	00 00                	add    %al,(%eax)
c000c8cb:	00 3c 0d 00 00 0a 9b 	add    %bh,-0x64f60000(,%ecx,1)
c000c8d2:	00 c0                	add    %al,%al
c000c8d4:	0a 01                	or     (%ecx),%al
c000c8d6:	00 00                	add    %al,(%eax)
c000c8d8:	41                   	inc    %ecx
c000c8d9:	0e                   	push   %cs
c000c8da:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c8e0:	46                   	inc    %esi
c000c8e1:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000c8e8:	fb                   	sti    
c000c8e9:	c3                   	ret    
c000c8ea:	41                   	inc    %ecx
c000c8eb:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c8ef:	0c 04                	or     $0x4,%al
c000c8f1:	04 c5                	add    $0xc5,%al
c000c8f3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c8f6:	00 00                	add    %al,(%eax)
c000c8f8:	68 0d 00 00 14       	push   $0x1400000d
c000c8fd:	9c                   	pushf  
c000c8fe:	00 c0                	add    %al,%al
c000c900:	0d 00 00 00 41       	or     $0x41000000,%eax
c000c905:	0e                   	push   %cs
c000c906:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c90c:	45                   	inc    %ebp
c000c90d:	0c 04                	or     $0x4,%al
c000c90f:	04 c5                	add    $0xc5,%al
c000c911:	00 00                	add    %al,(%eax)
c000c913:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c000c917:	00 88 0d 00 00 21    	add    %cl,0x2100000d(%eax)
c000c91d:	9c                   	pushf  
c000c91e:	00 c0                	add    %al,%al
c000c920:	55                   	push   %ebp
c000c921:	00 00                	add    %al,(%eax)
c000c923:	00 41 0e             	add    %al,0xe(%ecx)
c000c926:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c92c:	42                   	inc    %edx
c000c92d:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000c931:	4f                   	dec    %edi
c000c932:	2e 04 04             	cs add $0x4,%al
c000c935:	07                   	pop    %es
c000c936:	00 00                	add    %al,(%eax)
c000c938:	00 2e                	add    %ch,(%esi)
c000c93a:	08 4b 2e             	or     %cl,0x2e(%ebx)
c000c93d:	0c 46                	or     $0x46,%al
c000c93f:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000c943:	14 45                	adc    $0x45,%al
c000c945:	2e 18 4a 2e          	sbb    %cl,%cs:0x2e(%edx)
c000c949:	1c 45                	sbb    $0x45,%al
c000c94b:	2e 20 45 2e          	and    %al,%cs:0x2e(%ebp)
c000c94f:	24 48                	and    $0x48,%al
c000c951:	2e 00 44 c3 41       	add    %al,%cs:0x41(%ebx,%eax,8)
c000c956:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c95a:	04 c5                	add    $0xc5,%al
c000c95c:	1c 00                	sbb    $0x0,%al
c000c95e:	00 00                	add    %al,(%eax)
c000c960:	d0 0d 00 00 76 9c    	rorb   0x9c760000
c000c966:	00 c0                	add    %al,%al
c000c968:	12 00                	adc    (%eax),%al
c000c96a:	00 00                	add    %al,(%eax)
c000c96c:	41                   	inc    %ecx
c000c96d:	0e                   	push   %cs
c000c96e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c974:	44                   	inc    %esp
c000c975:	0c 04                	or     $0x4,%al
c000c977:	04 c5                	add    $0xc5,%al
c000c979:	00 00                	add    %al,(%eax)
c000c97b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c97e:	00 00                	add    %al,(%eax)
c000c980:	f0 0d 00 00 88 9c    	lock or $0x9c880000,%eax
c000c986:	00 c0                	add    %al,%al
c000c988:	22 00                	and    (%eax),%al
c000c98a:	00 00                	add    %al,(%eax)
c000c98c:	41                   	inc    %ecx
c000c98d:	0e                   	push   %cs
c000c98e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c994:	44                   	inc    %esp
c000c995:	0c 04                	or     $0x4,%al
c000c997:	04 c5                	add    $0xc5,%al
c000c999:	00 00                	add    %al,(%eax)
c000c99b:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c000c99f:	00 10                	add    %dl,(%eax)
c000c9a1:	0e                   	push   %cs
c000c9a2:	00 00                	add    %al,(%eax)
c000c9a4:	aa                   	stos   %al,%es:(%edi)
c000c9a5:	9c                   	pushf  
c000c9a6:	00 c0                	add    %al,%al
c000c9a8:	70 00                	jo     c000c9aa <_edata+0xe1a>
c000c9aa:	00 00                	add    %al,(%eax)
c000c9ac:	41                   	inc    %ecx
c000c9ad:	0e                   	push   %cs
c000c9ae:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c9b4:	46                   	inc    %esi
c000c9b5:	83 05 86 04 87 03 47 	addl   $0x47,0x3870486
c000c9bc:	2e 04 04             	cs add $0x4,%al
c000c9bf:	13 00                	adc    (%eax),%eax
c000c9c1:	00 00                	add    %al,(%eax)
c000c9c3:	2e 00 52 2e          	add    %dl,%cs:0x2e(%edx)
c000c9c7:	04 04                	add    $0x4,%al
c000c9c9:	08 00                	or     %al,(%eax)
c000c9cb:	00 00                	add    %al,(%eax)
c000c9cd:	2e 08 48 2e          	or     %cl,%cs:0x2e(%eax)
c000c9d1:	14 51                	adc    $0x51,%al
c000c9d3:	2e 18 47 2e          	sbb    %al,%cs:0x2e(%edi)
c000c9d7:	1c 41                	sbb    $0x41,%al
c000c9d9:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000c9dd:	00 46 c3             	add    %al,-0x3d(%esi)
c000c9e0:	41                   	inc    %ecx
c000c9e1:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c9e5:	0c 04                	or     $0x4,%al
c000c9e7:	04 c5                	add    $0xc5,%al
c000c9e9:	00 00                	add    %al,(%eax)
c000c9eb:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c000c9ef:	00 60 0e             	add    %ah,0xe(%eax)
c000c9f2:	00 00                	add    %al,(%eax)
c000c9f4:	1a 9d 00 c0 6a 00    	sbb    0x6ac000(%ebp),%bl
c000c9fa:	00 00                	add    %al,(%eax)
c000c9fc:	41                   	inc    %ecx
c000c9fd:	0e                   	push   %cs
c000c9fe:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ca04:	46                   	inc    %esi
c000ca05:	83 05 86 04 87 03 58 	addl   $0x58,0x3870486
c000ca0c:	2e 04 04             	cs add $0x4,%al
c000ca0f:	03 00                	add    (%eax),%eax
c000ca11:	00 00                	add    %al,(%eax)
c000ca13:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000ca17:	04 04                	add    $0x4,%al
c000ca19:	01 00                	add    %eax,(%eax)
c000ca1b:	00 00                	add    %al,(%eax)
c000ca1d:	2e 00 4c 2e 04       	add    %cl,%cs:0x4(%esi,%ebp,1)
c000ca22:	04 03                	add    $0x3,%al
c000ca24:	00 00                	add    %al,(%eax)
c000ca26:	00 2e                	add    %ch,(%esi)
c000ca28:	08 46 2e             	or     %al,0x2e(%esi)
c000ca2b:	04 04                	add    $0x4,%al
c000ca2d:	01 00                	add    %eax,(%eax)
c000ca2f:	00 00                	add    %al,(%eax)
c000ca31:	2e 00 45 2e          	add    %al,%cs:0x2e(%ebp)
c000ca35:	04 04                	add    $0x4,%al
c000ca37:	02 00                	add    (%eax),%al
c000ca39:	00 00                	add    %al,(%eax)
c000ca3b:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ca3f:	0c 41                	or     $0x41,%al
c000ca41:	2e 10 4e 2e          	adc    %cl,%cs:0x2e(%esi)
c000ca45:	00 4e c3             	add    %cl,-0x3d(%esi)
c000ca48:	41                   	inc    %ecx
c000ca49:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000ca4d:	0c 04                	or     $0x4,%al
c000ca4f:	04 c5                	add    $0xc5,%al
c000ca51:	00 00                	add    %al,(%eax)
c000ca53:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
c000ca57:	00 c8                	add    %cl,%al
c000ca59:	0e                   	push   %cs
c000ca5a:	00 00                	add    %al,(%eax)
c000ca5c:	84 9d 00 c0 5a 00    	test   %bl,0x5ac000(%ebp)
c000ca62:	00 00                	add    %al,(%eax)
c000ca64:	41                   	inc    %ecx
c000ca65:	0e                   	push   %cs
c000ca66:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ca6c:	42                   	inc    %edx
c000ca6d:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000ca71:	44                   	inc    %esp
c000ca72:	2e 04 04             	cs add $0x4,%al
c000ca75:	01 00                	add    %eax,(%eax)
c000ca77:	00 00                	add    %al,(%eax)
c000ca79:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ca7d:	0c 42                	or     $0x42,%al
c000ca7f:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ca83:	00 4a 2e             	add    %cl,0x2e(%edx)
c000ca86:	04 04                	add    $0x4,%al
c000ca88:	01 00                	add    %eax,(%eax)
c000ca8a:	00 00                	add    %al,(%eax)
c000ca8c:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000ca90:	0c 41                	or     $0x41,%al
c000ca92:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ca96:	00 41 2e             	add    %al,0x2e(%ecx)
c000ca99:	04 04                	add    $0x4,%al
c000ca9b:	01 00                	add    %eax,(%eax)
c000ca9d:	00 00                	add    %al,(%eax)
c000ca9f:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000caa3:	0c 42                	or     $0x42,%al
c000caa5:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000caa9:	04 04                	add    $0x4,%al
c000caab:	02 00                	add    (%eax),%al
c000caad:	00 00                	add    %al,(%eax)
c000caaf:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000cab3:	0c 42                	or     $0x42,%al
c000cab5:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000cab9:	0c 41                	or     $0x41,%al
c000cabb:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000cabf:	0c 42                	or     $0x42,%al
c000cac1:	2e 10 4b c3          	adc    %cl,%cs:-0x3d(%ebx)
c000cac5:	41                   	inc    %ecx
c000cac6:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000caca:	04 c5                	add    $0xc5,%al
c000cacc:	41                   	inc    %ecx
c000cacd:	13 03                	adc    (%ebx),%eax
c000cacf:	2e 00 00             	add    %al,%cs:(%eax)
c000cad2:	00 00                	add    %al,(%eax)
c000cad4:	28 00                	sub    %al,(%eax)
c000cad6:	00 00                	add    %al,(%eax)
c000cad8:	48                   	dec    %eax
c000cad9:	0f 00 00             	sldt   (%eax)
c000cadc:	e0 9d                	loopne c000ca7b <_edata+0xeeb>
c000cade:	00 c0                	add    %al,%al
c000cae0:	5f                   	pop    %edi
c000cae1:	00 00                	add    %al,(%eax)
c000cae3:	00 41 0e             	add    %al,0xe(%ecx)
c000cae6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000caec:	45                   	inc    %ebp
c000caed:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000caf0:	03 44 83 05          	add    0x5(%ebx,%eax,4),%eax
c000caf4:	02 4f c3             	add    -0x3d(%edi),%cl
c000caf7:	41                   	inc    %ecx
c000caf8:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000cafc:	0c 04                	or     $0x4,%al
c000cafe:	04 c5                	add    $0xc5,%al
c000cb00:	28 00                	sub    %al,(%eax)
c000cb02:	00 00                	add    %al,(%eax)
c000cb04:	74 0f                	je     c000cb15 <_edata+0xf85>
c000cb06:	00 00                	add    %al,(%eax)
c000cb08:	3f                   	aas    
c000cb09:	9e                   	sahf   
c000cb0a:	00 c0                	add    %al,%al
c000cb0c:	44                   	inc    %esp
c000cb0d:	00 00                	add    %al,(%eax)
c000cb0f:	00 41 0e             	add    %al,0xe(%ecx)
c000cb12:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cb18:	44                   	inc    %esp
c000cb19:	86 03                	xchg   %al,(%ebx)
c000cb1b:	47                   	inc    %edi
c000cb1c:	83 04 04 33          	addl   $0x33,(%esp,%eax,1)
c000cb20:	00 00                	add    %al,(%eax)
c000cb22:	00 c3                	add    %al,%bl
c000cb24:	41                   	inc    %ecx
c000cb25:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cb29:	04 c5                	add    $0xc5,%al
c000cb2b:	00 20                	add    %ah,(%eax)
c000cb2d:	00 00                	add    %al,(%eax)
c000cb2f:	00 a0 0f 00 00 83    	add    %ah,-0x7cfffff1(%eax)
c000cb35:	9e                   	sahf   
c000cb36:	00 c0                	add    %al,%al
c000cb38:	3c 00                	cmp    $0x0,%al
c000cb3a:	00 00                	add    %al,(%eax)
c000cb3c:	41                   	inc    %ecx
c000cb3d:	0e                   	push   %cs
c000cb3e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cb44:	41                   	inc    %ecx
c000cb45:	83 03 76             	addl   $0x76,(%ebx)
c000cb48:	c3                   	ret    
c000cb49:	41                   	inc    %ecx
c000cb4a:	0c 04                	or     $0x4,%al
c000cb4c:	04 c5                	add    $0xc5,%al
c000cb4e:	00 00                	add    %al,(%eax)
c000cb50:	20 00                	and    %al,(%eax)
c000cb52:	00 00                	add    %al,(%eax)
c000cb54:	c4 0f                	les    (%edi),%ecx
c000cb56:	00 00                	add    %al,(%eax)
c000cb58:	bf 9e 00 c0 2e       	mov    $0x2ec0009e,%edi
c000cb5d:	00 00                	add    %al,(%eax)
c000cb5f:	00 41 0e             	add    %al,0xe(%ecx)
c000cb62:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000cb68:	46                   	inc    %esi
c000cb69:	83 03 5e             	addl   $0x5e,(%ebx)
c000cb6c:	c3                   	ret    
c000cb6d:	41                   	inc    %ecx
c000cb6e:	0c 04                	or     $0x4,%al
c000cb70:	04 c5                	add    $0xc5,%al
c000cb72:	00 00                	add    %al,(%eax)
c000cb74:	1c 00                	sbb    $0x0,%al
c000cb76:	00 00                	add    %al,(%eax)
c000cb78:	e8 0f 00 00 ed       	call   ad00cb8c <AR_CODE32+0xad000af4>
c000cb7d:	9e                   	sahf   
c000cb7e:	00 c0                	add    %al,%al
c000cb80:	27                   	daa    
c000cb81:	00 00                	add    %al,(%eax)
c000cb83:	00 41 0e             	add    %al,0xe(%ecx)
c000cb86:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000cb8c:	5e                   	pop    %esi
c000cb8d:	0c 04                	or     $0x4,%al
c000cb8f:	04 c5                	add    $0xc5,%al
c000cb91:	00 00                	add    %al,(%eax)
c000cb93:	00 2c 00             	add    %ch,(%eax,%eax,1)
c000cb96:	00 00                	add    %al,(%eax)
c000cb98:	08 10                	or     %dl,(%eax)
c000cb9a:	00 00                	add    %al,(%eax)
c000cb9c:	14 9f                	adc    $0x9f,%al
c000cb9e:	00 c0                	add    %al,%al
c000cba0:	a1 00 00 00 41       	mov    0x41000000,%eax
c000cba5:	0e                   	push   %cs
c000cba6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cbac:	42                   	inc    %edx
c000cbad:	83 03 02             	addl   $0x2,(%ebx)
c000cbb0:	92                   	xchg   %eax,%edx
c000cbb1:	0a c3                	or     %bl,%al
c000cbb3:	41                   	inc    %ecx
c000cbb4:	0c 04                	or     $0x4,%al
c000cbb6:	04 c5                	add    $0xc5,%al
c000cbb8:	45                   	inc    %ebp
c000cbb9:	0b 42 c3             	or     -0x3d(%edx),%eax
c000cbbc:	41                   	inc    %ecx
c000cbbd:	0c 04                	or     $0x4,%al
c000cbbf:	04 c5                	add    $0xc5,%al
c000cbc1:	00 00                	add    %al,(%eax)
c000cbc3:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000cbc6:	00 00                	add    %al,(%eax)
c000cbc8:	38 10                	cmp    %dl,(%eax)
c000cbca:	00 00                	add    %al,(%eax)
c000cbcc:	b5 9f                	mov    $0x9f,%ch
c000cbce:	00 c0                	add    %al,%al
c000cbd0:	28 00                	sub    %al,(%eax)
c000cbd2:	00 00                	add    %al,(%eax)
c000cbd4:	41                   	inc    %ecx
c000cbd5:	0e                   	push   %cs
c000cbd6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cbdc:	41                   	inc    %ecx
c000cbdd:	86 03                	xchg   %al,(%ebx)
c000cbdf:	45                   	inc    %ebp
c000cbe0:	83 04 04 0a          	addl   $0xa,(%esp,%eax,1)
c000cbe4:	00 00                	add    %al,(%eax)
c000cbe6:	00 2e                	add    %ch,(%esi)
c000cbe8:	04 04                	add    $0x4,%al
c000cbea:	01 00                	add    %eax,(%eax)
c000cbec:	00 00                	add    %al,(%eax)
c000cbee:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000cbf2:	04 04                	add    $0x4,%al
c000cbf4:	01 00                	add    %eax,(%eax)
c000cbf6:	00 00                	add    %al,(%eax)
c000cbf8:	2e 00 4a c3          	add    %cl,%cs:-0x3d(%edx)
c000cbfc:	41                   	inc    %ecx
c000cbfd:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cc01:	04 c5                	add    $0xc5,%al
c000cc03:	00 38                	add    %bh,(%eax)
c000cc05:	00 00                	add    %al,(%eax)
c000cc07:	00 78 10             	add    %bh,0x10(%eax)
c000cc0a:	00 00                	add    %al,(%eax)
c000cc0c:	dd 9f 00 c0 3a 00    	fstpl  0x3ac000(%edi)
c000cc12:	00 00                	add    %al,(%eax)
c000cc14:	41                   	inc    %ecx
c000cc15:	0e                   	push   %cs
c000cc16:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000cc1c:	47                   	inc    %edi
c000cc1d:	83 04 87 03          	addl   $0x3,(%edi,%eax,4)
c000cc21:	51                   	push   %ecx
c000cc22:	2e 04 04             	cs add $0x4,%al
c000cc25:	04 00                	add    $0x0,%al
c000cc27:	00 00                	add    %al,(%eax)
c000cc29:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000cc2d:	0c 46                	or     $0x46,%al
c000cc2f:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000cc33:	14 48                	adc    $0x48,%al
c000cc35:	2e 00 44 c3 41       	add    %al,%cs:0x41(%ebx,%eax,8)
c000cc3a:	c7 41 0c 04 04 c5 38 	movl   $0x38c50404,0xc(%ecx)
c000cc41:	00 00                	add    %al,(%eax)
c000cc43:	00 b4 10 00 00 17 a0 	add    %dh,-0x5fe90000(%eax,%edx,1)
c000cc4a:	00 c0                	add    %al,%al
c000cc4c:	3a 00                	cmp    (%eax),%al
c000cc4e:	00 00                	add    %al,(%eax)
c000cc50:	41                   	inc    %ecx
c000cc51:	0e                   	push   %cs
c000cc52:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000cc58:	47                   	inc    %edi
c000cc59:	83 04 87 03          	addl   $0x3,(%edi,%eax,4)
c000cc5d:	51                   	push   %ecx
c000cc5e:	2e 04 04             	cs add $0x4,%al
c000cc61:	04 00                	add    $0x0,%al
c000cc63:	00 00                	add    %al,(%eax)
c000cc65:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000cc69:	0c 46                	or     $0x46,%al
c000cc6b:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000cc6f:	14 48                	adc    $0x48,%al
c000cc71:	2e 00 44 c3 41       	add    %al,%cs:0x41(%ebx,%eax,8)
c000cc76:	c7 41 0c 04 04 c5 38 	movl   $0x38c50404,0xc(%ecx)
c000cc7d:	00 00                	add    %al,(%eax)
c000cc7f:	00 f0                	add    %dh,%al
c000cc81:	10 00                	adc    %al,(%eax)
c000cc83:	00 54 a0 00          	add    %dl,0x0(%eax,%eiz,4)
c000cc87:	c0 47 00 00          	rolb   $0x0,0x0(%edi)
c000cc8b:	00 41 0e             	add    %al,0xe(%ecx)
c000cc8e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cc94:	45                   	inc    %ebp
c000cc95:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000cc99:	52                   	push   %edx
c000cc9a:	2e 04 04             	cs add $0x4,%al
c000cc9d:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cca2:	08 42 2e             	or     %al,0x2e(%edx)
c000cca5:	0c 45                	or     $0x45,%al
c000cca7:	2e 10 4e 2e          	adc    %cl,%cs:0x2e(%esi)
c000ccab:	00 50 c3             	add    %dl,-0x3d(%eax)
c000ccae:	41                   	inc    %ecx
c000ccaf:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000ccb3:	04 c5                	add    $0xc5,%al
c000ccb5:	00 00                	add    %al,(%eax)
c000ccb7:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000ccba:	00 00                	add    %al,(%eax)
c000ccbc:	2c 11                	sub    $0x11,%al
c000ccbe:	00 00                	add    %al,(%eax)
c000ccc0:	9b                   	fwait
c000ccc1:	a0 00 c0 4a 00       	mov    0x4ac000,%al
c000ccc6:	00 00                	add    %al,(%eax)
c000ccc8:	41                   	inc    %ecx
c000ccc9:	0e                   	push   %cs
c000ccca:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ccd0:	46                   	inc    %esi
c000ccd1:	83 05 86 04 87 03 56 	addl   $0x56,0x3870486
c000ccd8:	2e 04 04             	cs add $0x4,%al
c000ccdb:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cce0:	08 42 2e             	or     %al,0x2e(%edx)
c000cce3:	0c 45                	or     $0x45,%al
c000cce5:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cce9:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000ccec:	41                   	inc    %ecx
c000cced:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000ccf1:	0c 04                	or     $0x4,%al
c000ccf3:	04 c5                	add    $0xc5,%al
c000ccf5:	00 00                	add    %al,(%eax)
c000ccf7:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000ccfa:	00 00                	add    %al,(%eax)
c000ccfc:	6c                   	insb   (%dx),%es:(%edi)
c000ccfd:	11 00                	adc    %eax,(%eax)
c000ccff:	00 e5                	add    %ah,%ch
c000cd01:	a0 00 c0 42 00       	mov    0x42c000,%al
c000cd06:	00 00                	add    %al,(%eax)
c000cd08:	41                   	inc    %ecx
c000cd09:	0e                   	push   %cs
c000cd0a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cd10:	41                   	inc    %ecx
c000cd11:	86 03                	xchg   %al,(%ebx)
c000cd13:	44                   	inc    %esp
c000cd14:	83 04 04 10          	addl   $0x10,(%esp,%eax,1)
c000cd18:	00 00                	add    %al,(%eax)
c000cd1a:	00 2e                	add    %ch,(%esi)
c000cd1c:	04 04                	add    $0x4,%al
c000cd1e:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cd23:	08 42 2e             	or     %al,0x2e(%edx)
c000cd26:	0c 45                	or     $0x45,%al
c000cd28:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cd2c:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000cd2f:	41                   	inc    %ecx
c000cd30:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cd34:	04 c5                	add    $0xc5,%al
c000cd36:	00 00                	add    %al,(%eax)
c000cd38:	20 00                	and    %al,(%eax)
c000cd3a:	00 00                	add    %al,(%eax)
c000cd3c:	ac                   	lods   %ds:(%esi),%al
c000cd3d:	11 00                	adc    %eax,(%eax)
c000cd3f:	00 27                	add    %ah,(%edi)
c000cd41:	a1 00 c0 1a 00       	mov    0x1ac000,%eax
c000cd46:	00 00                	add    %al,(%eax)
c000cd48:	41                   	inc    %ecx
c000cd49:	0e                   	push   %cs
c000cd4a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000cd50:	44                   	inc    %esp
c000cd51:	83 03 4f             	addl   $0x4f,(%ebx)
c000cd54:	c3                   	ret    
c000cd55:	41                   	inc    %ecx
c000cd56:	0c 04                	or     $0x4,%al
c000cd58:	04 c5                	add    $0xc5,%al
c000cd5a:	00 00                	add    %al,(%eax)
c000cd5c:	44                   	inc    %esp
c000cd5d:	00 00                	add    %al,(%eax)
c000cd5f:	00 d0                	add    %dl,%al
c000cd61:	11 00                	adc    %eax,(%eax)
c000cd63:	00 44 a1 00          	add    %al,0x0(%ecx,%eiz,4)
c000cd67:	c0 43 00 00          	rolb   $0x0,0x0(%ebx)
c000cd6b:	00 41 0e             	add    %al,0xe(%ecx)
c000cd6e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cd74:	41                   	inc    %ecx
c000cd75:	86 03                	xchg   %al,(%ebx)
c000cd77:	45                   	inc    %ebp
c000cd78:	83 04 04 06          	addl   $0x6,(%esp,%eax,1)
c000cd7c:	00 00                	add    %al,(%eax)
c000cd7e:	00 2e                	add    %ch,(%esi)
c000cd80:	0c 46                	or     $0x46,%al
c000cd82:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000cd86:	00 49 2e             	add    %cl,0x2e(%ecx)
c000cd89:	04 04                	add    $0x4,%al
c000cd8b:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cd90:	08 42 2e             	or     %al,0x2e(%edx)
c000cd93:	0c 45                	or     $0x45,%al
c000cd95:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cd99:	00 44 c3 41          	add    %al,0x41(%ebx,%eax,8)
c000cd9d:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cda1:	04 c5                	add    $0xc5,%al
c000cda3:	00 28                	add    %ch,(%eax)
c000cda5:	00 00                	add    %al,(%eax)
c000cda7:	00 18                	add    %bl,(%eax)
c000cda9:	12 00                	adc    (%eax),%al
c000cdab:	00 87 a1 00 c0 26    	add    %al,0x26c000a1(%edi)
c000cdb1:	00 00                	add    %al,(%eax)
c000cdb3:	00 41 0e             	add    %al,0xe(%ecx)
c000cdb6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cdbc:	43                   	inc    %ebx
c000cdbd:	2e 08 55 2e          	or     %dl,%cs:0x2e(%ebp)
c000cdc1:	0c 41                	or     $0x41,%al
c000cdc3:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cdc7:	00 41 c5             	add    %al,-0x3b(%ecx)
c000cdca:	0c 04                	or     $0x4,%al
c000cdcc:	04 00                	add    $0x0,%al
c000cdce:	00 00                	add    %al,(%eax)
c000cdd0:	98                   	cwtl   
c000cdd1:	00 00                	add    %al,(%eax)
c000cdd3:	00 44 12 00          	add    %al,0x0(%edx,%edx,1)
c000cdd7:	00 ad a1 00 c0 da    	add    %ch,-0x253fff5f(%ebp)
c000cddd:	00 00                	add    %al,(%eax)
c000cddf:	00 41 0e             	add    %al,0xe(%ecx)
c000cde2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cde8:	46                   	inc    %esi
c000cde9:	83 05 86 04 87 03 58 	addl   $0x58,0x3870486
c000cdf0:	2e 04 04             	cs add $0x4,%al
c000cdf3:	04 00                	add    $0x0,%al
c000cdf5:	00 00                	add    %al,(%eax)
c000cdf7:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000cdfb:	0c 41                	or     $0x41,%al
c000cdfd:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ce01:	00 49 2e             	add    %cl,0x2e(%ecx)
c000ce04:	04 04                	add    $0x4,%al
c000ce06:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ce0b:	08 42 2e             	or     %al,0x2e(%edx)
c000ce0e:	0c 45                	or     $0x45,%al
c000ce10:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ce14:	00 46 2e             	add    %al,0x2e(%esi)
c000ce17:	04 04                	add    $0x4,%al
c000ce19:	04 00                	add    $0x0,%al
c000ce1b:	00 00                	add    %al,(%eax)
c000ce1d:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ce21:	0c 41                	or     $0x41,%al
c000ce23:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ce27:	00 49 2e             	add    %cl,0x2e(%ecx)
c000ce2a:	04 04                	add    $0x4,%al
c000ce2c:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ce31:	08 42 2e             	or     %al,0x2e(%edx)
c000ce34:	0c 45                	or     $0x45,%al
c000ce36:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ce3a:	00 46 2e             	add    %al,0x2e(%esi)
c000ce3d:	04 04                	add    $0x4,%al
c000ce3f:	04 00                	add    $0x0,%al
c000ce41:	00 00                	add    %al,(%eax)
c000ce43:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ce47:	0c 41                	or     $0x41,%al
c000ce49:	2e 10 54 2e 00       	adc    %dl,%cs:0x0(%esi,%ebp,1)
c000ce4e:	5a                   	pop    %edx
c000ce4f:	2e 04 04             	cs add $0x4,%al
c000ce52:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ce57:	08 42 2e             	or     %al,0x2e(%edx)
c000ce5a:	0c 45                	or     $0x45,%al
c000ce5c:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ce60:	00 47 c3             	add    %al,-0x3d(%edi)
c000ce63:	41                   	inc    %ecx
c000ce64:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000ce68:	0c 04                	or     $0x4,%al
c000ce6a:	04 c5                	add    $0xc5,%al
c000ce6c:	64 00 00             	add    %al,%fs:(%eax)
c000ce6f:	00 e0                	add    %ah,%al
c000ce71:	12 00                	adc    (%eax),%al
c000ce73:	00 87 a2 00 c0 8c    	add    %al,-0x733fff5e(%edi)
c000ce79:	00 00                	add    %al,(%eax)
c000ce7b:	00 41 0e             	add    %al,0xe(%ecx)
c000ce7e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ce84:	46                   	inc    %esi
c000ce85:	83 05 86 04 87 03 55 	addl   $0x55,0x3870486
c000ce8c:	2e 04 04             	cs add $0x4,%al
c000ce8f:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ce94:	08 42 2e             	or     %al,0x2e(%edx)
c000ce97:	0c 45                	or     $0x45,%al
c000ce99:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ce9d:	00 43 2e             	add    %al,0x2e(%ebx)
c000cea0:	0c 44                	or     $0x44,%al
c000cea2:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cea6:	00 47 2e             	add    %al,0x2e(%edi)
c000cea9:	0c 41                	or     $0x41,%al
c000ceab:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000ceaf:	0c 43                	or     $0x43,%al
c000ceb1:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ceb5:	00 4f 2e             	add    %cl,0x2e(%edi)
c000ceb8:	04 04                	add    $0x4,%al
c000ceba:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cebf:	08 42 2e             	or     %al,0x2e(%edx)
c000cec2:	0c 45                	or     $0x45,%al
c000cec4:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cec8:	00 47 c3             	add    %al,-0x3d(%edi)
c000cecb:	41                   	inc    %ecx
c000cecc:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000ced0:	0c 04                	or     $0x4,%al
c000ced2:	04 c5                	add    $0xc5,%al
c000ced4:	40                   	inc    %eax
c000ced5:	00 00                	add    %al,(%eax)
c000ced7:	00 48 13             	add    %cl,0x13(%eax)
c000ceda:	00 00                	add    %al,(%eax)
c000cedc:	13 a3 00 c0 5b 00    	adc    0x5bc000(%ebx),%esp
c000cee2:	00 00                	add    %al,(%eax)
c000cee4:	41                   	inc    %ecx
c000cee5:	0e                   	push   %cs
c000cee6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ceec:	42                   	inc    %edx
c000ceed:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000cef1:	51                   	push   %ecx
c000cef2:	2e 0c 44             	cs or  $0x44,%al
c000cef5:	2e 10 4d 2e          	adc    %cl,%cs:0x2e(%ebp)
c000cef9:	00 4d 2e             	add    %cl,0x2e(%ebp)
c000cefc:	04 04                	add    $0x4,%al
c000cefe:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cf03:	08 42 2e             	or     %al,0x2e(%edx)
c000cf06:	0c 45                	or     $0x45,%al
c000cf08:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cf0c:	00 50 c3             	add    %dl,-0x3d(%eax)
c000cf0f:	41                   	inc    %ecx
c000cf10:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cf14:	04 c5                	add    $0xc5,%al
c000cf16:	00 00                	add    %al,(%eax)
c000cf18:	54                   	push   %esp
c000cf19:	00 00                	add    %al,(%eax)
c000cf1b:	00 8c 13 00 00 6e a3 	add    %cl,-0x5c920000(%ebx,%edx,1)
c000cf22:	00 c0                	add    %al,%al
c000cf24:	78 00                	js     c000cf26 <_edata+0x1396>
c000cf26:	00 00                	add    %al,(%eax)
c000cf28:	41                   	inc    %ecx
c000cf29:	0e                   	push   %cs
c000cf2a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cf30:	42                   	inc    %edx
c000cf31:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000cf35:	53                   	push   %ebx
c000cf36:	2e 04 04             	cs add $0x4,%al
c000cf39:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cf3e:	08 42 2e             	or     %al,0x2e(%edx)
c000cf41:	0c 45                	or     $0x45,%al
c000cf43:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cf47:	00 50 0a             	add    %dl,0xa(%eax)
c000cf4a:	c3                   	ret    
c000cf4b:	41                   	inc    %ecx
c000cf4c:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cf50:	04 c5                	add    $0xc5,%al
c000cf52:	41                   	inc    %ecx
c000cf53:	0b 47 2e             	or     0x2e(%edi),%eax
c000cf56:	04 04                	add    $0x4,%al
c000cf58:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cf5d:	08 42 2e             	or     %al,0x2e(%edx)
c000cf60:	0c 45                	or     $0x45,%al
c000cf62:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cf66:	00 57 c3             	add    %dl,-0x3d(%edi)
c000cf69:	41                   	inc    %ecx
c000cf6a:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cf6e:	04 c5                	add    $0xc5,%al
c000cf70:	28 00                	sub    %al,(%eax)
c000cf72:	00 00                	add    %al,(%eax)
c000cf74:	e4 13                	in     $0x13,%al
c000cf76:	00 00                	add    %al,(%eax)
c000cf78:	08 a4 00 c0 1a 00 00 	or     %ah,0x1ac0(%eax,%eax,1)
c000cf7f:	00 41 0e             	add    %al,0xe(%ecx)
c000cf82:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cf88:	41                   	inc    %ecx
c000cf89:	86 03                	xchg   %al,(%ebx)
c000cf8b:	44                   	inc    %esp
c000cf8c:	83 04 04 0e          	addl   $0xe,(%esp,%eax,1)
c000cf90:	00 00                	add    %al,(%eax)
c000cf92:	00 c3                	add    %al,%bl
c000cf94:	41                   	inc    %ecx
c000cf95:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000cf99:	04 c5                	add    $0xc5,%al
c000cf9b:	00 38                	add    %bh,(%eax)
c000cf9d:	00 00                	add    %al,(%eax)
c000cf9f:	00 10                	add    %dl,(%eax)
c000cfa1:	14 00                	adc    $0x0,%al
c000cfa3:	00 22                	add    %ah,(%edx)
c000cfa5:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c000cfa6:	00 c0                	add    %al,%al
c000cfa8:	5d                   	pop    %ebp
c000cfa9:	00 00                	add    %al,(%eax)
c000cfab:	00 41 0e             	add    %al,0xe(%ecx)
c000cfae:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cfb4:	44                   	inc    %esp
c000cfb5:	2e 04 83             	cs add $0x83,%al
c000cfb8:	03 48 2e             	add    0x2e(%eax),%ecx
c000cfbb:	08 42 2e             	or     %al,0x2e(%edx)
c000cfbe:	0c 41                	or     $0x41,%al
c000cfc0:	2e 10 49 2e          	adc    %cl,%cs:0x2e(%ecx)
c000cfc4:	0c 41                	or     $0x41,%al
c000cfc6:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000cfca:	0c 44                	or     $0x44,%al
c000cfcc:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cfd0:	00 71 c5             	add    %dh,-0x3b(%ecx)
c000cfd3:	0c 04                	or     $0x4,%al
c000cfd5:	04 c3                	add    $0xc3,%al
c000cfd7:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000cfda:	00 00                	add    %al,(%eax)
c000cfdc:	4c                   	dec    %esp
c000cfdd:	14 00                	adc    $0x0,%al
c000cfdf:	00 7f a4             	add    %bh,-0x5c(%edi)
c000cfe2:	00 c0                	add    %al,%al
c000cfe4:	0c 00                	or     $0x0,%al
c000cfe6:	00 00                	add    %al,(%eax)
c000cfe8:	41                   	inc    %ecx
c000cfe9:	0e                   	push   %cs
c000cfea:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cff0:	48                   	dec    %eax
c000cff1:	0c 04                	or     $0x4,%al
c000cff3:	04 c5                	add    $0xc5,%al
c000cff5:	00 00                	add    %al,(%eax)
c000cff7:	00 40 00             	add    %al,0x0(%eax)
c000cffa:	00 00                	add    %al,(%eax)
c000cffc:	6c                   	insb   (%dx),%es:(%edi)
c000cffd:	14 00                	adc    $0x0,%al
c000cfff:	00 8b a4 00 c0 56    	add    %cl,0x56c000a4(%ebx)
c000d005:	00 00                	add    %al,(%eax)
c000d007:	00 41 0e             	add    %al,0xe(%ecx)
c000d00a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000d010:	43                   	inc    %ebx
c000d011:	2e 0c 45             	cs or  $0x45,%al
c000d014:	2e 10 59 2e          	adc    %bl,%cs:0x2e(%ecx)
c000d018:	04 04                	add    $0x4,%al
c000d01a:	02 00                	add    (%eax),%al
c000d01c:	00 00                	add    %al,(%eax)
c000d01e:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000d022:	0c 41                	or     $0x41,%al
c000d024:	2e 10 59 2e          	adc    %bl,%cs:0x2e(%ecx)
c000d028:	0c 41                	or     $0x41,%al
c000d02a:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d02e:	0c 45                	or     $0x45,%al
c000d030:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d034:	00 41 c5             	add    %al,-0x3b(%ecx)
c000d037:	0c 04                	or     $0x4,%al
c000d039:	04 00                	add    $0x0,%al
c000d03b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000d03e:	00 00                	add    %al,(%eax)
c000d040:	b0 14                	mov    $0x14,%al
c000d042:	00 00                	add    %al,(%eax)
c000d044:	e1 a4                	loope  c000cfea <_edata+0x145a>
c000d046:	00 c0                	add    %al,%al
c000d048:	56                   	push   %esi
c000d049:	00 00                	add    %al,(%eax)
c000d04b:	00 41 0e             	add    %al,0xe(%ecx)
c000d04e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000d054:	02 52 0c             	add    0xc(%edx),%dl
c000d057:	04 04                	add    $0x4,%al
c000d059:	c5 00                	lds    (%eax),%eax
c000d05b:	00 b8 00 00 00 d0    	add    %bh,-0x30000000(%eax)
c000d061:	14 00                	adc    $0x0,%al
c000d063:	00 37                	add    %dh,(%edi)
c000d065:	a5                   	movsl  %ds:(%esi),%es:(%edi)
c000d066:	00 c0                	add    %al,%al
c000d068:	bf 00 00 00 41       	mov    $0x41000000,%edi
c000d06d:	0e                   	push   %cs
c000d06e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000d074:	41                   	inc    %ecx
c000d075:	86 03                	xchg   %al,(%ebx)
c000d077:	47                   	inc    %edi
c000d078:	2e 0c 42             	cs or  $0x42,%al
c000d07b:	2e 10 83 04 04 0e 00 	adc    %al,%cs:0xe0404(%ebx)
c000d082:	00 00                	add    %al,(%eax)
c000d084:	2e 04 04             	cs add $0x4,%al
c000d087:	01 00                	add    %eax,(%eax)
c000d089:	00 00                	add    %al,(%eax)
c000d08b:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000d08f:	0c 41                	or     $0x41,%al
c000d091:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000d095:	04 04                	add    $0x4,%al
c000d097:	03 00                	add    (%eax),%eax
c000d099:	00 00                	add    %al,(%eax)
c000d09b:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000d09f:	0c 44                	or     $0x44,%al
c000d0a1:	2e 10 4c 2e 0c       	adc    %cl,%cs:0xc(%esi,%ebp,1)
c000d0a6:	41                   	inc    %ecx
c000d0a7:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d0ab:	0c 45                	or     $0x45,%al
c000d0ad:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d0b1:	00 49 2e             	add    %cl,0x2e(%ecx)
c000d0b4:	04 04                	add    $0x4,%al
c000d0b6:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d0bb:	08 42 2e             	or     %al,0x2e(%edx)
c000d0be:	0c 45                	or     $0x45,%al
c000d0c0:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d0c4:	00 41 2e             	add    %al,0x2e(%ecx)
c000d0c7:	04 04                	add    $0x4,%al
c000d0c9:	01 00                	add    %eax,(%eax)
c000d0cb:	00 00                	add    %al,(%eax)
c000d0cd:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d0d1:	0c 45                	or     $0x45,%al
c000d0d3:	2e 10 49 2e          	adc    %cl,%cs:0x2e(%ecx)
c000d0d7:	0c 41                	or     $0x41,%al
c000d0d9:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d0dd:	0c 45                	or     $0x45,%al
c000d0df:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d0e3:	00 49 2e             	add    %cl,0x2e(%ecx)
c000d0e6:	04 04                	add    $0x4,%al
c000d0e8:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d0ed:	08 42 2e             	or     %al,0x2e(%edx)
c000d0f0:	0c 45                	or     $0x45,%al
c000d0f2:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d0f6:	00 41 2e             	add    %al,0x2e(%ecx)
c000d0f9:	04 04                	add    $0x4,%al
c000d0fb:	01 00                	add    %eax,(%eax)
c000d0fd:	00 00                	add    %al,(%eax)
c000d0ff:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d103:	0c 45                	or     $0x45,%al
c000d105:	2e 10 4b c3          	adc    %cl,%cs:-0x3d(%ebx)
c000d109:	41                   	inc    %ecx
c000d10a:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000d10e:	04 c5                	add    $0xc5,%al
c000d110:	41                   	inc    %ecx
c000d111:	13 03                	adc    (%ebx),%eax
c000d113:	2e 00 00             	add    %al,%cs:(%eax)
c000d116:	00 00                	add    %al,(%eax)
c000d118:	a0 00 00 00 8c       	mov    0x8c000000,%al
c000d11d:	15 00 00 f6 a5       	adc    $0xa5f60000,%eax
c000d122:	00 c0                	add    %al,%al
c000d124:	f7 00 00 00 41 0e    	testl  $0xe410000,(%eax)
c000d12a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000d130:	42                   	inc    %edx
c000d131:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000d135:	4f                   	dec    %edi
c000d136:	2e 04 04             	cs add $0x4,%al
c000d139:	01 00                	add    %eax,(%eax)
c000d13b:	00 00                	add    %al,(%eax)
c000d13d:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000d142:	45                   	inc    %ebp
c000d143:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d147:	00 49 2e             	add    %cl,0x2e(%ecx)
c000d14a:	04 04                	add    $0x4,%al
c000d14c:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d151:	08 42 2e             	or     %al,0x2e(%edx)
c000d154:	0c 45                	or     $0x45,%al
c000d156:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d15a:	00 41 2e             	add    %al,0x2e(%ecx)
c000d15d:	04 04                	add    $0x4,%al
c000d15f:	01 00                	add    %eax,(%eax)
c000d161:	00 00                	add    %al,(%eax)
c000d163:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d167:	0c 45                	or     $0x45,%al
c000d169:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d16d:	00 56 2e             	add    %dl,0x2e(%esi)
c000d170:	0c 45                	or     $0x45,%al
c000d172:	2e 10 52 2e          	adc    %dl,%cs:0x2e(%edx)
c000d176:	00 49 2e             	add    %cl,0x2e(%ecx)
c000d179:	04 04                	add    $0x4,%al
c000d17b:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d180:	08 45 2e             	or     %al,0x2e(%ebp)
c000d183:	0c 45                	or     $0x45,%al
c000d185:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d189:	00 51 2e             	add    %dl,0x2e(%ecx)
c000d18c:	04 04                	add    $0x4,%al
c000d18e:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d193:	08 45 2e             	or     %al,0x2e(%ebp)
c000d196:	0c 45                	or     $0x45,%al
c000d198:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d19c:	00 43 2e             	add    %al,0x2e(%ebx)
c000d19f:	0c 45                	or     $0x45,%al
c000d1a1:	2e 10 55 2e          	adc    %dl,%cs:0x2e(%ebp)
c000d1a5:	0c 41                	or     $0x41,%al
c000d1a7:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d1ab:	0c 41                	or     $0x41,%al
c000d1ad:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d1b1:	00 44 c3 41          	add    %al,0x41(%ebx,%eax,8)
c000d1b5:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000d1b9:	04 c5                	add    $0xc5,%al
c000d1bb:	00 38                	add    %bh,(%eax)
c000d1bd:	00 00                	add    %al,(%eax)
c000d1bf:	00 30                	add    %dh,(%eax)
c000d1c1:	16                   	push   %ss
c000d1c2:	00 00                	add    %al,(%eax)
c000d1c4:	ed                   	in     (%dx),%eax
c000d1c5:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
c000d1c6:	00 c0                	add    %al,%al
c000d1c8:	4b                   	dec    %ebx
c000d1c9:	00 00                	add    %al,(%eax)
c000d1cb:	00 41 0e             	add    %al,0xe(%ecx)
c000d1ce:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000d1d4:	42                   	inc    %edx
c000d1d5:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000d1d9:	4d                   	dec    %ebp
c000d1da:	2e 04 04             	cs add $0x4,%al
c000d1dd:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d1e2:	08 45 2e             	or     %al,0x2e(%ebp)
c000d1e5:	0c 45                	or     $0x45,%al
c000d1e7:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d1eb:	00 5b c3             	add    %bl,-0x3d(%ebx)
c000d1ee:	41                   	inc    %ecx
c000d1ef:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000d1f3:	04 c5                	add    $0xc5,%al
c000d1f5:	00 00                	add    %al,(%eax)
c000d1f7:	00 88 00 00 00 6c    	add    %cl,0x6c000000(%eax)
c000d1fd:	16                   	push   %ss
c000d1fe:	00 00                	add    %al,(%eax)
c000d200:	38 a7 00 c0 a2 00    	cmp    %ah,0xa2c000(%edi)
c000d206:	00 00                	add    %al,(%eax)
c000d208:	41                   	inc    %ecx
c000d209:	0e                   	push   %cs
c000d20a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000d210:	46                   	inc    %esi
c000d211:	83 05 86 04 87 03 51 	addl   $0x51,0x3870486
c000d218:	2e 04 04             	cs add $0x4,%al
c000d21b:	01 00                	add    %eax,(%eax)
c000d21d:	00 00                	add    %al,(%eax)
c000d21f:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000d224:	45                   	inc    %ebp
c000d225:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d229:	00 49 2e             	add    %cl,0x2e(%ecx)
c000d22c:	04 04                	add    $0x4,%al
c000d22e:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d233:	08 45 2e             	or     %al,0x2e(%ebp)
c000d236:	0c 45                	or     $0x45,%al
c000d238:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d23c:	00 41 2e             	add    %al,0x2e(%ecx)
c000d23f:	04 04                	add    $0x4,%al
c000d241:	01 00                	add    %eax,(%eax)
c000d243:	00 00                	add    %al,(%eax)
c000d245:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d249:	0c 45                	or     $0x45,%al
c000d24b:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d24f:	00 49 2e             	add    %cl,0x2e(%ecx)
c000d252:	04 04                	add    $0x4,%al
c000d254:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000d259:	08 45 2e             	or     %al,0x2e(%ebp)
c000d25c:	0c 45                	or     $0x45,%al
c000d25e:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d262:	00 41 2e             	add    %al,0x2e(%ecx)
c000d265:	04 04                	add    $0x4,%al
c000d267:	01 00                	add    %eax,(%eax)
c000d269:	00 00                	add    %al,(%eax)
c000d26b:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000d26f:	0c 45                	or     $0x45,%al
c000d271:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000d275:	00 4e c3             	add    %cl,-0x3d(%esi)
c000d278:	41                   	inc    %ecx
c000d279:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000d27d:	0c 04                	or     $0x4,%al
c000d27f:	04 c5                	add    $0xc5,%al
c000d281:	00 00                	add    %al,(%eax)
c000d283:	00 28                	add    %ch,(%eax)
c000d285:	00 00                	add    %al,(%eax)
c000d287:	00 f8                	add    %bh,%al
c000d289:	16                   	push   %ss
c000d28a:	00 00                	add    %al,(%eax)
c000d28c:	dc a7 00 c0 ac 00    	fsubl  0xacc000(%edi)
c000d292:	00 00                	add    %al,(%eax)
c000d294:	41                   	inc    %ecx
c000d295:	0e                   	push   %cs
c000d296:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000d29c:	42                   	inc    %edx
c000d29d:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000d2a0:	03 49 83             	add    -0x7d(%ecx),%ecx
c000d2a3:	05 02 96 c3 41       	add    $0x41c39602,%eax
c000d2a8:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000d2ac:	0c 04                	or     $0x4,%al
c000d2ae:	04 c5                	add    $0xc5,%al
c000d2b0:	1c 00                	sbb    $0x0,%al
c000d2b2:	00 00                	add    %al,(%eax)
c000d2b4:	24 17                	and    $0x17,%al
c000d2b6:	00 00                	add    %al,(%eax)
c000d2b8:	88 a8 00 c0 18 00    	mov    %ch,0x18c000(%eax)
c000d2be:	00 00                	add    %al,(%eax)
c000d2c0:	41                   	inc    %ecx
c000d2c1:	0e                   	push   %cs
c000d2c2:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000d2c8:	4f                   	dec    %edi
c000d2c9:	0c 04                	or     $0x4,%al
c000d2cb:	04 c5                	add    $0xc5,%al
c000d2cd:	00 00                	add    %al,(%eax)
c000d2cf:	00 24 00             	add    %ah,(%eax,%eax,1)
c000d2d2:	00 00                	add    %al,(%eax)
c000d2d4:	44                   	inc    %esp
c000d2d5:	17                   	pop    %ss
c000d2d6:	00 00                	add    %al,(%eax)
c000d2d8:	a0 a8 00 c0 2f       	mov    0x2fc000a8,%al
c000d2dd:	00 00                	add    %al,(%eax)
c000d2df:	00 41 0e             	add    %al,0xe(%ecx)
c000d2e2:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000d2e8:	5c                   	pop    %esp
c000d2e9:	0a c5                	or     %ch,%al
c000d2eb:	0c 04                	or     $0x4,%al
c000d2ed:	04 45                	add    $0x45,%al
c000d2ef:	0b 45 c5             	or     -0x3b(%ebp),%eax
c000d2f2:	0c 04                	or     $0x4,%al
c000d2f4:	04 00                	add    $0x0,%al
	...

Disassembly of section .rodata:

c000d2f8 <_rodata>:
c000d2f8:	0a 50 65             	or     0x65(%eax),%dl
c000d2fb:	6e                   	outsb  %ds:(%esi),(%dx)
c000d2fc:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d2ff:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d304:	65 6c                	gs insb (%dx),%es:(%edi)
c000d306:	20 28                	and    %ch,(%eax)
c000d308:	50                   	push   %eax
c000d309:	4b                   	dec    %ebx
c000d30a:	6e                   	outsb  %ds:(%esi),(%dx)
c000d30b:	29 20                	sub    %esp,(%eax)
c000d30d:	76 65                	jbe    c000d374 <_rodata+0x7c>
c000d30f:	72 73                	jb     c000d384 <_rodata+0x8c>
c000d311:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d318:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d31b:	74 65                	je     c000d382 <_rodata+0x8a>
c000d31d:	73 74                	jae    c000d393 <_rodata+0x9b>
c000d31f:	0a 00                	or     (%eax),%al
c000d321:	43                   	inc    %ebx
c000d322:	6f                   	outsl  %ds:(%esi),(%dx)
c000d323:	70 79                	jo     c000d39e <_rodata+0xa6>
c000d325:	72 69                	jb     c000d390 <_rodata+0x98>
c000d327:	67 68 74 20 28 63    	addr16 push $0x63282074
c000d32d:	29 20                	sub    %esp,(%eax)
c000d32f:	32 30                	xor    (%eax),%dh
c000d331:	32 31                	xor    (%ecx),%dh
c000d333:	2d 32 30 32 32       	sub    $0x32323032,%eax
c000d338:	20 4c 69 6e          	and    %cl,0x6e(%ecx,%ebp,2)
c000d33c:	43                   	inc    %ebx
c000d33d:	68 65 6e 6a 75       	push   $0x756a6e65
c000d342:	6e                   	outsb  %ds:(%esi),(%dx)
c000d343:	2c 41                	sub    $0x41,%al
c000d345:	6c                   	insb   (%dx),%es:(%edi)
c000d346:	6c                   	insb   (%dx),%es:(%edi)
c000d347:	20 72 69             	and    %dh,0x69(%edx)
c000d34a:	67 68 74 73 20 72    	addr16 push $0x72207374
c000d350:	65 73 65             	gs jae c000d3b8 <_rodata+0xc0>
c000d353:	72 76                	jb     c000d3cb <_rodata+0xd3>
c000d355:	65 64 2e 0a 0a       	gs fs or %cs:(%edx),%cl
c000d35a:	00 43 50             	add    %al,0x50(%ebx)
c000d35d:	55                   	push   %ebp
c000d35e:	20 20                	and    %ah,(%eax)
c000d360:	20 20                	and    %ah,(%eax)
c000d362:	3a 00                	cmp    (%eax),%al
c000d364:	4d                   	dec    %ebp
c000d365:	65 6d                	gs insl (%dx),%es:(%edi)
c000d367:	6f                   	outsl  %ds:(%esi),(%dx)
c000d368:	72 79                	jb     c000d3e3 <_rodata+0xeb>
c000d36a:	20 3a                	and    %bh,(%edx)
c000d36c:	00 4d 42             	add    %cl,0x42(%ebp)
c000d36f:	20 28                	and    %ch,(%eax)
c000d371:	20 00                	and    %al,(%eax)
c000d373:	4b                   	dec    %ebx
c000d374:	42                   	inc    %edx
c000d375:	20 29                	and    %ch,(%ecx)
c000d377:	20 00                	and    %al,(%eax)
c000d379:	44                   	inc    %esp
c000d37a:	69 73 6b 20 20 20 3a 	imul   $0x3a202020,0x6b(%ebx),%esi
c000d381:	00 50 65             	add    %dl,0x65(%eax)
c000d384:	6e                   	outsb  %ds:(%esi),(%dx)
c000d385:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d388:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d38d:	65 6c                	gs insb (%dx),%es:(%edi)
c000d38f:	20 28                	and    %ch,(%eax)
c000d391:	50                   	push   %eax
c000d392:	4b                   	dec    %ebx
c000d393:	6e                   	outsb  %ds:(%esi),(%dx)
c000d394:	29 20                	sub    %esp,(%eax)
c000d396:	76 65                	jbe    c000d3fd <PKn_Version+0x1>
c000d398:	72 73                	jb     c000d40d <PKn_Version+0x11>
c000d39a:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d3a1:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d3a4:	74 65                	je     c000d40b <PKn_Version+0xf>
c000d3a6:	73 74                	jae    c000d41c <PKn_Version+0x20>
c000d3a8:	00 43 6f             	add    %al,0x6f(%ebx)
c000d3ab:	70 79                	jo     c000d426 <PKn_Version+0x2a>
c000d3ad:	72 69                	jb     c000d418 <PKn_Version+0x1c>
c000d3af:	67 68 74 20 28 63    	addr16 push $0x63282074
c000d3b5:	29 20                	sub    %esp,(%eax)
c000d3b7:	32 30                	xor    (%eax),%dh
c000d3b9:	32 31                	xor    (%ecx),%dh
c000d3bb:	2d 32 30 32 32       	sub    $0x32323032,%eax
c000d3c0:	20 4c 69 6e          	and    %cl,0x6e(%ecx,%ebp,2)
c000d3c4:	43                   	inc    %ebx
c000d3c5:	68 65 6e 6a 75       	push   $0x756a6e65
c000d3ca:	6e                   	outsb  %ds:(%esi),(%dx)
c000d3cb:	2c 20                	sub    $0x20,%al
c000d3cd:	41                   	inc    %ecx
c000d3ce:	6c                   	insb   (%dx),%es:(%edi)
c000d3cf:	6c                   	insb   (%dx),%es:(%edi)
c000d3d0:	20 72 69             	and    %dh,0x69(%edx)
c000d3d3:	67 68 74 73 20 72    	addr16 push $0x72207374
c000d3d9:	65 73 65             	gs jae c000d441 <PKn_Version+0x45>
c000d3dc:	72 76                	jb     c000d454 <PKn_Version+0x58>
c000d3de:	65 64 2e 00 50 4b    	gs fs add %dl,%cs:0x4b(%eax)
c000d3e4:	6e                   	outsb  %ds:(%esi),(%dx)
c000d3e5:	0a 00                	or     (%eax),%al
c000d3e7:	4b                   	dec    %ebx
c000d3e8:	65 72 6e             	gs jb  c000d459 <PKn_Version+0x5d>
c000d3eb:	65 6c                	gs insb (%dx),%es:(%edi)
c000d3ed:	20 50 43             	and    %dl,0x43(%eax)
c000d3f0:	42                   	inc    %edx
c000d3f1:	20 61 74             	and    %ah,0x74(%ecx)
c000d3f4:	20 30                	and    %dh,(%eax)
c000d3f6:	78 00                	js     c000d3f8 <_rodata+0x100>
c000d3f8:	0a 00                	or     (%eax),%al
	...

c000d3fc <PKn_Version>:
c000d3fc:	50                   	push   %eax
c000d3fd:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d3ff:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d402:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d407:	65 6c                	gs insb (%dx),%es:(%edi)
c000d409:	20 28                	and    %ch,(%eax)
c000d40b:	50                   	push   %eax
c000d40c:	4b                   	dec    %ebx
c000d40d:	6e                   	outsb  %ds:(%esi),(%dx)
c000d40e:	29 20                	sub    %esp,(%eax)
c000d410:	76 65                	jbe    c000d477 <PKn_Version+0x7b>
c000d412:	72 73                	jb     c000d487 <PKn_Version+0x8b>
c000d414:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d41b:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d41e:	74 65                	je     c000d485 <PKn_Version+0x89>
c000d420:	73 74                	jae    c000d496 <PKn_Version+0x9a>
c000d422:	00 00                	add    %al,(%eax)
c000d424:	62 79 74             	bound  %edi,0x74(%ecx)
c000d427:	65 5f                	gs pop %edi
c000d429:	69 6e 64 65 78 20 3c 	imul   $0x3c207865,0x64(%esi),%ebp
c000d430:	20 28                	and    %ch,(%eax)
c000d432:	62 74 6d 70          	bound  %esi,0x70(%ebp,%ebp,2)
c000d436:	2d 3e 62 74 6d       	sub    $0x6d74623e,%eax
c000d43b:	70 5f                	jo     c000d49c <__func__.858+0x4>
c000d43d:	62 79 74             	bound  %edi,0x74(%ecx)
c000d440:	65 73 5f             	gs jae c000d4a2 <__func__.858+0xa>
c000d443:	6c                   	insb   (%dx),%es:(%edi)
c000d444:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d446:	29 00                	sub    %eax,(%eax)
c000d448:	6c                   	insb   (%dx),%es:(%edi)
c000d449:	69 62 2f 62 69 74 6d 	imul   $0x6d746962,0x2f(%edx),%esp
c000d450:	61                   	popa   
c000d451:	70 2e                	jo     c000d481 <PKn_Version+0x85>
c000d453:	63 00                	arpl   %ax,(%eax)
c000d455:	76 61                	jbe    c000d4b8 <__func__.875+0x10>
c000d457:	6c                   	insb   (%dx),%es:(%edi)
c000d458:	75 65                	jne    c000d4bf <__func__.875+0x17>
c000d45a:	20 3d 3d 20 30 20    	and    %bh,0x2030203d
c000d460:	7c 7c                	jl     c000d4de <__func__.875+0x36>
c000d462:	20 76 61             	and    %dh,0x61(%esi)
c000d465:	6c                   	insb   (%dx),%es:(%edi)
c000d466:	75 65                	jne    c000d4cd <__func__.875+0x25>
c000d468:	20 3d 3d 20 31 00    	and    %bh,0x31203d
c000d46e:	00 00                	add    %al,(%eax)
c000d470:	50                   	push   %eax
c000d471:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d473:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d476:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d47b:	65 6c                	gs insb (%dx),%es:(%edi)
c000d47d:	20 28                	and    %ch,(%eax)
c000d47f:	50                   	push   %eax
c000d480:	4b                   	dec    %ebx
c000d481:	6e                   	outsb  %ds:(%esi),(%dx)
c000d482:	29 20                	sub    %esp,(%eax)
c000d484:	76 65                	jbe    c000d4eb <__func__.875+0x43>
c000d486:	72 73                	jb     c000d4fb <__func__.875+0x53>
c000d488:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d48f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d492:	74 65                	je     c000d4f9 <__func__.875+0x51>
c000d494:	73 74                	jae    c000d50a <__func__.875+0x62>
	...

c000d498 <__func__.858>:
c000d498:	62 69 74             	bound  %ebp,0x74(%ecx)
c000d49b:	6d                   	insl   (%dx),%es:(%edi)
c000d49c:	61                   	popa   
c000d49d:	70 5f                	jo     c000d4fe <__func__.875+0x56>
c000d49f:	61                   	popa   
c000d4a0:	6c                   	insb   (%dx),%es:(%edi)
c000d4a1:	6c                   	insb   (%dx),%es:(%edi)
c000d4a2:	6f                   	outsl  %ds:(%esi),(%dx)
c000d4a3:	63 00                	arpl   %ax,(%eax)
c000d4a5:	00 00                	add    %al,(%eax)
	...

c000d4a8 <__func__.875>:
c000d4a8:	62 69 74             	bound  %ebp,0x74(%ecx)
c000d4ab:	6d                   	insl   (%dx),%es:(%edi)
c000d4ac:	61                   	popa   
c000d4ad:	70 5f                	jo     c000d50e <__func__.875+0x66>
c000d4af:	73 65                	jae    c000d516 <__func__.875+0x6e>
c000d4b1:	74 00                	je     c000d4b3 <__func__.875+0xb>
c000d4b3:	00 50 65             	add    %dl,0x65(%eax)
c000d4b6:	6e                   	outsb  %ds:(%esi),(%dx)
c000d4b7:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d4ba:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d4bf:	65 6c                	gs insb (%dx),%es:(%edi)
c000d4c1:	20 28                	and    %ch,(%eax)
c000d4c3:	50                   	push   %eax
c000d4c4:	4b                   	dec    %ebx
c000d4c5:	6e                   	outsb  %ds:(%esi),(%dx)
c000d4c6:	29 20                	sub    %esp,(%eax)
c000d4c8:	76 65                	jbe    c000d52f <__func__.875+0x87>
c000d4ca:	72 73                	jb     c000d53f <__func__.875+0x97>
c000d4cc:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d4d3:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d4d6:	74 65                	je     c000d53d <__func__.875+0x95>
c000d4d8:	73 74                	jae    c000d54e <__func__.875+0xa6>
c000d4da:	00 00                	add    %al,(%eax)
c000d4dc:	50                   	push   %eax
c000d4dd:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d4df:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d4e2:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d4e7:	65 6c                	gs insb (%dx),%es:(%edi)
c000d4e9:	20 28                	and    %ch,(%eax)
c000d4eb:	50                   	push   %eax
c000d4ec:	4b                   	dec    %ebx
c000d4ed:	6e                   	outsb  %ds:(%esi),(%dx)
c000d4ee:	29 20                	sub    %esp,(%eax)
c000d4f0:	76 65                	jbe    c000d557 <__func__.875+0xaf>
c000d4f2:	72 73                	jb     c000d567 <__func__.875+0xbf>
c000d4f4:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d4fb:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d4fe:	74 65                	je     c000d565 <__func__.875+0xbd>
c000d500:	73 74                	jae    c000d576 <__func__.875+0xce>
c000d502:	00 00                	add    %al,(%eax)
c000d504:	20 45 72             	and    %al,0x72(%ebp)
c000d507:	72 6f                	jb     c000d578 <__func__.875+0xd0>
c000d509:	72 0a                	jb     c000d515 <__func__.875+0x6d>
c000d50b:	00 20                	add    %ah,(%eax)
c000d50d:	46                   	inc    %esi
c000d50e:	69 6c 65 3a 20 20 20 	imul   $0x20202020,0x3a(%ebp,%eiz,2),%ebp
c000d515:	20 
c000d516:	20 20                	and    %ah,(%eax)
c000d518:	20 20                	and    %ah,(%eax)
c000d51a:	00 20                	add    %ah,(%eax)
c000d51c:	49                   	dec    %ecx
c000d51d:	6e                   	outsb  %ds:(%esi),(%dx)
c000d51e:	20 66 75             	and    %ah,0x75(%esi)
c000d521:	6e                   	outsb  %ds:(%esi),(%dx)
c000d522:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c000d526:	6e                   	outsb  %ds:(%esi),(%dx)
c000d527:	3a 20                	cmp    (%eax),%ah
c000d529:	00 20                	add    %ah,(%eax)
c000d52b:	4c                   	dec    %esp
c000d52c:	69 6e 65 3a 20 20 20 	imul   $0x2020203a,0x65(%esi),%ebp
c000d533:	20 20                	and    %ah,(%eax)
c000d535:	20 20                	and    %ah,(%eax)
c000d537:	20 00                	and    %al,(%eax)
c000d539:	20 43 6f             	and    %al,0x6f(%ebx)
c000d53c:	6e                   	outsb  %ds:(%esi),(%dx)
c000d53d:	64 69 74 69 6f 6e 3a 	imul   $0x20203a6e,%fs:0x6f(%ecx,%ebp,2),%esi
c000d544:	20 20 
c000d546:	20 00                	and    %al,(%eax)
c000d548:	50                   	push   %eax
c000d549:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d54b:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d54e:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d553:	65 6c                	gs insb (%dx),%es:(%edi)
c000d555:	20 28                	and    %ch,(%eax)
c000d557:	50                   	push   %eax
c000d558:	4b                   	dec    %ebx
c000d559:	6e                   	outsb  %ds:(%esi),(%dx)
c000d55a:	29 20                	sub    %esp,(%eax)
c000d55c:	76 65                	jbe    c000d5c3 <__func__.877+0x3>
c000d55e:	72 73                	jb     c000d5d3 <__func__.877+0x13>
c000d560:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d567:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d56a:	74 65                	je     c000d5d1 <__func__.877+0x11>
c000d56c:	73 74                	jae    c000d5e2 <__func__.877+0x22>
c000d56e:	00 00                	add    %al,(%eax)
c000d570:	21 28                	and    %ebp,(%eax)
c000d572:	66 69 66 6f 2d 3e    	imul   $0x3e2d,0x6f(%esi),%sp
c000d578:	66 72 65             	data16 jb c000d5e0 <__func__.877+0x20>
c000d57b:	65 20 3d 3d 20 66 69 	and    %bh,%gs:0x6966203d
c000d582:	66 6f                	outsw  %ds:(%esi),(%dx)
c000d584:	2d 3e 73 69 7a       	sub    $0x7a69733e,%eax
c000d589:	65 29 00             	sub    %eax,%gs:(%eax)
c000d58c:	6c                   	insb   (%dx),%es:(%edi)
c000d58d:	69 62 2f 66 69 66 6f 	imul   $0x6f666966,0x2f(%edx),%esp
c000d594:	2e 63 00             	arpl   %ax,%cs:(%eax)
c000d597:	00 50 65             	add    %dl,0x65(%eax)
c000d59a:	6e                   	outsb  %ds:(%esi),(%dx)
c000d59b:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d59e:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d5a3:	65 6c                	gs insb (%dx),%es:(%edi)
c000d5a5:	20 28                	and    %ch,(%eax)
c000d5a7:	50                   	push   %eax
c000d5a8:	4b                   	dec    %ebx
c000d5a9:	6e                   	outsb  %ds:(%esi),(%dx)
c000d5aa:	29 20                	sub    %esp,(%eax)
c000d5ac:	76 65                	jbe    c000d613 <__func__.877+0x53>
c000d5ae:	72 73                	jb     c000d623 <__func__.877+0x63>
c000d5b0:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d5b7:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d5ba:	74 65                	je     c000d621 <__func__.877+0x61>
c000d5bc:	73 74                	jae    c000d632 <__func__.877+0x72>
	...

c000d5c0 <__func__.877>:
c000d5c0:	66 69 66 6f 5f 67    	imul   $0x675f,0x6f(%esi),%sp
c000d5c6:	65 74 00             	gs je  c000d5c9 <__func__.877+0x9>
c000d5c9:	00 00                	add    %al,(%eax)
c000d5cb:	00 50 65             	add    %dl,0x65(%eax)
c000d5ce:	6e                   	outsb  %ds:(%esi),(%dx)
c000d5cf:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d5d2:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d5d7:	65 6c                	gs insb (%dx),%es:(%edi)
c000d5d9:	20 28                	and    %ch,(%eax)
c000d5db:	50                   	push   %eax
c000d5dc:	4b                   	dec    %ebx
c000d5dd:	6e                   	outsb  %ds:(%esi),(%dx)
c000d5de:	29 20                	sub    %esp,(%eax)
c000d5e0:	76 65                	jbe    c000d647 <__func__.877+0x87>
c000d5e2:	72 73                	jb     c000d657 <__func__.877+0x97>
c000d5e4:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d5eb:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d5ee:	74 65                	je     c000d655 <__func__.877+0x95>
c000d5f0:	73 74                	jae    c000d666 <__func__.877+0xa6>
c000d5f2:	00 00                	add    %al,(%eax)
c000d5f4:	5b                   	pop    %ebx
c000d5f5:	69 6e 69 6e 5d 3a 61 	imul   $0x613a5d6e,0x69(%esi),%ebp
c000d5fc:	6c                   	insb   (%dx),%es:(%edi)
c000d5fd:	6c                   	insb   (%dx),%es:(%edi)
c000d5fe:	0a 00                	or     (%eax),%al
c000d600:	5b                   	pop    %ebx
c000d601:	69 6e 69 74 5d 3a 69 	imul   $0x693a5d74,0x69(%esi),%ebp
c000d608:	6e                   	outsb  %ds:(%esi),(%dx)
c000d609:	69 74 20 64 6f 77 6e 	imul   $0x2e6e776f,0x64(%eax,%eiz,1),%esi
c000d610:	2e 
c000d611:	0a 00                	or     (%eax),%al
c000d613:	00 50 65             	add    %dl,0x65(%eax)
c000d616:	6e                   	outsb  %ds:(%esi),(%dx)
c000d617:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d61a:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d61f:	65 6c                	gs insb (%dx),%es:(%edi)
c000d621:	20 28                	and    %ch,(%eax)
c000d623:	50                   	push   %eax
c000d624:	4b                   	dec    %ebx
c000d625:	6e                   	outsb  %ds:(%esi),(%dx)
c000d626:	29 20                	sub    %esp,(%eax)
c000d628:	76 65                	jbe    c000d68f <__func__.877+0xcf>
c000d62a:	72 73                	jb     c000d69f <__func__.877+0xdf>
c000d62c:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d633:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d636:	74 65                	je     c000d69d <__func__.877+0xdd>
c000d638:	73 74                	jae    c000d6ae <__func__.877+0xee>
c000d63a:	00 00                	add    %al,(%eax)
c000d63c:	23 44 45 20          	and    0x20(%ebp,%eax,2),%eax
c000d640:	44                   	inc    %esp
c000d641:	69 76 69 64 65 20 45 	imul   $0x45206564,0x69(%esi),%esi
c000d648:	72 72                	jb     c000d6bc <__func__.877+0xfc>
c000d64a:	6f                   	outsl  %ds:(%esi),(%dx)
c000d64b:	72 00                	jb     c000d64d <__func__.877+0x8d>
c000d64d:	23 44 42 20          	and    0x20(%edx,%eax,2),%eax
c000d651:	44                   	inc    %esp
c000d652:	65 62 75 67          	bound  %esi,%gs:0x67(%ebp)
c000d656:	20 45 78             	and    %al,0x78(%ebp)
c000d659:	63 65 70             	arpl   %sp,0x70(%ebp)
c000d65c:	74 69                	je     c000d6c7 <__func__.877+0x107>
c000d65e:	6f                   	outsl  %ds:(%esi),(%dx)
c000d65f:	6e                   	outsb  %ds:(%esi),(%dx)
c000d660:	00 4e 4d             	add    %cl,0x4d(%esi)
c000d663:	49                   	dec    %ecx
c000d664:	20 49 6e             	and    %cl,0x6e(%ecx)
c000d667:	74 65                	je     c000d6ce <__func__.877+0x10e>
c000d669:	72 72                	jb     c000d6dd <__func__.877+0x11d>
c000d66b:	75 70                	jne    c000d6dd <__func__.877+0x11d>
c000d66d:	74 00                	je     c000d66f <__func__.877+0xaf>
c000d66f:	23 42 50             	and    0x50(%edx),%eax
c000d672:	20 42 72             	and    %al,0x72(%edx)
c000d675:	65 61                	gs popa 
c000d677:	6b 70 6f 69          	imul   $0x69,0x6f(%eax),%esi
c000d67b:	6e                   	outsb  %ds:(%esi),(%dx)
c000d67c:	74 20                	je     c000d69e <__func__.877+0xde>
c000d67e:	45                   	inc    %ebp
c000d67f:	78 63                	js     c000d6e4 <__func__.877+0x124>
c000d681:	65 70 74             	gs jo  c000d6f8 <__func__.877+0x138>
c000d684:	69 6f 6e 00 23 4f 46 	imul   $0x464f2300,0x6e(%edi),%ebp
c000d68b:	20 4f 76             	and    %cl,0x76(%edi)
c000d68e:	65 72 66             	gs jb  c000d6f7 <__func__.877+0x137>
c000d691:	6c                   	insb   (%dx),%es:(%edi)
c000d692:	6f                   	outsl  %ds:(%esi),(%dx)
c000d693:	77 20                	ja     c000d6b5 <__func__.877+0xf5>
c000d695:	45                   	inc    %ebp
c000d696:	78 63                	js     c000d6fb <__func__.877+0x13b>
c000d698:	65 70 74             	gs jo  c000d70f <__func__.877+0x14f>
c000d69b:	69 6f 6e 00 23 42 52 	imul   $0x52422300,0x6e(%edi),%ebp
c000d6a2:	20 42 4f             	and    %al,0x4f(%edx)
c000d6a5:	55                   	push   %ebp
c000d6a6:	4e                   	dec    %esi
c000d6a7:	44                   	inc    %esp
c000d6a8:	20 52 61             	and    %dl,0x61(%edx)
c000d6ab:	6e                   	outsb  %ds:(%esi),(%dx)
c000d6ac:	67 65 20 45 78       	and    %al,%gs:0x78(%di)
c000d6b1:	63 65 65             	arpl   %sp,0x65(%ebp)
c000d6b4:	64 65 64 20 45 78    	fs gs and %al,%fs:0x78(%ebp)
c000d6ba:	63 65 70             	arpl   %sp,0x70(%ebp)
c000d6bd:	74 69                	je     c000d728 <__func__.877+0x168>
c000d6bf:	6f                   	outsl  %ds:(%esi),(%dx)
c000d6c0:	6e                   	outsb  %ds:(%esi),(%dx)
c000d6c1:	00 23                	add    %ah,(%ebx)
c000d6c3:	55                   	push   %ebp
c000d6c4:	44                   	inc    %esp
c000d6c5:	20 49 6e             	and    %cl,0x6e(%ecx)
c000d6c8:	76 61                	jbe    c000d72b <__func__.877+0x16b>
c000d6ca:	6c                   	insb   (%dx),%es:(%edi)
c000d6cb:	69 64 20 4f 70 63 6f 	imul   $0x646f6370,0x4f(%eax,%eiz,1),%esp
c000d6d2:	64 
c000d6d3:	65 20 45 78          	and    %al,%gs:0x78(%ebp)
c000d6d7:	63 65 70             	arpl   %sp,0x70(%ebp)
c000d6da:	74 69                	je     c000d745 <__func__.877+0x185>
c000d6dc:	6f                   	outsl  %ds:(%esi),(%dx)
c000d6dd:	6e                   	outsb  %ds:(%esi),(%dx)
c000d6de:	00 23                	add    %ah,(%ebx)
c000d6e0:	4e                   	dec    %esi
c000d6e1:	4d                   	dec    %ebp
c000d6e2:	20 44 65 76          	and    %al,0x76(%ebp,%eiz,2)
c000d6e6:	69 63 65 20 4e 6f 74 	imul   $0x746f4e20,0x65(%ebx),%esp
c000d6ed:	20 41 76             	and    %al,0x76(%ecx)
c000d6f0:	61                   	popa   
c000d6f1:	69 6c 61 62 6c 65 20 	imul   $0x4520656c,0x62(%ecx,%eiz,2),%ebp
c000d6f8:	45 
c000d6f9:	78 63                	js     c000d75e <__func__.877+0x19e>
c000d6fb:	65 70 74             	gs jo  c000d772 <__func__.877+0x1b2>
c000d6fe:	69 6f 6e 00 23 44 46 	imul   $0x46442300,0x6e(%edi),%ebp
c000d705:	20 44 6f 75          	and    %al,0x75(%edi,%ebp,2)
c000d709:	62 6c 65 20          	bound  %ebp,0x20(%ebp,%eiz,2)
c000d70d:	46                   	inc    %esi
c000d70e:	61                   	popa   
c000d70f:	75 6c                	jne    c000d77d <__func__.877+0x1bd>
c000d711:	74 20                	je     c000d733 <__func__.877+0x173>
c000d713:	45                   	inc    %ebp
c000d714:	78 63                	js     c000d779 <__func__.877+0x1b9>
c000d716:	65 70 74             	gs jo  c000d78d <__func__.877+0x1cd>
c000d719:	69 6f 6e 00 43 6f 70 	imul   $0x706f4300,0x6e(%edi),%ebp
c000d720:	72 6f                	jb     c000d791 <__func__.877+0x1d1>
c000d722:	63 65 73             	arpl   %sp,0x73(%ebp)
c000d725:	73 6f                	jae    c000d796 <__func__.877+0x1d6>
c000d727:	72 20                	jb     c000d749 <__func__.877+0x189>
c000d729:	53                   	push   %ebx
c000d72a:	65 67 6d             	gs insl (%dx),%es:(%di)
c000d72d:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d72f:	74 20                	je     c000d751 <__func__.877+0x191>
c000d731:	4f                   	dec    %edi
c000d732:	76 65                	jbe    c000d799 <__func__.877+0x1d9>
c000d734:	72 72                	jb     c000d7a8 <__func__.877+0x1e8>
c000d736:	75 6e                	jne    c000d7a6 <__func__.877+0x1e6>
c000d738:	00 23                	add    %ah,(%ebx)
c000d73a:	54                   	push   %esp
c000d73b:	53                   	push   %ebx
c000d73c:	20 49 6e             	and    %cl,0x6e(%ecx)
c000d73f:	76 61                	jbe    c000d7a2 <__func__.877+0x1e2>
c000d741:	6c                   	insb   (%dx),%es:(%edi)
c000d742:	69 64 20 54 53 53 20 	imul   $0x45205353,0x54(%eax,%eiz,1),%esp
c000d749:	45 
c000d74a:	78 63                	js     c000d7af <__func__.877+0x1ef>
c000d74c:	65 70 74             	gs jo  c000d7c3 <__func__.877+0x203>
c000d74f:	69 6f 6e 00 23 4e 50 	imul   $0x504e2300,0x6e(%edi),%ebp
c000d756:	20 53 65             	and    %dl,0x65(%ebx)
c000d759:	67 6d                	insl   (%dx),%es:(%di)
c000d75b:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d75d:	74 20                	je     c000d77f <__func__.877+0x1bf>
c000d75f:	4e                   	dec    %esi
c000d760:	6f                   	outsl  %ds:(%esi),(%dx)
c000d761:	74 20                	je     c000d783 <__func__.877+0x1c3>
c000d763:	50                   	push   %eax
c000d764:	72 65                	jb     c000d7cb <__func__.877+0x20b>
c000d766:	73 65                	jae    c000d7cd <__func__.877+0x20d>
c000d768:	6e                   	outsb  %ds:(%esi),(%dx)
c000d769:	74 00                	je     c000d76b <__func__.877+0x1ab>
c000d76b:	23 53 53             	and    0x53(%ebx),%edx
c000d76e:	20 53 74             	and    %dl,0x74(%ebx)
c000d771:	61                   	popa   
c000d772:	63 6b 20             	arpl   %bp,0x20(%ebx)
c000d775:	46                   	inc    %esi
c000d776:	61                   	popa   
c000d777:	75 6c                	jne    c000d7e5 <__func__.877+0x225>
c000d779:	74 20                	je     c000d79b <__func__.877+0x1db>
c000d77b:	45                   	inc    %ebp
c000d77c:	78 63                	js     c000d7e1 <__func__.877+0x221>
c000d77e:	65 70 74             	gs jo  c000d7f5 <__func__.877+0x235>
c000d781:	69 6f 6e 00 23 47 50 	imul   $0x50472300,0x6e(%edi),%ebp
c000d788:	20 47 65             	and    %al,0x65(%edi)
c000d78b:	6e                   	outsb  %ds:(%esi),(%dx)
c000d78c:	65 72 61             	gs jb  c000d7f0 <__func__.877+0x230>
c000d78f:	6c                   	insb   (%dx),%es:(%edi)
c000d790:	20 50 72             	and    %dl,0x72(%eax)
c000d793:	6f                   	outsl  %ds:(%esi),(%dx)
c000d794:	74 65                	je     c000d7fb <__func__.877+0x23b>
c000d796:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c000d79a:	6e                   	outsb  %ds:(%esi),(%dx)
c000d79b:	20 45 78             	and    %al,0x78(%ebp)
c000d79e:	63 65 70             	arpl   %sp,0x70(%ebp)
c000d7a1:	74 69                	je     c000d80c <__func__.877+0x24c>
c000d7a3:	6f                   	outsl  %ds:(%esi),(%dx)
c000d7a4:	6e                   	outsb  %ds:(%esi),(%dx)
c000d7a5:	00 23                	add    %ah,(%ebx)
c000d7a7:	50                   	push   %eax
c000d7a8:	46                   	inc    %esi
c000d7a9:	20 50 61             	and    %dl,0x61(%eax)
c000d7ac:	67 65 2d 46 61 75 6c 	addr16 gs sub $0x6c756146,%eax
c000d7b3:	74 20                	je     c000d7d5 <__func__.877+0x215>
c000d7b5:	45                   	inc    %ebp
c000d7b6:	78 63                	js     c000d81b <__func__.877+0x25b>
c000d7b8:	65 70 74             	gs jo  c000d82f <__func__.877+0x26f>
c000d7bb:	69 6f 6e 00 52 65 73 	imul   $0x73655200,0x6e(%edi),%ebp
c000d7c2:	65 72 76             	gs jb  c000d83b <__func__.877+0x27b>
c000d7c5:	65 64 00 23          	gs add %ah,%fs:(%ebx)
c000d7c9:	4d                   	dec    %ebp
c000d7ca:	46                   	inc    %esi
c000d7cb:	20 78 38             	and    %bh,0x38(%eax)
c000d7ce:	37                   	aaa    
c000d7cf:	20 46 50             	and    %al,0x50(%esi)
c000d7d2:	55                   	push   %ebp
c000d7d3:	20 46 6c             	and    %al,0x6c(%esi)
c000d7d6:	6f                   	outsl  %ds:(%esi),(%dx)
c000d7d7:	61                   	popa   
c000d7d8:	74 69                	je     c000d843 <__func__.877+0x283>
c000d7da:	6e                   	outsb  %ds:(%esi),(%dx)
c000d7db:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000d7e1:	74 20                	je     c000d803 <__func__.877+0x243>
c000d7e3:	45                   	inc    %ebp
c000d7e4:	72 72                	jb     c000d858 <__func__.877+0x298>
c000d7e6:	6f                   	outsl  %ds:(%esi),(%dx)
c000d7e7:	72 00                	jb     c000d7e9 <__func__.877+0x229>
c000d7e9:	23 41 43             	and    0x43(%ecx),%eax
c000d7ec:	20 41 6c             	and    %al,0x6c(%ecx)
c000d7ef:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%edi),%esp
c000d7f6:	20 43 68             	and    %al,0x68(%ebx)
c000d7f9:	65 63 6b 20          	arpl   %bp,%gs:0x20(%ebx)
c000d7fd:	45                   	inc    %ebp
c000d7fe:	78 63                	js     c000d863 <__func__.877+0x2a3>
c000d800:	65 70 74             	gs jo  c000d877 <__func__.877+0x2b7>
c000d803:	69 6f 6e 00 23 4d 43 	imul   $0x434d2300,0x6e(%edi),%ebp
c000d80a:	20 4d 61             	and    %cl,0x61(%ebp)
c000d80d:	63 68 69             	arpl   %bp,0x69(%eax)
c000d810:	6e                   	outsb  %ds:(%esi),(%dx)
c000d811:	65 2d 43 68 65 63    	gs sub $0x63656843,%eax
c000d817:	6b 20 45             	imul   $0x45,(%eax),%esp
c000d81a:	78 63                	js     c000d87f <__func__.877+0x2bf>
c000d81c:	65 70 74             	gs jo  c000d893 <__func__.877+0x2d3>
c000d81f:	69 6f 6e 00 23 58 46 	imul   $0x46582300,0x6e(%edi),%ebp
c000d826:	20 53 49             	and    %dl,0x49(%ebx)
c000d829:	4d                   	dec    %ebp
c000d82a:	44                   	inc    %esp
c000d82b:	20 46 6c             	and    %al,0x6c(%esi)
c000d82e:	6f                   	outsl  %ds:(%esi),(%dx)
c000d82f:	61                   	popa   
c000d830:	74 69                	je     c000d89b <__func__.877+0x2db>
c000d832:	6e                   	outsb  %ds:(%esi),(%dx)
c000d833:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000d839:	74 20                	je     c000d85b <__func__.877+0x29b>
c000d83b:	45                   	inc    %ebp
c000d83c:	78 63                	js     c000d8a1 <__func__.877+0x2e1>
c000d83e:	65 70 74             	gs jo  c000d8b5 <__func__.877+0x2f5>
c000d841:	69 6f 6e 00 0a 20 69 	imul   $0x69200a00,0x6e(%edi),%ebp
c000d848:	6e                   	outsb  %ds:(%esi),(%dx)
c000d849:	74 72                	je     c000d8bd <__func__.877+0x2fd>
c000d84b:	3a 20                	cmp    (%eax),%ah
c000d84d:	30 78 00             	xor    %bh,0x0(%eax)
c000d850:	0a 20                	or     (%eax),%ah
c000d852:	00 20                	add    %ah,(%eax)
c000d854:	28 20                	sub    %ah,(%eax)
c000d856:	66 61                	popaw  
c000d858:	75 6c                	jne    c000d8c6 <__func__.877+0x306>
c000d85a:	74 20                	je     c000d87c <__func__.877+0x2bc>
c000d85c:	61                   	popa   
c000d85d:	64 64 72 65          	fs fs jb c000d8c6 <__func__.877+0x306>
c000d861:	73 73                	jae    c000d8d6 <__func__.877+0x316>
c000d863:	3a 20                	cmp    (%eax),%ah
c000d865:	30 78 00             	xor    %bh,0x0(%eax)
c000d868:	20 29                	and    %ch,(%ecx)
c000d86a:	0a 00                	or     (%eax),%al
c000d86c:	0a 20                	or     (%eax),%ah
c000d86e:	43                   	inc    %ebx
c000d86f:	50                   	push   %eax
c000d870:	55                   	push   %ebp
c000d871:	20 3a                	and    %bh,(%edx)
c000d873:	00 50 65             	add    %dl,0x65(%eax)
c000d876:	6e                   	outsb  %ds:(%esi),(%dx)
c000d877:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d87a:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d87f:	65 6c                	gs insb (%dx),%es:(%edi)
c000d881:	20 28                	and    %ch,(%eax)
c000d883:	50                   	push   %eax
c000d884:	4b                   	dec    %ebx
c000d885:	6e                   	outsb  %ds:(%esi),(%dx)
c000d886:	29 20                	sub    %esp,(%eax)
c000d888:	76 65                	jbe    c000d8ef <keymap+0xb>
c000d88a:	72 73                	jb     c000d8ff <keymap+0x1b>
c000d88c:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d893:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d896:	74 65                	je     c000d8fd <keymap+0x19>
c000d898:	73 74                	jae    c000d90e <keymap+0x2a>
c000d89a:	00 00                	add    %al,(%eax)
c000d89c:	6b 65 79 62          	imul   $0x62,0x79(%ebp),%esp
c000d8a0:	75 66                	jne    c000d908 <keymap+0x24>
c000d8a2:	5f                   	pop    %edi
c000d8a3:	6f                   	outsl  %ds:(%esi),(%dx)
c000d8a4:	76 65                	jbe    c000d90b <keymap+0x27>
c000d8a6:	72 66                	jb     c000d90e <keymap+0x2a>
c000d8a8:	6c                   	insb   (%dx),%es:(%edi)
c000d8a9:	6f                   	outsl  %ds:(%esi),(%dx)
c000d8aa:	77 21                	ja     c000d8cd <__func__.877+0x30d>
c000d8ac:	21 21                	and    %esp,(%ecx)
c000d8ae:	20 00                	and    %al,(%eax)
c000d8b0:	75 6e                	jne    c000d920 <keymap+0x3c>
c000d8b2:	6b 6e 6f 77          	imul   $0x77,0x6f(%esi),%ebp
c000d8b6:	20 6b 65             	and    %ch,0x65(%ebx)
c000d8b9:	79 00                	jns    c000d8bb <__func__.877+0x2fb>
c000d8bb:	00 50 65             	add    %dl,0x65(%eax)
c000d8be:	6e                   	outsb  %ds:(%esi),(%dx)
c000d8bf:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d8c2:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d8c7:	65 6c                	gs insb (%dx),%es:(%edi)
c000d8c9:	20 28                	and    %ch,(%eax)
c000d8cb:	50                   	push   %eax
c000d8cc:	4b                   	dec    %ebx
c000d8cd:	6e                   	outsb  %ds:(%esi),(%dx)
c000d8ce:	29 20                	sub    %esp,(%eax)
c000d8d0:	76 65                	jbe    c000d937 <keymap+0x53>
c000d8d2:	72 73                	jb     c000d947 <keymap+0x63>
c000d8d4:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d8db:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d8de:	74 65                	je     c000d945 <keymap+0x61>
c000d8e0:	73 74                	jae    c000d956 <keymap+0x72>
	...

c000d8e4 <keymap>:
c000d8e4:	00 00                	add    %al,(%eax)
c000d8e6:	1b 1b                	sbb    (%ebx),%ebx
c000d8e8:	31 21                	xor    %esp,(%ecx)
c000d8ea:	32 40 33             	xor    0x33(%eax),%al
c000d8ed:	23 34 24             	and    (%esp),%esi
c000d8f0:	35 25 36 5e 37       	xor    $0x375e3625,%eax
c000d8f5:	26 38 2a             	cmp    %ch,%es:(%edx)
c000d8f8:	39 28                	cmp    %ebp,(%eax)
c000d8fa:	30 29                	xor    %ch,(%ecx)
c000d8fc:	2d 5f 3d 2b 08       	sub    $0x82b3d5f,%eax
c000d901:	08 09                	or     %cl,(%ecx)
c000d903:	09 71 51             	or     %esi,0x51(%ecx)
c000d906:	77 57                	ja     c000d95f <keymap+0x7b>
c000d908:	65 45                	gs inc %ebp
c000d90a:	72 52                	jb     c000d95e <keymap+0x7a>
c000d90c:	74 54                	je     c000d962 <keymap+0x7e>
c000d90e:	79 59                	jns    c000d969 <keymap+0x85>
c000d910:	75 55                	jne    c000d967 <keymap+0x83>
c000d912:	69 49 6f 4f 70 50 5b 	imul   $0x5b50704f,0x6f(%ecx),%ecx
c000d919:	7b 5d                	jnp    c000d978 <keymap+0x94>
c000d91b:	7d 0d                	jge    c000d92a <keymap+0x46>
c000d91d:	0d 00 00 61 41       	or     $0x41610000,%eax
c000d922:	73 53                	jae    c000d977 <keymap+0x93>
c000d924:	64 44                	fs inc %esp
c000d926:	66 46                	inc    %si
c000d928:	67 47                	addr16 inc %edi
c000d92a:	68 48 6a 4a 6b       	push   $0x6b4a6a48
c000d92f:	4b                   	dec    %ebx
c000d930:	6c                   	insb   (%dx),%es:(%edi)
c000d931:	4c                   	dec    %esp
c000d932:	3b 3a                	cmp    (%edx),%edi
c000d934:	27                   	daa    
c000d935:	22 60 7e             	and    0x7e(%eax),%ah
c000d938:	00 00                	add    %al,(%eax)
c000d93a:	5c                   	pop    %esp
c000d93b:	7c 7a                	jl     c000d9b7 <keymap+0xd3>
c000d93d:	5a                   	pop    %edx
c000d93e:	78 58                	js     c000d998 <keymap+0xb4>
c000d940:	63 43 76             	arpl   %ax,0x76(%ebx)
c000d943:	56                   	push   %esi
c000d944:	62 42 6e             	bound  %eax,0x6e(%edx)
c000d947:	4e                   	dec    %esi
c000d948:	6d                   	insl   (%dx),%es:(%edi)
c000d949:	4d                   	dec    %ebp
c000d94a:	2c 3c                	sub    $0x3c,%al
c000d94c:	2e 3e 2f             	cs ds das 
c000d94f:	3f                   	aas    
c000d950:	00 00                	add    %al,(%eax)
c000d952:	2a 2a                	sub    (%edx),%ch
c000d954:	00 00                	add    %al,(%eax)
c000d956:	20 20                	and    %ah,(%eax)
c000d958:	00 00                	add    %al,(%eax)
c000d95a:	00 00                	add    %al,(%eax)
c000d95c:	50                   	push   %eax
c000d95d:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d95f:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d962:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d967:	65 6c                	gs insb (%dx),%es:(%edi)
c000d969:	20 28                	and    %ch,(%eax)
c000d96b:	50                   	push   %eax
c000d96c:	4b                   	dec    %ebx
c000d96d:	6e                   	outsb  %ds:(%esi),(%dx)
c000d96e:	29 20                	sub    %esp,(%eax)
c000d970:	76 65                	jbe    c000d9d7 <keymap+0xf3>
c000d972:	72 73                	jb     c000d9e7 <keymap+0x103>
c000d974:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d97b:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d97e:	74 65                	je     c000d9e5 <keymap+0x101>
c000d980:	73 74                	jae    c000d9f6 <keymap+0x112>
c000d982:	00 00                	add    %al,(%eax)
c000d984:	4d                   	dec    %ebp
c000d985:	65 6d                	gs insl (%dx),%es:(%edi)
c000d987:	5f                   	pop    %edi
c000d988:	61                   	popa   
c000d989:	6c                   	insb   (%dx),%es:(%edi)
c000d98a:	6c                   	insb   (%dx),%es:(%edi)
c000d98b:	6f                   	outsl  %ds:(%esi),(%dx)
c000d98c:	63 3a                	arpl   %di,(%edx)
c000d98e:	20 30                	and    %dh,(%eax)
c000d990:	78 00                	js     c000d992 <keymap+0xae>
c000d992:	00 00                	add    %al,(%eax)
c000d994:	50                   	push   %eax
c000d995:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d997:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d99a:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d99f:	65 6c                	gs insb (%dx),%es:(%edi)
c000d9a1:	20 28                	and    %ch,(%eax)
c000d9a3:	50                   	push   %eax
c000d9a4:	4b                   	dec    %ebx
c000d9a5:	6e                   	outsb  %ds:(%esi),(%dx)
c000d9a6:	29 20                	sub    %esp,(%eax)
c000d9a8:	76 65                	jbe    c000da0f <keymap+0x12b>
c000d9aa:	72 73                	jb     c000da1f <digits.971+0x3>
c000d9ac:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d9b3:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d9b6:	74 65                	je     c000da1d <digits.971+0x1>
c000d9b8:	73 74                	jae    c000da2e <digits.971+0x12>
c000d9ba:	00 00                	add    %al,(%eax)
c000d9bc:	b1 9f                	mov    $0x9f,%cl
c000d9be:	00 c0                	add    %al,%al
c000d9c0:	6d                   	insl   (%dx),%es:(%edi)
c000d9c1:	9f                   	lahf   
c000d9c2:	00 c0                	add    %al,%al
c000d9c4:	6d                   	insl   (%dx),%es:(%edi)
c000d9c5:	9f                   	lahf   
c000d9c6:	00 c0                	add    %al,%al
c000d9c8:	6d                   	insl   (%dx),%es:(%edi)
c000d9c9:	9f                   	lahf   
c000d9ca:	00 c0                	add    %al,%al
c000d9cc:	6d                   	insl   (%dx),%es:(%edi)
c000d9cd:	9f                   	lahf   
c000d9ce:	00 c0                	add    %al,%al
c000d9d0:	6d                   	insl   (%dx),%es:(%edi)
c000d9d1:	9f                   	lahf   
c000d9d2:	00 c0                	add    %al,%al
c000d9d4:	6d                   	insl   (%dx),%es:(%edi)
c000d9d5:	9f                   	lahf   
c000d9d6:	00 c0                	add    %al,%al
c000d9d8:	6d                   	insl   (%dx),%es:(%edi)
c000d9d9:	9f                   	lahf   
c000d9da:	00 c0                	add    %al,%al
c000d9dc:	46                   	inc    %esi
c000d9dd:	9f                   	lahf   
c000d9de:	00 c0                	add    %al,%al
c000d9e0:	65 9f                	gs lahf 
c000d9e2:	00 c0                	add    %al,%al
c000d9e4:	54                   	push   %esp
c000d9e5:	9f                   	lahf   
c000d9e6:	00 c0                	add    %al,%al
c000d9e8:	6d                   	insl   (%dx),%es:(%edi)
c000d9e9:	9f                   	lahf   
c000d9ea:	00 c0                	add    %al,%al
c000d9ec:	6d                   	insl   (%dx),%es:(%edi)
c000d9ed:	9f                   	lahf   
c000d9ee:	00 c0                	add    %al,%al
c000d9f0:	54                   	push   %esp
c000d9f1:	9f                   	lahf   
c000d9f2:	00 c0                	add    %al,%al
c000d9f4:	50                   	push   %eax
c000d9f5:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d9f7:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d9fa:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d9ff:	65 6c                	gs insb (%dx),%es:(%edi)
c000da01:	20 28                	and    %ch,(%eax)
c000da03:	50                   	push   %eax
c000da04:	4b                   	dec    %ebx
c000da05:	6e                   	outsb  %ds:(%esi),(%dx)
c000da06:	29 20                	sub    %esp,(%eax)
c000da08:	76 65                	jbe    c000da6f <digits.990+0x2b>
c000da0a:	72 73                	jb     c000da7f <digits.990+0x3b>
c000da0c:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000da13:	2e 30 20             	xor    %ah,%cs:(%eax)
c000da16:	74 65                	je     c000da7d <digits.990+0x39>
c000da18:	73 74                	jae    c000da8e <digits.990+0x4a>
	...

c000da1c <digits.971>:
c000da1c:	30 31                	xor    %dh,(%ecx)
c000da1e:	32 33                	xor    (%ebx),%dh
c000da20:	34 35                	xor    $0x35,%al
c000da22:	36 37                	ss aaa 
c000da24:	38 39                	cmp    %bh,(%ecx)
c000da26:	41                   	inc    %ecx
c000da27:	42                   	inc    %edx
c000da28:	43                   	inc    %ebx
c000da29:	44                   	inc    %esp
c000da2a:	45                   	inc    %ebp
c000da2b:	46                   	inc    %esi
c000da2c:	47                   	inc    %edi
c000da2d:	48                   	dec    %eax
c000da2e:	49                   	dec    %ecx
c000da2f:	4a                   	dec    %edx
c000da30:	4b                   	dec    %ebx
c000da31:	4c                   	dec    %esp
c000da32:	4d                   	dec    %ebp
c000da33:	4e                   	dec    %esi
c000da34:	4f                   	dec    %edi
c000da35:	50                   	push   %eax
c000da36:	51                   	push   %ecx
c000da37:	52                   	push   %edx
c000da38:	53                   	push   %ebx
c000da39:	54                   	push   %esp
c000da3a:	55                   	push   %ebp
c000da3b:	56                   	push   %esi
c000da3c:	57                   	push   %edi
c000da3d:	58                   	pop    %eax
c000da3e:	59                   	pop    %ecx
c000da3f:	5a                   	pop    %edx
c000da40:	00 00                	add    %al,(%eax)
	...

c000da44 <digits.990>:
c000da44:	30 31                	xor    %dh,(%ecx)
c000da46:	32 33                	xor    (%ebx),%dh
c000da48:	34 35                	xor    $0x35,%al
c000da4a:	36 37                	ss aaa 
c000da4c:	38 39                	cmp    %bh,(%ecx)
c000da4e:	41                   	inc    %ecx
c000da4f:	42                   	inc    %edx
c000da50:	43                   	inc    %ebx
c000da51:	44                   	inc    %esp
c000da52:	45                   	inc    %ebp
c000da53:	46                   	inc    %esi
c000da54:	47                   	inc    %edi
c000da55:	48                   	dec    %eax
c000da56:	49                   	dec    %ecx
c000da57:	4a                   	dec    %edx
c000da58:	4b                   	dec    %ebx
c000da59:	4c                   	dec    %esp
c000da5a:	4d                   	dec    %ebp
c000da5b:	4e                   	dec    %esi
c000da5c:	4f                   	dec    %edi
c000da5d:	50                   	push   %eax
c000da5e:	51                   	push   %ecx
c000da5f:	52                   	push   %edx
c000da60:	53                   	push   %ebx
c000da61:	54                   	push   %esp
c000da62:	55                   	push   %ebp
c000da63:	56                   	push   %esi
c000da64:	57                   	push   %edi
c000da65:	58                   	pop    %eax
c000da66:	59                   	pop    %ecx
c000da67:	5a                   	pop    %edx
c000da68:	00 00                	add    %al,(%eax)
c000da6a:	00 00                	add    %al,(%eax)
c000da6c:	64 73 74             	fs jae c000dae3 <digits.990+0x9f>
c000da6f:	5f                   	pop    %edi
c000da70:	5f                   	pop    %edi
c000da71:	20 21                	and    %ah,(%ecx)
c000da73:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000da78:	4c                   	dec    %esp
c000da79:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
c000da7d:	2f                   	das    
c000da7e:	73 74                	jae    c000daf4 <__func__.842>
c000da80:	72 69                	jb     c000daeb <digits.990+0xa7>
c000da82:	6e                   	outsb  %ds:(%esi),(%dx)
c000da83:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
c000da87:	64 73 74             	fs jae c000dafe <__func__.854+0x2>
c000da8a:	5f                   	pop    %edi
c000da8b:	5f                   	pop    %edi
c000da8c:	20 21                	and    %ah,(%ecx)
c000da8e:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000da93:	4c                   	dec    %esp
c000da94:	20 26                	and    %ah,(%esi)
c000da96:	26 20 73 72          	and    %dh,%es:0x72(%ebx)
c000da9a:	63 5f 5f             	arpl   %bx,0x5f(%edi)
c000da9d:	20 21                	and    %ah,(%ecx)
c000da9f:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000daa4:	4c                   	dec    %esp
c000daa5:	00 70 31             	add    %dh,0x31(%eax)
c000daa8:	5f                   	pop    %edi
c000daa9:	5f                   	pop    %edi
c000daaa:	20 21                	and    %ah,(%ecx)
c000daac:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000dab1:	4c                   	dec    %esp
c000dab2:	20 26                	and    %ah,(%esi)
c000dab4:	26 20 70 32          	and    %dh,%es:0x32(%eax)
c000dab8:	5f                   	pop    %edi
c000dab9:	5f                   	pop    %edi
c000daba:	20 21                	and    %ah,(%ecx)
c000dabc:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000dac1:	4c                   	dec    %esp
c000dac2:	00 00                	add    %al,(%eax)
c000dac4:	50                   	push   %eax
c000dac5:	65 6e                	outsb  %gs:(%esi),(%dx)
c000dac7:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000daca:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000dacf:	65 6c                	gs insb (%dx),%es:(%edi)
c000dad1:	20 28                	and    %ch,(%eax)
c000dad3:	50                   	push   %eax
c000dad4:	4b                   	dec    %ebx
c000dad5:	6e                   	outsb  %ds:(%esi),(%dx)
c000dad6:	29 20                	sub    %esp,(%eax)
c000dad8:	76 65                	jbe    c000db3f <__func__.854+0x43>
c000dada:	72 73                	jb     c000db4f <__func__.854+0x53>
c000dadc:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000dae3:	2e 30 20             	xor    %ah,%cs:(%eax)
c000dae6:	74 65                	je     c000db4d <__func__.854+0x51>
c000dae8:	73 74                	jae    c000db5e <__func__.854+0x62>
	...

c000daec <__func__.831>:
c000daec:	6d                   	insl   (%dx),%es:(%edi)
c000daed:	65 6d                	gs insl (%dx),%es:(%edi)
c000daef:	73 65                	jae    c000db56 <__func__.854+0x5a>
c000daf1:	74 00                	je     c000daf3 <__func__.831+0x7>
	...

c000daf4 <__func__.842>:
c000daf4:	6d                   	insl   (%dx),%es:(%edi)
c000daf5:	65 6d                	gs insl (%dx),%es:(%edi)
c000daf7:	63 70 79             	arpl   %si,0x79(%eax)
	...

c000dafc <__func__.854>:
c000dafc:	6d                   	insl   (%dx),%es:(%edi)
c000dafd:	65 6d                	gs insl (%dx),%es:(%edi)
c000daff:	63 6d 70             	arpl   %bp,0x70(%ebp)
c000db02:	00 00                	add    %al,(%eax)
c000db04:	70 73                	jo     c000db79 <__func__.854+0x7d>
c000db06:	65 6d                	gs insl (%dx),%es:(%edi)
c000db08:	61                   	popa   
c000db09:	2d 3e 76 61 6c       	sub    $0x6c61763e,%eax
c000db0e:	75 65                	jne    c000db75 <__func__.854+0x79>
c000db10:	20 3d 3d 20 76 61    	and    %bh,0x6176203d
c000db16:	6c                   	insb   (%dx),%es:(%edi)
c000db17:	75 65                	jne    c000db7e <__func__.854+0x82>
c000db19:	00 74 68 72          	add    %dh,0x72(%eax,%ebp,2)
c000db1d:	65 61                	gs popa 
c000db1f:	64 2f                	fs das 
c000db21:	73 79                	jae    c000db9c <__func__.854+0xa0>
c000db23:	6e                   	outsb  %ds:(%esi),(%dx)
c000db24:	63 2e                	arpl   %bp,(%esi)
c000db26:	63 00                	arpl   %ax,(%eax)
c000db28:	21 28                	and    %ebp,(%eax)
c000db2a:	6c                   	insb   (%dx),%es:(%edi)
c000db2b:	69 73 74 5f 66 69 6e 	imul   $0x6e69665f,0x74(%ebx),%esi
c000db32:	64 28 26             	sub    %ah,%fs:(%esi)
c000db35:	28 70 73             	sub    %dh,0x73(%eax)
c000db38:	65 6d                	gs insl (%dx),%es:(%edi)
c000db3a:	61                   	popa   
c000db3b:	2d 3e 77 61 69       	sub    $0x6961773e,%eax
c000db40:	74 65                	je     c000dba7 <__func__.854+0xab>
c000db42:	72 73                	jb     c000dbb7 <__func__.854+0xbb>
c000db44:	29 2c 26             	sub    %ebp,(%esi,%eiz,1)
c000db47:	28 72 75             	sub    %dh,0x75(%edx)
c000db4a:	6e                   	outsb  %ds:(%esi),(%dx)
c000db4b:	6e                   	outsb  %ds:(%esi),(%dx)
c000db4c:	69 6e 67 5f 74 68 72 	imul   $0x7268745f,0x67(%esi),%ebp
c000db53:	65 61                	gs popa 
c000db55:	64 28 29             	sub    %ch,%fs:(%ecx)
c000db58:	2d 3e 67 65 6e       	sub    $0x6e65673e,%eax
c000db5d:	65 72 61             	gs jb  c000dbc1 <__func__.854+0xc5>
c000db60:	6c                   	insb   (%dx),%es:(%edi)
c000db61:	5f                   	pop    %edi
c000db62:	74 61                	je     c000dbc5 <__func__.854+0xc9>
c000db64:	67 29 29             	sub    %ebp,(%bx,%di)
c000db67:	29 00                	sub    %eax,(%eax)
c000db69:	73 65                	jae    c000dbd0 <__func__.854+0xd4>
c000db6b:	6d                   	insl   (%dx),%es:(%edi)
c000db6c:	61                   	popa   
c000db6d:	20 64 6f 77          	and    %ah,0x77(%edi,%ebp,2)
c000db71:	6e                   	outsb  %ds:(%esi),(%dx)
c000db72:	3a 74 68 72          	cmp    0x72(%eax,%ebp,2),%dh
c000db76:	65 61                	gs popa 
c000db78:	64 20 62 6c          	and    %ah,%fs:0x6c(%edx)
c000db7c:	6f                   	outsl  %ds:(%esi),(%dx)
c000db7d:	63 6b 65             	arpl   %bp,0x65(%ebx)
c000db80:	64 20 68 61          	and    %ch,%fs:0x61(%eax)
c000db84:	73 20                	jae    c000dba6 <__func__.854+0xaa>
c000db86:	62 65 65             	bound  %esp,0x65(%ebp)
c000db89:	6e                   	outsb  %ds:(%esi),(%dx)
c000db8a:	20 69 6e             	and    %ch,0x6e(%ecx)
c000db8d:	20 77 61             	and    %dh,0x61(%edi)
c000db90:	69 74 65 72 73 20 6c 	imul   $0x696c2073,0x72(%ebp,%eiz,2),%esi
c000db97:	69 
c000db98:	73 74                	jae    c000dc0e <__func__.854+0x112>
c000db9a:	21 0a                	and    %ecx,(%edx)
c000db9c:	00 70 73             	add    %dh,0x73(%eax)
c000db9f:	65 6d                	gs insl (%dx),%es:(%edi)
c000dba1:	61                   	popa   
c000dba2:	2d 3e 76 61 6c       	sub    $0x6c61763e,%eax
c000dba7:	75 65                	jne    c000dc0e <__func__.854+0x112>
c000dba9:	20 3d 3d 20 30 00    	and    %bh,0x30203d
c000dbaf:	70 73                	jo     c000dc24 <__func__.854+0x128>
c000dbb1:	65 6d                	gs insl (%dx),%es:(%edi)
c000dbb3:	61                   	popa   
c000dbb4:	2d 3e 76 61 6c       	sub    $0x6c61763e,%eax
c000dbb9:	75 65                	jne    c000dc20 <__func__.854+0x124>
c000dbbb:	20 3d 3d 20 31 00    	and    %bh,0x31203d
c000dbc1:	70 6c                	jo     c000dc2f <__func__.854+0x133>
c000dbc3:	6f                   	outsl  %ds:(%esi),(%dx)
c000dbc4:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
c000dbc7:	3e 68 6f 6c 64 65    	ds push $0x65646c6f
c000dbcd:	72 5f                	jb     c000dc2e <__func__.854+0x132>
c000dbcf:	72 65                	jb     c000dc36 <__func__.854+0x13a>
c000dbd1:	70 65                	jo     c000dc38 <__func__.854+0x13c>
c000dbd3:	61                   	popa   
c000dbd4:	74 5f                	je     c000dc35 <__func__.854+0x139>
c000dbd6:	6e                   	outsb  %ds:(%esi),(%dx)
c000dbd7:	72 20                	jb     c000dbf9 <__func__.854+0xfd>
c000dbd9:	3d 3d 20 30 00       	cmp    $0x30203d,%eax
c000dbde:	70 6c                	jo     c000dc4c <__func__.967+0x4>
c000dbe0:	6f                   	outsl  %ds:(%esi),(%dx)
c000dbe1:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
c000dbe4:	3e 68 6f 6c 64 65    	ds push $0x65646c6f
c000dbea:	72 20                	jb     c000dc0c <__func__.854+0x110>
c000dbec:	3d 3d 20 72 75       	cmp    $0x7572203d,%eax
c000dbf1:	6e                   	outsb  %ds:(%esi),(%dx)
c000dbf2:	6e                   	outsb  %ds:(%esi),(%dx)
c000dbf3:	69 6e 67 5f 74 68 72 	imul   $0x7268745f,0x67(%esi),%ebp
c000dbfa:	65 61                	gs popa 
c000dbfc:	64 28 29             	sub    %ch,%fs:(%ecx)
c000dbff:	00 70 6c             	add    %dh,0x6c(%eax)
c000dc02:	6f                   	outsl  %ds:(%esi),(%dx)
c000dc03:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
c000dc06:	3e 68 6f 6c 64 65    	ds push $0x65646c6f
c000dc0c:	72 5f                	jb     c000dc6d <__func__.988+0x5>
c000dc0e:	72 65                	jb     c000dc75 <__func__.988+0xd>
c000dc10:	70 65                	jo     c000dc77 <__func__.988+0xf>
c000dc12:	61                   	popa   
c000dc13:	74 5f                	je     c000dc74 <__func__.988+0xc>
c000dc15:	6e                   	outsb  %ds:(%esi),(%dx)
c000dc16:	72 20                	jb     c000dc38 <__func__.854+0x13c>
c000dc18:	3d 3d 20 31 00       	cmp    $0x31203d,%eax
c000dc1d:	00 00                	add    %al,(%eax)
c000dc1f:	00 50 65             	add    %dl,0x65(%eax)
c000dc22:	6e                   	outsb  %ds:(%esi),(%dx)
c000dc23:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000dc26:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000dc2b:	65 6c                	gs insb (%dx),%es:(%edi)
c000dc2d:	20 28                	and    %ch,(%eax)
c000dc2f:	50                   	push   %eax
c000dc30:	4b                   	dec    %ebx
c000dc31:	6e                   	outsb  %ds:(%esi),(%dx)
c000dc32:	29 20                	sub    %esp,(%eax)
c000dc34:	76 65                	jbe    c000dc9b <__func__.992+0x23>
c000dc36:	72 73                	jb     c000dcab <__func__.992+0x33>
c000dc38:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000dc3f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000dc42:	74 65                	je     c000dca9 <__func__.992+0x31>
c000dc44:	73 74                	jae    c000dcba <__func__.992+0x42>
	...

c000dc48 <__func__.967>:
c000dc48:	73 65                	jae    c000dcaf <__func__.992+0x37>
c000dc4a:	6d                   	insl   (%dx),%es:(%edi)
c000dc4b:	61                   	popa   
c000dc4c:	5f                   	pop    %edi
c000dc4d:	69 6e 69 74 00 00 00 	imul   $0x74,0x69(%esi),%ebp

c000dc54 <__func__.975>:
c000dc54:	73 65                	jae    c000dcbb <__func__.992+0x43>
c000dc56:	6d                   	insl   (%dx),%es:(%edi)
c000dc57:	61                   	popa   
c000dc58:	5f                   	pop    %edi
c000dc59:	64 6f                	outsl  %fs:(%esi),(%dx)
c000dc5b:	77 6e                	ja     c000dccb <__func__.992+0x53>
c000dc5d:	00 00                	add    %al,(%eax)
	...

c000dc60 <__func__.983>:
c000dc60:	73 65                	jae    c000dcc7 <__func__.992+0x4f>
c000dc62:	6d                   	insl   (%dx),%es:(%edi)
c000dc63:	61                   	popa   
c000dc64:	5f                   	pop    %edi
c000dc65:	75 70                	jne    c000dcd7 <__func__.992+0x5f>
	...

c000dc68 <__func__.988>:
c000dc68:	6c                   	insb   (%dx),%es:(%edi)
c000dc69:	6f                   	outsl  %ds:(%esi),(%dx)
c000dc6a:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
c000dc6d:	61                   	popa   
c000dc6e:	63 71 75             	arpl   %si,0x75(%ecx)
c000dc71:	69 72 65 00 00 00 00 	imul   $0x0,0x65(%edx),%esi

c000dc78 <__func__.992>:
c000dc78:	6c                   	insb   (%dx),%es:(%edi)
c000dc79:	6f                   	outsl  %ds:(%esi),(%dx)
c000dc7a:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
c000dc7d:	72 65                	jb     c000dce4 <__func__.992+0x6c>
c000dc7f:	6c                   	insb   (%dx),%es:(%edi)
c000dc80:	65 61                	gs popa 
c000dc82:	73 65                	jae    c000dce9 <__func__.992+0x71>
c000dc84:	00 00                	add    %al,(%eax)
c000dc86:	00 00                	add    %al,(%eax)
c000dc88:	6d                   	insl   (%dx),%es:(%edi)
c000dc89:	61                   	popa   
c000dc8a:	69 6e 00 21 6c 69 73 	imul   $0x73696c21,0x0(%esi),%ebp
c000dc91:	74 5f                	je     c000dcf2 <__func__.992+0x7a>
c000dc93:	66 69 6e 64 28 26    	imul   $0x2628,0x64(%esi),%bp
c000dc99:	72 65                	jb     c000dd00 <__func__.992+0x88>
c000dc9b:	61                   	popa   
c000dc9c:	64 79 5f             	fs jns c000dcfe <__func__.992+0x86>
c000dc9f:	6c                   	insb   (%dx),%es:(%edi)
c000dca0:	69 73 74 2c 26 28 74 	imul   $0x7428262c,0x74(%ebx),%esi
c000dca7:	68 72 65 61 64       	push   $0x64616572
c000dcac:	2d 3e 67 65 6e       	sub    $0x6e65673e,%eax
c000dcb1:	65 72 61             	gs jb  c000dd15 <__func__.992+0x9d>
c000dcb4:	6c                   	insb   (%dx),%es:(%edi)
c000dcb5:	5f                   	pop    %edi
c000dcb6:	74 61                	je     c000dd19 <__func__.992+0xa1>
c000dcb8:	67 29 29             	sub    %ebp,(%bx,%di)
c000dcbb:	00 74 68 72          	add    %dh,0x72(%eax,%ebp,2)
c000dcbf:	65 61                	gs popa 
c000dcc1:	64 2f                	fs das 
c000dcc3:	74 68                	je     c000dd2d <__func__.992+0xb5>
c000dcc5:	72 65                	jb     c000dd2c <__func__.992+0xb4>
c000dcc7:	61                   	popa   
c000dcc8:	64 2e 63 00          	fs arpl %ax,%cs:(%eax)
c000dccc:	21 6c 69 73          	and    %ebp,0x73(%ecx,%ebp,2)
c000dcd0:	74 5f                	je     c000dd31 <__func__.992+0xb9>
c000dcd2:	66 69 6e 64 28 26    	imul   $0x2628,0x64(%esi),%bp
c000dcd8:	61                   	popa   
c000dcd9:	6c                   	insb   (%dx),%es:(%edi)
c000dcda:	6c                   	insb   (%dx),%es:(%edi)
c000dcdb:	5f                   	pop    %edi
c000dcdc:	6c                   	insb   (%dx),%es:(%edi)
c000dcdd:	69 73 74 2c 26 28 74 	imul   $0x7428262c,0x74(%ebx),%esi
c000dce4:	68 72 65 61 64       	push   $0x64616572
c000dce9:	2d 3e 61 6c 6c       	sub    $0x6c6c613e,%eax
c000dcee:	5f                   	pop    %edi
c000dcef:	74 61                	je     c000dd52 <__func__.992+0xda>
c000dcf1:	67 29 29             	sub    %ebp,(%bx,%di)
c000dcf4:	00 21                	add    %ah,(%ecx)
c000dcf6:	28 6c 69 73          	sub    %ch,0x73(%ecx,%ebp,2)
c000dcfa:	74 5f                	je     c000dd5b <__func__.992+0xe3>
c000dcfc:	66 69 6e 64 28 26    	imul   $0x2628,0x64(%esi),%bp
c000dd02:	72 65                	jb     c000dd69 <__func__.992+0xf1>
c000dd04:	61                   	popa   
c000dd05:	64 79 5f             	fs jns c000dd67 <__func__.992+0xef>
c000dd08:	6c                   	insb   (%dx),%es:(%edi)
c000dd09:	69 73 74 2c 26 28 63 	imul   $0x6328262c,0x74(%ebx),%esi
c000dd10:	75 72                	jne    c000dd84 <__func__.992+0x10c>
c000dd12:	5f                   	pop    %edi
c000dd13:	74 68                	je     c000dd7d <__func__.992+0x105>
c000dd15:	72 65                	jb     c000dd7c <__func__.992+0x104>
c000dd17:	61                   	popa   
c000dd18:	64 2d 3e 67 65 6e    	fs sub $0x6e65673e,%eax
c000dd1e:	65 72 61             	gs jb  c000dd82 <__func__.992+0x10a>
c000dd21:	6c                   	insb   (%dx),%es:(%edi)
c000dd22:	5f                   	pop    %edi
c000dd23:	74 61                	je     c000dd86 <__func__.992+0x10e>
c000dd25:	67 29 29             	sub    %ebp,(%bx,%di)
c000dd28:	29 00                	sub    %eax,(%eax)
c000dd2a:	21 28                	and    %ebp,(%eax)
c000dd2c:	6c                   	insb   (%dx),%es:(%edi)
c000dd2d:	69 73 74 5f 65 6d 70 	imul   $0x706d655f,0x74(%ebx),%esi
c000dd34:	74 79                	je     c000ddaf <__func__.992+0x137>
c000dd36:	28 26                	sub    %ah,(%esi)
c000dd38:	72 65                	jb     c000dd9f <__func__.992+0x127>
c000dd3a:	61                   	popa   
c000dd3b:	64 79 5f             	fs jns c000dd9d <__func__.992+0x125>
c000dd3e:	6c                   	insb   (%dx),%es:(%edi)
c000dd3f:	69 73 74 29 29 00 72 	imul   $0x72002929,0x74(%ebx),%esi
c000dd46:	65 61                	gs popa 
c000dd48:	64 79 5f             	fs jns c000ddaa <__func__.992+0x132>
c000dd4b:	6c                   	insb   (%dx),%es:(%edi)
c000dd4c:	69 73 74 2e 74 61 69 	imul   $0x6961742e,0x74(%ebx),%esi
c000dd53:	6c                   	insb   (%dx),%es:(%edi)
c000dd54:	2e 70 72             	jo,pn  c000ddc9 <__func__.992+0x151>
c000dd57:	65 76 20             	gs jbe c000dd7a <__func__.992+0x102>
c000dd5a:	21 3d 20 26 72 65    	and    %edi,0x65722620
c000dd60:	61                   	popa   
c000dd61:	64 79 5f             	fs jns c000ddc3 <__func__.992+0x14b>
c000dd64:	6c                   	insb   (%dx),%es:(%edi)
c000dd65:	69 73 74 2e 68 65 61 	imul   $0x6165682e,0x74(%ebx),%esi
c000dd6c:	64 00 73 74          	add    %dh,%fs:0x74(%ebx)
c000dd70:	61                   	popa   
c000dd71:	74 75                	je     c000dde8 <__func__.992+0x170>
c000dd73:	73 20                	jae    c000dd95 <__func__.992+0x11d>
c000dd75:	21 3d 20 54 41 53    	and    %edi,0x53415420
c000dd7b:	4b                   	dec    %ebx
c000dd7c:	5f                   	pop    %edi
c000dd7d:	52                   	push   %edx
c000dd7e:	55                   	push   %ebp
c000dd7f:	4e                   	dec    %esi
c000dd80:	4e                   	dec    %esi
c000dd81:	49                   	dec    %ecx
c000dd82:	4e                   	dec    %esi
c000dd83:	47                   	inc    %edi
c000dd84:	20 26                	and    %ah,(%esi)
c000dd86:	26 20 73 74          	and    %dh,%es:0x74(%ebx)
c000dd8a:	61                   	popa   
c000dd8b:	74 75                	je     c000de02 <__func__.992+0x18a>
c000dd8d:	73 20                	jae    c000ddaf <__func__.992+0x137>
c000dd8f:	21 3d 20 54 41 53    	and    %edi,0x53415420
c000dd95:	4b                   	dec    %ebx
c000dd96:	5f                   	pop    %edi
c000dd97:	52                   	push   %edx
c000dd98:	45                   	inc    %ebp
c000dd99:	41                   	inc    %ecx
c000dd9a:	44                   	inc    %esp
c000dd9b:	59                   	pop    %ecx
c000dd9c:	00 21                	add    %ah,(%ecx)
c000dd9e:	6c                   	insb   (%dx),%es:(%edi)
c000dd9f:	69 73 74 5f 66 69 6e 	imul   $0x6e69665f,0x74(%ebx),%esi
c000dda6:	64 28 26             	sub    %ah,%fs:(%esi)
c000dda9:	72 65                	jb     c000de10 <__func__.992+0x198>
c000ddab:	61                   	popa   
c000ddac:	64 79 5f             	fs jns c000de0e <__func__.992+0x196>
c000ddaf:	6c                   	insb   (%dx),%es:(%edi)
c000ddb0:	69 73 74 2c 26 28 70 	imul   $0x7028262c,0x74(%ebx),%esi
c000ddb7:	74 68                	je     c000de21 <__func__.992+0x1a9>
c000ddb9:	72 65                	jb     c000de20 <__func__.992+0x1a8>
c000ddbb:	61                   	popa   
c000ddbc:	64 2d 3e 67 65 6e    	fs sub $0x6e65673e,%eax
c000ddc2:	65 72 61             	gs jb  c000de26 <__func__.1152+0x2>
c000ddc5:	6c                   	insb   (%dx),%es:(%edi)
c000ddc6:	5f                   	pop    %edi
c000ddc7:	74 61                	je     c000de2a <__func__.1152+0x6>
c000ddc9:	67 29 29             	sub    %ebp,(%bx,%di)
c000ddcc:	00 74 68 72          	add    %dh,0x72(%eax,%ebp,2)
c000ddd0:	65 61                	gs popa 
c000ddd2:	64 20 75 6e          	and    %dh,%fs:0x6e(%ebp)
c000ddd6:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c000ddda:	6b 3a 20             	imul   $0x20,(%edx),%edi
c000dddd:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c000dde1:	6b 65 64 20          	imul   $0x20,0x64(%ebp),%esp
c000dde5:	74 68                	je     c000de4f <__func__.1164+0xf>
c000dde7:	72 65                	jb     c000de4e <__func__.1164+0xe>
c000dde9:	61                   	popa   
c000ddea:	64 20 69 6e          	and    %ch,%fs:0x6e(%ecx)
c000ddee:	20 72 65             	and    %dh,0x65(%edx)
c000ddf1:	61                   	popa   
c000ddf2:	64 79 20             	fs jns c000de15 <__func__.992+0x19d>
c000ddf5:	6c                   	insb   (%dx),%es:(%edi)
c000ddf6:	69 73 74 00 00 00 50 	imul   $0x50000000,0x74(%ebx),%esi
c000ddfd:	65 6e                	outsb  %gs:(%esi),(%dx)
c000ddff:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000de02:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000de07:	65 6c                	gs insb (%dx),%es:(%edi)
c000de09:	20 28                	and    %ch,(%eax)
c000de0b:	50                   	push   %eax
c000de0c:	4b                   	dec    %ebx
c000de0d:	6e                   	outsb  %ds:(%esi),(%dx)
c000de0e:	29 20                	sub    %esp,(%eax)
c000de10:	76 65                	jbe    c000de77 <__func__.1171+0x27>
c000de12:	72 73                	jb     c000de87 <__func__.1171+0x37>
c000de14:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000de1b:	2e 30 20             	xor    %ah,%cs:(%eax)
c000de1e:	74 65                	je     c000de85 <__func__.1171+0x35>
c000de20:	73 74                	jae    c000de96 <__func__.1171+0x46>
	...

c000de24 <__func__.1152>:
c000de24:	74 68                	je     c000de8e <__func__.1171+0x3e>
c000de26:	72 65                	jb     c000de8d <__func__.1171+0x3d>
c000de28:	61                   	popa   
c000de29:	64 5f                	fs pop %edi
c000de2b:	73 74                	jae    c000dea1 <__func__.1171+0x51>
c000de2d:	61                   	popa   
c000de2e:	72 74                	jb     c000dea4 <__func__.1171+0x54>
c000de30:	00 00                	add    %al,(%eax)
	...

c000de34 <__func__.1159>:
c000de34:	73 63                	jae    c000de99 <__func__.1171+0x49>
c000de36:	68 65 64 75 6c       	push   $0x6c756465
c000de3b:	65 00 00             	add    %al,%gs:(%eax)
	...

c000de40 <__func__.1164>:
c000de40:	74 68                	je     c000deaa <__func__.1171+0x5a>
c000de42:	72 65                	jb     c000dea9 <__func__.1171+0x59>
c000de44:	61                   	popa   
c000de45:	64 5f                	fs pop %edi
c000de47:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c000de4b:	6b 00 00             	imul   $0x0,(%eax),%eax
	...

c000de50 <__func__.1171>:
c000de50:	74 68                	je     c000deba <_bss+0xa>
c000de52:	72 65                	jb     c000deb9 <_bss+0x9>
c000de54:	61                   	popa   
c000de55:	64 5f                	fs pop %edi
c000de57:	75 6e                	jne    c000dec7 <_bss+0x17>
c000de59:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c000de5d:	6b 00 00             	imul   $0x0,(%eax),%eax
c000de60:	50                   	push   %eax
c000de61:	65 6e                	outsb  %gs:(%esi),(%dx)
c000de63:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000de66:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000de6b:	65 6c                	gs insb (%dx),%es:(%edi)
c000de6d:	20 28                	and    %ch,(%eax)
c000de6f:	50                   	push   %eax
c000de70:	4b                   	dec    %ebx
c000de71:	6e                   	outsb  %ds:(%esi),(%dx)
c000de72:	29 20                	sub    %esp,(%eax)
c000de74:	76 65                	jbe    c000dedb <buf+0x7>
c000de76:	72 73                	jb     c000deeb <buf+0x17>
c000de78:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000de7f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000de82:	74 65                	je     c000dee9 <buf+0x15>
c000de84:	73 74                	jae    c000defa <buf+0x26>
c000de86:	00 00                	add    %al,(%eax)
c000de88:	50                   	push   %eax
c000de89:	65 6e                	outsb  %gs:(%esi),(%dx)
c000de8b:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000de8e:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000de93:	65 6c                	gs insb (%dx),%es:(%edi)
c000de95:	20 28                	and    %ch,(%eax)
c000de97:	50                   	push   %eax
c000de98:	4b                   	dec    %ebx
c000de99:	6e                   	outsb  %ds:(%esi),(%dx)
c000de9a:	29 20                	sub    %esp,(%eax)
c000de9c:	76 65                	jbe    c000df03 <buf+0x2f>
c000de9e:	72 73                	jb     c000df13 <buf+0x3f>
c000dea0:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000dea7:	2e 30 20             	xor    %ah,%cs:(%eax)
c000deaa:	74 65                	je     c000df11 <buf+0x3d>
c000deac:	73 74                	jae    c000df22 <ctrl_status+0x2>
	...

Disassembly of section .bss:

c000deb0 <_bss>:
	...

c000ded4 <buf>:
	...

c000df14 <shift_status>:
c000df14:	00 00                	add    %al,(%eax)
	...

c000df18 <casplock_status>:
c000df18:	00 00                	add    %al,(%eax)
	...

c000df1c <ext_scandcode>:
c000df1c:	00 00                	add    %al,(%eax)
	...

c000df20 <ctrl_status>:
c000df20:	00 00                	add    %al,(%eax)
	...

c000df24 <alt_status>:
c000df24:	00 00                	add    %al,(%eax)
	...

c000df28 <i>:
c000df28:	00 00                	add    %al,(%eax)
	...

c000df2c <ticks>:
c000df2c:	00 00                	add    %al,(%eax)
	...

c000df30 <_ebss>:
	...

c000df48 <Screen>:
	...

c000dfa4 <intr_name>:
	...

c000e060 <idt>:
	...

c000e1d8 <idt_table>:
	...

c000e294 <keybuf>:
	...

c000e2b0 <user_pool>:
	...

c0015fc0 <user_vaddr>:
	...

c001dcd0 <kernel_vaddr>:
	...

c00259e0 <kernel_pool>:
	...

c002d6f0 <this_thread_tag>:
c002d6f0:	00 00                	add    %al,(%eax)
	...

c002d6f4 <ready_list>:
	...

c002d70c <all_list>:
	...

c002d724 <main_thread>:
c002d724:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 47 4e             	sub    %al,0x4e(%edi)
   8:	55                   	push   %ebp
   9:	29 20                	sub    %esp,(%eax)
   b:	34 2e                	xor    $0x2e,%al
   d:	36 2e 31 00          	ss xor %eax,%cs:(%eax)
