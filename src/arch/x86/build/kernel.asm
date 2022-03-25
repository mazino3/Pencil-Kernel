
build/kernel.o:     file format elf32-i386


Disassembly of section .text:

c0007f00 <_start>:
c0007f00:	66 b8 10 00          	mov    $0x10,%ax
c0007f04:	8e d8                	mov    %eax,%ds
c0007f06:	8e c0                	mov    %eax,%es
c0007f08:	8e d0                	mov    %eax,%ss
c0007f0a:	8e e0                	mov    %eax,%fs
c0007f0c:	8e e8                	mov    %eax,%gs
c0007f0e:	bc 00 70 00 c0       	mov    $0xc0007000,%esp
c0007f13:	0f 01 15 b8 a6 00 c0 	lgdtl  0xc000a6b8
c0007f1a:	e9 4a 02 00 00       	jmp    c0008169 <kernel_main>
c0007f1f:	e9 fb ff ff ff       	jmp    c0007f1f <_start+0x1f>

c0007f24 <k_thread_b>:
c0007f24:	55                   	push   %ebp
c0007f25:	89 e5                	mov    %esp,%ebp
c0007f27:	90                   	nop
c0007f28:	eb fd                	jmp    c0007f27 <k_thread_b+0x3>

c0007f2a <k_thread_a>:
c0007f2a:	55                   	push   %ebp
c0007f2b:	89 e5                	mov    %esp,%ebp
c0007f2d:	57                   	push   %edi
c0007f2e:	56                   	push   %esi
c0007f2f:	53                   	push   %ebx
c0007f30:	83 ec 28             	sub    $0x28,%esp
c0007f33:	c7 45 e2 30 30 30 30 	movl   $0x30303030,-0x1e(%ebp)
c0007f3a:	8d 5d e2             	lea    -0x1e(%ebp),%ebx
c0007f3d:	66 c7 45 e6 30 00    	movw   $0x30,-0x1a(%ebp)
c0007f43:	8b 35 1c 7c 00 00    	mov    0x7c1c,%esi
c0007f49:	68 d8 d5 00 c0       	push   $0xc000d5d8
c0007f4e:	e8 79 24 00 00       	call   c000a3cc <get_time>
c0007f53:	83 c4 10             	add    $0x10,%esp
c0007f56:	83 ee 22             	sub    $0x22,%esi
c0007f59:	8b 15 1c 7c 00 00    	mov    0x7c1c,%edx
c0007f5f:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0007f64:	51                   	push   %ecx
c0007f65:	8b 3d d8 d5 00 c0    	mov    0xc000d5d8,%edi
c0007f6b:	51                   	push   %ecx
c0007f6c:	8d 4a f8             	lea    -0x8(%edx),%ecx
c0007f6f:	83 ea 26             	sub    $0x26,%edx
c0007f72:	51                   	push   %ecx
c0007f73:	8d 48 f9             	lea    -0x7(%eax),%ecx
c0007f76:	2d d1 00 00 00       	sub    $0xd1,%eax
c0007f7b:	51                   	push   %ecx
c0007f7c:	52                   	push   %edx
c0007f7d:	50                   	push   %eax
c0007f7e:	68 84 84 84 00       	push   $0x848484
c0007f83:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0007f88:	e8 5b 08 00 00       	call   c00087e8 <RectangleFill>
c0007f8d:	8b 15 1c 7c 00 00    	mov    0x7c1c,%edx
c0007f93:	83 c4 18             	add    $0x18,%esp
c0007f96:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0007f9b:	8d 4a f5             	lea    -0xb(%edx),%ecx
c0007f9e:	83 ea 29             	sub    $0x29,%edx
c0007fa1:	51                   	push   %ecx
c0007fa2:	8d 48 f6             	lea    -0xa(%eax),%ecx
c0007fa5:	2d d4 00 00 00       	sub    $0xd4,%eax
c0007faa:	51                   	push   %ecx
c0007fab:	52                   	push   %edx
c0007fac:	50                   	push   %eax
c0007fad:	68 ff ff ff 00       	push   $0xffffff
c0007fb2:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0007fb7:	e8 2c 08 00 00       	call   c00087e8 <RectangleFill>
c0007fbc:	83 c4 1c             	add    $0x1c,%esp
c0007fbf:	6a 10                	push   $0x10
c0007fc1:	53                   	push   %ebx
c0007fc2:	ff 35 ec d5 00 c0    	pushl  0xc000d5ec
c0007fc8:	e8 d7 1d 00 00       	call   c0009da4 <itoa>
c0007fcd:	89 1c 24             	mov    %ebx,(%esp)
c0007fd0:	6a 00                	push   $0x0
c0007fd2:	56                   	push   %esi
c0007fd3:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0007fd8:	2d ca 00 00 00       	sub    $0xca,%eax
c0007fdd:	50                   	push   %eax
c0007fde:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0007fe3:	e8 ff 09 00 00       	call   c00089e7 <put_str_graphic>
c0007fe8:	83 c4 14             	add    $0x14,%esp
c0007feb:	6a 2f                	push   $0x2f
c0007fed:	6a 00                	push   $0x0
c0007fef:	56                   	push   %esi
c0007ff0:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0007ff5:	2d a2 00 00 00       	sub    $0xa2,%eax
c0007ffa:	50                   	push   %eax
c0007ffb:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0008000:	e8 4d 09 00 00       	call   c0008952 <put_char_graphic>
c0008005:	83 c4 1c             	add    $0x1c,%esp
c0008008:	6a 10                	push   $0x10
c000800a:	53                   	push   %ebx
c000800b:	ff 35 e8 d5 00 c0    	pushl  0xc000d5e8
c0008011:	e8 8e 1d 00 00       	call   c0009da4 <itoa>
c0008016:	89 1c 24             	mov    %ebx,(%esp)
c0008019:	6a 00                	push   $0x0
c000801b:	56                   	push   %esi
c000801c:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008021:	2d 98 00 00 00       	sub    $0x98,%eax
c0008026:	50                   	push   %eax
c0008027:	68 f0 d5 00 c0       	push   $0xc000d5f0
c000802c:	e8 b6 09 00 00       	call   c00089e7 <put_str_graphic>
c0008031:	83 c4 14             	add    $0x14,%esp
c0008034:	6a 2f                	push   $0x2f
c0008036:	6a 00                	push   $0x0
c0008038:	56                   	push   %esi
c0008039:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000803e:	2d 84 00 00 00       	sub    $0x84,%eax
c0008043:	50                   	push   %eax
c0008044:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0008049:	e8 04 09 00 00       	call   c0008952 <put_char_graphic>
c000804e:	83 c4 1c             	add    $0x1c,%esp
c0008051:	6a 10                	push   $0x10
c0008053:	53                   	push   %ebx
c0008054:	ff 35 e4 d5 00 c0    	pushl  0xc000d5e4
c000805a:	e8 45 1d 00 00       	call   c0009da4 <itoa>
c000805f:	89 1c 24             	mov    %ebx,(%esp)
c0008062:	6a 00                	push   $0x0
c0008064:	56                   	push   %esi
c0008065:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000806a:	83 e8 7a             	sub    $0x7a,%eax
c000806d:	50                   	push   %eax
c000806e:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0008073:	e8 6f 09 00 00       	call   c00089e7 <put_str_graphic>
c0008078:	83 c4 14             	add    $0x14,%esp
c000807b:	6a 20                	push   $0x20
c000807d:	6a 00                	push   $0x0
c000807f:	56                   	push   %esi
c0008080:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008085:	83 e8 66             	sub    $0x66,%eax
c0008088:	50                   	push   %eax
c0008089:	68 f0 d5 00 c0       	push   $0xc000d5f0
c000808e:	e8 bf 08 00 00       	call   c0008952 <put_char_graphic>
c0008093:	83 c4 1c             	add    $0x1c,%esp
c0008096:	6a 10                	push   $0x10
c0008098:	53                   	push   %ebx
c0008099:	ff 35 e0 d5 00 c0    	pushl  0xc000d5e0
c000809f:	e8 00 1d 00 00       	call   c0009da4 <itoa>
c00080a4:	89 1c 24             	mov    %ebx,(%esp)
c00080a7:	6a 00                	push   $0x0
c00080a9:	56                   	push   %esi
c00080aa:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080af:	83 e8 5c             	sub    $0x5c,%eax
c00080b2:	50                   	push   %eax
c00080b3:	68 f0 d5 00 c0       	push   $0xc000d5f0
c00080b8:	e8 2a 09 00 00       	call   c00089e7 <put_str_graphic>
c00080bd:	83 c4 14             	add    $0x14,%esp
c00080c0:	6a 3a                	push   $0x3a
c00080c2:	6a 00                	push   $0x0
c00080c4:	56                   	push   %esi
c00080c5:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080ca:	83 e8 48             	sub    $0x48,%eax
c00080cd:	50                   	push   %eax
c00080ce:	68 f0 d5 00 c0       	push   $0xc000d5f0
c00080d3:	e8 7a 08 00 00       	call   c0008952 <put_char_graphic>
c00080d8:	83 c4 1c             	add    $0x1c,%esp
c00080db:	6a 10                	push   $0x10
c00080dd:	53                   	push   %ebx
c00080de:	ff 35 dc d5 00 c0    	pushl  0xc000d5dc
c00080e4:	e8 bb 1c 00 00       	call   c0009da4 <itoa>
c00080e9:	89 1c 24             	mov    %ebx,(%esp)
c00080ec:	6a 00                	push   $0x0
c00080ee:	56                   	push   %esi
c00080ef:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080f4:	83 e8 3e             	sub    $0x3e,%eax
c00080f7:	50                   	push   %eax
c00080f8:	68 f0 d5 00 c0       	push   $0xc000d5f0
c00080fd:	e8 e5 08 00 00       	call   c00089e7 <put_str_graphic>
c0008102:	83 c4 14             	add    $0x14,%esp
c0008105:	6a 3a                	push   $0x3a
c0008107:	6a 00                	push   $0x0
c0008109:	56                   	push   %esi
c000810a:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000810f:	83 e8 2a             	sub    $0x2a,%eax
c0008112:	50                   	push   %eax
c0008113:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0008118:	e8 35 08 00 00       	call   c0008952 <put_char_graphic>
c000811d:	83 c4 1c             	add    $0x1c,%esp
c0008120:	6a 10                	push   $0x10
c0008122:	53                   	push   %ebx
c0008123:	ff 35 d8 d5 00 c0    	pushl  0xc000d5d8
c0008129:	e8 76 1c 00 00       	call   c0009da4 <itoa>
c000812e:	89 1c 24             	mov    %ebx,(%esp)
c0008131:	6a 00                	push   $0x0
c0008133:	56                   	push   %esi
c0008134:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008139:	83 e8 20             	sub    $0x20,%eax
c000813c:	50                   	push   %eax
c000813d:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0008142:	e8 a0 08 00 00       	call   c00089e7 <put_str_graphic>
c0008147:	83 c4 20             	add    $0x20,%esp
c000814a:	eb 10                	jmp    c000815c <k_thread_a+0x232>
c000814c:	83 ec 0c             	sub    $0xc,%esp
c000814f:	68 d8 d5 00 c0       	push   $0xc000d5d8
c0008154:	e8 73 22 00 00       	call   c000a3cc <get_time>
c0008159:	83 c4 10             	add    $0x10,%esp
c000815c:	39 3d d8 d5 00 c0    	cmp    %edi,0xc000d5d8
c0008162:	74 e8                	je     c000814c <k_thread_a+0x222>
c0008164:	e9 f0 fd ff ff       	jmp    c0007f59 <k_thread_a+0x2f>

c0008169 <kernel_main>:
c0008169:	55                   	push   %ebp
c000816a:	89 e5                	mov    %esp,%ebp
c000816c:	53                   	push   %ebx
c000816d:	53                   	push   %ebx
c000816e:	bb 23 00 00 00       	mov    $0x23,%ebx
c0008173:	51                   	push   %ecx
c0008174:	51                   	push   %ecx
c0008175:	6a 0a                	push   $0xa
c0008177:	6a 07                	push   $0x7
c0008179:	e8 58 1d 00 00       	call   c0009ed6 <put_char>
c000817e:	83 c4 10             	add    $0x10,%esp
c0008181:	4b                   	dec    %ebx
c0008182:	75 ef                	jne    c0008173 <kernel_main+0xa>
c0008184:	83 ec 0c             	sub    $0xc,%esp
c0008187:	6a 00                	push   $0x0
c0008189:	e8 21 1d 00 00       	call   c0009eaf <set_cursor>
c000818e:	e8 8d 08 00 00       	call   c0008a20 <init_all>
c0008193:	e8 08 15 00 00       	call   c00096a0 <intr_enable>
c0008198:	5b                   	pop    %ebx
c0008199:	58                   	pop    %eax
c000819a:	68 5c cb 00 c0       	push   $0xc000cb5c
c000819f:	6a 07                	push   $0x7
c00081a1:	e8 d1 1d 00 00       	call   c0009f77 <put_str>
c00081a6:	58                   	pop    %eax
c00081a7:	5a                   	pop    %edx
c00081a8:	68 85 cb 00 c0       	push   $0xc000cb85
c00081ad:	6a 07                	push   $0x7
c00081af:	e8 c3 1d 00 00       	call   c0009f77 <put_str>
c00081b4:	59                   	pop    %ecx
c00081b5:	5b                   	pop    %ebx
c00081b6:	68 bf cb 00 c0       	push   $0xc000cbbf
c00081bb:	6a 07                	push   $0x7
c00081bd:	e8 b5 1d 00 00       	call   c0009f77 <put_str>
c00081c2:	e8 07 03 00 00       	call   c00084ce <cpu_info>
c00081c7:	58                   	pop    %eax
c00081c8:	5a                   	pop    %edx
c00081c9:	6a 0a                	push   $0xa
c00081cb:	6a 07                	push   $0x7
c00081cd:	e8 04 1d 00 00       	call   c0009ed6 <put_char>
c00081d2:	59                   	pop    %ecx
c00081d3:	5b                   	pop    %ebx
c00081d4:	68 c8 cb 00 c0       	push   $0xc000cbc8
c00081d9:	6a 07                	push   $0x7
c00081db:	e8 97 1d 00 00       	call   c0009f77 <put_str>
c00081e0:	83 c4 0c             	add    $0xc,%esp
c00081e3:	6a 0a                	push   $0xa
c00081e5:	a1 00 7c 00 00       	mov    0x7c00,%eax
c00081ea:	c1 e8 14             	shr    $0x14,%eax
c00081ed:	50                   	push   %eax
c00081ee:	6a 07                	push   $0x7
c00081f0:	e8 e4 1d 00 00       	call   c0009fd9 <put_int>
c00081f5:	58                   	pop    %eax
c00081f6:	5a                   	pop    %edx
c00081f7:	68 d1 cb 00 c0       	push   $0xc000cbd1
c00081fc:	6a 07                	push   $0x7
c00081fe:	e8 74 1d 00 00       	call   c0009f77 <put_str>
c0008203:	83 c4 0c             	add    $0xc,%esp
c0008206:	6a 0a                	push   $0xa
c0008208:	a1 00 7c 00 00       	mov    0x7c00,%eax
c000820d:	c1 e8 0a             	shr    $0xa,%eax
c0008210:	50                   	push   %eax
c0008211:	6a 07                	push   $0x7
c0008213:	e8 c1 1d 00 00       	call   c0009fd9 <put_int>
c0008218:	59                   	pop    %ecx
c0008219:	5b                   	pop    %ebx
c000821a:	68 d7 cb 00 c0       	push   $0xc000cbd7
c000821f:	6a 07                	push   $0x7
c0008221:	e8 51 1d 00 00       	call   c0009f77 <put_str>
c0008226:	58                   	pop    %eax
c0008227:	5a                   	pop    %edx
c0008228:	6a 0a                	push   $0xa
c000822a:	6a 07                	push   $0x7
c000822c:	e8 a5 1c 00 00       	call   c0009ed6 <put_char>
c0008231:	59                   	pop    %ecx
c0008232:	5b                   	pop    %ebx
c0008233:	68 dd cb 00 c0       	push   $0xc000cbdd
c0008238:	6a 07                	push   $0x7
c000823a:	e8 38 1d 00 00       	call   c0009f77 <put_str>
c000823f:	83 c4 0c             	add    $0xc,%esp
c0008242:	6a 0a                	push   $0xa
c0008244:	ff 35 08 7c 00 00    	pushl  0x7c08
c000824a:	6a 07                	push   $0x7
c000824c:	e8 88 1d 00 00       	call   c0009fd9 <put_int>
c0008251:	58                   	pop    %eax
c0008252:	5a                   	pop    %edx
c0008253:	6a 0a                	push   $0xa
c0008255:	6a 07                	push   $0x7
c0008257:	e8 7a 1c 00 00       	call   c0009ed6 <put_char>
c000825c:	c7 04 24 e6 cb 00 c0 	movl   $0xc000cbe6,(%esp)
c0008263:	68 ff ff ff 00       	push   $0xffffff
c0008268:	6a 14                	push   $0x14
c000826a:	6a 14                	push   $0x14
c000826c:	68 f0 d5 00 c0       	push   $0xc000d5f0
c0008271:	e8 71 07 00 00       	call   c00089e7 <put_str_graphic>
c0008276:	83 c4 14             	add    $0x14,%esp
c0008279:	68 0d cc 00 c0       	push   $0xc000cc0d
c000827e:	68 ff ff ff 00       	push   $0xffffff
c0008283:	6a 28                	push   $0x28
c0008285:	6a 14                	push   $0x14
c0008287:	68 f0 d5 00 c0       	push   $0xc000d5f0
c000828c:	e8 56 07 00 00       	call   c00089e7 <put_str_graphic>
c0008291:	83 c4 20             	add    $0x20,%esp
c0008294:	68 46 cc 00 c0       	push   $0xc000cc46
c0008299:	68 2a 7f 00 c0       	push   $0xc0007f2a
c000829e:	6a 1f                	push   $0x1f
c00082a0:	68 4d cc 00 c0       	push   $0xc000cc4d
c00082a5:	e8 c3 1f 00 00       	call   c000a26d <thread_start>
c00082aa:	68 51 cc 00 c0       	push   $0xc000cc51
c00082af:	68 24 7f 00 c0       	push   $0xc0007f24
c00082b4:	6a 0f                	push   $0xf
c00082b6:	68 4d cc 00 c0       	push   $0xc000cc4d
c00082bb:	e8 ad 1f 00 00       	call   c000a26d <thread_start>
c00082c0:	83 c4 18             	add    $0x18,%esp
c00082c3:	68 58 cc 00 c0       	push   $0xc000cc58
c00082c8:	6a 07                	push   $0x7
c00082ca:	e8 a8 1c 00 00       	call   c0009f77 <put_str>
c00082cf:	59                   	pop    %ecx
c00082d0:	5b                   	pop    %ebx
c00082d1:	68 5d cc 00 c0       	push   $0xc000cc5d
c00082d6:	6a 07                	push   $0x7
c00082d8:	e8 9a 1c 00 00       	call   c0009f77 <put_str>
c00082dd:	e8 bd 1e 00 00       	call   c000a19f <running_thread>
c00082e2:	83 c4 0c             	add    $0xc,%esp
c00082e5:	6a 10                	push   $0x10
c00082e7:	50                   	push   %eax
c00082e8:	6a 07                	push   $0x7
c00082ea:	e8 b0 1c 00 00       	call   c0009f9f <put_uint>
c00082ef:	58                   	pop    %eax
c00082f0:	5a                   	pop    %edx
c00082f1:	68 6e cc 00 c0       	push   $0xc000cc6e
c00082f6:	6a 07                	push   $0x7
c00082f8:	e8 7a 1c 00 00       	call   c0009f77 <put_str>
c00082fd:	83 c4 10             	add    $0x10,%esp
c0008300:	eb fe                	jmp    c0008300 <kernel_main+0x197>
	...

c0008304 <bitmap_init>:
c0008304:	55                   	push   %ebp
c0008305:	89 e5                	mov    %esp,%ebp
c0008307:	83 ec 0c             	sub    $0xc,%esp
c000830a:	8b 45 08             	mov    0x8(%ebp),%eax
c000830d:	ff 30                	pushl  (%eax)
c000830f:	6a 00                	push   $0x0
c0008311:	ff 70 04             	pushl  0x4(%eax)
c0008314:	e8 fb 1c 00 00       	call   c000a014 <memset>
c0008319:	83 c4 10             	add    $0x10,%esp
c000831c:	c9                   	leave  
c000831d:	c3                   	ret    

c000831e <bitmap_scan_test>:
c000831e:	55                   	push   %ebp
c000831f:	89 e5                	mov    %esp,%ebp
c0008321:	8b 55 08             	mov    0x8(%ebp),%edx
c0008324:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0008327:	5d                   	pop    %ebp
c0008328:	8b 52 04             	mov    0x4(%edx),%edx
c000832b:	89 c8                	mov    %ecx,%eax
c000832d:	83 e1 07             	and    $0x7,%ecx
c0008330:	c1 e8 03             	shr    $0x3,%eax
c0008333:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0008337:	ba 01 00 00 00       	mov    $0x1,%edx
c000833c:	d3 e2                	shl    %cl,%edx
c000833e:	21 d0                	and    %edx,%eax
c0008340:	c3                   	ret    

c0008341 <bitmap_alloc>:
c0008341:	55                   	push   %ebp
c0008342:	89 e5                	mov    %esp,%ebp
c0008344:	57                   	push   %edi
c0008345:	56                   	push   %esi
c0008346:	31 f6                	xor    %esi,%esi
c0008348:	53                   	push   %ebx
c0008349:	83 ec 1c             	sub    $0x1c,%esp
c000834c:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000834f:	8b 43 04             	mov    0x4(%ebx),%eax
c0008352:	eb 01                	jmp    c0008355 <bitmap_alloc+0x14>
c0008354:	46                   	inc    %esi
c0008355:	80 3c 30 ff          	cmpb   $0xff,(%eax,%esi,1)
c0008359:	75 04                	jne    c000835f <bitmap_alloc+0x1e>
c000835b:	3b 33                	cmp    (%ebx),%esi
c000835d:	72 f5                	jb     c0008354 <bitmap_alloc+0x13>
c000835f:	3b 33                	cmp    (%ebx),%esi
c0008361:	72 19                	jb     c000837c <bitmap_alloc+0x3b>
c0008363:	68 98 cc 00 c0       	push   $0xc000cc98
c0008368:	68 0c cd 00 c0       	push   $0xc000cd0c
c000836d:	6a 2e                	push   $0x2e
c000836f:	68 bc cc 00 c0       	push   $0xc000ccbc
c0008374:	e8 bb 01 00 00       	call   c0008534 <panic_spin>
c0008379:	83 c4 10             	add    $0x10,%esp
c000837c:	8b 13                	mov    (%ebx),%edx
c000837e:	83 c8 ff             	or     $0xffffffff,%eax
c0008381:	39 d6                	cmp    %edx,%esi
c0008383:	74 72                	je     c00083f7 <bitmap_alloc+0xb6>
c0008385:	8b 43 04             	mov    0x4(%ebx),%eax
c0008388:	31 c9                	xor    %ecx,%ecx
c000838a:	bf 01 00 00 00       	mov    $0x1,%edi
c000838f:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0008392:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0008395:	8a 04 30             	mov    (%eax,%esi,1),%al
c0008398:	eb 01                	jmp    c000839b <bitmap_alloc+0x5a>
c000839a:	41                   	inc    %ecx
c000839b:	89 fe                	mov    %edi,%esi
c000839d:	d3 e6                	shl    %cl,%esi
c000839f:	89 f2                	mov    %esi,%edx
c00083a1:	84 d0                	test   %dl,%al
c00083a3:	75 f5                	jne    c000839a <bitmap_alloc+0x59>
c00083a5:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00083a8:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
c00083ac:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00083af:	8d 0c f1             	lea    (%ecx,%esi,8),%ecx
c00083b2:	89 c8                	mov    %ecx,%eax
c00083b4:	74 41                	je     c00083f7 <bitmap_alloc+0xb6>
c00083b6:	8d 3c d5 00 00 00 00 	lea    0x0(,%edx,8),%edi
c00083bd:	be 01 00 00 00       	mov    $0x1,%esi
c00083c2:	29 cf                	sub    %ecx,%edi
c00083c4:	8d 51 01             	lea    0x1(%ecx),%edx
c00083c7:	eb 27                	jmp    c00083f0 <bitmap_alloc+0xaf>
c00083c9:	50                   	push   %eax
c00083ca:	46                   	inc    %esi
c00083cb:	50                   	push   %eax
c00083cc:	52                   	push   %edx
c00083cd:	53                   	push   %ebx
c00083ce:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00083d1:	e8 48 ff ff ff       	call   c000831e <bitmap_scan_test>
c00083d6:	83 c4 10             	add    $0x10,%esp
c00083d9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00083dc:	85 c0                	test   %eax,%eax
c00083de:	74 02                	je     c00083e2 <bitmap_alloc+0xa1>
c00083e0:	31 f6                	xor    %esi,%esi
c00083e2:	3b 75 0c             	cmp    0xc(%ebp),%esi
c00083e5:	75 07                	jne    c00083ee <bitmap_alloc+0xad>
c00083e7:	29 f2                	sub    %esi,%edx
c00083e9:	8d 42 01             	lea    0x1(%edx),%eax
c00083ec:	eb 09                	jmp    c00083f7 <bitmap_alloc+0xb6>
c00083ee:	4f                   	dec    %edi
c00083ef:	42                   	inc    %edx
c00083f0:	85 ff                	test   %edi,%edi
c00083f2:	75 d5                	jne    c00083c9 <bitmap_alloc+0x88>
c00083f4:	83 c8 ff             	or     $0xffffffff,%eax
c00083f7:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00083fa:	5b                   	pop    %ebx
c00083fb:	5e                   	pop    %esi
c00083fc:	5f                   	pop    %edi
c00083fd:	5d                   	pop    %ebp
c00083fe:	c3                   	ret    

c00083ff <bitmap_set>:
c00083ff:	55                   	push   %ebp
c0008400:	89 e5                	mov    %esp,%ebp
c0008402:	57                   	push   %edi
c0008403:	56                   	push   %esi
c0008404:	53                   	push   %ebx
c0008405:	83 ec 0c             	sub    $0xc,%esp
c0008408:	8a 5d 10             	mov    0x10(%ebp),%bl
c000840b:	8b 75 08             	mov    0x8(%ebp),%esi
c000840e:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0008411:	80 fb 01             	cmp    $0x1,%bl
c0008414:	76 19                	jbe    c000842f <bitmap_set+0x30>
c0008416:	68 c9 cc 00 c0       	push   $0xc000ccc9
c000841b:	68 1c cd 00 c0       	push   $0xc000cd1c
c0008420:	6a 65                	push   $0x65
c0008422:	68 bc cc 00 c0       	push   $0xc000ccbc
c0008427:	e8 08 01 00 00       	call   c0008534 <panic_spin>
c000842c:	83 c4 10             	add    $0x10,%esp
c000842f:	89 fa                	mov    %edi,%edx
c0008431:	89 f9                	mov    %edi,%ecx
c0008433:	c1 ea 03             	shr    $0x3,%edx
c0008436:	83 e1 07             	and    $0x7,%ecx
c0008439:	84 db                	test   %bl,%bl
c000843b:	74 06                	je     c0008443 <bitmap_set+0x44>
c000843d:	fe cb                	dec    %bl
c000843f:	75 1e                	jne    c000845f <bitmap_set+0x60>
c0008441:	eb 10                	jmp    c0008453 <bitmap_set+0x54>
c0008443:	03 56 04             	add    0x4(%esi),%edx
c0008446:	b8 01 00 00 00       	mov    $0x1,%eax
c000844b:	d3 e0                	shl    %cl,%eax
c000844d:	f7 d0                	not    %eax
c000844f:	20 02                	and    %al,(%edx)
c0008451:	eb 0c                	jmp    c000845f <bitmap_set+0x60>
c0008453:	03 56 04             	add    0x4(%esi),%edx
c0008456:	b8 01 00 00 00       	mov    $0x1,%eax
c000845b:	d3 e0                	shl    %cl,%eax
c000845d:	08 02                	or     %al,(%edx)
c000845f:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008462:	5b                   	pop    %ebx
c0008463:	5e                   	pop    %esi
c0008464:	5f                   	pop    %edi
c0008465:	5d                   	pop    %ebp
c0008466:	c3                   	ret    
	...

c0008468 <init_cpu>:
c0008468:	55                   	push   %ebp
c0008469:	31 c0                	xor    %eax,%eax
c000846b:	89 e5                	mov    %esp,%ebp
c000846d:	b9 04 00 00 00       	mov    $0x4,%ecx
c0008472:	57                   	push   %edi
c0008473:	56                   	push   %esi
c0008474:	53                   	push   %ebx
c0008475:	8d 7d d8             	lea    -0x28(%ebp),%edi
c0008478:	83 ec 3c             	sub    $0x3c,%esp
c000847b:	f3 ab                	rep stos %eax,%es:(%edi)
c000847d:	8d 7d c7             	lea    -0x39(%ebp),%edi
c0008480:	8d 75 c7             	lea    -0x39(%ebp),%esi
c0008483:	b1 11                	mov    $0x11,%cl
c0008485:	f3 aa                	rep stos %al,%es:(%edi)
c0008487:	bf 02 00 00 80       	mov    $0x80000002,%edi
c000848c:	eb 30                	jmp    c00084be <init_cpu+0x56>
c000848e:	89 f8                	mov    %edi,%eax
c0008490:	31 c9                	xor    %ecx,%ecx
c0008492:	0f a2                	cpuid  
c0008494:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0008497:	47                   	inc    %edi
c0008498:	89 45 c7             	mov    %eax,-0x39(%ebp)
c000849b:	50                   	push   %eax
c000849c:	50                   	push   %eax
c000849d:	56                   	push   %esi
c000849e:	6a 07                	push   $0x7
c00084a0:	89 5d dc             	mov    %ebx,-0x24(%ebp)
c00084a3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00084a6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00084a9:	89 5d cb             	mov    %ebx,-0x35(%ebp)
c00084ac:	89 4d cf             	mov    %ecx,-0x31(%ebp)
c00084af:	89 55 d3             	mov    %edx,-0x2d(%ebp)
c00084b2:	c6 45 d7 00          	movb   $0x0,-0x29(%ebp)
c00084b6:	e8 bc 1a 00 00       	call   c0009f77 <put_str>
c00084bb:	83 c4 10             	add    $0x10,%esp
c00084be:	81 ff 05 00 00 80    	cmp    $0x80000005,%edi
c00084c4:	75 c8                	jne    c000848e <init_cpu+0x26>
c00084c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00084c9:	5b                   	pop    %ebx
c00084ca:	5e                   	pop    %esi
c00084cb:	5f                   	pop    %edi
c00084cc:	5d                   	pop    %ebp
c00084cd:	c3                   	ret    

c00084ce <cpu_info>:
c00084ce:	55                   	push   %ebp
c00084cf:	31 c0                	xor    %eax,%eax
c00084d1:	89 e5                	mov    %esp,%ebp
c00084d3:	b9 04 00 00 00       	mov    $0x4,%ecx
c00084d8:	57                   	push   %edi
c00084d9:	56                   	push   %esi
c00084da:	53                   	push   %ebx
c00084db:	8d 7d d8             	lea    -0x28(%ebp),%edi
c00084de:	83 ec 3c             	sub    $0x3c,%esp
c00084e1:	f3 ab                	rep stos %eax,%es:(%edi)
c00084e3:	8d 7d c7             	lea    -0x39(%ebp),%edi
c00084e6:	8d 75 c7             	lea    -0x39(%ebp),%esi
c00084e9:	b1 11                	mov    $0x11,%cl
c00084eb:	f3 aa                	rep stos %al,%es:(%edi)
c00084ed:	bf 02 00 00 80       	mov    $0x80000002,%edi
c00084f2:	eb 30                	jmp    c0008524 <cpu_info+0x56>
c00084f4:	89 f8                	mov    %edi,%eax
c00084f6:	31 c9                	xor    %ecx,%ecx
c00084f8:	0f a2                	cpuid  
c00084fa:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00084fd:	47                   	inc    %edi
c00084fe:	89 55 d3             	mov    %edx,-0x2d(%ebp)
c0008501:	52                   	push   %edx
c0008502:	52                   	push   %edx
c0008503:	56                   	push   %esi
c0008504:	6a 07                	push   $0x7
c0008506:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0008509:	89 5d dc             	mov    %ebx,-0x24(%ebp)
c000850c:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c000850f:	89 45 c7             	mov    %eax,-0x39(%ebp)
c0008512:	89 5d cb             	mov    %ebx,-0x35(%ebp)
c0008515:	89 4d cf             	mov    %ecx,-0x31(%ebp)
c0008518:	c6 45 d7 00          	movb   $0x0,-0x29(%ebp)
c000851c:	e8 56 1a 00 00       	call   c0009f77 <put_str>
c0008521:	83 c4 10             	add    $0x10,%esp
c0008524:	81 ff 05 00 00 80    	cmp    $0x80000005,%edi
c000852a:	75 c8                	jne    c00084f4 <cpu_info+0x26>
c000852c:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000852f:	5b                   	pop    %ebx
c0008530:	5e                   	pop    %esi
c0008531:	5f                   	pop    %edi
c0008532:	5d                   	pop    %ebp
c0008533:	c3                   	ret    

c0008534 <panic_spin>:
c0008534:	55                   	push   %ebp
c0008535:	89 e5                	mov    %esp,%ebp
c0008537:	53                   	push   %ebx
c0008538:	bb 20 03 00 00       	mov    $0x320,%ebx
c000853d:	50                   	push   %eax
c000853e:	e8 52 10 00 00       	call   c0009595 <intr_disable>
c0008543:	83 ec 0c             	sub    $0xc,%esp
c0008546:	6a 00                	push   $0x0
c0008548:	e8 62 19 00 00       	call   c0009eaf <set_cursor>
c000854d:	83 c4 10             	add    $0x10,%esp
c0008550:	50                   	push   %eax
c0008551:	50                   	push   %eax
c0008552:	6a 20                	push   $0x20
c0008554:	6a 17                	push   $0x17
c0008556:	e8 7b 19 00 00       	call   c0009ed6 <put_char>
c000855b:	83 c4 10             	add    $0x10,%esp
c000855e:	4b                   	dec    %ebx
c000855f:	75 ef                	jne    c0008550 <panic_spin+0x1c>
c0008561:	83 ec 0c             	sub    $0xc,%esp
c0008564:	6a 00                	push   $0x0
c0008566:	e8 44 19 00 00       	call   c0009eaf <set_cursor>
c000856b:	58                   	pop    %eax
c000856c:	5a                   	pop    %edx
c000856d:	68 50 cd 00 c0       	push   $0xc000cd50
c0008572:	6a 17                	push   $0x17
c0008574:	e8 fe 19 00 00       	call   c0009f77 <put_str>
c0008579:	59                   	pop    %ecx
c000857a:	5b                   	pop    %ebx
c000857b:	68 60 cd 00 c0       	push   $0xc000cd60
c0008580:	6a 17                	push   $0x17
c0008582:	e8 f0 19 00 00       	call   c0009f77 <put_str>
c0008587:	58                   	pop    %eax
c0008588:	5a                   	pop    %edx
c0008589:	ff 75 08             	pushl  0x8(%ebp)
c000858c:	6a 17                	push   $0x17
c000858e:	e8 e4 19 00 00       	call   c0009f77 <put_str>
c0008593:	59                   	pop    %ecx
c0008594:	5b                   	pop    %ebx
c0008595:	6a 0a                	push   $0xa
c0008597:	6a 17                	push   $0x17
c0008599:	e8 38 19 00 00       	call   c0009ed6 <put_char>
c000859e:	58                   	pop    %eax
c000859f:	5a                   	pop    %edx
c00085a0:	68 6f cd 00 c0       	push   $0xc000cd6f
c00085a5:	6a 17                	push   $0x17
c00085a7:	e8 cb 19 00 00       	call   c0009f77 <put_str>
c00085ac:	59                   	pop    %ecx
c00085ad:	5b                   	pop    %ebx
c00085ae:	ff 75 10             	pushl  0x10(%ebp)
c00085b1:	6a 17                	push   $0x17
c00085b3:	e8 bf 19 00 00       	call   c0009f77 <put_str>
c00085b8:	58                   	pop    %eax
c00085b9:	5a                   	pop    %edx
c00085ba:	6a 0a                	push   $0xa
c00085bc:	6a 17                	push   $0x17
c00085be:	e8 13 19 00 00       	call   c0009ed6 <put_char>
c00085c3:	59                   	pop    %ecx
c00085c4:	5b                   	pop    %ebx
c00085c5:	68 7e cd 00 c0       	push   $0xc000cd7e
c00085ca:	6a 17                	push   $0x17
c00085cc:	e8 a6 19 00 00       	call   c0009f77 <put_str>
c00085d1:	83 c4 0c             	add    $0xc,%esp
c00085d4:	6a 0a                	push   $0xa
c00085d6:	ff 75 0c             	pushl  0xc(%ebp)
c00085d9:	6a 17                	push   $0x17
c00085db:	e8 f9 19 00 00       	call   c0009fd9 <put_int>
c00085e0:	58                   	pop    %eax
c00085e1:	5a                   	pop    %edx
c00085e2:	6a 0a                	push   $0xa
c00085e4:	6a 17                	push   $0x17
c00085e6:	e8 eb 18 00 00       	call   c0009ed6 <put_char>
c00085eb:	59                   	pop    %ecx
c00085ec:	5b                   	pop    %ebx
c00085ed:	68 8d cd 00 c0       	push   $0xc000cd8d
c00085f2:	6a 17                	push   $0x17
c00085f4:	e8 7e 19 00 00       	call   c0009f77 <put_str>
c00085f9:	58                   	pop    %eax
c00085fa:	5a                   	pop    %edx
c00085fb:	ff 75 14             	pushl  0x14(%ebp)
c00085fe:	6a 17                	push   $0x17
c0008600:	e8 72 19 00 00       	call   c0009f77 <put_str>
c0008605:	59                   	pop    %ecx
c0008606:	5b                   	pop    %ebx
c0008607:	6a 0a                	push   $0xa
c0008609:	6a 17                	push   $0x17
c000860b:	e8 c6 18 00 00       	call   c0009ed6 <put_char>
c0008610:	83 c4 10             	add    $0x10,%esp
c0008613:	eb fe                	jmp    c0008613 <panic_spin+0xdf>
c0008615:	00 00                	add    %al,(%eax)
	...

c0008618 <init_fifo>:
c0008618:	55                   	push   %ebp
c0008619:	89 e5                	mov    %esp,%ebp
c000861b:	8b 45 08             	mov    0x8(%ebp),%eax
c000861e:	8b 55 14             	mov    0x14(%ebp),%edx
c0008621:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0008624:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c000862b:	89 50 08             	mov    %edx,0x8(%eax)
c000862e:	89 48 04             	mov    %ecx,0x4(%eax)
c0008631:	89 50 0c             	mov    %edx,0xc(%eax)
c0008634:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c000863b:	5d                   	pop    %ebp
c000863c:	c3                   	ret    

c000863d <fifo_put>:
c000863d:	55                   	push   %ebp
c000863e:	89 e5                	mov    %esp,%ebp
c0008640:	57                   	push   %edi
c0008641:	56                   	push   %esi
c0008642:	53                   	push   %ebx
c0008643:	83 ec 0c             	sub    $0xc,%esp
c0008646:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0008649:	8b 75 0c             	mov    0xc(%ebp),%esi
c000864c:	e8 44 0f 00 00       	call   c0009595 <intr_disable>
c0008651:	8b 53 0c             	mov    0xc(%ebx),%edx
c0008654:	85 d2                	test   %edx,%edx
c0008656:	75 09                	jne    c0008661 <fifo_put+0x24>
c0008658:	c7 43 18 01 00 00 00 	movl   $0x1,0x18(%ebx)
c000865f:	eb 5d                	jmp    c00086be <fifo_put+0x81>
c0008661:	4a                   	dec    %edx
c0008662:	89 53 0c             	mov    %edx,0xc(%ebx)
c0008665:	8b 53 04             	mov    0x4(%ebx),%edx
c0008668:	83 fa 10             	cmp    $0x10,%edx
c000866b:	74 24                	je     c0008691 <fifo_put+0x54>
c000866d:	7f 07                	jg     c0008676 <fifo_put+0x39>
c000866f:	83 fa 08             	cmp    $0x8,%edx
c0008672:	75 4a                	jne    c00086be <fifo_put+0x81>
c0008674:	eb 0c                	jmp    c0008682 <fifo_put+0x45>
c0008676:	83 fa 20             	cmp    $0x20,%edx
c0008679:	74 24                	je     c000869f <fifo_put+0x62>
c000867b:	83 fa 40             	cmp    $0x40,%edx
c000867e:	75 3e                	jne    c00086be <fifo_put+0x81>
c0008680:	eb 29                	jmp    c00086ab <fifo_put+0x6e>
c0008682:	0f b6 36             	movzbl (%esi),%esi
c0008685:	8b 0b                	mov    (%ebx),%ecx
c0008687:	8b 7b 14             	mov    0x14(%ebx),%edi
c000868a:	89 f2                	mov    %esi,%edx
c000868c:	88 14 39             	mov    %dl,(%ecx,%edi,1)
c000868f:	eb 3e                	jmp    c00086cf <fifo_put+0x92>
c0008691:	66 8b 36             	mov    (%esi),%si
c0008694:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0008697:	8b 13                	mov    (%ebx),%edx
c0008699:	66 89 34 4a          	mov    %si,(%edx,%ecx,2)
c000869d:	eb 30                	jmp    c00086cf <fifo_put+0x92>
c000869f:	8b 36                	mov    (%esi),%esi
c00086a1:	8b 4b 14             	mov    0x14(%ebx),%ecx
c00086a4:	8b 13                	mov    (%ebx),%edx
c00086a6:	89 34 8a             	mov    %esi,(%edx,%ecx,4)
c00086a9:	eb 24                	jmp    c00086cf <fifo_put+0x92>
c00086ab:	8b 7e 04             	mov    0x4(%esi),%edi
c00086ae:	8b 4b 14             	mov    0x14(%ebx),%ecx
c00086b1:	8b 36                	mov    (%esi),%esi
c00086b3:	8b 13                	mov    (%ebx),%edx
c00086b5:	89 34 ca             	mov    %esi,(%edx,%ecx,8)
c00086b8:	89 7c ca 04          	mov    %edi,0x4(%edx,%ecx,8)
c00086bc:	eb 11                	jmp    c00086cf <fifo_put+0x92>
c00086be:	83 ec 0c             	sub    $0xc,%esp
c00086c1:	50                   	push   %eax
c00086c2:	e8 f0 0f 00 00       	call   c00096b7 <intr_set_status>
c00086c7:	83 c4 10             	add    $0x10,%esp
c00086ca:	83 c8 ff             	or     $0xffffffff,%eax
c00086cd:	eb 21                	jmp    c00086f0 <fifo_put+0xb3>
c00086cf:	8b 53 14             	mov    0x14(%ebx),%edx
c00086d2:	42                   	inc    %edx
c00086d3:	3b 53 08             	cmp    0x8(%ebx),%edx
c00086d6:	89 53 14             	mov    %edx,0x14(%ebx)
c00086d9:	75 07                	jne    c00086e2 <fifo_put+0xa5>
c00086db:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c00086e2:	83 ec 0c             	sub    $0xc,%esp
c00086e5:	50                   	push   %eax
c00086e6:	e8 cc 0f 00 00       	call   c00096b7 <intr_set_status>
c00086eb:	83 c4 10             	add    $0x10,%esp
c00086ee:	31 c0                	xor    %eax,%eax
c00086f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00086f3:	5b                   	pop    %ebx
c00086f4:	5e                   	pop    %esi
c00086f5:	5f                   	pop    %edi
c00086f6:	5d                   	pop    %ebp
c00086f7:	c3                   	ret    

c00086f8 <fifo_get>:
c00086f8:	55                   	push   %ebp
c00086f9:	89 e5                	mov    %esp,%ebp
c00086fb:	57                   	push   %edi
c00086fc:	56                   	push   %esi
c00086fd:	53                   	push   %ebx
c00086fe:	83 ec 0c             	sub    $0xc,%esp
c0008701:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0008704:	8b 75 0c             	mov    0xc(%ebp),%esi
c0008707:	e8 89 0e 00 00       	call   c0009595 <intr_disable>
c000870c:	89 c7                	mov    %eax,%edi
c000870e:	8b 43 08             	mov    0x8(%ebx),%eax
c0008711:	39 43 0c             	cmp    %eax,0xc(%ebx)
c0008714:	75 19                	jne    c000872f <fifo_get+0x37>
c0008716:	68 c4 cd 00 c0       	push   $0xc000cdc4
c000871b:	68 14 ce 00 c0       	push   $0xc000ce14
c0008720:	6a 46                	push   $0x46
c0008722:	68 e0 cd 00 c0       	push   $0xc000cde0
c0008727:	e8 08 fe ff ff       	call   c0008534 <panic_spin>
c000872c:	83 c4 10             	add    $0x10,%esp
c000872f:	8b 43 0c             	mov    0xc(%ebx),%eax
c0008732:	3b 43 08             	cmp    0x8(%ebx),%eax
c0008735:	75 11                	jne    c0008748 <fifo_get+0x50>
c0008737:	83 ec 0c             	sub    $0xc,%esp
c000873a:	57                   	push   %edi
c000873b:	e8 77 0f 00 00       	call   c00096b7 <intr_set_status>
c0008740:	83 c4 10             	add    $0x10,%esp
c0008743:	83 c8 ff             	or     $0xffffffff,%eax
c0008746:	eb 71                	jmp    c00087b9 <fifo_get+0xc1>
c0008748:	8b 53 04             	mov    0x4(%ebx),%edx
c000874b:	40                   	inc    %eax
c000874c:	89 43 0c             	mov    %eax,0xc(%ebx)
c000874f:	8b 43 10             	mov    0x10(%ebx),%eax
c0008752:	83 fa 10             	cmp    $0x10,%edx
c0008755:	74 1e                	je     c0008775 <fifo_get+0x7d>
c0008757:	7f 07                	jg     c0008760 <fifo_get+0x68>
c0008759:	83 fa 08             	cmp    $0x8,%edx
c000875c:	75 3a                	jne    c0008798 <fifo_get+0xa0>
c000875e:	eb 0c                	jmp    c000876c <fifo_get+0x74>
c0008760:	83 fa 20             	cmp    $0x20,%edx
c0008763:	74 1b                	je     c0008780 <fifo_get+0x88>
c0008765:	83 fa 40             	cmp    $0x40,%edx
c0008768:	75 2e                	jne    c0008798 <fifo_get+0xa0>
c000876a:	eb 1d                	jmp    c0008789 <fifo_get+0x91>
c000876c:	8b 13                	mov    (%ebx),%edx
c000876e:	8a 04 02             	mov    (%edx,%eax,1),%al
c0008771:	88 06                	mov    %al,(%esi)
c0008773:	eb 23                	jmp    c0008798 <fifo_get+0xa0>
c0008775:	8b 13                	mov    (%ebx),%edx
c0008777:	66 8b 04 42          	mov    (%edx,%eax,2),%ax
c000877b:	66 89 06             	mov    %ax,(%esi)
c000877e:	eb 18                	jmp    c0008798 <fifo_get+0xa0>
c0008780:	8b 13                	mov    (%ebx),%edx
c0008782:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0008785:	89 06                	mov    %eax,(%esi)
c0008787:	eb 0f                	jmp    c0008798 <fifo_get+0xa0>
c0008789:	8b 13                	mov    (%ebx),%edx
c000878b:	8d 14 c2             	lea    (%edx,%eax,8),%edx
c000878e:	8b 02                	mov    (%edx),%eax
c0008790:	8b 52 04             	mov    0x4(%edx),%edx
c0008793:	89 06                	mov    %eax,(%esi)
c0008795:	89 56 04             	mov    %edx,0x4(%esi)
c0008798:	8b 43 10             	mov    0x10(%ebx),%eax
c000879b:	40                   	inc    %eax
c000879c:	3b 43 08             	cmp    0x8(%ebx),%eax
c000879f:	89 43 10             	mov    %eax,0x10(%ebx)
c00087a2:	75 07                	jne    c00087ab <fifo_get+0xb3>
c00087a4:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c00087ab:	83 ec 0c             	sub    $0xc,%esp
c00087ae:	57                   	push   %edi
c00087af:	e8 03 0f 00 00       	call   c00096b7 <intr_set_status>
c00087b4:	83 c4 10             	add    $0x10,%esp
c00087b7:	31 c0                	xor    %eax,%eax
c00087b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00087bc:	5b                   	pop    %ebx
c00087bd:	5e                   	pop    %esi
c00087be:	5f                   	pop    %edi
c00087bf:	5d                   	pop    %ebp
c00087c0:	c3                   	ret    

c00087c1 <fifo_empty>:
c00087c1:	55                   	push   %ebp
c00087c2:	89 e5                	mov    %esp,%ebp
c00087c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00087c7:	5d                   	pop    %ebp
c00087c8:	8b 50 08             	mov    0x8(%eax),%edx
c00087cb:	39 50 0c             	cmp    %edx,0xc(%eax)
c00087ce:	0f 94 c0             	sete   %al
c00087d1:	0f b6 c0             	movzbl %al,%eax
c00087d4:	c3                   	ret    

c00087d5 <fifo_fill>:
c00087d5:	55                   	push   %ebp
c00087d6:	89 e5                	mov    %esp,%ebp
c00087d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00087db:	5d                   	pop    %ebp
c00087dc:	83 78 0c 00          	cmpl   $0x0,0xc(%eax)
c00087e0:	0f 94 c0             	sete   %al
c00087e3:	0f b6 c0             	movzbl %al,%eax
c00087e6:	c3                   	ret    
	...

c00087e8 <RectangleFill>:
c00087e8:	55                   	push   %ebp
c00087e9:	89 e5                	mov    %esp,%ebp
c00087eb:	57                   	push   %edi
c00087ec:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00087ef:	56                   	push   %esi
c00087f0:	8b 45 14             	mov    0x14(%ebp),%eax
c00087f3:	53                   	push   %ebx
c00087f4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00087f7:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c00087fe:	75 30                	jne    c0008830 <RectangleFill+0x48>
c0008800:	89 ca                	mov    %ecx,%edx
c0008802:	81 e2 00 00 00 ff    	and    $0xff000000,%edx
c0008808:	81 fa 00 00 00 ff    	cmp    $0xff000000,%edx
c000880e:	75 16                	jne    c0008826 <RectangleFill+0x3e>
c0008810:	eb 1e                	jmp    c0008830 <RectangleFill+0x48>
c0008812:	8b 7b 04             	mov    0x4(%ebx),%edi
c0008815:	8b 33                	mov    (%ebx),%esi
c0008817:	0f af f8             	imul   %eax,%edi
c000881a:	01 d7                	add    %edx,%edi
c000881c:	42                   	inc    %edx
c000881d:	89 0c be             	mov    %ecx,(%esi,%edi,4)
c0008820:	3b 55 18             	cmp    0x18(%ebp),%edx
c0008823:	7e ed                	jle    c0008812 <RectangleFill+0x2a>
c0008825:	40                   	inc    %eax
c0008826:	3b 45 1c             	cmp    0x1c(%ebp),%eax
c0008829:	7f 05                	jg     c0008830 <RectangleFill+0x48>
c000882b:	8b 55 10             	mov    0x10(%ebp),%edx
c000882e:	eb f0                	jmp    c0008820 <RectangleFill+0x38>
c0008830:	5b                   	pop    %ebx
c0008831:	5e                   	pop    %esi
c0008832:	5f                   	pop    %edi
c0008833:	5d                   	pop    %ebp
c0008834:	c3                   	ret    

c0008835 <init_Rectangle>:
c0008835:	55                   	push   %ebp
c0008836:	89 e5                	mov    %esp,%ebp
c0008838:	8b 45 08             	mov    0x8(%ebp),%eax
c000883b:	8b 55 0c             	mov    0xc(%ebp),%edx
c000883e:	89 10                	mov    %edx,(%eax)
c0008840:	8b 55 10             	mov    0x10(%ebp),%edx
c0008843:	89 50 04             	mov    %edx,0x4(%eax)
c0008846:	8b 55 14             	mov    0x14(%ebp),%edx
c0008849:	89 50 08             	mov    %edx,0x8(%eax)
c000884c:	8b 55 18             	mov    0x18(%ebp),%edx
c000884f:	89 50 0c             	mov    %edx,0xc(%eax)
c0008852:	8b 55 1c             	mov    0x1c(%ebp),%edx
c0008855:	89 50 10             	mov    %edx,0x10(%eax)
c0008858:	5d                   	pop    %ebp
c0008859:	c3                   	ret    

c000885a <init_screen>:
c000885a:	55                   	push   %ebp
c000885b:	89 e5                	mov    %esp,%ebp
c000885d:	53                   	push   %ebx
c000885e:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0008861:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c0008868:	0f 85 df 00 00 00    	jne    c000894d <init_screen+0xf3>
c000886e:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008873:	8b 15 18 7c 00 00    	mov    0x7c18,%edx
c0008879:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0008880:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0008887:	89 43 08             	mov    %eax,0x8(%ebx)
c000888a:	89 53 04             	mov    %edx,0x4(%ebx)
c000888d:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008892:	c7 03 00 00 00 fe    	movl   $0xfe000000,(%ebx)
c0008898:	83 e8 33             	sub    $0x33,%eax
c000889b:	50                   	push   %eax
c000889c:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00088a1:	48                   	dec    %eax
c00088a2:	50                   	push   %eax
c00088a3:	6a 00                	push   $0x0
c00088a5:	6a 00                	push   $0x0
c00088a7:	68 84 84 00 00       	push   $0x8484
c00088ac:	53                   	push   %ebx
c00088ad:	e8 36 ff ff ff       	call   c00087e8 <RectangleFill>
c00088b2:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c00088b7:	8d 50 ff             	lea    -0x1(%eax),%edx
c00088ba:	83 e8 33             	sub    $0x33,%eax
c00088bd:	52                   	push   %edx
c00088be:	8b 15 18 7c 00 00    	mov    0x7c18,%edx
c00088c4:	4a                   	dec    %edx
c00088c5:	52                   	push   %edx
c00088c6:	50                   	push   %eax
c00088c7:	6a 00                	push   $0x0
c00088c9:	68 c6 c6 c6 00       	push   $0xc6c6c6
c00088ce:	53                   	push   %ebx
c00088cf:	e8 14 ff ff ff       	call   c00087e8 <RectangleFill>
c00088d4:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c00088d9:	83 c4 30             	add    $0x30,%esp
c00088dc:	8d 50 f8             	lea    -0x8(%eax),%edx
c00088df:	83 e8 26             	sub    $0x26,%eax
c00088e2:	52                   	push   %edx
c00088e3:	6a 2b                	push   $0x2b
c00088e5:	50                   	push   %eax
c00088e6:	6a 0d                	push   $0xd
c00088e8:	68 84 84 84 00       	push   $0x848484
c00088ed:	53                   	push   %ebx
c00088ee:	e8 f5 fe ff ff       	call   c00087e8 <RectangleFill>
c00088f3:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c00088f8:	8d 50 f5             	lea    -0xb(%eax),%edx
c00088fb:	83 e8 29             	sub    $0x29,%eax
c00088fe:	52                   	push   %edx
c00088ff:	6a 28                	push   $0x28
c0008901:	50                   	push   %eax
c0008902:	6a 0a                	push   $0xa
c0008904:	68 ff ff ff 00       	push   $0xffffff
c0008909:	53                   	push   %ebx
c000890a:	e8 d9 fe ff ff       	call   c00087e8 <RectangleFill>
c000890f:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008914:	83 c4 30             	add    $0x30,%esp
c0008917:	8d 50 f8             	lea    -0x8(%eax),%edx
c000891a:	83 e8 26             	sub    $0x26,%eax
c000891d:	52                   	push   %edx
c000891e:	6a 3a                	push   $0x3a
c0008920:	50                   	push   %eax
c0008921:	6a 35                	push   $0x35
c0008923:	68 84 84 84 00       	push   $0x848484
c0008928:	53                   	push   %ebx
c0008929:	e8 ba fe ff ff       	call   c00087e8 <RectangleFill>
c000892e:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008933:	8d 50 f5             	lea    -0xb(%eax),%edx
c0008936:	83 e8 29             	sub    $0x29,%eax
c0008939:	52                   	push   %edx
c000893a:	6a 37                	push   $0x37
c000893c:	50                   	push   %eax
c000893d:	6a 32                	push   $0x32
c000893f:	68 ff ff ff 00       	push   $0xffffff
c0008944:	53                   	push   %ebx
c0008945:	e8 9e fe ff ff       	call   c00087e8 <RectangleFill>
c000894a:	83 c4 30             	add    $0x30,%esp
c000894d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0008950:	c9                   	leave  
c0008951:	c3                   	ret    

c0008952 <put_char_graphic>:
c0008952:	55                   	push   %ebp
c0008953:	89 e5                	mov    %esp,%ebp
c0008955:	57                   	push   %edi
c0008956:	56                   	push   %esi
c0008957:	53                   	push   %ebx
c0008958:	83 ec 08             	sub    $0x8,%esp
c000895b:	0f be 55 18          	movsbl 0x18(%ebp),%edx
c000895f:	8b 75 08             	mov    0x8(%ebp),%esi
c0008962:	8b 45 14             	mov    0x14(%ebp),%eax
c0008965:	c1 e2 04             	shl    $0x4,%edx
c0008968:	81 c2 c0 a6 00 c0    	add    $0xc000a6c0,%edx
c000896e:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c0008975:	89 55 f0             	mov    %edx,-0x10(%ebp)
c0008978:	75 66                	jne    c00089e0 <put_char_graphic+0x8e>
c000897a:	8b 3e                	mov    (%esi),%edi
c000897c:	31 db                	xor    %ebx,%ebx
c000897e:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0008981:	8b 4d ec             	mov    -0x14(%ebp),%ecx
c0008984:	8b 55 10             	mov    0x10(%ebp),%edx
c0008987:	8b 75 f0             	mov    -0x10(%ebp),%esi
c000898a:	01 da                	add    %ebx,%edx
c000898c:	0f af 51 04          	imul   0x4(%ecx),%edx
c0008990:	8a 0c 1e             	mov    (%esi,%ebx,1),%cl
c0008993:	03 55 0c             	add    0xc(%ebp),%edx
c0008996:	84 c9                	test   %cl,%cl
c0008998:	8d 14 97             	lea    (%edi,%edx,4),%edx
c000899b:	79 02                	jns    c000899f <put_char_graphic+0x4d>
c000899d:	89 02                	mov    %eax,(%edx)
c000899f:	0f b6 c9             	movzbl %cl,%ecx
c00089a2:	f6 c1 40             	test   $0x40,%cl
c00089a5:	74 03                	je     c00089aa <put_char_graphic+0x58>
c00089a7:	89 42 04             	mov    %eax,0x4(%edx)
c00089aa:	f6 c1 20             	test   $0x20,%cl
c00089ad:	74 03                	je     c00089b2 <put_char_graphic+0x60>
c00089af:	89 42 08             	mov    %eax,0x8(%edx)
c00089b2:	f6 c1 10             	test   $0x10,%cl
c00089b5:	74 03                	je     c00089ba <put_char_graphic+0x68>
c00089b7:	89 42 0c             	mov    %eax,0xc(%edx)
c00089ba:	f6 c1 08             	test   $0x8,%cl
c00089bd:	74 03                	je     c00089c2 <put_char_graphic+0x70>
c00089bf:	89 42 10             	mov    %eax,0x10(%edx)
c00089c2:	f6 c1 04             	test   $0x4,%cl
c00089c5:	74 03                	je     c00089ca <put_char_graphic+0x78>
c00089c7:	89 42 14             	mov    %eax,0x14(%edx)
c00089ca:	f6 c1 02             	test   $0x2,%cl
c00089cd:	74 03                	je     c00089d2 <put_char_graphic+0x80>
c00089cf:	89 42 18             	mov    %eax,0x18(%edx)
c00089d2:	80 e1 01             	and    $0x1,%cl
c00089d5:	74 03                	je     c00089da <put_char_graphic+0x88>
c00089d7:	89 42 1c             	mov    %eax,0x1c(%edx)
c00089da:	43                   	inc    %ebx
c00089db:	83 fb 10             	cmp    $0x10,%ebx
c00089de:	75 a1                	jne    c0008981 <put_char_graphic+0x2f>
c00089e0:	58                   	pop    %eax
c00089e1:	5a                   	pop    %edx
c00089e2:	5b                   	pop    %ebx
c00089e3:	5e                   	pop    %esi
c00089e4:	5f                   	pop    %edi
c00089e5:	5d                   	pop    %ebp
c00089e6:	c3                   	ret    

c00089e7 <put_str_graphic>:
c00089e7:	55                   	push   %ebp
c00089e8:	89 e5                	mov    %esp,%ebp
c00089ea:	57                   	push   %edi
c00089eb:	8b 7d 14             	mov    0x14(%ebp),%edi
c00089ee:	56                   	push   %esi
c00089ef:	8b 75 0c             	mov    0xc(%ebp),%esi
c00089f2:	53                   	push   %ebx
c00089f3:	8b 5d 18             	mov    0x18(%ebp),%ebx
c00089f6:	eb 18                	jmp    c0008a10 <put_str_graphic+0x29>
c00089f8:	0f be c0             	movsbl %al,%eax
c00089fb:	43                   	inc    %ebx
c00089fc:	50                   	push   %eax
c00089fd:	57                   	push   %edi
c00089fe:	ff 75 10             	pushl  0x10(%ebp)
c0008a01:	56                   	push   %esi
c0008a02:	83 c6 0a             	add    $0xa,%esi
c0008a05:	ff 75 08             	pushl  0x8(%ebp)
c0008a08:	e8 45 ff ff ff       	call   c0008952 <put_char_graphic>
c0008a0d:	83 c4 14             	add    $0x14,%esp
c0008a10:	8a 03                	mov    (%ebx),%al
c0008a12:	84 c0                	test   %al,%al
c0008a14:	75 e2                	jne    c00089f8 <put_str_graphic+0x11>
c0008a16:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008a19:	5b                   	pop    %ebx
c0008a1a:	5e                   	pop    %esi
c0008a1b:	5f                   	pop    %edi
c0008a1c:	5d                   	pop    %ebp
c0008a1d:	c3                   	ret    
	...

c0008a20 <init_all>:
c0008a20:	55                   	push   %ebp
c0008a21:	89 e5                	mov    %esp,%ebp
c0008a23:	83 ec 10             	sub    $0x10,%esp
c0008a26:	68 48 ce 00 c0       	push   $0xc000ce48
c0008a2b:	6a 02                	push   $0x2
c0008a2d:	e8 45 15 00 00       	call   c0009f77 <put_str>
c0008a32:	e8 1c 0b 00 00       	call   c0009553 <init_idt>
c0008a37:	e8 3c 1a 00 00       	call   c000a478 <init_pit>
c0008a3c:	e8 a3 11 00 00       	call   c0009be4 <init_memory>
c0008a41:	e8 86 0c 00 00       	call   c00096cc <init_keyboard>
c0008a46:	e8 60 17 00 00       	call   c000a1ab <init_thread>
c0008a4b:	c7 04 24 f0 d5 00 c0 	movl   $0xc000d5f0,(%esp)
c0008a52:	e8 03 fe ff ff       	call   c000885a <init_screen>
c0008a57:	58                   	pop    %eax
c0008a58:	5a                   	pop    %edx
c0008a59:	68 54 ce 00 c0       	push   $0xc000ce54
c0008a5e:	6a 02                	push   $0x2
c0008a60:	e8 12 15 00 00       	call   c0009f77 <put_str>
c0008a65:	83 c4 10             	add    $0x10,%esp
c0008a68:	c9                   	leave  
c0008a69:	c3                   	ret    
c0008a6a:	00 00                	add    %al,(%eax)
c0008a6c:	00 00                	add    %al,(%eax)
	...

c0008a70 <asm_intr0x00_handler>:
c0008a70:	68 00 00 00 00       	push   $0x0
c0008a75:	1e                   	push   %ds
c0008a76:	06                   	push   %es
c0008a77:	0f a0                	push   %fs
c0008a79:	0f a8                	push   %gs
c0008a7b:	60                   	pusha  
c0008a7c:	68 00 00 00 00       	push   $0x0
c0008a81:	66 8c d0             	mov    %ss,%ax
c0008a84:	8e d8                	mov    %eax,%ds
c0008a86:	8e c0                	mov    %eax,%es
c0008a88:	ff 15 70 d8 00 c0    	call   *0xc000d870
c0008a8e:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008a94:	61                   	popa   
c0008a95:	0f a9                	pop    %gs
c0008a97:	0f a1                	pop    %fs
c0008a99:	07                   	pop    %es
c0008a9a:	1f                   	pop    %ds
c0008a9b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008aa1:	cf                   	iret   

c0008aa2 <asm_intr0x01_handler>:
c0008aa2:	68 00 00 00 00       	push   $0x0
c0008aa7:	1e                   	push   %ds
c0008aa8:	06                   	push   %es
c0008aa9:	0f a0                	push   %fs
c0008aab:	0f a8                	push   %gs
c0008aad:	60                   	pusha  
c0008aae:	68 01 00 00 00       	push   $0x1
c0008ab3:	66 8c d0             	mov    %ss,%ax
c0008ab6:	8e d8                	mov    %eax,%ds
c0008ab8:	8e c0                	mov    %eax,%es
c0008aba:	ff 15 74 d8 00 c0    	call   *0xc000d874
c0008ac0:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ac6:	61                   	popa   
c0008ac7:	0f a9                	pop    %gs
c0008ac9:	0f a1                	pop    %fs
c0008acb:	07                   	pop    %es
c0008acc:	1f                   	pop    %ds
c0008acd:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ad3:	cf                   	iret   

c0008ad4 <asm_intr0x02_handler>:
c0008ad4:	68 00 00 00 00       	push   $0x0
c0008ad9:	1e                   	push   %ds
c0008ada:	06                   	push   %es
c0008adb:	0f a0                	push   %fs
c0008add:	0f a8                	push   %gs
c0008adf:	60                   	pusha  
c0008ae0:	68 02 00 00 00       	push   $0x2
c0008ae5:	66 8c d0             	mov    %ss,%ax
c0008ae8:	8e d8                	mov    %eax,%ds
c0008aea:	8e c0                	mov    %eax,%es
c0008aec:	ff 15 78 d8 00 c0    	call   *0xc000d878
c0008af2:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008af8:	61                   	popa   
c0008af9:	0f a9                	pop    %gs
c0008afb:	0f a1                	pop    %fs
c0008afd:	07                   	pop    %es
c0008afe:	1f                   	pop    %ds
c0008aff:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b05:	cf                   	iret   

c0008b06 <asm_intr0x03_handler>:
c0008b06:	68 00 00 00 00       	push   $0x0
c0008b0b:	1e                   	push   %ds
c0008b0c:	06                   	push   %es
c0008b0d:	0f a0                	push   %fs
c0008b0f:	0f a8                	push   %gs
c0008b11:	60                   	pusha  
c0008b12:	68 03 00 00 00       	push   $0x3
c0008b17:	66 8c d0             	mov    %ss,%ax
c0008b1a:	8e d8                	mov    %eax,%ds
c0008b1c:	8e c0                	mov    %eax,%es
c0008b1e:	ff 15 7c d8 00 c0    	call   *0xc000d87c
c0008b24:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b2a:	61                   	popa   
c0008b2b:	0f a9                	pop    %gs
c0008b2d:	0f a1                	pop    %fs
c0008b2f:	07                   	pop    %es
c0008b30:	1f                   	pop    %ds
c0008b31:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b37:	cf                   	iret   

c0008b38 <asm_intr0x04_handler>:
c0008b38:	68 00 00 00 00       	push   $0x0
c0008b3d:	1e                   	push   %ds
c0008b3e:	06                   	push   %es
c0008b3f:	0f a0                	push   %fs
c0008b41:	0f a8                	push   %gs
c0008b43:	60                   	pusha  
c0008b44:	68 04 00 00 00       	push   $0x4
c0008b49:	66 8c d0             	mov    %ss,%ax
c0008b4c:	8e d8                	mov    %eax,%ds
c0008b4e:	8e c0                	mov    %eax,%es
c0008b50:	ff 15 80 d8 00 c0    	call   *0xc000d880
c0008b56:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b5c:	61                   	popa   
c0008b5d:	0f a9                	pop    %gs
c0008b5f:	0f a1                	pop    %fs
c0008b61:	07                   	pop    %es
c0008b62:	1f                   	pop    %ds
c0008b63:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b69:	cf                   	iret   

c0008b6a <asm_intr0x05_handler>:
c0008b6a:	68 00 00 00 00       	push   $0x0
c0008b6f:	1e                   	push   %ds
c0008b70:	06                   	push   %es
c0008b71:	0f a0                	push   %fs
c0008b73:	0f a8                	push   %gs
c0008b75:	60                   	pusha  
c0008b76:	68 05 00 00 00       	push   $0x5
c0008b7b:	66 8c d0             	mov    %ss,%ax
c0008b7e:	8e d8                	mov    %eax,%ds
c0008b80:	8e c0                	mov    %eax,%es
c0008b82:	ff 15 84 d8 00 c0    	call   *0xc000d884
c0008b88:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b8e:	61                   	popa   
c0008b8f:	0f a9                	pop    %gs
c0008b91:	0f a1                	pop    %fs
c0008b93:	07                   	pop    %es
c0008b94:	1f                   	pop    %ds
c0008b95:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008b9b:	cf                   	iret   

c0008b9c <asm_intr0x06_handler>:
c0008b9c:	68 00 00 00 00       	push   $0x0
c0008ba1:	1e                   	push   %ds
c0008ba2:	06                   	push   %es
c0008ba3:	0f a0                	push   %fs
c0008ba5:	0f a8                	push   %gs
c0008ba7:	60                   	pusha  
c0008ba8:	68 06 00 00 00       	push   $0x6
c0008bad:	66 8c d0             	mov    %ss,%ax
c0008bb0:	8e d8                	mov    %eax,%ds
c0008bb2:	8e c0                	mov    %eax,%es
c0008bb4:	ff 15 88 d8 00 c0    	call   *0xc000d888
c0008bba:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008bc0:	61                   	popa   
c0008bc1:	0f a9                	pop    %gs
c0008bc3:	0f a1                	pop    %fs
c0008bc5:	07                   	pop    %es
c0008bc6:	1f                   	pop    %ds
c0008bc7:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008bcd:	cf                   	iret   

c0008bce <asm_intr0x07_handler>:
c0008bce:	68 00 00 00 00       	push   $0x0
c0008bd3:	1e                   	push   %ds
c0008bd4:	06                   	push   %es
c0008bd5:	0f a0                	push   %fs
c0008bd7:	0f a8                	push   %gs
c0008bd9:	60                   	pusha  
c0008bda:	68 07 00 00 00       	push   $0x7
c0008bdf:	66 8c d0             	mov    %ss,%ax
c0008be2:	8e d8                	mov    %eax,%ds
c0008be4:	8e c0                	mov    %eax,%es
c0008be6:	ff 15 8c d8 00 c0    	call   *0xc000d88c
c0008bec:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008bf2:	61                   	popa   
c0008bf3:	0f a9                	pop    %gs
c0008bf5:	0f a1                	pop    %fs
c0008bf7:	07                   	pop    %es
c0008bf8:	1f                   	pop    %ds
c0008bf9:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008bff:	cf                   	iret   

c0008c00 <asm_intr0x08_handler>:
c0008c00:	90                   	nop
c0008c01:	1e                   	push   %ds
c0008c02:	06                   	push   %es
c0008c03:	0f a0                	push   %fs
c0008c05:	0f a8                	push   %gs
c0008c07:	60                   	pusha  
c0008c08:	68 08 00 00 00       	push   $0x8
c0008c0d:	66 8c d0             	mov    %ss,%ax
c0008c10:	8e d8                	mov    %eax,%ds
c0008c12:	8e c0                	mov    %eax,%es
c0008c14:	ff 15 90 d8 00 c0    	call   *0xc000d890
c0008c1a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c20:	61                   	popa   
c0008c21:	0f a9                	pop    %gs
c0008c23:	0f a1                	pop    %fs
c0008c25:	07                   	pop    %es
c0008c26:	1f                   	pop    %ds
c0008c27:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c2d:	cf                   	iret   

c0008c2e <asm_intr0x09_handler>:
c0008c2e:	68 00 00 00 00       	push   $0x0
c0008c33:	1e                   	push   %ds
c0008c34:	06                   	push   %es
c0008c35:	0f a0                	push   %fs
c0008c37:	0f a8                	push   %gs
c0008c39:	60                   	pusha  
c0008c3a:	68 09 00 00 00       	push   $0x9
c0008c3f:	66 8c d0             	mov    %ss,%ax
c0008c42:	8e d8                	mov    %eax,%ds
c0008c44:	8e c0                	mov    %eax,%es
c0008c46:	ff 15 94 d8 00 c0    	call   *0xc000d894
c0008c4c:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c52:	61                   	popa   
c0008c53:	0f a9                	pop    %gs
c0008c55:	0f a1                	pop    %fs
c0008c57:	07                   	pop    %es
c0008c58:	1f                   	pop    %ds
c0008c59:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c5f:	cf                   	iret   

c0008c60 <asm_intr0x0a_handler>:
c0008c60:	90                   	nop
c0008c61:	1e                   	push   %ds
c0008c62:	06                   	push   %es
c0008c63:	0f a0                	push   %fs
c0008c65:	0f a8                	push   %gs
c0008c67:	60                   	pusha  
c0008c68:	68 0a 00 00 00       	push   $0xa
c0008c6d:	66 8c d0             	mov    %ss,%ax
c0008c70:	8e d8                	mov    %eax,%ds
c0008c72:	8e c0                	mov    %eax,%es
c0008c74:	ff 15 98 d8 00 c0    	call   *0xc000d898
c0008c7a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c80:	61                   	popa   
c0008c81:	0f a9                	pop    %gs
c0008c83:	0f a1                	pop    %fs
c0008c85:	07                   	pop    %es
c0008c86:	1f                   	pop    %ds
c0008c87:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008c8d:	cf                   	iret   

c0008c8e <asm_intr0x0b_handler>:
c0008c8e:	90                   	nop
c0008c8f:	1e                   	push   %ds
c0008c90:	06                   	push   %es
c0008c91:	0f a0                	push   %fs
c0008c93:	0f a8                	push   %gs
c0008c95:	60                   	pusha  
c0008c96:	68 0b 00 00 00       	push   $0xb
c0008c9b:	66 8c d0             	mov    %ss,%ax
c0008c9e:	8e d8                	mov    %eax,%ds
c0008ca0:	8e c0                	mov    %eax,%es
c0008ca2:	ff 15 9c d8 00 c0    	call   *0xc000d89c
c0008ca8:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008cae:	61                   	popa   
c0008caf:	0f a9                	pop    %gs
c0008cb1:	0f a1                	pop    %fs
c0008cb3:	07                   	pop    %es
c0008cb4:	1f                   	pop    %ds
c0008cb5:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008cbb:	cf                   	iret   

c0008cbc <asm_intr0x0c_handler>:
c0008cbc:	68 00 00 00 00       	push   $0x0
c0008cc1:	1e                   	push   %ds
c0008cc2:	06                   	push   %es
c0008cc3:	0f a0                	push   %fs
c0008cc5:	0f a8                	push   %gs
c0008cc7:	60                   	pusha  
c0008cc8:	68 0c 00 00 00       	push   $0xc
c0008ccd:	66 8c d0             	mov    %ss,%ax
c0008cd0:	8e d8                	mov    %eax,%ds
c0008cd2:	8e c0                	mov    %eax,%es
c0008cd4:	ff 15 a0 d8 00 c0    	call   *0xc000d8a0
c0008cda:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ce0:	61                   	popa   
c0008ce1:	0f a9                	pop    %gs
c0008ce3:	0f a1                	pop    %fs
c0008ce5:	07                   	pop    %es
c0008ce6:	1f                   	pop    %ds
c0008ce7:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ced:	cf                   	iret   

c0008cee <asm_intr0x0d_handler>:
c0008cee:	90                   	nop
c0008cef:	1e                   	push   %ds
c0008cf0:	06                   	push   %es
c0008cf1:	0f a0                	push   %fs
c0008cf3:	0f a8                	push   %gs
c0008cf5:	60                   	pusha  
c0008cf6:	68 0d 00 00 00       	push   $0xd
c0008cfb:	66 8c d0             	mov    %ss,%ax
c0008cfe:	8e d8                	mov    %eax,%ds
c0008d00:	8e c0                	mov    %eax,%es
c0008d02:	ff 15 a4 d8 00 c0    	call   *0xc000d8a4
c0008d08:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d0e:	61                   	popa   
c0008d0f:	0f a9                	pop    %gs
c0008d11:	0f a1                	pop    %fs
c0008d13:	07                   	pop    %es
c0008d14:	1f                   	pop    %ds
c0008d15:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d1b:	cf                   	iret   

c0008d1c <asm_intr0x0e_handler>:
c0008d1c:	90                   	nop
c0008d1d:	1e                   	push   %ds
c0008d1e:	06                   	push   %es
c0008d1f:	0f a0                	push   %fs
c0008d21:	0f a8                	push   %gs
c0008d23:	60                   	pusha  
c0008d24:	68 0e 00 00 00       	push   $0xe
c0008d29:	66 8c d0             	mov    %ss,%ax
c0008d2c:	8e d8                	mov    %eax,%ds
c0008d2e:	8e c0                	mov    %eax,%es
c0008d30:	ff 15 a8 d8 00 c0    	call   *0xc000d8a8
c0008d36:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d3c:	61                   	popa   
c0008d3d:	0f a9                	pop    %gs
c0008d3f:	0f a1                	pop    %fs
c0008d41:	07                   	pop    %es
c0008d42:	1f                   	pop    %ds
c0008d43:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d49:	cf                   	iret   

c0008d4a <asm_intr0x0f_handler>:
c0008d4a:	68 00 00 00 00       	push   $0x0
c0008d4f:	1e                   	push   %ds
c0008d50:	06                   	push   %es
c0008d51:	0f a0                	push   %fs
c0008d53:	0f a8                	push   %gs
c0008d55:	60                   	pusha  
c0008d56:	68 0f 00 00 00       	push   $0xf
c0008d5b:	66 8c d0             	mov    %ss,%ax
c0008d5e:	8e d8                	mov    %eax,%ds
c0008d60:	8e c0                	mov    %eax,%es
c0008d62:	ff 15 ac d8 00 c0    	call   *0xc000d8ac
c0008d68:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d6e:	61                   	popa   
c0008d6f:	0f a9                	pop    %gs
c0008d71:	0f a1                	pop    %fs
c0008d73:	07                   	pop    %es
c0008d74:	1f                   	pop    %ds
c0008d75:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008d7b:	cf                   	iret   

c0008d7c <asm_intr0x10_handler>:
c0008d7c:	68 00 00 00 00       	push   $0x0
c0008d81:	1e                   	push   %ds
c0008d82:	06                   	push   %es
c0008d83:	0f a0                	push   %fs
c0008d85:	0f a8                	push   %gs
c0008d87:	60                   	pusha  
c0008d88:	68 10 00 00 00       	push   $0x10
c0008d8d:	66 8c d0             	mov    %ss,%ax
c0008d90:	8e d8                	mov    %eax,%ds
c0008d92:	8e c0                	mov    %eax,%es
c0008d94:	ff 15 b0 d8 00 c0    	call   *0xc000d8b0
c0008d9a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008da0:	61                   	popa   
c0008da1:	0f a9                	pop    %gs
c0008da3:	0f a1                	pop    %fs
c0008da5:	07                   	pop    %es
c0008da6:	1f                   	pop    %ds
c0008da7:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008dad:	cf                   	iret   

c0008dae <asm_intr0x11_handler>:
c0008dae:	90                   	nop
c0008daf:	1e                   	push   %ds
c0008db0:	06                   	push   %es
c0008db1:	0f a0                	push   %fs
c0008db3:	0f a8                	push   %gs
c0008db5:	60                   	pusha  
c0008db6:	68 11 00 00 00       	push   $0x11
c0008dbb:	66 8c d0             	mov    %ss,%ax
c0008dbe:	8e d8                	mov    %eax,%ds
c0008dc0:	8e c0                	mov    %eax,%es
c0008dc2:	ff 15 b4 d8 00 c0    	call   *0xc000d8b4
c0008dc8:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008dce:	61                   	popa   
c0008dcf:	0f a9                	pop    %gs
c0008dd1:	0f a1                	pop    %fs
c0008dd3:	07                   	pop    %es
c0008dd4:	1f                   	pop    %ds
c0008dd5:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ddb:	cf                   	iret   

c0008ddc <asm_intr0x12_handler>:
c0008ddc:	68 00 00 00 00       	push   $0x0
c0008de1:	1e                   	push   %ds
c0008de2:	06                   	push   %es
c0008de3:	0f a0                	push   %fs
c0008de5:	0f a8                	push   %gs
c0008de7:	60                   	pusha  
c0008de8:	68 12 00 00 00       	push   $0x12
c0008ded:	66 8c d0             	mov    %ss,%ax
c0008df0:	8e d8                	mov    %eax,%ds
c0008df2:	8e c0                	mov    %eax,%es
c0008df4:	ff 15 b8 d8 00 c0    	call   *0xc000d8b8
c0008dfa:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e00:	61                   	popa   
c0008e01:	0f a9                	pop    %gs
c0008e03:	0f a1                	pop    %fs
c0008e05:	07                   	pop    %es
c0008e06:	1f                   	pop    %ds
c0008e07:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e0d:	cf                   	iret   

c0008e0e <asm_intr0x13_handler>:
c0008e0e:	68 00 00 00 00       	push   $0x0
c0008e13:	1e                   	push   %ds
c0008e14:	06                   	push   %es
c0008e15:	0f a0                	push   %fs
c0008e17:	0f a8                	push   %gs
c0008e19:	60                   	pusha  
c0008e1a:	68 13 00 00 00       	push   $0x13
c0008e1f:	66 8c d0             	mov    %ss,%ax
c0008e22:	8e d8                	mov    %eax,%ds
c0008e24:	8e c0                	mov    %eax,%es
c0008e26:	ff 15 bc d8 00 c0    	call   *0xc000d8bc
c0008e2c:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e32:	61                   	popa   
c0008e33:	0f a9                	pop    %gs
c0008e35:	0f a1                	pop    %fs
c0008e37:	07                   	pop    %es
c0008e38:	1f                   	pop    %ds
c0008e39:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e3f:	cf                   	iret   

c0008e40 <asm_intr0x14_handler>:
c0008e40:	68 00 00 00 00       	push   $0x0
c0008e45:	1e                   	push   %ds
c0008e46:	06                   	push   %es
c0008e47:	0f a0                	push   %fs
c0008e49:	0f a8                	push   %gs
c0008e4b:	60                   	pusha  
c0008e4c:	68 14 00 00 00       	push   $0x14
c0008e51:	66 8c d0             	mov    %ss,%ax
c0008e54:	8e d8                	mov    %eax,%ds
c0008e56:	8e c0                	mov    %eax,%es
c0008e58:	ff 15 c0 d8 00 c0    	call   *0xc000d8c0
c0008e5e:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e64:	61                   	popa   
c0008e65:	0f a9                	pop    %gs
c0008e67:	0f a1                	pop    %fs
c0008e69:	07                   	pop    %es
c0008e6a:	1f                   	pop    %ds
c0008e6b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e71:	cf                   	iret   

c0008e72 <asm_intr0x15_handler>:
c0008e72:	68 00 00 00 00       	push   $0x0
c0008e77:	1e                   	push   %ds
c0008e78:	06                   	push   %es
c0008e79:	0f a0                	push   %fs
c0008e7b:	0f a8                	push   %gs
c0008e7d:	60                   	pusha  
c0008e7e:	68 15 00 00 00       	push   $0x15
c0008e83:	66 8c d0             	mov    %ss,%ax
c0008e86:	8e d8                	mov    %eax,%ds
c0008e88:	8e c0                	mov    %eax,%es
c0008e8a:	ff 15 c4 d8 00 c0    	call   *0xc000d8c4
c0008e90:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008e96:	61                   	popa   
c0008e97:	0f a9                	pop    %gs
c0008e99:	0f a1                	pop    %fs
c0008e9b:	07                   	pop    %es
c0008e9c:	1f                   	pop    %ds
c0008e9d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ea3:	cf                   	iret   

c0008ea4 <asm_intr0x16_handler>:
c0008ea4:	68 00 00 00 00       	push   $0x0
c0008ea9:	1e                   	push   %ds
c0008eaa:	06                   	push   %es
c0008eab:	0f a0                	push   %fs
c0008ead:	0f a8                	push   %gs
c0008eaf:	60                   	pusha  
c0008eb0:	68 16 00 00 00       	push   $0x16
c0008eb5:	66 8c d0             	mov    %ss,%ax
c0008eb8:	8e d8                	mov    %eax,%ds
c0008eba:	8e c0                	mov    %eax,%es
c0008ebc:	ff 15 c8 d8 00 c0    	call   *0xc000d8c8
c0008ec2:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ec8:	61                   	popa   
c0008ec9:	0f a9                	pop    %gs
c0008ecb:	0f a1                	pop    %fs
c0008ecd:	07                   	pop    %es
c0008ece:	1f                   	pop    %ds
c0008ecf:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ed5:	cf                   	iret   

c0008ed6 <asm_intr0x17_handler>:
c0008ed6:	68 00 00 00 00       	push   $0x0
c0008edb:	1e                   	push   %ds
c0008edc:	06                   	push   %es
c0008edd:	0f a0                	push   %fs
c0008edf:	0f a8                	push   %gs
c0008ee1:	60                   	pusha  
c0008ee2:	68 17 00 00 00       	push   $0x17
c0008ee7:	66 8c d0             	mov    %ss,%ax
c0008eea:	8e d8                	mov    %eax,%ds
c0008eec:	8e c0                	mov    %eax,%es
c0008eee:	ff 15 cc d8 00 c0    	call   *0xc000d8cc
c0008ef4:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008efa:	61                   	popa   
c0008efb:	0f a9                	pop    %gs
c0008efd:	0f a1                	pop    %fs
c0008eff:	07                   	pop    %es
c0008f00:	1f                   	pop    %ds
c0008f01:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f07:	cf                   	iret   

c0008f08 <asm_intr0x18_handler>:
c0008f08:	90                   	nop
c0008f09:	1e                   	push   %ds
c0008f0a:	06                   	push   %es
c0008f0b:	0f a0                	push   %fs
c0008f0d:	0f a8                	push   %gs
c0008f0f:	60                   	pusha  
c0008f10:	68 18 00 00 00       	push   $0x18
c0008f15:	66 8c d0             	mov    %ss,%ax
c0008f18:	8e d8                	mov    %eax,%ds
c0008f1a:	8e c0                	mov    %eax,%es
c0008f1c:	ff 15 d0 d8 00 c0    	call   *0xc000d8d0
c0008f22:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f28:	61                   	popa   
c0008f29:	0f a9                	pop    %gs
c0008f2b:	0f a1                	pop    %fs
c0008f2d:	07                   	pop    %es
c0008f2e:	1f                   	pop    %ds
c0008f2f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f35:	cf                   	iret   

c0008f36 <asm_intr0x19_handler>:
c0008f36:	68 00 00 00 00       	push   $0x0
c0008f3b:	1e                   	push   %ds
c0008f3c:	06                   	push   %es
c0008f3d:	0f a0                	push   %fs
c0008f3f:	0f a8                	push   %gs
c0008f41:	60                   	pusha  
c0008f42:	68 19 00 00 00       	push   $0x19
c0008f47:	66 8c d0             	mov    %ss,%ax
c0008f4a:	8e d8                	mov    %eax,%ds
c0008f4c:	8e c0                	mov    %eax,%es
c0008f4e:	ff 15 d4 d8 00 c0    	call   *0xc000d8d4
c0008f54:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f5a:	61                   	popa   
c0008f5b:	0f a9                	pop    %gs
c0008f5d:	0f a1                	pop    %fs
c0008f5f:	07                   	pop    %es
c0008f60:	1f                   	pop    %ds
c0008f61:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f67:	cf                   	iret   

c0008f68 <asm_intr0x1a_handler>:
c0008f68:	90                   	nop
c0008f69:	1e                   	push   %ds
c0008f6a:	06                   	push   %es
c0008f6b:	0f a0                	push   %fs
c0008f6d:	0f a8                	push   %gs
c0008f6f:	60                   	pusha  
c0008f70:	68 1a 00 00 00       	push   $0x1a
c0008f75:	66 8c d0             	mov    %ss,%ax
c0008f78:	8e d8                	mov    %eax,%ds
c0008f7a:	8e c0                	mov    %eax,%es
c0008f7c:	ff 15 d8 d8 00 c0    	call   *0xc000d8d8
c0008f82:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f88:	61                   	popa   
c0008f89:	0f a9                	pop    %gs
c0008f8b:	0f a1                	pop    %fs
c0008f8d:	07                   	pop    %es
c0008f8e:	1f                   	pop    %ds
c0008f8f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008f95:	cf                   	iret   

c0008f96 <asm_intr0x1b_handler>:
c0008f96:	90                   	nop
c0008f97:	1e                   	push   %ds
c0008f98:	06                   	push   %es
c0008f99:	0f a0                	push   %fs
c0008f9b:	0f a8                	push   %gs
c0008f9d:	60                   	pusha  
c0008f9e:	68 1b 00 00 00       	push   $0x1b
c0008fa3:	66 8c d0             	mov    %ss,%ax
c0008fa6:	8e d8                	mov    %eax,%ds
c0008fa8:	8e c0                	mov    %eax,%es
c0008faa:	ff 15 dc d8 00 c0    	call   *0xc000d8dc
c0008fb0:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008fb6:	61                   	popa   
c0008fb7:	0f a9                	pop    %gs
c0008fb9:	0f a1                	pop    %fs
c0008fbb:	07                   	pop    %es
c0008fbc:	1f                   	pop    %ds
c0008fbd:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008fc3:	cf                   	iret   

c0008fc4 <asm_intr0x1c_handler>:
c0008fc4:	68 00 00 00 00       	push   $0x0
c0008fc9:	1e                   	push   %ds
c0008fca:	06                   	push   %es
c0008fcb:	0f a0                	push   %fs
c0008fcd:	0f a8                	push   %gs
c0008fcf:	60                   	pusha  
c0008fd0:	68 1c 00 00 00       	push   $0x1c
c0008fd5:	66 8c d0             	mov    %ss,%ax
c0008fd8:	8e d8                	mov    %eax,%ds
c0008fda:	8e c0                	mov    %eax,%es
c0008fdc:	ff 15 e0 d8 00 c0    	call   *0xc000d8e0
c0008fe2:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008fe8:	61                   	popa   
c0008fe9:	0f a9                	pop    %gs
c0008feb:	0f a1                	pop    %fs
c0008fed:	07                   	pop    %es
c0008fee:	1f                   	pop    %ds
c0008fef:	81 c4 04 00 00 00    	add    $0x4,%esp
c0008ff5:	cf                   	iret   

c0008ff6 <asm_intr0x1d_handler>:
c0008ff6:	90                   	nop
c0008ff7:	1e                   	push   %ds
c0008ff8:	06                   	push   %es
c0008ff9:	0f a0                	push   %fs
c0008ffb:	0f a8                	push   %gs
c0008ffd:	60                   	pusha  
c0008ffe:	68 1d 00 00 00       	push   $0x1d
c0009003:	66 8c d0             	mov    %ss,%ax
c0009006:	8e d8                	mov    %eax,%ds
c0009008:	8e c0                	mov    %eax,%es
c000900a:	ff 15 e4 d8 00 c0    	call   *0xc000d8e4
c0009010:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009016:	61                   	popa   
c0009017:	0f a9                	pop    %gs
c0009019:	0f a1                	pop    %fs
c000901b:	07                   	pop    %es
c000901c:	1f                   	pop    %ds
c000901d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009023:	cf                   	iret   

c0009024 <asm_intr0x1e_handler>:
c0009024:	90                   	nop
c0009025:	1e                   	push   %ds
c0009026:	06                   	push   %es
c0009027:	0f a0                	push   %fs
c0009029:	0f a8                	push   %gs
c000902b:	60                   	pusha  
c000902c:	68 1e 00 00 00       	push   $0x1e
c0009031:	66 8c d0             	mov    %ss,%ax
c0009034:	8e d8                	mov    %eax,%ds
c0009036:	8e c0                	mov    %eax,%es
c0009038:	ff 15 e8 d8 00 c0    	call   *0xc000d8e8
c000903e:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009044:	61                   	popa   
c0009045:	0f a9                	pop    %gs
c0009047:	0f a1                	pop    %fs
c0009049:	07                   	pop    %es
c000904a:	1f                   	pop    %ds
c000904b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009051:	cf                   	iret   

c0009052 <asm_intr0x1f_handler>:
c0009052:	68 00 00 00 00       	push   $0x0
c0009057:	1e                   	push   %ds
c0009058:	06                   	push   %es
c0009059:	0f a0                	push   %fs
c000905b:	0f a8                	push   %gs
c000905d:	60                   	pusha  
c000905e:	68 1f 00 00 00       	push   $0x1f
c0009063:	66 8c d0             	mov    %ss,%ax
c0009066:	8e d8                	mov    %eax,%ds
c0009068:	8e c0                	mov    %eax,%es
c000906a:	ff 15 ec d8 00 c0    	call   *0xc000d8ec
c0009070:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009076:	61                   	popa   
c0009077:	0f a9                	pop    %gs
c0009079:	0f a1                	pop    %fs
c000907b:	07                   	pop    %es
c000907c:	1f                   	pop    %ds
c000907d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009083:	cf                   	iret   

c0009084 <asm_intr0x20_handler>:
c0009084:	68 00 00 00 00       	push   $0x0
c0009089:	1e                   	push   %ds
c000908a:	06                   	push   %es
c000908b:	0f a0                	push   %fs
c000908d:	0f a8                	push   %gs
c000908f:	60                   	pusha  
c0009090:	68 20 00 00 00       	push   $0x20
c0009095:	66 8c d0             	mov    %ss,%ax
c0009098:	8e d8                	mov    %eax,%ds
c000909a:	8e c0                	mov    %eax,%es
c000909c:	ff 15 f0 d8 00 c0    	call   *0xc000d8f0
c00090a2:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090a8:	61                   	popa   
c00090a9:	0f a9                	pop    %gs
c00090ab:	0f a1                	pop    %fs
c00090ad:	07                   	pop    %es
c00090ae:	1f                   	pop    %ds
c00090af:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090b5:	cf                   	iret   

c00090b6 <asm_intr0x21_handler>:
c00090b6:	68 00 00 00 00       	push   $0x0
c00090bb:	1e                   	push   %ds
c00090bc:	06                   	push   %es
c00090bd:	0f a0                	push   %fs
c00090bf:	0f a8                	push   %gs
c00090c1:	60                   	pusha  
c00090c2:	68 21 00 00 00       	push   $0x21
c00090c7:	66 8c d0             	mov    %ss,%ax
c00090ca:	8e d8                	mov    %eax,%ds
c00090cc:	8e c0                	mov    %eax,%es
c00090ce:	ff 15 f4 d8 00 c0    	call   *0xc000d8f4
c00090d4:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090da:	61                   	popa   
c00090db:	0f a9                	pop    %gs
c00090dd:	0f a1                	pop    %fs
c00090df:	07                   	pop    %es
c00090e0:	1f                   	pop    %ds
c00090e1:	81 c4 04 00 00 00    	add    $0x4,%esp
c00090e7:	cf                   	iret   

c00090e8 <asm_intr0x22_handler>:
c00090e8:	68 00 00 00 00       	push   $0x0
c00090ed:	1e                   	push   %ds
c00090ee:	06                   	push   %es
c00090ef:	0f a0                	push   %fs
c00090f1:	0f a8                	push   %gs
c00090f3:	60                   	pusha  
c00090f4:	68 22 00 00 00       	push   $0x22
c00090f9:	66 8c d0             	mov    %ss,%ax
c00090fc:	8e d8                	mov    %eax,%ds
c00090fe:	8e c0                	mov    %eax,%es
c0009100:	ff 15 f8 d8 00 c0    	call   *0xc000d8f8
c0009106:	81 c4 04 00 00 00    	add    $0x4,%esp
c000910c:	61                   	popa   
c000910d:	0f a9                	pop    %gs
c000910f:	0f a1                	pop    %fs
c0009111:	07                   	pop    %es
c0009112:	1f                   	pop    %ds
c0009113:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009119:	cf                   	iret   

c000911a <asm_intr0x23_handler>:
c000911a:	68 00 00 00 00       	push   $0x0
c000911f:	1e                   	push   %ds
c0009120:	06                   	push   %es
c0009121:	0f a0                	push   %fs
c0009123:	0f a8                	push   %gs
c0009125:	60                   	pusha  
c0009126:	68 23 00 00 00       	push   $0x23
c000912b:	66 8c d0             	mov    %ss,%ax
c000912e:	8e d8                	mov    %eax,%ds
c0009130:	8e c0                	mov    %eax,%es
c0009132:	ff 15 fc d8 00 c0    	call   *0xc000d8fc
c0009138:	81 c4 04 00 00 00    	add    $0x4,%esp
c000913e:	61                   	popa   
c000913f:	0f a9                	pop    %gs
c0009141:	0f a1                	pop    %fs
c0009143:	07                   	pop    %es
c0009144:	1f                   	pop    %ds
c0009145:	81 c4 04 00 00 00    	add    $0x4,%esp
c000914b:	cf                   	iret   

c000914c <asm_intr0x24_handler>:
c000914c:	68 00 00 00 00       	push   $0x0
c0009151:	1e                   	push   %ds
c0009152:	06                   	push   %es
c0009153:	0f a0                	push   %fs
c0009155:	0f a8                	push   %gs
c0009157:	60                   	pusha  
c0009158:	68 24 00 00 00       	push   $0x24
c000915d:	66 8c d0             	mov    %ss,%ax
c0009160:	8e d8                	mov    %eax,%ds
c0009162:	8e c0                	mov    %eax,%es
c0009164:	ff 15 00 d9 00 c0    	call   *0xc000d900
c000916a:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009170:	61                   	popa   
c0009171:	0f a9                	pop    %gs
c0009173:	0f a1                	pop    %fs
c0009175:	07                   	pop    %es
c0009176:	1f                   	pop    %ds
c0009177:	81 c4 04 00 00 00    	add    $0x4,%esp
c000917d:	cf                   	iret   

c000917e <asm_intr0x25_handler>:
c000917e:	68 00 00 00 00       	push   $0x0
c0009183:	1e                   	push   %ds
c0009184:	06                   	push   %es
c0009185:	0f a0                	push   %fs
c0009187:	0f a8                	push   %gs
c0009189:	60                   	pusha  
c000918a:	68 25 00 00 00       	push   $0x25
c000918f:	66 8c d0             	mov    %ss,%ax
c0009192:	8e d8                	mov    %eax,%ds
c0009194:	8e c0                	mov    %eax,%es
c0009196:	ff 15 04 d9 00 c0    	call   *0xc000d904
c000919c:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091a2:	61                   	popa   
c00091a3:	0f a9                	pop    %gs
c00091a5:	0f a1                	pop    %fs
c00091a7:	07                   	pop    %es
c00091a8:	1f                   	pop    %ds
c00091a9:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091af:	cf                   	iret   

c00091b0 <asm_intr0x26_handler>:
c00091b0:	68 00 00 00 00       	push   $0x0
c00091b5:	1e                   	push   %ds
c00091b6:	06                   	push   %es
c00091b7:	0f a0                	push   %fs
c00091b9:	0f a8                	push   %gs
c00091bb:	60                   	pusha  
c00091bc:	68 26 00 00 00       	push   $0x26
c00091c1:	66 8c d0             	mov    %ss,%ax
c00091c4:	8e d8                	mov    %eax,%ds
c00091c6:	8e c0                	mov    %eax,%es
c00091c8:	ff 15 08 d9 00 c0    	call   *0xc000d908
c00091ce:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091d4:	61                   	popa   
c00091d5:	0f a9                	pop    %gs
c00091d7:	0f a1                	pop    %fs
c00091d9:	07                   	pop    %es
c00091da:	1f                   	pop    %ds
c00091db:	81 c4 04 00 00 00    	add    $0x4,%esp
c00091e1:	cf                   	iret   

c00091e2 <asm_intr0x27_handler>:
c00091e2:	68 00 00 00 00       	push   $0x0
c00091e7:	1e                   	push   %ds
c00091e8:	06                   	push   %es
c00091e9:	0f a0                	push   %fs
c00091eb:	0f a8                	push   %gs
c00091ed:	60                   	pusha  
c00091ee:	68 27 00 00 00       	push   $0x27
c00091f3:	66 8c d0             	mov    %ss,%ax
c00091f6:	8e d8                	mov    %eax,%ds
c00091f8:	8e c0                	mov    %eax,%es
c00091fa:	ff 15 0c d9 00 c0    	call   *0xc000d90c
c0009200:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009206:	61                   	popa   
c0009207:	0f a9                	pop    %gs
c0009209:	0f a1                	pop    %fs
c000920b:	07                   	pop    %es
c000920c:	1f                   	pop    %ds
c000920d:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009213:	cf                   	iret   

c0009214 <asm_intr0x28_handler>:
c0009214:	68 00 00 00 00       	push   $0x0
c0009219:	1e                   	push   %ds
c000921a:	06                   	push   %es
c000921b:	0f a0                	push   %fs
c000921d:	0f a8                	push   %gs
c000921f:	60                   	pusha  
c0009220:	68 28 00 00 00       	push   $0x28
c0009225:	66 8c d0             	mov    %ss,%ax
c0009228:	8e d8                	mov    %eax,%ds
c000922a:	8e c0                	mov    %eax,%es
c000922c:	ff 15 10 d9 00 c0    	call   *0xc000d910
c0009232:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009238:	61                   	popa   
c0009239:	0f a9                	pop    %gs
c000923b:	0f a1                	pop    %fs
c000923d:	07                   	pop    %es
c000923e:	1f                   	pop    %ds
c000923f:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009245:	cf                   	iret   

c0009246 <asm_intr0x29_handler>:
c0009246:	68 00 00 00 00       	push   $0x0
c000924b:	1e                   	push   %ds
c000924c:	06                   	push   %es
c000924d:	0f a0                	push   %fs
c000924f:	0f a8                	push   %gs
c0009251:	60                   	pusha  
c0009252:	68 29 00 00 00       	push   $0x29
c0009257:	66 8c d0             	mov    %ss,%ax
c000925a:	8e d8                	mov    %eax,%ds
c000925c:	8e c0                	mov    %eax,%es
c000925e:	ff 15 14 d9 00 c0    	call   *0xc000d914
c0009264:	81 c4 04 00 00 00    	add    $0x4,%esp
c000926a:	61                   	popa   
c000926b:	0f a9                	pop    %gs
c000926d:	0f a1                	pop    %fs
c000926f:	07                   	pop    %es
c0009270:	1f                   	pop    %ds
c0009271:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009277:	cf                   	iret   

c0009278 <asm_intr0x2a_handler>:
c0009278:	68 00 00 00 00       	push   $0x0
c000927d:	1e                   	push   %ds
c000927e:	06                   	push   %es
c000927f:	0f a0                	push   %fs
c0009281:	0f a8                	push   %gs
c0009283:	60                   	pusha  
c0009284:	68 2a 00 00 00       	push   $0x2a
c0009289:	66 8c d0             	mov    %ss,%ax
c000928c:	8e d8                	mov    %eax,%ds
c000928e:	8e c0                	mov    %eax,%es
c0009290:	ff 15 18 d9 00 c0    	call   *0xc000d918
c0009296:	81 c4 04 00 00 00    	add    $0x4,%esp
c000929c:	61                   	popa   
c000929d:	0f a9                	pop    %gs
c000929f:	0f a1                	pop    %fs
c00092a1:	07                   	pop    %es
c00092a2:	1f                   	pop    %ds
c00092a3:	81 c4 04 00 00 00    	add    $0x4,%esp
c00092a9:	cf                   	iret   

c00092aa <asm_intr0x2b_handler>:
c00092aa:	68 00 00 00 00       	push   $0x0
c00092af:	1e                   	push   %ds
c00092b0:	06                   	push   %es
c00092b1:	0f a0                	push   %fs
c00092b3:	0f a8                	push   %gs
c00092b5:	60                   	pusha  
c00092b6:	68 2b 00 00 00       	push   $0x2b
c00092bb:	66 8c d0             	mov    %ss,%ax
c00092be:	8e d8                	mov    %eax,%ds
c00092c0:	8e c0                	mov    %eax,%es
c00092c2:	ff 15 1c d9 00 c0    	call   *0xc000d91c
c00092c8:	81 c4 04 00 00 00    	add    $0x4,%esp
c00092ce:	61                   	popa   
c00092cf:	0f a9                	pop    %gs
c00092d1:	0f a1                	pop    %fs
c00092d3:	07                   	pop    %es
c00092d4:	1f                   	pop    %ds
c00092d5:	81 c4 04 00 00 00    	add    $0x4,%esp
c00092db:	cf                   	iret   

c00092dc <asm_intr0x2c_handler>:
c00092dc:	68 00 00 00 00       	push   $0x0
c00092e1:	1e                   	push   %ds
c00092e2:	06                   	push   %es
c00092e3:	0f a0                	push   %fs
c00092e5:	0f a8                	push   %gs
c00092e7:	60                   	pusha  
c00092e8:	68 2c 00 00 00       	push   $0x2c
c00092ed:	66 8c d0             	mov    %ss,%ax
c00092f0:	8e d8                	mov    %eax,%ds
c00092f2:	8e c0                	mov    %eax,%es
c00092f4:	ff 15 20 d9 00 c0    	call   *0xc000d920
c00092fa:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009300:	61                   	popa   
c0009301:	0f a9                	pop    %gs
c0009303:	0f a1                	pop    %fs
c0009305:	07                   	pop    %es
c0009306:	1f                   	pop    %ds
c0009307:	81 c4 04 00 00 00    	add    $0x4,%esp
c000930d:	cf                   	iret   

c000930e <asm_intr0x2d_handler>:
c000930e:	68 00 00 00 00       	push   $0x0
c0009313:	1e                   	push   %ds
c0009314:	06                   	push   %es
c0009315:	0f a0                	push   %fs
c0009317:	0f a8                	push   %gs
c0009319:	60                   	pusha  
c000931a:	68 2d 00 00 00       	push   $0x2d
c000931f:	66 8c d0             	mov    %ss,%ax
c0009322:	8e d8                	mov    %eax,%ds
c0009324:	8e c0                	mov    %eax,%es
c0009326:	ff 15 24 d9 00 c0    	call   *0xc000d924
c000932c:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009332:	61                   	popa   
c0009333:	0f a9                	pop    %gs
c0009335:	0f a1                	pop    %fs
c0009337:	07                   	pop    %es
c0009338:	1f                   	pop    %ds
c0009339:	81 c4 04 00 00 00    	add    $0x4,%esp
c000933f:	cf                   	iret   

c0009340 <asm_intr0x2e_handler>:
c0009340:	68 00 00 00 00       	push   $0x0
c0009345:	1e                   	push   %ds
c0009346:	06                   	push   %es
c0009347:	0f a0                	push   %fs
c0009349:	0f a8                	push   %gs
c000934b:	60                   	pusha  
c000934c:	68 2e 00 00 00       	push   $0x2e
c0009351:	66 8c d0             	mov    %ss,%ax
c0009354:	8e d8                	mov    %eax,%ds
c0009356:	8e c0                	mov    %eax,%es
c0009358:	ff 15 28 d9 00 c0    	call   *0xc000d928
c000935e:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009364:	61                   	popa   
c0009365:	0f a9                	pop    %gs
c0009367:	0f a1                	pop    %fs
c0009369:	07                   	pop    %es
c000936a:	1f                   	pop    %ds
c000936b:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009371:	cf                   	iret   

c0009372 <asm_intr0x2f_handler>:
c0009372:	68 00 00 00 00       	push   $0x0
c0009377:	1e                   	push   %ds
c0009378:	06                   	push   %es
c0009379:	0f a0                	push   %fs
c000937b:	0f a8                	push   %gs
c000937d:	60                   	pusha  
c000937e:	68 2f 00 00 00       	push   $0x2f
c0009383:	66 8c d0             	mov    %ss,%ax
c0009386:	8e d8                	mov    %eax,%ds
c0009388:	8e c0                	mov    %eax,%es
c000938a:	ff 15 2c d9 00 c0    	call   *0xc000d92c
c0009390:	81 c4 04 00 00 00    	add    $0x4,%esp
c0009396:	61                   	popa   
c0009397:	0f a9                	pop    %gs
c0009399:	0f a1                	pop    %fs
c000939b:	07                   	pop    %es
c000939c:	1f                   	pop    %ds
c000939d:	81 c4 04 00 00 00    	add    $0x4,%esp
c00093a3:	cf                   	iret   

c00093a4 <intr0x27_handler>:
c00093a4:	55                   	push   %ebp
c00093a5:	ba 20 00 00 00       	mov    $0x20,%edx
c00093aa:	89 e5                	mov    %esp,%ebp
c00093ac:	b8 20 00 00 00       	mov    $0x20,%eax
c00093b1:	ee                   	out    %al,(%dx)
c00093b2:	5d                   	pop    %ebp
c00093b3:	c3                   	ret    

c00093b4 <init_pic>:
c00093b4:	55                   	push   %ebp
c00093b5:	ba 21 00 00 00       	mov    $0x21,%edx
c00093ba:	89 e5                	mov    %esp,%ebp
c00093bc:	b8 ff 00 00 00       	mov    $0xff,%eax
c00093c1:	ee                   	out    %al,(%dx)
c00093c2:	b2 a1                	mov    $0xa1,%dl
c00093c4:	ee                   	out    %al,(%dx)
c00093c5:	b2 20                	mov    $0x20,%dl
c00093c7:	b0 11                	mov    $0x11,%al
c00093c9:	ee                   	out    %al,(%dx)
c00093ca:	b2 21                	mov    $0x21,%dl
c00093cc:	b0 20                	mov    $0x20,%al
c00093ce:	ee                   	out    %al,(%dx)
c00093cf:	b0 04                	mov    $0x4,%al
c00093d1:	ee                   	out    %al,(%dx)
c00093d2:	b0 01                	mov    $0x1,%al
c00093d4:	ee                   	out    %al,(%dx)
c00093d5:	b2 a0                	mov    $0xa0,%dl
c00093d7:	b0 11                	mov    $0x11,%al
c00093d9:	ee                   	out    %al,(%dx)
c00093da:	b2 a1                	mov    $0xa1,%dl
c00093dc:	b0 28                	mov    $0x28,%al
c00093de:	ee                   	out    %al,(%dx)
c00093df:	b0 02                	mov    $0x2,%al
c00093e1:	ee                   	out    %al,(%dx)
c00093e2:	b0 01                	mov    $0x1,%al
c00093e4:	ee                   	out    %al,(%dx)
c00093e5:	b2 21                	mov    $0x21,%dl
c00093e7:	b0 fc                	mov    $0xfc,%al
c00093e9:	ee                   	out    %al,(%dx)
c00093ea:	b2 a1                	mov    $0xa1,%dl
c00093ec:	b0 ff                	mov    $0xff,%al
c00093ee:	ee                   	out    %al,(%dx)
c00093ef:	5d                   	pop    %ebp
c00093f0:	c3                   	ret    

c00093f1 <idt_desc_init>:
c00093f1:	55                   	push   %ebp
c00093f2:	31 c0                	xor    %eax,%eax
c00093f4:	89 e5                	mov    %esp,%ebp
c00093f6:	c7 04 85 70 d8 00 c0 	movl   $0xc00095a9,-0x3fff2790(,%eax,4)
c00093fd:	a9 95 00 c0 
c0009401:	40                   	inc    %eax
c0009402:	83 f8 2f             	cmp    $0x2f,%eax
c0009405:	75 ef                	jne    c00093f6 <idt_desc_init+0x5>
c0009407:	c7 05 f0 d8 00 c0 90 	movl   $0xc000a490,0xc000d8f0
c000940e:	a4 00 c0 
c0009411:	30 c0                	xor    %al,%al
c0009413:	c7 05 f4 d8 00 c0 ea 	movl   $0xc00096ea,0xc000d8f4
c000941a:	96 00 c0 
c000941d:	c7 05 0c d9 00 c0 a4 	movl   $0xc00093a4,0xc000d90c
c0009424:	93 00 c0 
c0009427:	8b 0c 85 c0 b6 00 c0 	mov    -0x3fff4940(,%eax,4),%ecx
c000942e:	8d 14 c5 f8 d6 00 c0 	lea    -0x3fff2908(,%eax,8),%edx
c0009435:	66 c7 42 02 08 00    	movw   $0x8,0x2(%edx)
c000943b:	c6 42 04 00          	movb   $0x0,0x4(%edx)
c000943f:	c6 42 05 8e          	movb   $0x8e,0x5(%edx)
c0009443:	66 89 0c c5 f8 d6 00 	mov    %cx,-0x3fff2908(,%eax,8)
c000944a:	c0 
c000944b:	40                   	inc    %eax
c000944c:	c1 e9 10             	shr    $0x10,%ecx
c000944f:	83 f8 2f             	cmp    $0x2f,%eax
c0009452:	66 89 4a 06          	mov    %cx,0x6(%edx)
c0009456:	75 cf                	jne    c0009427 <idt_desc_init+0x36>
c0009458:	5d                   	pop    %ebp
c0009459:	c3                   	ret    

c000945a <set_gatedesc>:
c000945a:	55                   	push   %ebp
c000945b:	89 e5                	mov    %esp,%ebp
c000945d:	8b 45 08             	mov    0x8(%ebp),%eax
c0009460:	53                   	push   %ebx
c0009461:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0009464:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0009467:	8b 55 0c             	mov    0xc(%ebp),%edx
c000946a:	88 48 05             	mov    %cl,0x5(%eax)
c000946d:	66 89 58 02          	mov    %bx,0x2(%eax)
c0009471:	89 cb                	mov    %ecx,%ebx
c0009473:	66 89 10             	mov    %dx,(%eax)
c0009476:	c1 fb 08             	sar    $0x8,%ebx
c0009479:	c1 ea 10             	shr    $0x10,%edx
c000947c:	88 58 04             	mov    %bl,0x4(%eax)
c000947f:	66 89 50 06          	mov    %dx,0x6(%eax)
c0009483:	5b                   	pop    %ebx
c0009484:	5d                   	pop    %ebp
c0009485:	c3                   	ret    

c0009486 <exception_init>:
c0009486:	55                   	push   %ebp
c0009487:	89 e5                	mov    %esp,%ebp
c0009489:	c7 05 3c d6 00 c0 90 	movl   $0xc000ce90,0xc000d63c
c0009490:	ce 00 c0 
c0009493:	c7 05 40 d6 00 c0 a1 	movl   $0xc000cea1,0xc000d640
c000949a:	ce 00 c0 
c000949d:	c7 05 44 d6 00 c0 b5 	movl   $0xc000ceb5,0xc000d644
c00094a4:	ce 00 c0 
c00094a7:	c7 05 48 d6 00 c0 c3 	movl   $0xc000cec3,0xc000d648
c00094ae:	ce 00 c0 
c00094b1:	c7 05 4c d6 00 c0 dc 	movl   $0xc000cedc,0xc000d64c
c00094b8:	ce 00 c0 
c00094bb:	c7 05 50 d6 00 c0 f3 	movl   $0xc000cef3,0xc000d650
c00094c2:	ce 00 c0 
c00094c5:	c7 05 54 d6 00 c0 16 	movl   $0xc000cf16,0xc000d654
c00094cc:	cf 00 c0 
c00094cf:	c7 05 58 d6 00 c0 33 	movl   $0xc000cf33,0xc000d658
c00094d6:	cf 00 c0 
c00094d9:	c7 05 5c d6 00 c0 56 	movl   $0xc000cf56,0xc000d65c
c00094e0:	cf 00 c0 
c00094e3:	c7 05 60 d6 00 c0 71 	movl   $0xc000cf71,0xc000d660
c00094ea:	cf 00 c0 
c00094ed:	c7 05 64 d6 00 c0 8d 	movl   $0xc000cf8d,0xc000d664
c00094f4:	cf 00 c0 
c00094f7:	c7 05 68 d6 00 c0 a7 	movl   $0xc000cfa7,0xc000d668
c00094fe:	cf 00 c0 
c0009501:	c7 05 6c d6 00 c0 bf 	movl   $0xc000cfbf,0xc000d66c
c0009508:	cf 00 c0 
c000950b:	c7 05 70 d6 00 c0 d9 	movl   $0xc000cfd9,0xc000d670
c0009512:	cf 00 c0 
c0009515:	c7 05 74 d6 00 c0 fa 	movl   $0xc000cffa,0xc000d674
c000951c:	cf 00 c0 
c000951f:	c7 05 78 d6 00 c0 13 	movl   $0xc000d013,0xc000d678
c0009526:	d0 00 c0 
c0009529:	c7 05 7c d6 00 c0 1c 	movl   $0xc000d01c,0xc000d67c
c0009530:	d0 00 c0 
c0009533:	c7 05 80 d6 00 c0 3d 	movl   $0xc000d03d,0xc000d680
c000953a:	d0 00 c0 
c000953d:	c7 05 84 d6 00 c0 5b 	movl   $0xc000d05b,0xc000d684
c0009544:	d0 00 c0 
c0009547:	c7 05 88 d6 00 c0 77 	movl   $0xc000d077,0xc000d688
c000954e:	d0 00 c0 
c0009551:	5d                   	pop    %ebp
c0009552:	c3                   	ret    

c0009553 <init_idt>:
c0009553:	55                   	push   %ebp
c0009554:	89 e5                	mov    %esp,%ebp
c0009556:	83 ec 10             	sub    $0x10,%esp
c0009559:	e8 93 fe ff ff       	call   c00093f1 <idt_desc_init>
c000955e:	e8 51 fe ff ff       	call   c00093b4 <init_pic>
c0009563:	b8 f8 d6 00 c0       	mov    $0xc000d6f8,%eax
c0009568:	c1 e0 10             	shl    $0x10,%eax
c000956b:	0d 77 01 00 00       	or     $0x177,%eax
c0009570:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0009573:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c000957a:	e8 07 ff ff ff       	call   c0009486 <exception_init>
c000957f:	0f 01 5d f8          	lidtl  -0x8(%ebp)
c0009583:	c9                   	leave  
c0009584:	c3                   	ret    

c0009585 <intr_get_status>:
c0009585:	55                   	push   %ebp
c0009586:	89 e5                	mov    %esp,%ebp
c0009588:	9c                   	pushf  
c0009589:	58                   	pop    %eax
c000958a:	f6 c4 02             	test   $0x2,%ah
c000958d:	0f 95 c0             	setne  %al
c0009590:	0f b6 c0             	movzbl %al,%eax
c0009593:	5d                   	pop    %ebp
c0009594:	c3                   	ret    

c0009595 <intr_disable>:
c0009595:	55                   	push   %ebp
c0009596:	89 e5                	mov    %esp,%ebp
c0009598:	e8 e8 ff ff ff       	call   c0009585 <intr_get_status>
c000959d:	31 d2                	xor    %edx,%edx
c000959f:	48                   	dec    %eax
c00095a0:	75 03                	jne    c00095a5 <intr_disable+0x10>
c00095a2:	fa                   	cli    
c00095a3:	b2 01                	mov    $0x1,%dl
c00095a5:	89 d0                	mov    %edx,%eax
c00095a7:	5d                   	pop    %ebp
c00095a8:	c3                   	ret    

c00095a9 <general_intr_handler>:
c00095a9:	55                   	push   %ebp
c00095aa:	89 e5                	mov    %esp,%ebp
c00095ac:	56                   	push   %esi
c00095ad:	be 80 07 00 00       	mov    $0x780,%esi
c00095b2:	53                   	push   %ebx
c00095b3:	8a 5d 08             	mov    0x8(%ebp),%bl
c00095b6:	e8 da ff ff ff       	call   c0009595 <intr_disable>
c00095bb:	83 ec 0c             	sub    $0xc,%esp
c00095be:	6a 00                	push   $0x0
c00095c0:	e8 ea 08 00 00       	call   c0009eaf <set_cursor>
c00095c5:	83 c4 10             	add    $0x10,%esp
c00095c8:	51                   	push   %ecx
c00095c9:	51                   	push   %ecx
c00095ca:	6a 20                	push   $0x20
c00095cc:	6a 17                	push   $0x17
c00095ce:	e8 03 09 00 00       	call   c0009ed6 <put_char>
c00095d3:	83 c4 10             	add    $0x10,%esp
c00095d6:	4e                   	dec    %esi
c00095d7:	75 ef                	jne    c00095c8 <general_intr_handler+0x1f>
c00095d9:	83 ec 0c             	sub    $0xc,%esp
c00095dc:	6a 00                	push   $0x0
c00095de:	e8 cc 08 00 00       	call   c0009eaf <set_cursor>
c00095e3:	58                   	pop    %eax
c00095e4:	5a                   	pop    %edx
c00095e5:	68 99 d0 00 c0       	push   $0xc000d099
c00095ea:	6a 17                	push   $0x17
c00095ec:	e8 86 09 00 00       	call   c0009f77 <put_str>
c00095f1:	59                   	pop    %ecx
c00095f2:	5e                   	pop    %esi
c00095f3:	68 ca d1 00 c0       	push   $0xc000d1ca
c00095f8:	6a 17                	push   $0x17
c00095fa:	e8 78 09 00 00       	call   c0009f77 <put_str>
c00095ff:	58                   	pop    %eax
c0009600:	5a                   	pop    %edx
c0009601:	68 70 cc 00 c0       	push   $0xc000cc70
c0009606:	6a 17                	push   $0x17
c0009608:	e8 6a 09 00 00       	call   c0009f77 <put_str>
c000960d:	59                   	pop    %ecx
c000960e:	5e                   	pop    %esi
c000960f:	0f b6 f3             	movzbl %bl,%esi
c0009612:	68 cd d1 00 c0       	push   $0xc000d1cd
c0009617:	6a 17                	push   $0x17
c0009619:	e8 59 09 00 00       	call   c0009f77 <put_str>
c000961e:	83 c4 0c             	add    $0xc,%esp
c0009621:	6a 10                	push   $0x10
c0009623:	56                   	push   %esi
c0009624:	6a 17                	push   $0x17
c0009626:	e8 ae 09 00 00       	call   c0009fd9 <put_int>
c000962b:	58                   	pop    %eax
c000962c:	5a                   	pop    %edx
c000962d:	68 ca d1 00 c0       	push   $0xc000d1ca
c0009632:	6a 17                	push   $0x17
c0009634:	e8 3e 09 00 00       	call   c0009f77 <put_str>
c0009639:	83 c4 10             	add    $0x10,%esp
c000963c:	80 fb 13             	cmp    $0x13,%bl
c000963f:	77 47                	ja     c0009688 <general_intr_handler+0xdf>
c0009641:	50                   	push   %eax
c0009642:	50                   	push   %eax
c0009643:	ff 34 b5 3c d6 00 c0 	pushl  -0x3fff29c4(,%esi,4)
c000964a:	6a 17                	push   $0x17
c000964c:	e8 26 09 00 00       	call   c0009f77 <put_str>
c0009651:	83 c4 10             	add    $0x10,%esp
c0009654:	80 fb 0e             	cmp    $0xe,%bl
c0009657:	75 2f                	jne    c0009688 <general_intr_handler+0xdf>
c0009659:	0f 20 d3             	mov    %cr2,%ebx
c000965c:	52                   	push   %edx
c000965d:	52                   	push   %edx
c000965e:	68 d8 d1 00 c0       	push   $0xc000d1d8
c0009663:	6a 17                	push   $0x17
c0009665:	e8 0d 09 00 00       	call   c0009f77 <put_str>
c000966a:	83 c4 0c             	add    $0xc,%esp
c000966d:	6a 10                	push   $0x10
c000966f:	53                   	push   %ebx
c0009670:	6a 17                	push   $0x17
c0009672:	e8 28 09 00 00       	call   c0009f9f <put_uint>
c0009677:	59                   	pop    %ecx
c0009678:	5b                   	pop    %ebx
c0009679:	68 ed d1 00 c0       	push   $0xc000d1ed
c000967e:	6a 17                	push   $0x17
c0009680:	e8 f2 08 00 00       	call   c0009f77 <put_str>
c0009685:	83 c4 10             	add    $0x10,%esp
c0009688:	50                   	push   %eax
c0009689:	50                   	push   %eax
c000968a:	68 f1 d1 00 c0       	push   $0xc000d1f1
c000968f:	6a 17                	push   $0x17
c0009691:	e8 e1 08 00 00       	call   c0009f77 <put_str>
c0009696:	e8 33 ee ff ff       	call   c00084ce <cpu_info>
c000969b:	83 c4 10             	add    $0x10,%esp
c000969e:	eb fe                	jmp    c000969e <general_intr_handler+0xf5>

c00096a0 <intr_enable>:
c00096a0:	55                   	push   %ebp
c00096a1:	89 e5                	mov    %esp,%ebp
c00096a3:	e8 dd fe ff ff       	call   c0009585 <intr_get_status>
c00096a8:	ba 01 00 00 00       	mov    $0x1,%edx
c00096ad:	48                   	dec    %eax
c00096ae:	74 03                	je     c00096b3 <intr_enable+0x13>
c00096b0:	fb                   	sti    
c00096b1:	30 d2                	xor    %dl,%dl
c00096b3:	89 d0                	mov    %edx,%eax
c00096b5:	5d                   	pop    %ebp
c00096b6:	c3                   	ret    

c00096b7 <intr_set_status>:
c00096b7:	55                   	push   %ebp
c00096b8:	89 e5                	mov    %esp,%ebp
c00096ba:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c00096be:	75 06                	jne    c00096c6 <intr_set_status+0xf>
c00096c0:	5d                   	pop    %ebp
c00096c1:	e9 da ff ff ff       	jmp    c00096a0 <intr_enable>
c00096c6:	5d                   	pop    %ebp
c00096c7:	e9 c9 fe ff ff       	jmp    c0009595 <intr_disable>

c00096cc <init_keyboard>:
c00096cc:	55                   	push   %ebp
c00096cd:	89 e5                	mov    %esp,%ebp
c00096cf:	83 ec 08             	sub    $0x8,%esp
c00096d2:	6a 40                	push   $0x40
c00096d4:	6a 08                	push   $0x8
c00096d6:	68 7c d5 00 c0       	push   $0xc000d57c
c00096db:	68 2c d9 00 c0       	push   $0xc000d92c
c00096e0:	e8 33 ef ff ff       	call   c0008618 <init_fifo>
c00096e5:	83 c4 10             	add    $0x10,%esp
c00096e8:	c9                   	leave  
c00096e9:	c3                   	ret    

c00096ea <intr0x21_handler>:
c00096ea:	55                   	push   %ebp
c00096eb:	b8 20 00 00 00       	mov    $0x20,%eax
c00096f0:	89 e5                	mov    %esp,%ebp
c00096f2:	89 c2                	mov    %eax,%edx
c00096f4:	53                   	push   %ebx
c00096f5:	83 ec 14             	sub    $0x14,%esp
c00096f8:	ee                   	out    %al,(%dx)
c00096f9:	8b 0d bc d5 00 c0    	mov    0xc000d5bc,%ecx
c00096ff:	b2 60                	mov    $0x60,%dl
c0009701:	8b 1d c0 d5 00 c0    	mov    0xc000d5c0,%ebx
c0009707:	ec                   	in     (%dx),%al
c0009708:	66 3d e0 00          	cmp    $0xe0,%ax
c000970c:	75 0f                	jne    c000971d <intr0x21_handler+0x33>
c000970e:	c7 05 c4 d5 00 c0 01 	movl   $0x1,0xc000d5c4
c0009715:	00 00 00 
c0009718:	e9 a5 01 00 00       	jmp    c00098c2 <intr0x21_handler+0x1d8>
c000971d:	83 3d c4 d5 00 c0 01 	cmpl   $0x1,0xc000d5c4
c0009724:	75 0e                	jne    c0009734 <intr0x21_handler+0x4a>
c0009726:	66 0d 00 e0          	or     $0xe000,%ax
c000972a:	c7 05 c4 d5 00 c0 00 	movl   $0x0,0xc000d5c4
c0009731:	00 00 00 
c0009734:	a8 80                	test   $0x80,%al
c0009736:	74 61                	je     c0009799 <intr0x21_handler+0xaf>
c0009738:	24 7f                	and    $0x7f,%al
c000973a:	66 83 f8 36          	cmp    $0x36,%ax
c000973e:	74 3b                	je     c000977b <intr0x21_handler+0x91>
c0009740:	77 12                	ja     c0009754 <intr0x21_handler+0x6a>
c0009742:	66 83 f8 1d          	cmp    $0x1d,%ax
c0009746:	74 24                	je     c000976c <intr0x21_handler+0x82>
c0009748:	66 83 f8 2a          	cmp    $0x2a,%ax
c000974c:	0f 85 70 01 00 00    	jne    c00098c2 <intr0x21_handler+0x1d8>
c0009752:	eb 27                	jmp    c000977b <intr0x21_handler+0x91>
c0009754:	66 3d 1d e0          	cmp    $0xe01d,%ax
c0009758:	74 12                	je     c000976c <intr0x21_handler+0x82>
c000975a:	66 3d 38 e0          	cmp    $0xe038,%ax
c000975e:	74 2a                	je     c000978a <intr0x21_handler+0xa0>
c0009760:	66 83 f8 38          	cmp    $0x38,%ax
c0009764:	0f 85 58 01 00 00    	jne    c00098c2 <intr0x21_handler+0x1d8>
c000976a:	eb 1e                	jmp    c000978a <intr0x21_handler+0xa0>
c000976c:	c7 05 c8 d5 00 c0 00 	movl   $0x0,0xc000d5c8
c0009773:	00 00 00 
c0009776:	e9 47 01 00 00       	jmp    c00098c2 <intr0x21_handler+0x1d8>
c000977b:	c7 05 bc d5 00 c0 00 	movl   $0x0,0xc000d5bc
c0009782:	00 00 00 
c0009785:	e9 38 01 00 00       	jmp    c00098c2 <intr0x21_handler+0x1d8>
c000978a:	c7 05 cc d5 00 c0 00 	movl   $0x0,0xc000d5cc
c0009791:	00 00 00 
c0009794:	e9 29 01 00 00       	jmp    c00098c2 <intr0x21_handler+0x1d8>
c0009799:	8d 50 ff             	lea    -0x1(%eax),%edx
c000979c:	66 83 fa 39          	cmp    $0x39,%dx
c00097a0:	76 10                	jbe    c00097b2 <intr0x21_handler+0xc8>
c00097a2:	66 3d 38 e0          	cmp    $0xe038,%ax
c00097a6:	74 0a                	je     c00097b2 <intr0x21_handler+0xc8>
c00097a8:	66 3d 1d e0          	cmp    $0xe01d,%ax
c00097ac:	0f 85 10 01 00 00    	jne    c00098c2 <intr0x21_handler+0x1d8>
c00097b2:	66 83 f8 29          	cmp    $0x29,%ax
c00097b6:	74 2d                	je     c00097e5 <intr0x21_handler+0xfb>
c00097b8:	66 83 f8 0d          	cmp    $0xd,%ax
c00097bc:	76 27                	jbe    c00097e5 <intr0x21_handler+0xfb>
c00097be:	66 83 f8 1b          	cmp    $0x1b,%ax
c00097c2:	74 21                	je     c00097e5 <intr0x21_handler+0xfb>
c00097c4:	66 83 f8 1a          	cmp    $0x1a,%ax
c00097c8:	74 1b                	je     c00097e5 <intr0x21_handler+0xfb>
c00097ca:	66 83 f8 27          	cmp    $0x27,%ax
c00097ce:	74 15                	je     c00097e5 <intr0x21_handler+0xfb>
c00097d0:	66 83 f8 2b          	cmp    $0x2b,%ax
c00097d4:	74 0f                	je     c00097e5 <intr0x21_handler+0xfb>
c00097d6:	66 83 f8 28          	cmp    $0x28,%ax
c00097da:	74 09                	je     c00097e5 <intr0x21_handler+0xfb>
c00097dc:	8d 50 cd             	lea    -0x33(%eax),%edx
c00097df:	66 83 fa 02          	cmp    $0x2,%dx
c00097e3:	77 06                	ja     c00097eb <intr0x21_handler+0x101>
c00097e5:	49                   	dec    %ecx
c00097e6:	0f 94 c2             	sete   %dl
c00097e9:	eb 0f                	jmp    c00097fa <intr0x21_handler+0x110>
c00097eb:	85 db                	test   %ebx,%ebx
c00097ed:	74 06                	je     c00097f5 <intr0x21_handler+0x10b>
c00097ef:	31 d2                	xor    %edx,%edx
c00097f1:	85 c9                	test   %ecx,%ecx
c00097f3:	75 08                	jne    c00097fd <intr0x21_handler+0x113>
c00097f5:	09 cb                	or     %ecx,%ebx
c00097f7:	0f 95 c2             	setne  %dl
c00097fa:	0f b6 d2             	movzbl %dl,%edx
c00097fd:	66 25 ff 00          	and    $0xff,%ax
c0009801:	0f b7 c8             	movzwl %ax,%ecx
c0009804:	8a 94 4a 60 d2 00 c0 	mov    -0x3fff2da0(%edx,%ecx,2),%dl
c000980b:	84 d2                	test   %dl,%dl
c000980d:	88 55 f7             	mov    %dl,-0x9(%ebp)
c0009810:	74 44                	je     c0009856 <intr0x21_handler+0x16c>
c0009812:	50                   	push   %eax
c0009813:	0f b6 d2             	movzbl %dl,%edx
c0009816:	50                   	push   %eax
c0009817:	52                   	push   %edx
c0009818:	6a 07                	push   $0x7
c000981a:	e8 b7 06 00 00       	call   c0009ed6 <put_char>
c000981f:	c7 04 24 2c d9 00 c0 	movl   $0xc000d92c,(%esp)
c0009826:	e8 aa ef ff ff       	call   c00087d5 <fifo_fill>
c000982b:	83 c4 10             	add    $0x10,%esp
c000982e:	85 c0                	test   %eax,%eax
c0009830:	0f 85 8c 00 00 00    	jne    c00098c2 <intr0x21_handler+0x1d8>
c0009836:	51                   	push   %ecx
c0009837:	51                   	push   %ecx
c0009838:	68 24 d2 00 c0       	push   $0xc000d224
c000983d:	6a 47                	push   $0x47
c000983f:	e8 33 07 00 00       	call   c0009f77 <put_str>
c0009844:	5b                   	pop    %ebx
c0009845:	58                   	pop    %eax
c0009846:	8d 45 f7             	lea    -0x9(%ebp),%eax
c0009849:	50                   	push   %eax
c000984a:	68 2c d9 00 c0       	push   $0xc000d92c
c000984f:	e8 e9 ed ff ff       	call   c000863d <fifo_put>
c0009854:	eb 69                	jmp    c00098bf <intr0x21_handler+0x1d5>
c0009856:	66 83 f8 36          	cmp    $0x36,%ax
c000985a:	74 2a                	je     c0009886 <intr0x21_handler+0x19c>
c000985c:	77 0e                	ja     c000986c <intr0x21_handler+0x182>
c000985e:	66 83 f8 1d          	cmp    $0x1d,%ax
c0009862:	74 16                	je     c000987a <intr0x21_handler+0x190>
c0009864:	66 83 f8 2a          	cmp    $0x2a,%ax
c0009868:	75 47                	jne    c00098b1 <intr0x21_handler+0x1c7>
c000986a:	eb 1a                	jmp    c0009886 <intr0x21_handler+0x19c>
c000986c:	66 83 f8 38          	cmp    $0x38,%ax
c0009870:	74 20                	je     c0009892 <intr0x21_handler+0x1a8>
c0009872:	66 83 f8 3a          	cmp    $0x3a,%ax
c0009876:	75 39                	jne    c00098b1 <intr0x21_handler+0x1c7>
c0009878:	eb 24                	jmp    c000989e <intr0x21_handler+0x1b4>
c000987a:	c7 05 c8 d5 00 c0 01 	movl   $0x1,0xc000d5c8
c0009881:	00 00 00 
c0009884:	eb 3c                	jmp    c00098c2 <intr0x21_handler+0x1d8>
c0009886:	c7 05 bc d5 00 c0 01 	movl   $0x1,0xc000d5bc
c000988d:	00 00 00 
c0009890:	eb 30                	jmp    c00098c2 <intr0x21_handler+0x1d8>
c0009892:	c7 05 cc d5 00 c0 01 	movl   $0x1,0xc000d5cc
c0009899:	00 00 00 
c000989c:	eb 24                	jmp    c00098c2 <intr0x21_handler+0x1d8>
c000989e:	31 c0                	xor    %eax,%eax
c00098a0:	83 3d c0 d5 00 c0 00 	cmpl   $0x0,0xc000d5c0
c00098a7:	0f 94 c0             	sete   %al
c00098aa:	a3 c0 d5 00 c0       	mov    %eax,0xc000d5c0
c00098af:	eb 11                	jmp    c00098c2 <intr0x21_handler+0x1d8>
c00098b1:	52                   	push   %edx
c00098b2:	52                   	push   %edx
c00098b3:	68 2d d2 00 c0       	push   $0xc000d22d
c00098b8:	6a 04                	push   $0x4
c00098ba:	e8 b8 06 00 00       	call   c0009f77 <put_str>
c00098bf:	83 c4 10             	add    $0x10,%esp
c00098c2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00098c5:	c9                   	leave  
c00098c6:	c3                   	ret    
	...

c00098c8 <list_init>:
c00098c8:	55                   	push   %ebp
c00098c9:	89 e5                	mov    %esp,%ebp
c00098cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00098ce:	8d 50 08             	lea    0x8(%eax),%edx
c00098d1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00098d7:	89 50 04             	mov    %edx,0x4(%eax)
c00098da:	89 40 08             	mov    %eax,0x8(%eax)
c00098dd:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c00098e4:	5d                   	pop    %ebp
c00098e5:	c3                   	ret    

c00098e6 <list_in>:
c00098e6:	55                   	push   %ebp
c00098e7:	89 e5                	mov    %esp,%ebp
c00098e9:	56                   	push   %esi
c00098ea:	8b 75 08             	mov    0x8(%ebp),%esi
c00098ed:	53                   	push   %ebx
c00098ee:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00098f1:	e8 9f fc ff ff       	call   c0009595 <intr_disable>
c00098f6:	8b 13                	mov    (%ebx),%edx
c00098f8:	89 5e 04             	mov    %ebx,0x4(%esi)
c00098fb:	89 16                	mov    %edx,(%esi)
c00098fd:	8b 13                	mov    (%ebx),%edx
c00098ff:	89 33                	mov    %esi,(%ebx)
c0009901:	89 72 04             	mov    %esi,0x4(%edx)
c0009904:	89 45 08             	mov    %eax,0x8(%ebp)
c0009907:	5b                   	pop    %ebx
c0009908:	5e                   	pop    %esi
c0009909:	5d                   	pop    %ebp
c000990a:	e9 a8 fd ff ff       	jmp    c00096b7 <intr_set_status>

c000990f <list_push>:
c000990f:	55                   	push   %ebp
c0009910:	89 e5                	mov    %esp,%ebp
c0009912:	8b 55 08             	mov    0x8(%ebp),%edx
c0009915:	8b 45 0c             	mov    0xc(%ebp),%eax
c0009918:	8b 52 04             	mov    0x4(%edx),%edx
c000991b:	89 45 08             	mov    %eax,0x8(%ebp)
c000991e:	89 55 0c             	mov    %edx,0xc(%ebp)
c0009921:	5d                   	pop    %ebp
c0009922:	e9 bf ff ff ff       	jmp    c00098e6 <list_in>

c0009927 <list_append>:
c0009927:	55                   	push   %ebp
c0009928:	89 e5                	mov    %esp,%ebp
c000992a:	8b 55 08             	mov    0x8(%ebp),%edx
c000992d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0009930:	8b 52 08             	mov    0x8(%edx),%edx
c0009933:	89 45 08             	mov    %eax,0x8(%ebp)
c0009936:	89 55 0c             	mov    %edx,0xc(%ebp)
c0009939:	5d                   	pop    %ebp
c000993a:	e9 a7 ff ff ff       	jmp    c00098e6 <list_in>

c000993f <list_remove>:
c000993f:	55                   	push   %ebp
c0009940:	89 e5                	mov    %esp,%ebp
c0009942:	53                   	push   %ebx
c0009943:	50                   	push   %eax
c0009944:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0009947:	e8 49 fc ff ff       	call   c0009595 <intr_disable>
c000994c:	8b 13                	mov    (%ebx),%edx
c000994e:	85 d2                	test   %edx,%edx
c0009950:	74 1c                	je     c000996e <list_remove+0x2f>
c0009952:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0009955:	85 c9                	test   %ecx,%ecx
c0009957:	74 15                	je     c000996e <list_remove+0x2f>
c0009959:	89 4a 04             	mov    %ecx,0x4(%edx)
c000995c:	8b 4b 04             	mov    0x4(%ebx),%ecx
c000995f:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0009966:	89 11                	mov    %edx,(%ecx)
c0009968:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c000996e:	83 ec 0c             	sub    $0xc,%esp
c0009971:	50                   	push   %eax
c0009972:	e8 40 fd ff ff       	call   c00096b7 <intr_set_status>
c0009977:	89 d8                	mov    %ebx,%eax
c0009979:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000997c:	c9                   	leave  
c000997d:	c3                   	ret    

c000997e <list_pop>:
c000997e:	55                   	push   %ebp
c000997f:	89 e5                	mov    %esp,%ebp
c0009981:	8b 45 08             	mov    0x8(%ebp),%eax
c0009984:	8b 40 04             	mov    0x4(%eax),%eax
c0009987:	89 45 08             	mov    %eax,0x8(%ebp)
c000998a:	5d                   	pop    %ebp
c000998b:	e9 af ff ff ff       	jmp    c000993f <list_remove>

c0009990 <list_find>:
c0009990:	55                   	push   %ebp
c0009991:	89 e5                	mov    %esp,%ebp
c0009993:	8b 55 08             	mov    0x8(%ebp),%edx
c0009996:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0009999:	8b 42 04             	mov    0x4(%edx),%eax
c000999c:	83 c2 08             	add    $0x8,%edx
c000999f:	eb 07                	jmp    c00099a8 <list_find+0x18>
c00099a1:	39 c8                	cmp    %ecx,%eax
c00099a3:	74 0b                	je     c00099b0 <list_find+0x20>
c00099a5:	8b 40 04             	mov    0x4(%eax),%eax
c00099a8:	39 d0                	cmp    %edx,%eax
c00099aa:	75 f5                	jne    c00099a1 <list_find+0x11>
c00099ac:	31 c0                	xor    %eax,%eax
c00099ae:	eb 05                	jmp    c00099b5 <list_find+0x25>
c00099b0:	b8 01 00 00 00       	mov    $0x1,%eax
c00099b5:	5d                   	pop    %ebp
c00099b6:	c3                   	ret    

c00099b7 <list_traversal>:
c00099b7:	55                   	push   %ebp
c00099b8:	89 e5                	mov    %esp,%ebp
c00099ba:	57                   	push   %edi
c00099bb:	56                   	push   %esi
c00099bc:	53                   	push   %ebx
c00099bd:	83 ec 0c             	sub    $0xc,%esp
c00099c0:	8b 75 08             	mov    0x8(%ebp),%esi
c00099c3:	8b 7d 10             	mov    0x10(%ebp),%edi
c00099c6:	8b 5e 04             	mov    0x4(%esi),%ebx
c00099c9:	83 c6 08             	add    $0x8,%esi
c00099cc:	eb 11                	jmp    c00099df <list_traversal+0x28>
c00099ce:	52                   	push   %edx
c00099cf:	52                   	push   %edx
c00099d0:	57                   	push   %edi
c00099d1:	53                   	push   %ebx
c00099d2:	ff 55 0c             	call   *0xc(%ebp)
c00099d5:	83 c4 10             	add    $0x10,%esp
c00099d8:	85 c0                	test   %eax,%eax
c00099da:	75 09                	jne    c00099e5 <list_traversal+0x2e>
c00099dc:	8b 5b 04             	mov    0x4(%ebx),%ebx
c00099df:	39 f3                	cmp    %esi,%ebx
c00099e1:	75 eb                	jne    c00099ce <list_traversal+0x17>
c00099e3:	31 db                	xor    %ebx,%ebx
c00099e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00099e8:	89 d8                	mov    %ebx,%eax
c00099ea:	5b                   	pop    %ebx
c00099eb:	5e                   	pop    %esi
c00099ec:	5f                   	pop    %edi
c00099ed:	5d                   	pop    %ebp
c00099ee:	c3                   	ret    

c00099ef <list_len>:
c00099ef:	55                   	push   %ebp
c00099f0:	31 c0                	xor    %eax,%eax
c00099f2:	89 e5                	mov    %esp,%ebp
c00099f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00099f7:	8b 51 04             	mov    0x4(%ecx),%edx
c00099fa:	83 c1 08             	add    $0x8,%ecx
c00099fd:	eb 04                	jmp    c0009a03 <list_len+0x14>
c00099ff:	8b 52 04             	mov    0x4(%edx),%edx
c0009a02:	40                   	inc    %eax
c0009a03:	39 ca                	cmp    %ecx,%edx
c0009a05:	75 f8                	jne    c00099ff <list_len+0x10>
c0009a07:	5d                   	pop    %ebp
c0009a08:	c3                   	ret    

c0009a09 <list_empty>:
c0009a09:	55                   	push   %ebp
c0009a0a:	89 e5                	mov    %esp,%ebp
c0009a0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0009a0f:	5d                   	pop    %ebp
c0009a10:	8d 50 08             	lea    0x8(%eax),%edx
c0009a13:	39 50 04             	cmp    %edx,0x4(%eax)
c0009a16:	0f 94 c0             	sete   %al
c0009a19:	0f b6 c0             	movzbl %al,%eax
c0009a1c:	c3                   	ret    
c0009a1d:	00 00                	add    %al,(%eax)
	...

c0009a20 <init_memmam>:
c0009a20:	55                   	push   %ebp
c0009a21:	89 e5                	mov    %esp,%ebp
c0009a23:	8b 45 08             	mov    0x8(%ebp),%eax
c0009a26:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0009a2c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0009a33:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0009a3a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0009a41:	5d                   	pop    %ebp
c0009a42:	c3                   	ret    

c0009a43 <TotalFreeSize>:
c0009a43:	55                   	push   %ebp
c0009a44:	31 d2                	xor    %edx,%edx
c0009a46:	89 e5                	mov    %esp,%ebp
c0009a48:	31 c0                	xor    %eax,%eax
c0009a4a:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0009a4d:	53                   	push   %ebx
c0009a4e:	8b 19                	mov    (%ecx),%ebx
c0009a50:	eb 05                	jmp    c0009a57 <TotalFreeSize+0x14>
c0009a52:	03 44 d1 14          	add    0x14(%ecx,%edx,8),%eax
c0009a56:	42                   	inc    %edx
c0009a57:	39 da                	cmp    %ebx,%edx
c0009a59:	75 f7                	jne    c0009a52 <TotalFreeSize+0xf>
c0009a5b:	5b                   	pop    %ebx
c0009a5c:	5d                   	pop    %ebp
c0009a5d:	c3                   	ret    

c0009a5e <mem_alloc>:
c0009a5e:	55                   	push   %ebp
c0009a5f:	89 e5                	mov    %esp,%ebp
c0009a61:	57                   	push   %edi
c0009a62:	56                   	push   %esi
c0009a63:	53                   	push   %ebx
c0009a64:	51                   	push   %ecx
c0009a65:	8b 55 08             	mov    0x8(%ebp),%edx
c0009a68:	31 c9                	xor    %ecx,%ecx
c0009a6a:	8b 02                	mov    (%edx),%eax
c0009a6c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0009a6f:	eb 42                	jmp    c0009ab3 <mem_alloc+0x55>
c0009a71:	8b 74 ca 14          	mov    0x14(%edx,%ecx,8),%esi
c0009a75:	3b 75 0c             	cmp    0xc(%ebp),%esi
c0009a78:	72 38                	jb     c0009ab2 <mem_alloc+0x54>
c0009a7a:	8d 59 02             	lea    0x2(%ecx),%ebx
c0009a7d:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0009a80:	8b 04 da             	mov    (%edx,%ebx,8),%eax
c0009a83:	2b 75 0c             	sub    0xc(%ebp),%esi
c0009a86:	01 c7                	add    %eax,%edi
c0009a88:	85 f6                	test   %esi,%esi
c0009a8a:	89 3c da             	mov    %edi,(%edx,%ebx,8)
c0009a8d:	89 74 da 04          	mov    %esi,0x4(%edx,%ebx,8)
c0009a91:	75 27                	jne    c0009aba <mem_alloc+0x5c>
c0009a93:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0009a96:	4b                   	dec    %ebx
c0009a97:	89 1a                	mov    %ebx,(%edx)
c0009a99:	eb 11                	jmp    c0009aac <mem_alloc+0x4e>
c0009a9b:	41                   	inc    %ecx
c0009a9c:	8b 74 ca 10          	mov    0x10(%edx,%ecx,8),%esi
c0009aa0:	8b 7c ca 14          	mov    0x14(%edx,%ecx,8),%edi
c0009aa4:	89 74 ca 08          	mov    %esi,0x8(%edx,%ecx,8)
c0009aa8:	89 7c ca 0c          	mov    %edi,0xc(%edx,%ecx,8)
c0009aac:	39 d9                	cmp    %ebx,%ecx
c0009aae:	72 eb                	jb     c0009a9b <mem_alloc+0x3d>
c0009ab0:	eb 08                	jmp    c0009aba <mem_alloc+0x5c>
c0009ab2:	41                   	inc    %ecx
c0009ab3:	3b 4d f0             	cmp    -0x10(%ebp),%ecx
c0009ab6:	75 b9                	jne    c0009a71 <mem_alloc+0x13>
c0009ab8:	31 c0                	xor    %eax,%eax
c0009aba:	5a                   	pop    %edx
c0009abb:	5b                   	pop    %ebx
c0009abc:	5e                   	pop    %esi
c0009abd:	5f                   	pop    %edi
c0009abe:	5d                   	pop    %ebp
c0009abf:	c3                   	ret    

c0009ac0 <mem_alloc_page>:
c0009ac0:	55                   	push   %ebp
c0009ac1:	89 e5                	mov    %esp,%ebp
c0009ac3:	c1 65 0c 0c          	shll   $0xc,0xc(%ebp)
c0009ac7:	5d                   	pop    %ebp
c0009ac8:	e9 91 ff ff ff       	jmp    c0009a5e <mem_alloc>

c0009acd <mem_free>:
c0009acd:	55                   	push   %ebp
c0009ace:	31 c9                	xor    %ecx,%ecx
c0009ad0:	89 e5                	mov    %esp,%ebp
c0009ad2:	57                   	push   %edi
c0009ad3:	56                   	push   %esi
c0009ad4:	53                   	push   %ebx
c0009ad5:	83 ec 10             	sub    $0x10,%esp
c0009ad8:	8b 55 08             	mov    0x8(%ebp),%edx
c0009adb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0009ade:	8b 75 10             	mov    0x10(%ebp),%esi
c0009ae1:	8b 02                	mov    (%edx),%eax
c0009ae3:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0009ae6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0009ae9:	eb 07                	jmp    c0009af2 <mem_free+0x25>
c0009aeb:	39 5c ca 10          	cmp    %ebx,0x10(%edx,%ecx,8)
c0009aef:	77 06                	ja     c0009af7 <mem_free+0x2a>
c0009af1:	41                   	inc    %ecx
c0009af2:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0009af5:	75 f4                	jne    c0009aeb <mem_free+0x1e>
c0009af7:	85 c9                	test   %ecx,%ecx
c0009af9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0009afc:	74 60                	je     c0009b5e <mem_free+0x91>
c0009afe:	8d 79 01             	lea    0x1(%ecx),%edi
c0009b01:	8b 44 fa 04          	mov    0x4(%edx,%edi,8),%eax
c0009b05:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0009b08:	03 04 fa             	add    (%edx,%edi,8),%eax
c0009b0b:	39 d8                	cmp    %ebx,%eax
c0009b0d:	75 4f                	jne    c0009b5e <mem_free+0x91>
c0009b0f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0009b12:	01 f0                	add    %esi,%eax
c0009b14:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0009b17:	89 44 fa 04          	mov    %eax,0x4(%edx,%edi,8)
c0009b1b:	31 c0                	xor    %eax,%eax
c0009b1d:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0009b20:	0f 83 a9 00 00 00    	jae    c0009bcf <mem_free+0x102>
c0009b26:	01 de                	add    %ebx,%esi
c0009b28:	8d 59 02             	lea    0x2(%ecx),%ebx
c0009b2b:	39 34 da             	cmp    %esi,(%edx,%ebx,8)
c0009b2e:	0f 85 9b 00 00 00    	jne    c0009bcf <mem_free+0x102>
c0009b34:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0009b37:	03 44 da 04          	add    0x4(%edx,%ebx,8),%eax
c0009b3b:	89 44 fa 04          	mov    %eax,0x4(%edx,%edi,8)
c0009b3f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0009b42:	48                   	dec    %eax
c0009b43:	89 02                	mov    %eax,(%edx)
c0009b45:	eb 11                	jmp    c0009b58 <mem_free+0x8b>
c0009b47:	41                   	inc    %ecx
c0009b48:	8b 74 ca 10          	mov    0x10(%edx,%ecx,8),%esi
c0009b4c:	8b 7c ca 14          	mov    0x14(%edx,%ecx,8),%edi
c0009b50:	89 74 ca 08          	mov    %esi,0x8(%edx,%ecx,8)
c0009b54:	89 7c ca 0c          	mov    %edi,0xc(%edx,%ecx,8)
c0009b58:	39 c1                	cmp    %eax,%ecx
c0009b5a:	72 eb                	jb     c0009b47 <mem_free+0x7a>
c0009b5c:	eb 1d                	jmp    c0009b7b <mem_free+0xae>
c0009b5e:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0009b61:	73 1c                	jae    c0009b7f <mem_free+0xb2>
c0009b63:	8d 3c 33             	lea    (%ebx,%esi,1),%edi
c0009b66:	89 7d f0             	mov    %edi,-0x10(%ebp)
c0009b69:	8d 79 02             	lea    0x2(%ecx),%edi
c0009b6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0009b6f:	39 04 fa             	cmp    %eax,(%edx,%edi,8)
c0009b72:	75 0b                	jne    c0009b7f <mem_free+0xb2>
c0009b74:	01 74 fa 04          	add    %esi,0x4(%edx,%edi,8)
c0009b78:	89 1c fa             	mov    %ebx,(%edx,%edi,8)
c0009b7b:	31 c0                	xor    %eax,%eax
c0009b7d:	eb 50                	jmp    c0009bcf <mem_free+0x102>
c0009b7f:	81 7d ec 9f 0f 00 00 	cmpl   $0xf9f,-0x14(%ebp)
c0009b86:	76 15                	jbe    c0009b9d <mem_free+0xd0>
c0009b88:	eb 3a                	jmp    c0009bc4 <mem_free+0xf7>
c0009b8a:	8b 74 c2 08          	mov    0x8(%edx,%eax,8),%esi
c0009b8e:	8b 7c c2 0c          	mov    0xc(%edx,%eax,8),%edi
c0009b92:	89 74 c2 10          	mov    %esi,0x10(%edx,%eax,8)
c0009b96:	89 7c c2 14          	mov    %edi,0x14(%edx,%eax,8)
c0009b9a:	40                   	inc    %eax
c0009b9b:	eb 06                	jmp    c0009ba3 <mem_free+0xd6>
c0009b9d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0009ba0:	89 75 f0             	mov    %esi,-0x10(%ebp)
c0009ba3:	39 c8                	cmp    %ecx,%eax
c0009ba5:	7f e3                	jg     c0009b8a <mem_free+0xbd>
c0009ba7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0009baa:	8b 75 f0             	mov    -0x10(%ebp),%esi
c0009bad:	40                   	inc    %eax
c0009bae:	39 42 04             	cmp    %eax,0x4(%edx)
c0009bb1:	89 02                	mov    %eax,(%edx)
c0009bb3:	73 03                	jae    c0009bb8 <mem_free+0xeb>
c0009bb5:	89 42 04             	mov    %eax,0x4(%edx)
c0009bb8:	83 c1 02             	add    $0x2,%ecx
c0009bbb:	89 1c ca             	mov    %ebx,(%edx,%ecx,8)
c0009bbe:	89 74 ca 04          	mov    %esi,0x4(%edx,%ecx,8)
c0009bc2:	eb b7                	jmp    c0009b7b <mem_free+0xae>
c0009bc4:	ff 42 0c             	incl   0xc(%edx)
c0009bc7:	b8 01 00 00 00       	mov    $0x1,%eax
c0009bcc:	01 72 08             	add    %esi,0x8(%edx)
c0009bcf:	83 c4 10             	add    $0x10,%esp
c0009bd2:	5b                   	pop    %ebx
c0009bd3:	5e                   	pop    %esi
c0009bd4:	5f                   	pop    %edi
c0009bd5:	5d                   	pop    %ebp
c0009bd6:	c3                   	ret    

c0009bd7 <mem_free_page>:
c0009bd7:	55                   	push   %ebp
c0009bd8:	89 e5                	mov    %esp,%ebp
c0009bda:	c1 65 10 0c          	shll   $0xc,0x10(%ebp)
c0009bde:	5d                   	pop    %ebp
c0009bdf:	e9 e9 fe ff ff       	jmp    c0009acd <mem_free>

c0009be4 <init_memory>:
c0009be4:	55                   	push   %ebp
c0009be5:	89 e5                	mov    %esp,%ebp
c0009be7:	56                   	push   %esi
c0009be8:	53                   	push   %ebx
c0009be9:	8b 35 00 7c 00 00    	mov    0x7c00,%esi
c0009bef:	8d 9e 00 e0 5f ff    	lea    -0xa02000(%esi),%ebx
c0009bf5:	d1 eb                	shr    %ebx
c0009bf7:	53                   	push   %ebx
c0009bf8:	29 de                	sub    %ebx,%esi
c0009bfa:	68 00 20 a0 00       	push   $0xa02000
c0009bff:	81 c3 00 20 a0 00    	add    $0xa02000,%ebx
c0009c05:	68 78 50 02 c0       	push   $0xc0025078
c0009c0a:	e8 c8 ff ff ff       	call   c0009bd7 <mem_free_page>
c0009c0f:	56                   	push   %esi
c0009c10:	53                   	push   %ebx
c0009c11:	68 48 d9 00 c0       	push   $0xc000d948
c0009c16:	e8 bc ff ff ff       	call   c0009bd7 <mem_free_page>
c0009c1b:	68 ff ff ff 3d       	push   $0x3dffffff
c0009c20:	68 00 20 a0 c0       	push   $0xc0a02000
c0009c25:	68 68 d3 01 c0       	push   $0xc001d368
c0009c2a:	e8 a8 ff ff ff       	call   c0009bd7 <mem_free_page>
c0009c2f:	83 c4 24             	add    $0x24,%esp
c0009c32:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009c35:	5b                   	pop    %ebx
c0009c36:	5e                   	pop    %esi
c0009c37:	5d                   	pop    %ebp
c0009c38:	c3                   	ret    

c0009c39 <pde_ptr>:
c0009c39:	55                   	push   %ebp
c0009c3a:	89 e5                	mov    %esp,%ebp
c0009c3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0009c3f:	5d                   	pop    %ebp
c0009c40:	c1 e8 16             	shr    $0x16,%eax
c0009c43:	8d 04 85 00 f0 ff ff 	lea    -0x1000(,%eax,4),%eax
c0009c4a:	c3                   	ret    

c0009c4b <pte_ptr>:
c0009c4b:	55                   	push   %ebp
c0009c4c:	89 e5                	mov    %esp,%ebp
c0009c4e:	8b 45 08             	mov    0x8(%ebp),%eax
c0009c51:	5d                   	pop    %ebp
c0009c52:	89 c2                	mov    %eax,%edx
c0009c54:	25 00 f0 3f 00       	and    $0x3ff000,%eax
c0009c59:	81 e2 00 00 c0 ff    	and    $0xffc00000,%edx
c0009c5f:	c1 ea 0a             	shr    $0xa,%edx
c0009c62:	c1 e8 0a             	shr    $0xa,%eax
c0009c65:	8d 84 02 00 00 c0 ff 	lea    -0x400000(%edx,%eax,1),%eax
c0009c6c:	c3                   	ret    

c0009c6d <page_table_add>:
c0009c6d:	55                   	push   %ebp
c0009c6e:	89 e5                	mov    %esp,%ebp
c0009c70:	57                   	push   %edi
c0009c71:	56                   	push   %esi
c0009c72:	53                   	push   %ebx
c0009c73:	83 ec 0c             	sub    $0xc,%esp
c0009c76:	8b 45 08             	mov    0x8(%ebp),%eax
c0009c79:	8b 75 0c             	mov    0xc(%ebp),%esi
c0009c7c:	50                   	push   %eax
c0009c7d:	89 c7                	mov    %eax,%edi
c0009c7f:	e8 c7 ff ff ff       	call   c0009c4b <pte_ptr>
c0009c84:	c1 ef 16             	shr    $0x16,%edi
c0009c87:	f6 04 bd 00 f0 ff ff 	testb  $0x1,-0x1000(,%edi,4)
c0009c8e:	01 
c0009c8f:	5b                   	pop    %ebx
c0009c90:	89 c3                	mov    %eax,%ebx
c0009c92:	74 0c                	je     c0009ca0 <page_table_add+0x33>
c0009c94:	f6 00 01             	testb  $0x1,(%eax)
c0009c97:	75 3c                	jne    c0009cd5 <page_table_add+0x68>
c0009c99:	83 ce 07             	or     $0x7,%esi
c0009c9c:	89 30                	mov    %esi,(%eax)
c0009c9e:	eb 35                	jmp    c0009cd5 <page_table_add+0x68>
c0009ca0:	6a 01                	push   $0x1
c0009ca2:	83 ce 07             	or     $0x7,%esi
c0009ca5:	68 78 50 02 c0       	push   $0xc0025078
c0009caa:	e8 11 fe ff ff       	call   c0009ac0 <mem_alloc_page>
c0009caf:	83 ec 0c             	sub    $0xc,%esp
c0009cb2:	83 c8 07             	or     $0x7,%eax
c0009cb5:	89 04 bd 00 f0 ff ff 	mov    %eax,-0x1000(,%edi,4)
c0009cbc:	89 d8                	mov    %ebx,%eax
c0009cbe:	68 00 10 00 00       	push   $0x1000
c0009cc3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0009cc8:	6a 00                	push   $0x0
c0009cca:	50                   	push   %eax
c0009ccb:	e8 44 03 00 00       	call   c000a014 <memset>
c0009cd0:	83 c4 20             	add    $0x20,%esp
c0009cd3:	89 33                	mov    %esi,(%ebx)
c0009cd5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0009cd8:	5b                   	pop    %ebx
c0009cd9:	5e                   	pop    %esi
c0009cda:	5f                   	pop    %edi
c0009cdb:	5d                   	pop    %ebp
c0009cdc:	c3                   	ret    

c0009cdd <page_alloc>:
c0009cdd:	55                   	push   %ebp
c0009cde:	89 e5                	mov    %esp,%ebp
c0009ce0:	57                   	push   %edi
c0009ce1:	56                   	push   %esi
c0009ce2:	53                   	push   %ebx
c0009ce3:	83 ec 1c             	sub    $0x1c,%esp
c0009ce6:	8b 75 0c             	mov    0xc(%ebp),%esi
c0009ce9:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0009ced:	c7 45 e4 48 d9 00 c0 	movl   $0xc000d948,-0x1c(%ebp)
c0009cf4:	75 07                	jne    c0009cfd <page_alloc+0x20>
c0009cf6:	c7 45 e4 78 50 02 c0 	movl   $0xc0025078,-0x1c(%ebp)
c0009cfd:	56                   	push   %esi
c0009cfe:	ff 75 e4             	pushl  -0x1c(%ebp)
c0009d01:	e8 ba fd ff ff       	call   c0009ac0 <mem_alloc_page>
c0009d06:	59                   	pop    %ecx
c0009d07:	5f                   	pop    %edi
c0009d08:	85 c0                	test   %eax,%eax
c0009d0a:	89 c3                	mov    %eax,%ebx
c0009d0c:	89 c7                	mov    %eax,%edi
c0009d0e:	75 25                	jne    c0009d35 <page_alloc+0x58>
c0009d10:	eb 2b                	jmp    c0009d3d <page_alloc+0x60>
c0009d12:	6a 01                	push   $0x1
c0009d14:	ff 75 e4             	pushl  -0x1c(%ebp)
c0009d17:	e8 a4 fd ff ff       	call   c0009ac0 <mem_alloc_page>
c0009d1c:	59                   	pop    %ecx
c0009d1d:	5a                   	pop    %edx
c0009d1e:	85 c0                	test   %eax,%eax
c0009d20:	74 19                	je     c0009d3b <page_alloc+0x5e>
c0009d22:	52                   	push   %edx
c0009d23:	4e                   	dec    %esi
c0009d24:	52                   	push   %edx
c0009d25:	50                   	push   %eax
c0009d26:	57                   	push   %edi
c0009d27:	81 c7 00 10 00 00    	add    $0x1000,%edi
c0009d2d:	e8 3b ff ff ff       	call   c0009c6d <page_table_add>
c0009d32:	83 c4 10             	add    $0x10,%esp
c0009d35:	85 f6                	test   %esi,%esi
c0009d37:	75 d9                	jne    c0009d12 <page_alloc+0x35>
c0009d39:	eb 02                	jmp    c0009d3d <page_alloc+0x60>
c0009d3b:	31 db                	xor    %ebx,%ebx
c0009d3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0009d40:	89 d8                	mov    %ebx,%eax
c0009d42:	5b                   	pop    %ebx
c0009d43:	5e                   	pop    %esi
c0009d44:	5f                   	pop    %edi
c0009d45:	5d                   	pop    %ebp
c0009d46:	c3                   	ret    

c0009d47 <get_kernel_page>:
c0009d47:	55                   	push   %ebp
c0009d48:	89 e5                	mov    %esp,%ebp
c0009d4a:	56                   	push   %esi
c0009d4b:	53                   	push   %ebx
c0009d4c:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0009d4f:	56                   	push   %esi
c0009d50:	56                   	push   %esi
c0009d51:	53                   	push   %ebx
c0009d52:	6a 01                	push   $0x1
c0009d54:	e8 84 ff ff ff       	call   c0009cdd <page_alloc>
c0009d59:	83 c4 10             	add    $0x10,%esp
c0009d5c:	85 c0                	test   %eax,%eax
c0009d5e:	89 c6                	mov    %eax,%esi
c0009d60:	74 10                	je     c0009d72 <get_kernel_page+0x2b>
c0009d62:	c1 e3 0c             	shl    $0xc,%ebx
c0009d65:	51                   	push   %ecx
c0009d66:	53                   	push   %ebx
c0009d67:	6a 00                	push   $0x0
c0009d69:	50                   	push   %eax
c0009d6a:	e8 a5 02 00 00       	call   c000a014 <memset>
c0009d6f:	83 c4 10             	add    $0x10,%esp
c0009d72:	50                   	push   %eax
c0009d73:	50                   	push   %eax
c0009d74:	68 00 d3 00 c0       	push   $0xc000d300
c0009d79:	6a 07                	push   $0x7
c0009d7b:	e8 f7 01 00 00       	call   c0009f77 <put_str>
c0009d80:	83 c4 0c             	add    $0xc,%esp
c0009d83:	6a 10                	push   $0x10
c0009d85:	56                   	push   %esi
c0009d86:	6a 07                	push   $0x7
c0009d88:	e8 12 02 00 00       	call   c0009f9f <put_uint>
c0009d8d:	58                   	pop    %eax
c0009d8e:	5a                   	pop    %edx
c0009d8f:	6a 0a                	push   $0xa
c0009d91:	6a 07                	push   $0x7
c0009d93:	e8 3e 01 00 00       	call   c0009ed6 <put_char>
c0009d98:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009d9b:	89 f0                	mov    %esi,%eax
c0009d9d:	5b                   	pop    %ebx
c0009d9e:	5e                   	pop    %esi
c0009d9f:	5d                   	pop    %ebp
c0009da0:	c3                   	ret    
c0009da1:	00 00                	add    %al,(%eax)
	...

c0009da4 <itoa>:
c0009da4:	55                   	push   %ebp
c0009da5:	89 e5                	mov    %esp,%ebp
c0009da7:	57                   	push   %edi
c0009da8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0009dab:	56                   	push   %esi
c0009dac:	8b 75 08             	mov    0x8(%ebp),%esi
c0009daf:	53                   	push   %ebx
c0009db0:	8b 7d 10             	mov    0x10(%ebp),%edi
c0009db3:	31 db                	xor    %ebx,%ebx
c0009db5:	89 f0                	mov    %esi,%eax
c0009db7:	99                   	cltd   
c0009db8:	89 d0                	mov    %edx,%eax
c0009dba:	31 f0                	xor    %esi,%eax
c0009dbc:	29 d0                	sub    %edx,%eax
c0009dbe:	eb 02                	jmp    c0009dc2 <itoa+0x1e>
c0009dc0:	89 d3                	mov    %edx,%ebx
c0009dc2:	99                   	cltd   
c0009dc3:	f7 ff                	idiv   %edi
c0009dc5:	8a 92 98 d3 00 c0    	mov    -0x3fff2c68(%edx),%dl
c0009dcb:	85 c0                	test   %eax,%eax
c0009dcd:	88 14 19             	mov    %dl,(%ecx,%ebx,1)
c0009dd0:	8d 53 01             	lea    0x1(%ebx),%edx
c0009dd3:	7f eb                	jg     c0009dc0 <itoa+0x1c>
c0009dd5:	85 f6                	test   %esi,%esi
c0009dd7:	79 07                	jns    c0009de0 <itoa+0x3c>
c0009dd9:	c6 04 11 2d          	movb   $0x2d,(%ecx,%edx,1)
c0009ddd:	8d 53 02             	lea    0x2(%ebx),%edx
c0009de0:	c6 04 11 00          	movb   $0x0,(%ecx,%edx,1)
c0009de4:	89 c8                	mov    %ecx,%eax
c0009de6:	eb 01                	jmp    c0009de9 <itoa+0x45>
c0009de8:	40                   	inc    %eax
c0009de9:	80 38 00             	cmpb   $0x0,(%eax)
c0009dec:	75 fa                	jne    c0009de8 <itoa+0x44>
c0009dee:	eb 09                	jmp    c0009df9 <itoa+0x55>
c0009df0:	8a 11                	mov    (%ecx),%dl
c0009df2:	8a 18                	mov    (%eax),%bl
c0009df4:	88 19                	mov    %bl,(%ecx)
c0009df6:	41                   	inc    %ecx
c0009df7:	88 10                	mov    %dl,(%eax)
c0009df9:	48                   	dec    %eax
c0009dfa:	39 c8                	cmp    %ecx,%eax
c0009dfc:	77 f2                	ja     c0009df0 <itoa+0x4c>
c0009dfe:	5b                   	pop    %ebx
c0009dff:	5e                   	pop    %esi
c0009e00:	5f                   	pop    %edi
c0009e01:	5d                   	pop    %ebp
c0009e02:	c3                   	ret    

c0009e03 <utoa>:
c0009e03:	55                   	push   %ebp
c0009e04:	89 e5                	mov    %esp,%ebp
c0009e06:	8b 45 08             	mov    0x8(%ebp),%eax
c0009e09:	56                   	push   %esi
c0009e0a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0009e0d:	8b 75 10             	mov    0x10(%ebp),%esi
c0009e10:	53                   	push   %ebx
c0009e11:	31 db                	xor    %ebx,%ebx
c0009e13:	31 d2                	xor    %edx,%edx
c0009e15:	f7 f6                	div    %esi
c0009e17:	8a 92 c0 d3 00 c0    	mov    -0x3fff2c40(%edx),%dl
c0009e1d:	88 14 19             	mov    %dl,(%ecx,%ebx,1)
c0009e20:	43                   	inc    %ebx
c0009e21:	85 c0                	test   %eax,%eax
c0009e23:	75 ee                	jne    c0009e13 <utoa+0x10>
c0009e25:	c6 04 19 00          	movb   $0x0,(%ecx,%ebx,1)
c0009e29:	89 c8                	mov    %ecx,%eax
c0009e2b:	eb 01                	jmp    c0009e2e <utoa+0x2b>
c0009e2d:	40                   	inc    %eax
c0009e2e:	80 38 00             	cmpb   $0x0,(%eax)
c0009e31:	75 fa                	jne    c0009e2d <utoa+0x2a>
c0009e33:	eb 09                	jmp    c0009e3e <utoa+0x3b>
c0009e35:	8a 11                	mov    (%ecx),%dl
c0009e37:	8a 18                	mov    (%eax),%bl
c0009e39:	88 19                	mov    %bl,(%ecx)
c0009e3b:	41                   	inc    %ecx
c0009e3c:	88 10                	mov    %dl,(%eax)
c0009e3e:	48                   	dec    %eax
c0009e3f:	39 c8                	cmp    %ecx,%eax
c0009e41:	77 f2                	ja     c0009e35 <utoa+0x32>
c0009e43:	5b                   	pop    %ebx
c0009e44:	5e                   	pop    %esi
c0009e45:	5d                   	pop    %ebp
c0009e46:	c3                   	ret    

c0009e47 <roll_screen>:
c0009e47:	55                   	push   %ebp
c0009e48:	89 e5                	mov    %esp,%ebp
c0009e4a:	56                   	push   %esi
c0009e4b:	53                   	push   %ebx
c0009e4c:	83 3d 0c 7c 00 00 00 	cmpl   $0x0,0x7c0c
c0009e53:	75 28                	jne    c0009e7d <roll_screen+0x36>
c0009e55:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0009e5a:	8b 15 10 7c 00 00    	mov    0x7c10,%edx
c0009e60:	8b 0d 1c 7c 00 00    	mov    0x7c1c,%ecx
c0009e66:	8d 1c 42             	lea    (%edx,%eax,2),%ebx
c0009e69:	0f af c8             	imul   %eax,%ecx
c0009e6c:	31 c0                	xor    %eax,%eax
c0009e6e:	eb 09                	jmp    c0009e79 <roll_screen+0x32>
c0009e70:	66 8b 34 43          	mov    (%ebx,%eax,2),%si
c0009e74:	66 89 34 42          	mov    %si,(%edx,%eax,2)
c0009e78:	40                   	inc    %eax
c0009e79:	39 c8                	cmp    %ecx,%eax
c0009e7b:	75 f3                	jne    c0009e70 <roll_screen+0x29>
c0009e7d:	5b                   	pop    %ebx
c0009e7e:	5e                   	pop    %esi
c0009e7f:	5d                   	pop    %ebp
c0009e80:	c3                   	ret    

c0009e81 <get_cursor>:
c0009e81:	55                   	push   %ebp
c0009e82:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0009e87:	89 e5                	mov    %esp,%ebp
c0009e89:	b8 0e 00 00 00       	mov    $0xe,%eax
c0009e8e:	53                   	push   %ebx
c0009e8f:	ee                   	out    %al,(%dx)
c0009e90:	bb d5 03 00 00       	mov    $0x3d5,%ebx
c0009e95:	89 da                	mov    %ebx,%edx
c0009e97:	ec                   	in     (%dx),%al
c0009e98:	89 c1                	mov    %eax,%ecx
c0009e9a:	b2 d4                	mov    $0xd4,%dl
c0009e9c:	b8 0f 00 00 00       	mov    $0xf,%eax
c0009ea1:	ee                   	out    %al,(%dx)
c0009ea2:	89 da                	mov    %ebx,%edx
c0009ea4:	ec                   	in     (%dx),%al
c0009ea5:	c1 e1 08             	shl    $0x8,%ecx
c0009ea8:	09 c1                	or     %eax,%ecx
c0009eaa:	89 c8                	mov    %ecx,%eax
c0009eac:	5b                   	pop    %ebx
c0009ead:	5d                   	pop    %ebp
c0009eae:	c3                   	ret    

c0009eaf <set_cursor>:
c0009eaf:	55                   	push   %ebp
c0009eb0:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0009eb5:	89 e5                	mov    %esp,%ebp
c0009eb7:	b8 0e 00 00 00       	mov    $0xe,%eax
c0009ebc:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0009ebf:	ee                   	out    %al,(%dx)
c0009ec0:	0f b6 c5             	movzbl %ch,%eax
c0009ec3:	b2 d5                	mov    $0xd5,%dl
c0009ec5:	ee                   	out    %al,(%dx)
c0009ec6:	b8 0f 00 00 00       	mov    $0xf,%eax
c0009ecb:	b2 d4                	mov    $0xd4,%dl
c0009ecd:	ee                   	out    %al,(%dx)
c0009ece:	0f b6 c1             	movzbl %cl,%eax
c0009ed1:	b2 d5                	mov    $0xd5,%dl
c0009ed3:	ee                   	out    %al,(%dx)
c0009ed4:	5d                   	pop    %ebp
c0009ed5:	c3                   	ret    

c0009ed6 <put_char>:
c0009ed6:	55                   	push   %ebp
c0009ed7:	89 e5                	mov    %esp,%ebp
c0009ed9:	53                   	push   %ebx
c0009eda:	51                   	push   %ecx
c0009edb:	8a 4d 08             	mov    0x8(%ebp),%cl
c0009ede:	83 3d 0c 7c 00 00 00 	cmpl   $0x0,0x7c0c
c0009ee5:	8a 5d 0c             	mov    0xc(%ebp),%bl
c0009ee8:	0f 85 85 00 00 00    	jne    c0009f73 <put_char+0x9d>
c0009eee:	88 4d f8             	mov    %cl,-0x8(%ebp)
c0009ef1:	e8 8b ff ff ff       	call   c0009e81 <get_cursor>
c0009ef6:	80 fb 0d             	cmp    $0xd,%bl
c0009ef9:	8a 4d f8             	mov    -0x8(%ebp),%cl
c0009efc:	77 31                	ja     c0009f2f <put_char+0x59>
c0009efe:	0f b6 d3             	movzbl %bl,%edx
c0009f01:	ff 24 95 38 d3 00 c0 	jmp    *-0x3fff2cc8(,%edx,4)
c0009f08:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0009f0b:	a1 10 7c 00 00       	mov    0x7c10,%eax
c0009f10:	c6 04 48 20          	movb   $0x20,(%eax,%ecx,2)
c0009f14:	eb 2f                	jmp    c0009f45 <put_char+0x6f>
c0009f16:	8b 1d 18 7c 00 00    	mov    0x7c18,%ebx
c0009f1c:	31 d2                	xor    %edx,%edx
c0009f1e:	8d 0c 18             	lea    (%eax,%ebx,1),%ecx
c0009f21:	f7 f3                	div    %ebx
c0009f23:	29 d1                	sub    %edx,%ecx
c0009f25:	eb 1e                	jmp    c0009f45 <put_char+0x6f>
c0009f27:	8d 48 04             	lea    0x4(%eax),%ecx
c0009f2a:	83 e1 fc             	and    $0xfffffffc,%ecx
c0009f2d:	eb 16                	jmp    c0009f45 <put_char+0x6f>
c0009f2f:	8b 15 10 7c 00 00    	mov    0x7c10,%edx
c0009f35:	88 1c 42             	mov    %bl,(%edx,%eax,2)
c0009f38:	8b 15 10 7c 00 00    	mov    0x7c10,%edx
c0009f3e:	88 4c 42 01          	mov    %cl,0x1(%edx,%eax,2)
c0009f42:	8d 48 01             	lea    0x1(%eax),%ecx
c0009f45:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0009f4a:	0f af 05 18 7c 00 00 	imul   0x7c18,%eax
c0009f51:	39 c1                	cmp    %eax,%ecx
c0009f53:	72 13                	jb     c0009f68 <put_char+0x92>
c0009f55:	e8 ed fe ff ff       	call   c0009e47 <roll_screen>
c0009f5a:	8b 0d 1c 7c 00 00    	mov    0x7c1c,%ecx
c0009f60:	49                   	dec    %ecx
c0009f61:	0f af 0d 18 7c 00 00 	imul   0x7c18,%ecx
c0009f68:	89 4d 08             	mov    %ecx,0x8(%ebp)
c0009f6b:	5a                   	pop    %edx
c0009f6c:	5b                   	pop    %ebx
c0009f6d:	5d                   	pop    %ebp
c0009f6e:	e9 3c ff ff ff       	jmp    c0009eaf <set_cursor>
c0009f73:	58                   	pop    %eax
c0009f74:	5b                   	pop    %ebx
c0009f75:	5d                   	pop    %ebp
c0009f76:	c3                   	ret    

c0009f77 <put_str>:
c0009f77:	55                   	push   %ebp
c0009f78:	89 e5                	mov    %esp,%ebp
c0009f7a:	56                   	push   %esi
c0009f7b:	0f b6 75 08          	movzbl 0x8(%ebp),%esi
c0009f7f:	53                   	push   %ebx
c0009f80:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0009f83:	eb 0d                	jmp    c0009f92 <put_str+0x1b>
c0009f85:	0f b6 c0             	movzbl %al,%eax
c0009f88:	43                   	inc    %ebx
c0009f89:	50                   	push   %eax
c0009f8a:	56                   	push   %esi
c0009f8b:	e8 46 ff ff ff       	call   c0009ed6 <put_char>
c0009f90:	58                   	pop    %eax
c0009f91:	5a                   	pop    %edx
c0009f92:	8a 03                	mov    (%ebx),%al
c0009f94:	84 c0                	test   %al,%al
c0009f96:	75 ed                	jne    c0009f85 <put_str+0xe>
c0009f98:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009f9b:	5b                   	pop    %ebx
c0009f9c:	5e                   	pop    %esi
c0009f9d:	5d                   	pop    %ebp
c0009f9e:	c3                   	ret    

c0009f9f <put_uint>:
c0009f9f:	55                   	push   %ebp
c0009fa0:	31 c0                	xor    %eax,%eax
c0009fa2:	89 e5                	mov    %esp,%ebp
c0009fa4:	b9 42 00 00 00       	mov    $0x42,%ecx
c0009fa9:	57                   	push   %edi
c0009faa:	53                   	push   %ebx
c0009fab:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c0009fae:	83 ec 50             	sub    $0x50,%esp
c0009fb1:	8a 5d 08             	mov    0x8(%ebp),%bl
c0009fb4:	f3 aa                	rep stos %al,%es:(%edi)
c0009fb6:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c0009fb9:	ff 75 10             	pushl  0x10(%ebp)
c0009fbc:	0f b6 db             	movzbl %bl,%ebx
c0009fbf:	57                   	push   %edi
c0009fc0:	ff 75 0c             	pushl  0xc(%ebp)
c0009fc3:	e8 3b fe ff ff       	call   c0009e03 <utoa>
c0009fc8:	57                   	push   %edi
c0009fc9:	53                   	push   %ebx
c0009fca:	e8 a8 ff ff ff       	call   c0009f77 <put_str>
c0009fcf:	83 c4 14             	add    $0x14,%esp
c0009fd2:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009fd5:	5b                   	pop    %ebx
c0009fd6:	5f                   	pop    %edi
c0009fd7:	5d                   	pop    %ebp
c0009fd8:	c3                   	ret    

c0009fd9 <put_int>:
c0009fd9:	55                   	push   %ebp
c0009fda:	31 c0                	xor    %eax,%eax
c0009fdc:	89 e5                	mov    %esp,%ebp
c0009fde:	b9 42 00 00 00       	mov    $0x42,%ecx
c0009fe3:	57                   	push   %edi
c0009fe4:	53                   	push   %ebx
c0009fe5:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c0009fe8:	83 ec 50             	sub    $0x50,%esp
c0009feb:	8a 5d 08             	mov    0x8(%ebp),%bl
c0009fee:	f3 aa                	rep stos %al,%es:(%edi)
c0009ff0:	8d 7d b6             	lea    -0x4a(%ebp),%edi
c0009ff3:	ff 75 10             	pushl  0x10(%ebp)
c0009ff6:	0f b6 db             	movzbl %bl,%ebx
c0009ff9:	57                   	push   %edi
c0009ffa:	ff 75 0c             	pushl  0xc(%ebp)
c0009ffd:	e8 a2 fd ff ff       	call   c0009da4 <itoa>
c000a002:	57                   	push   %edi
c000a003:	53                   	push   %ebx
c000a004:	e8 6e ff ff ff       	call   c0009f77 <put_str>
c000a009:	83 c4 14             	add    $0x14,%esp
c000a00c:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a00f:	5b                   	pop    %ebx
c000a010:	5f                   	pop    %edi
c000a011:	5d                   	pop    %ebp
c000a012:	c3                   	ret    
	...

c000a014 <memset>:
c000a014:	55                   	push   %ebp
c000a015:	89 e5                	mov    %esp,%ebp
c000a017:	56                   	push   %esi
c000a018:	53                   	push   %ebx
c000a019:	83 ec 10             	sub    $0x10,%esp
c000a01c:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a01f:	8b 75 10             	mov    0x10(%ebp),%esi
c000a022:	8a 55 0c             	mov    0xc(%ebp),%dl
c000a025:	85 db                	test   %ebx,%ebx
c000a027:	75 1f                	jne    c000a048 <memset+0x34>
c000a029:	68 e8 d3 00 c0       	push   $0xc000d3e8
c000a02e:	68 68 d4 00 c0       	push   $0xc000d468
c000a033:	6a 0f                	push   $0xf
c000a035:	68 f6 d3 00 c0       	push   $0xc000d3f6
c000a03a:	88 55 f4             	mov    %dl,-0xc(%ebp)
c000a03d:	e8 f2 e4 ff ff       	call   c0008534 <panic_spin>
c000a042:	8a 55 f4             	mov    -0xc(%ebp),%dl
c000a045:	83 c4 10             	add    $0x10,%esp
c000a048:	31 c0                	xor    %eax,%eax
c000a04a:	eb 04                	jmp    c000a050 <memset+0x3c>
c000a04c:	88 14 03             	mov    %dl,(%ebx,%eax,1)
c000a04f:	40                   	inc    %eax
c000a050:	39 f0                	cmp    %esi,%eax
c000a052:	75 f8                	jne    c000a04c <memset+0x38>
c000a054:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a057:	5b                   	pop    %ebx
c000a058:	5e                   	pop    %esi
c000a059:	5d                   	pop    %ebp
c000a05a:	c3                   	ret    

c000a05b <memcpy>:
c000a05b:	55                   	push   %ebp
c000a05c:	89 e5                	mov    %esp,%ebp
c000a05e:	57                   	push   %edi
c000a05f:	56                   	push   %esi
c000a060:	53                   	push   %ebx
c000a061:	83 ec 0c             	sub    $0xc,%esp
c000a064:	8b 75 0c             	mov    0xc(%ebp),%esi
c000a067:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a06a:	8b 7d 10             	mov    0x10(%ebp),%edi
c000a06d:	85 f6                	test   %esi,%esi
c000a06f:	74 04                	je     c000a075 <memcpy+0x1a>
c000a071:	85 db                	test   %ebx,%ebx
c000a073:	75 19                	jne    c000a08e <memcpy+0x33>
c000a075:	68 03 d4 00 c0       	push   $0xc000d403
c000a07a:	68 70 d4 00 c0       	push   $0xc000d470
c000a07f:	6a 22                	push   $0x22
c000a081:	68 f6 d3 00 c0       	push   $0xc000d3f6
c000a086:	e8 a9 e4 ff ff       	call   c0008534 <panic_spin>
c000a08b:	83 c4 10             	add    $0x10,%esp
c000a08e:	31 c0                	xor    %eax,%eax
c000a090:	eb 07                	jmp    c000a099 <memcpy+0x3e>
c000a092:	8a 14 06             	mov    (%esi,%eax,1),%dl
c000a095:	88 14 03             	mov    %dl,(%ebx,%eax,1)
c000a098:	40                   	inc    %eax
c000a099:	39 f8                	cmp    %edi,%eax
c000a09b:	75 f5                	jne    c000a092 <memcpy+0x37>
c000a09d:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000a0a0:	5b                   	pop    %ebx
c000a0a1:	5e                   	pop    %esi
c000a0a2:	5f                   	pop    %edi
c000a0a3:	5d                   	pop    %ebp
c000a0a4:	c3                   	ret    

c000a0a5 <memcmp>:
c000a0a5:	55                   	push   %ebp
c000a0a6:	89 e5                	mov    %esp,%ebp
c000a0a8:	56                   	push   %esi
c000a0a9:	8b 75 08             	mov    0x8(%ebp),%esi
c000a0ac:	53                   	push   %ebx
c000a0ad:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c000a0b0:	85 db                	test   %ebx,%ebx
c000a0b2:	74 04                	je     c000a0b8 <memcmp+0x13>
c000a0b4:	85 f6                	test   %esi,%esi
c000a0b6:	75 19                	jne    c000a0d1 <memcmp+0x2c>
c000a0b8:	68 22 d4 00 c0       	push   $0xc000d422
c000a0bd:	68 78 d4 00 c0       	push   $0xc000d478
c000a0c2:	6a 3b                	push   $0x3b
c000a0c4:	68 f6 d3 00 c0       	push   $0xc000d3f6
c000a0c9:	e8 66 e4 ff ff       	call   c0008534 <panic_spin>
c000a0ce:	83 c4 10             	add    $0x10,%esp
c000a0d1:	8a 13                	mov    (%ebx),%dl
c000a0d3:	83 c8 ff             	or     $0xffffffff,%eax
c000a0d6:	38 16                	cmp    %dl,(%esi)
c000a0d8:	72 06                	jb     c000a0e0 <memcmp+0x3b>
c000a0da:	0f 97 c0             	seta   %al
c000a0dd:	0f b6 c0             	movzbl %al,%eax
c000a0e0:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a0e3:	5b                   	pop    %ebx
c000a0e4:	5e                   	pop    %esi
c000a0e5:	5d                   	pop    %ebp
c000a0e6:	c3                   	ret    

c000a0e7 <strcpy>:
c000a0e7:	55                   	push   %ebp
c000a0e8:	31 d2                	xor    %edx,%edx
c000a0ea:	89 e5                	mov    %esp,%ebp
c000a0ec:	8b 45 08             	mov    0x8(%ebp),%eax
c000a0ef:	53                   	push   %ebx
c000a0f0:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c000a0f3:	8a 0c 13             	mov    (%ebx,%edx,1),%cl
c000a0f6:	88 0c 10             	mov    %cl,(%eax,%edx,1)
c000a0f9:	42                   	inc    %edx
c000a0fa:	84 c9                	test   %cl,%cl
c000a0fc:	75 f5                	jne    c000a0f3 <strcpy+0xc>
c000a0fe:	5b                   	pop    %ebx
c000a0ff:	5d                   	pop    %ebp
c000a100:	c3                   	ret    
	...

c000a110 <switch_to>:
c000a110:	56                   	push   %esi
c000a111:	57                   	push   %edi
c000a112:	53                   	push   %ebx
c000a113:	55                   	push   %ebp
c000a114:	8b 44 24 14          	mov    0x14(%esp),%eax
c000a118:	89 20                	mov    %esp,(%eax)
c000a11a:	8b 44 24 18          	mov    0x18(%esp),%eax
c000a11e:	8b 20                	mov    (%eax),%esp
c000a120:	5d                   	pop    %ebp
c000a121:	5b                   	pop    %ebx
c000a122:	5f                   	pop    %edi
c000a123:	5e                   	pop    %esi
c000a124:	c3                   	ret    
c000a125:	00 00                	add    %al,(%eax)
	...

c000a128 <kernel_thread>:
c000a128:	55                   	push   %ebp
c000a129:	89 e5                	mov    %esp,%ebp
c000a12b:	56                   	push   %esi
c000a12c:	8b 75 0c             	mov    0xc(%ebp),%esi
c000a12f:	53                   	push   %ebx
c000a130:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a133:	e8 68 f5 ff ff       	call   c00096a0 <intr_enable>
c000a138:	89 75 08             	mov    %esi,0x8(%ebp)
c000a13b:	89 d8                	mov    %ebx,%eax
c000a13d:	5b                   	pop    %ebx
c000a13e:	5e                   	pop    %esi
c000a13f:	5d                   	pop    %ebp
c000a140:	ff e0                	jmp    *%eax

c000a142 <thread_init>:
c000a142:	55                   	push   %ebp
c000a143:	89 e5                	mov    %esp,%ebp
c000a145:	53                   	push   %ebx
c000a146:	83 ec 18             	sub    $0x18,%esp
c000a149:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a14c:	8a 55 10             	mov    0x10(%ebp),%dl
c000a14f:	6a 28                	push   $0x28
c000a151:	6a 00                	push   $0x0
c000a153:	53                   	push   %ebx
c000a154:	88 55 f4             	mov    %dl,-0xc(%ebp)
c000a157:	e8 b8 fe ff ff       	call   c000a014 <memset>
c000a15c:	58                   	pop    %eax
c000a15d:	5a                   	pop    %edx
c000a15e:	ff 75 0c             	pushl  0xc(%ebp)
c000a161:	8d 43 08             	lea    0x8(%ebx),%eax
c000a164:	50                   	push   %eax
c000a165:	e8 7d ff ff ff       	call   c000a0e7 <strcpy>
c000a16a:	83 c4 10             	add    $0x10,%esp
c000a16d:	8a 55 f4             	mov    -0xc(%ebp),%dl
c000a170:	3b 1d a4 cd 02 c0    	cmp    0xc002cda4,%ebx
c000a176:	75 09                	jne    c000a181 <thread_init+0x3f>
c000a178:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c000a17f:	eb 07                	jmp    c000a188 <thread_init+0x46>
c000a181:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
c000a188:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c000a18e:	88 53 18             	mov    %dl,0x18(%ebx)
c000a191:	89 03                	mov    %eax,(%ebx)
c000a193:	c7 43 24 78 56 34 12 	movl   $0x12345678,0x24(%ebx)
c000a19a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000a19d:	c9                   	leave  
c000a19e:	c3                   	ret    

c000a19f <running_thread>:
c000a19f:	55                   	push   %ebp
c000a1a0:	89 e5                	mov    %esp,%ebp
c000a1a2:	89 e0                	mov    %esp,%eax
c000a1a4:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000a1a9:	5d                   	pop    %ebp
c000a1aa:	c3                   	ret    

c000a1ab <init_thread>:
c000a1ab:	55                   	push   %ebp
c000a1ac:	89 e5                	mov    %esp,%ebp
c000a1ae:	83 ec 14             	sub    $0x14,%esp
c000a1b1:	6a 01                	push   $0x1
c000a1b3:	e8 8f fb ff ff       	call   c0009d47 <get_kernel_page>
c000a1b8:	68 00 04 00 00       	push   $0x400
c000a1bd:	6a 20                	push   $0x20
c000a1bf:	50                   	push   %eax
c000a1c0:	68 a8 cd 02 c0       	push   $0xc002cda8
c000a1c5:	e8 4e e4 ff ff       	call   c0008618 <init_fifo>
c000a1ca:	83 c4 14             	add    $0x14,%esp
c000a1cd:	6a 01                	push   $0x1
c000a1cf:	e8 73 fb ff ff       	call   c0009d47 <get_kernel_page>
c000a1d4:	68 00 04 00 00       	push   $0x400
c000a1d9:	6a 20                	push   $0x20
c000a1db:	50                   	push   %eax
c000a1dc:	68 88 cd 02 c0       	push   $0xc002cd88
c000a1e1:	e8 32 e4 ff ff       	call   c0008618 <init_fifo>
c000a1e6:	83 c4 20             	add    $0x20,%esp
c000a1e9:	e8 b1 ff ff ff       	call   c000a19f <running_thread>
c000a1ee:	51                   	push   %ecx
c000a1ef:	6a 1f                	push   $0x1f
c000a1f1:	68 80 d4 00 c0       	push   $0xc000d480
c000a1f6:	50                   	push   %eax
c000a1f7:	a3 a4 cd 02 c0       	mov    %eax,0xc002cda4
c000a1fc:	e8 41 ff ff ff       	call   c000a142 <thread_init>
c000a201:	58                   	pop    %eax
c000a202:	5a                   	pop    %edx
c000a203:	68 a4 cd 02 c0       	push   $0xc002cda4
c000a208:	68 88 cd 02 c0       	push   $0xc002cd88
c000a20d:	e8 2b e4 ff ff       	call   c000863d <fifo_put>
c000a212:	83 c4 10             	add    $0x10,%esp
c000a215:	c9                   	leave  
c000a216:	c3                   	ret    

c000a217 <thread_create>:
c000a217:	55                   	push   %ebp
c000a218:	89 e5                	mov    %esp,%ebp
c000a21a:	8b 55 08             	mov    0x8(%ebp),%edx
c000a21d:	8b 02                	mov    (%edx),%eax
c000a21f:	8d 88 50 fe ff ff    	lea    -0x1b0(%eax),%ecx
c000a225:	89 0a                	mov    %ecx,(%edx)
c000a227:	8b 55 0c             	mov    0xc(%ebp),%edx
c000a22a:	c7 80 60 fe ff ff 28 	movl   $0xc000a128,-0x1a0(%eax)
c000a231:	a1 00 c0 
c000a234:	c7 80 50 fe ff ff 00 	movl   $0x0,-0x1b0(%eax)
c000a23b:	00 00 00 
c000a23e:	c7 80 54 fe ff ff 00 	movl   $0x0,-0x1ac(%eax)
c000a245:	00 00 00 
c000a248:	89 90 68 fe ff ff    	mov    %edx,-0x198(%eax)
c000a24e:	8b 55 10             	mov    0x10(%ebp),%edx
c000a251:	c7 80 5c fe ff ff 00 	movl   $0x0,-0x1a4(%eax)
c000a258:	00 00 00 
c000a25b:	c7 80 58 fe ff ff 00 	movl   $0x0,-0x1a8(%eax)
c000a262:	00 00 00 
c000a265:	89 90 6c fe ff ff    	mov    %edx,-0x194(%eax)
c000a26b:	5d                   	pop    %ebp
c000a26c:	c3                   	ret    

c000a26d <thread_start>:
c000a26d:	55                   	push   %ebp
c000a26e:	89 e5                	mov    %esp,%ebp
c000a270:	53                   	push   %ebx
c000a271:	83 ec 20             	sub    $0x20,%esp
c000a274:	8a 5d 0c             	mov    0xc(%ebp),%bl
c000a277:	6a 01                	push   $0x1
c000a279:	e8 c9 fa ff ff       	call   c0009d47 <get_kernel_page>
c000a27e:	83 c4 0c             	add    $0xc,%esp
c000a281:	0f b6 db             	movzbl %bl,%ebx
c000a284:	53                   	push   %ebx
c000a285:	ff 75 08             	pushl  0x8(%ebp)
c000a288:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000a28b:	50                   	push   %eax
c000a28c:	e8 b1 fe ff ff       	call   c000a142 <thread_init>
c000a291:	83 c4 0c             	add    $0xc,%esp
c000a294:	ff 75 14             	pushl  0x14(%ebp)
c000a297:	ff 75 10             	pushl  0x10(%ebp)
c000a29a:	ff 75 f4             	pushl  -0xc(%ebp)
c000a29d:	e8 75 ff ff ff       	call   c000a217 <thread_create>
c000a2a2:	59                   	pop    %ecx
c000a2a3:	5b                   	pop    %ebx
c000a2a4:	8d 5d f4             	lea    -0xc(%ebp),%ebx
c000a2a7:	53                   	push   %ebx
c000a2a8:	68 a8 cd 02 c0       	push   $0xc002cda8
c000a2ad:	e8 8b e3 ff ff       	call   c000863d <fifo_put>
c000a2b2:	58                   	pop    %eax
c000a2b3:	5a                   	pop    %edx
c000a2b4:	53                   	push   %ebx
c000a2b5:	68 88 cd 02 c0       	push   $0xc002cd88
c000a2ba:	e8 7e e3 ff ff       	call   c000863d <fifo_put>
c000a2bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000a2c2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000a2c5:	c9                   	leave  
c000a2c6:	c3                   	ret    

c000a2c7 <schedule>:
c000a2c7:	55                   	push   %ebp
c000a2c8:	89 e5                	mov    %esp,%ebp
c000a2ca:	83 ec 18             	sub    $0x18,%esp
c000a2cd:	e8 cd fe ff ff       	call   c000a19f <running_thread>
c000a2d2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000a2d5:	8b 40 04             	mov    0x4(%eax),%eax
c000a2d8:	85 c0                	test   %eax,%eax
c000a2da:	75 23                	jne    c000a2ff <schedule+0x38>
c000a2dc:	50                   	push   %eax
c000a2dd:	50                   	push   %eax
c000a2de:	8d 45 f0             	lea    -0x10(%ebp),%eax
c000a2e1:	50                   	push   %eax
c000a2e2:	68 a8 cd 02 c0       	push   $0xc002cda8
c000a2e7:	e8 51 e3 ff ff       	call   c000863d <fifo_put>
c000a2ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000a2ef:	83 c4 10             	add    $0x10,%esp
c000a2f2:	8a 50 18             	mov    0x18(%eax),%dl
c000a2f5:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c000a2fc:	88 50 19             	mov    %dl,0x19(%eax)
c000a2ff:	51                   	push   %ecx
c000a300:	51                   	push   %ecx
c000a301:	8d 45 f4             	lea    -0xc(%ebp),%eax
c000a304:	50                   	push   %eax
c000a305:	68 a8 cd 02 c0       	push   $0xc002cda8
c000a30a:	e8 e9 e3 ff ff       	call   c00086f8 <fifo_get>
c000a30f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000a312:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c000a319:	5a                   	pop    %edx
c000a31a:	59                   	pop    %ecx
c000a31b:	50                   	push   %eax
c000a31c:	ff 75 f0             	pushl  -0x10(%ebp)
c000a31f:	e8 ec fd ff ff       	call   c000a110 <switch_to>
c000a324:	83 c4 10             	add    $0x10,%esp
c000a327:	c9                   	leave  
c000a328:	c3                   	ret    

c000a329 <thread_block>:
c000a329:	55                   	push   %ebp
c000a32a:	89 e5                	mov    %esp,%ebp
c000a32c:	56                   	push   %esi
c000a32d:	53                   	push   %ebx
c000a32e:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000a331:	83 fb 01             	cmp    $0x1,%ebx
c000a334:	77 19                	ja     c000a34f <thread_block+0x26>
c000a336:	68 85 d4 00 c0       	push   $0xc000d485
c000a33b:	68 0c d5 00 c0       	push   $0xc000d50c
c000a340:	6a 7c                	push   $0x7c
c000a342:	68 b4 d4 00 c0       	push   $0xc000d4b4
c000a347:	e8 e8 e1 ff ff       	call   c0008534 <panic_spin>
c000a34c:	83 c4 10             	add    $0x10,%esp
c000a34f:	e8 41 f2 ff ff       	call   c0009595 <intr_disable>
c000a354:	89 c6                	mov    %eax,%esi
c000a356:	e8 44 fe ff ff       	call   c000a19f <running_thread>
c000a35b:	89 58 04             	mov    %ebx,0x4(%eax)
c000a35e:	e8 64 ff ff ff       	call   c000a2c7 <schedule>
c000a363:	89 75 08             	mov    %esi,0x8(%ebp)
c000a366:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000a369:	5b                   	pop    %ebx
c000a36a:	5e                   	pop    %esi
c000a36b:	5d                   	pop    %ebp
c000a36c:	e9 46 f3 ff ff       	jmp    c00096b7 <intr_set_status>

c000a371 <thread_unblock>:
c000a371:	55                   	push   %ebp
c000a372:	89 e5                	mov    %esp,%ebp
c000a374:	53                   	push   %ebx
c000a375:	50                   	push   %eax
c000a376:	e8 1a f2 ff ff       	call   c0009595 <intr_disable>
c000a37b:	89 c3                	mov    %eax,%ebx
c000a37d:	8b 45 08             	mov    0x8(%ebp),%eax
c000a380:	8b 40 04             	mov    0x4(%eax),%eax
c000a383:	48                   	dec    %eax
c000a384:	75 1c                	jne    c000a3a2 <thread_unblock+0x31>
c000a386:	68 c4 d4 00 c0       	push   $0xc000d4c4
c000a38b:	68 1c d5 00 c0       	push   $0xc000d51c
c000a390:	68 88 00 00 00       	push   $0x88
c000a395:	68 b4 d4 00 c0       	push   $0xc000d4b4
c000a39a:	e8 95 e1 ff ff       	call   c0008534 <panic_spin>
c000a39f:	83 c4 10             	add    $0x10,%esp
c000a3a2:	50                   	push   %eax
c000a3a3:	50                   	push   %eax
c000a3a4:	8d 45 08             	lea    0x8(%ebp),%eax
c000a3a7:	50                   	push   %eax
c000a3a8:	68 a8 cd 02 c0       	push   $0xc002cda8
c000a3ad:	e8 8b e2 ff ff       	call   c000863d <fifo_put>
c000a3b2:	8b 45 08             	mov    0x8(%ebp),%eax
c000a3b5:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
c000a3bc:	89 1c 24             	mov    %ebx,(%esp)
c000a3bf:	e8 f3 f2 ff ff       	call   c00096b7 <intr_set_status>
c000a3c4:	83 c4 10             	add    $0x10,%esp
c000a3c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000a3ca:	c9                   	leave  
c000a3cb:	c3                   	ret    

c000a3cc <get_time>:
c000a3cc:	55                   	push   %ebp
c000a3cd:	89 e5                	mov    %esp,%ebp
c000a3cf:	57                   	push   %edi
c000a3d0:	56                   	push   %esi
c000a3d1:	be 70 00 00 00       	mov    $0x70,%esi
c000a3d6:	53                   	push   %ebx
c000a3d7:	83 ec 1c             	sub    $0x1c,%esp
c000a3da:	8b 7d 08             	mov    0x8(%ebp),%edi
c000a3dd:	e8 a3 f1 ff ff       	call   c0009585 <intr_get_status>
c000a3e2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c000a3e5:	b8 89 00 00 00       	mov    $0x89,%eax
c000a3ea:	89 f2                	mov    %esi,%edx
c000a3ec:	ee                   	out    %al,(%dx)
c000a3ed:	bb 71 00 00 00       	mov    $0x71,%ebx
c000a3f2:	89 da                	mov    %ebx,%edx
c000a3f4:	ec                   	in     (%dx),%al
c000a3f5:	89 c1                	mov    %eax,%ecx
c000a3f7:	89 f2                	mov    %esi,%edx
c000a3f9:	b8 b2 00 00 00       	mov    $0xb2,%eax
c000a3fe:	ee                   	out    %al,(%dx)
c000a3ff:	89 da                	mov    %ebx,%edx
c000a401:	ec                   	in     (%dx),%al
c000a402:	c1 e0 08             	shl    $0x8,%eax
c000a405:	89 f2                	mov    %esi,%edx
c000a407:	01 c1                	add    %eax,%ecx
c000a409:	b8 88 00 00 00       	mov    $0x88,%eax
c000a40e:	89 4f 14             	mov    %ecx,0x14(%edi)
c000a411:	ee                   	out    %al,(%dx)
c000a412:	89 da                	mov    %ebx,%edx
c000a414:	ec                   	in     (%dx),%al
c000a415:	89 47 10             	mov    %eax,0x10(%edi)
c000a418:	89 f2                	mov    %esi,%edx
c000a41a:	b8 87 00 00 00       	mov    $0x87,%eax
c000a41f:	ee                   	out    %al,(%dx)
c000a420:	89 da                	mov    %ebx,%edx
c000a422:	ec                   	in     (%dx),%al
c000a423:	89 47 0c             	mov    %eax,0xc(%edi)
c000a426:	89 f2                	mov    %esi,%edx
c000a428:	b8 84 00 00 00       	mov    $0x84,%eax
c000a42d:	ee                   	out    %al,(%dx)
c000a42e:	89 da                	mov    %ebx,%edx
c000a430:	ec                   	in     (%dx),%al
c000a431:	89 47 08             	mov    %eax,0x8(%edi)
c000a434:	89 f2                	mov    %esi,%edx
c000a436:	b8 82 00 00 00       	mov    $0x82,%eax
c000a43b:	ee                   	out    %al,(%dx)
c000a43c:	89 da                	mov    %ebx,%edx
c000a43e:	ec                   	in     (%dx),%al
c000a43f:	b9 80 00 00 00       	mov    $0x80,%ecx
c000a444:	89 f2                	mov    %esi,%edx
c000a446:	89 47 04             	mov    %eax,0x4(%edi)
c000a449:	89 c8                	mov    %ecx,%eax
c000a44b:	ee                   	out    %al,(%dx)
c000a44c:	89 da                	mov    %ebx,%edx
c000a44e:	ec                   	in     (%dx),%al
c000a44f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c000a452:	89 f2                	mov    %esi,%edx
c000a454:	89 07                	mov    %eax,(%edi)
c000a456:	89 c8                	mov    %ecx,%eax
c000a458:	ee                   	out    %al,(%dx)
c000a459:	89 da                	mov    %ebx,%edx
c000a45b:	ec                   	in     (%dx),%al
c000a45c:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c000a45f:	75 84                	jne    c000a3e5 <get_time+0x19>
c000a461:	b2 70                	mov    $0x70,%dl
c000a463:	31 c0                	xor    %eax,%eax
c000a465:	ee                   	out    %al,(%dx)
c000a466:	8b 45 e0             	mov    -0x20(%ebp),%eax
c000a469:	89 45 08             	mov    %eax,0x8(%ebp)
c000a46c:	83 c4 1c             	add    $0x1c,%esp
c000a46f:	5b                   	pop    %ebx
c000a470:	5e                   	pop    %esi
c000a471:	5f                   	pop    %edi
c000a472:	5d                   	pop    %ebp
c000a473:	e9 3f f2 ff ff       	jmp    c00096b7 <intr_set_status>

c000a478 <init_pit>:
c000a478:	55                   	push   %ebp
c000a479:	ba 43 00 00 00       	mov    $0x43,%edx
c000a47e:	89 e5                	mov    %esp,%ebp
c000a480:	b8 34 00 00 00       	mov    $0x34,%eax
c000a485:	ee                   	out    %al,(%dx)
c000a486:	b2 40                	mov    $0x40,%dl
c000a488:	b0 9c                	mov    $0x9c,%al
c000a48a:	ee                   	out    %al,(%dx)
c000a48b:	b0 2e                	mov    $0x2e,%al
c000a48d:	ee                   	out    %al,(%dx)
c000a48e:	5d                   	pop    %ebp
c000a48f:	c3                   	ret    

c000a490 <intr0x20_handler>:
c000a490:	55                   	push   %ebp
c000a491:	b8 20 00 00 00       	mov    $0x20,%eax
c000a496:	89 e5                	mov    %esp,%ebp
c000a498:	83 ec 08             	sub    $0x8,%esp
c000a49b:	89 c2                	mov    %eax,%edx
c000a49d:	ee                   	out    %al,(%dx)
c000a49e:	e8 fc fc ff ff       	call   c000a19f <running_thread>
c000a4a3:	ff 05 d4 d5 00 c0    	incl   0xc000d5d4
c000a4a9:	8a 50 19             	mov    0x19(%eax),%dl
c000a4ac:	ff 40 1c             	incl   0x1c(%eax)
c000a4af:	84 d2                	test   %dl,%dl
c000a4b1:	75 06                	jne    c000a4b9 <intr0x20_handler+0x29>
c000a4b3:	c9                   	leave  
c000a4b4:	e9 0e fe ff ff       	jmp    c000a2c7 <schedule>
c000a4b9:	4a                   	dec    %edx
c000a4ba:	88 50 19             	mov    %dl,0x19(%eax)
c000a4bd:	c9                   	leave  
c000a4be:	c3                   	ret    

Disassembly of section .data:

c000a4c0 <_data>:
	...

c000a4c8 <SectionCode32>:
c000a4c8:	ff                   	(bad)  
c000a4c9:	ff 00                	incl   (%eax)
c000a4cb:	00 00                	add    %al,(%eax)
c000a4cd:	98                   	cwtl   
c000a4ce:	cf                   	iret   
	...

c000a4d0 <SectionData32>:
c000a4d0:	ff                   	(bad)  
c000a4d1:	ff 00                	incl   (%eax)
c000a4d3:	00 00                	add    %al,(%eax)
c000a4d5:	92                   	xchg   %eax,%edx
c000a4d6:	cf                   	iret   
	...

c000a6b8 <gdt_ptr>:
c000a6b8:	17                   	pop    %ss
c000a6b9:	00 c0                	add    %al,%al
c000a6bb:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c000a6bc:	00 c0                	add    %al,%al
	...

c000a6c0 <PKnFont>:
	...
c000a8d0:	00 10                	add    %dl,(%eax)
c000a8d2:	10 10                	adc    %dl,(%eax)
c000a8d4:	10 10                	adc    %dl,(%eax)
c000a8d6:	10 10                	adc    %dl,(%eax)
c000a8d8:	10 10                	adc    %dl,(%eax)
c000a8da:	00 00                	add    %al,(%eax)
c000a8dc:	10 10                	adc    %dl,(%eax)
c000a8de:	00 00                	add    %al,(%eax)
c000a8e0:	28 28                	sub    %ch,(%eax)
c000a8e2:	28 00                	sub    %al,(%eax)
	...
c000a8f0:	00 44 44 44          	add    %al,0x44(%esp,%eax,2)
c000a8f4:	fe 44 44 44          	incb   0x44(%esp,%eax,2)
c000a8f8:	44                   	inc    %esp
c000a8f9:	44                   	inc    %esp
c000a8fa:	fe 44 44 44          	incb   0x44(%esp,%eax,2)
c000a8fe:	00 00                	add    %al,(%eax)
c000a900:	10 3a                	adc    %bh,(%edx)
c000a902:	56                   	push   %esi
c000a903:	92                   	xchg   %eax,%edx
c000a904:	92                   	xchg   %eax,%edx
c000a905:	90                   	nop
c000a906:	50                   	push   %eax
c000a907:	38 14 12             	cmp    %dl,(%edx,%edx,1)
c000a90a:	92                   	xchg   %eax,%edx
c000a90b:	92                   	xchg   %eax,%edx
c000a90c:	d4 b8                	aam    $0xb8
c000a90e:	10 10                	adc    %dl,(%eax)
c000a910:	62 92 94 94 68 08    	bound  %edx,0x8689494(%edx)
c000a916:	10 10                	adc    %dl,(%eax)
c000a918:	20 2c 52             	and    %ch,(%edx,%edx,2)
c000a91b:	52                   	push   %edx
c000a91c:	92                   	xchg   %eax,%edx
c000a91d:	8c 00                	mov    %es,(%eax)
c000a91f:	00 00                	add    %al,(%eax)
c000a921:	70 88                	jo     c000a8ab <PKnFont+0x1eb>
c000a923:	88 88 90 60 47 a2    	mov    %cl,-0x5db89f70(%eax)
c000a929:	92                   	xchg   %eax,%edx
c000a92a:	8a 84 46 39 00 00 04 	mov    0x4000039(%esi,%eax,2),%al
c000a931:	08 10                	or     %dl,(%eax)
	...
c000a93f:	00 02                	add    %al,(%edx)
c000a941:	04 08                	add    $0x8,%al
c000a943:	08 10                	or     %dl,(%eax)
c000a945:	10 10                	adc    %dl,(%eax)
c000a947:	10 10                	adc    %dl,(%eax)
c000a949:	10 10                	adc    %dl,(%eax)
c000a94b:	08 08                	or     %cl,(%eax)
c000a94d:	04 02                	add    $0x2,%al
c000a94f:	00 80 40 20 20 10    	add    %al,0x10202040(%eax)
c000a955:	10 10                	adc    %dl,(%eax)
c000a957:	10 10                	adc    %dl,(%eax)
c000a959:	10 10                	adc    %dl,(%eax)
c000a95b:	20 20                	and    %ah,(%eax)
c000a95d:	40                   	inc    %eax
c000a95e:	80 00 00             	addb   $0x0,(%eax)
c000a961:	00 00                	add    %al,(%eax)
c000a963:	00 00                	add    %al,(%eax)
c000a965:	10 92 54 38 54 92    	adc    %dl,-0x6dabc7ac(%edx)
c000a96b:	10 00                	adc    %al,(%eax)
	...
c000a975:	10 10                	adc    %dl,(%eax)
c000a977:	10 fe                	adc    %bh,%dh
c000a979:	10 10                	adc    %dl,(%eax)
c000a97b:	10 00                	adc    %al,(%eax)
	...
c000a989:	00 00                	add    %al,(%eax)
c000a98b:	18 18                	sbb    %bl,(%eax)
c000a98d:	08 08                	or     %cl,(%eax)
c000a98f:	10 00                	adc    %al,(%eax)
c000a991:	00 00                	add    %al,(%eax)
c000a993:	00 00                	add    %al,(%eax)
c000a995:	00 00                	add    %al,(%eax)
c000a997:	00 fe                	add    %bh,%dh
	...
c000a9a9:	00 00                	add    %al,(%eax)
c000a9ab:	00 18                	add    %bl,(%eax)
c000a9ad:	18 00                	sbb    %al,(%eax)
c000a9af:	00 02                	add    %al,(%edx)
c000a9b1:	02 04 04             	add    (%esp,%eax,1),%al
c000a9b4:	08 08                	or     %cl,(%eax)
c000a9b6:	08 10                	or     %dl,(%eax)
c000a9b8:	10 20                	adc    %ah,(%eax)
c000a9ba:	20 40 40             	and    %al,0x40(%eax)
c000a9bd:	40                   	inc    %eax
c000a9be:	80 80 00 18 24 24 42 	addb   $0x42,0x24241800(%eax)
c000a9c5:	42                   	inc    %edx
c000a9c6:	42                   	inc    %edx
c000a9c7:	42                   	inc    %edx
c000a9c8:	42                   	inc    %edx
c000a9c9:	42                   	inc    %edx
c000a9ca:	42                   	inc    %edx
c000a9cb:	24 24                	and    $0x24,%al
c000a9cd:	18 00                	sbb    %al,(%eax)
c000a9cf:	00 00                	add    %al,(%eax)
c000a9d1:	08 18                	or     %bl,(%eax)
c000a9d3:	28 08                	sub    %cl,(%eax)
c000a9d5:	08 08                	or     %cl,(%eax)
c000a9d7:	08 08                	or     %cl,(%eax)
c000a9d9:	08 08                	or     %cl,(%eax)
c000a9db:	08 08                	or     %cl,(%eax)
c000a9dd:	3e 00 00             	add    %al,%ds:(%eax)
c000a9e0:	00 18                	add    %bl,(%eax)
c000a9e2:	24 42                	and    $0x42,%al
c000a9e4:	42                   	inc    %edx
c000a9e5:	02 04 08             	add    (%eax,%ecx,1),%al
c000a9e8:	10 20                	adc    %ah,(%eax)
c000a9ea:	20 40 40             	and    %al,0x40(%eax)
c000a9ed:	7e 00                	jle    c000a9ef <PKnFont+0x32f>
c000a9ef:	00 00                	add    %al,(%eax)
c000a9f1:	18 24 42             	sbb    %ah,(%edx,%eax,2)
c000a9f4:	02 02                	add    (%edx),%al
c000a9f6:	04 18                	add    $0x18,%al
c000a9f8:	04 02                	add    $0x2,%al
c000a9fa:	02 42 24             	add    0x24(%edx),%al
c000a9fd:	18 00                	sbb    %al,(%eax)
c000a9ff:	00 00                	add    %al,(%eax)
c000aa01:	0c 0c                	or     $0xc,%al
c000aa03:	0c 14                	or     $0x14,%al
c000aa05:	14 14                	adc    $0x14,%al
c000aa07:	24 24                	and    $0x24,%al
c000aa09:	44                   	inc    %esp
c000aa0a:	7e 04                	jle    c000aa10 <PKnFont+0x350>
c000aa0c:	04 1e                	add    $0x1e,%al
c000aa0e:	00 00                	add    %al,(%eax)
c000aa10:	00 7c 40 40          	add    %bh,0x40(%eax,%eax,2)
c000aa14:	40                   	inc    %eax
c000aa15:	58                   	pop    %eax
c000aa16:	64 02 02             	add    %fs:(%edx),%al
c000aa19:	02 02                	add    (%edx),%al
c000aa1b:	42                   	inc    %edx
c000aa1c:	24 18                	and    $0x18,%al
c000aa1e:	00 00                	add    %al,(%eax)
c000aa20:	00 18                	add    %bl,(%eax)
c000aa22:	24 42                	and    $0x42,%al
c000aa24:	40                   	inc    %eax
c000aa25:	58                   	pop    %eax
c000aa26:	64 42                	fs inc %edx
c000aa28:	42                   	inc    %edx
c000aa29:	42                   	inc    %edx
c000aa2a:	42                   	inc    %edx
c000aa2b:	42                   	inc    %edx
c000aa2c:	24 18                	and    $0x18,%al
c000aa2e:	00 00                	add    %al,(%eax)
c000aa30:	00 7e 42             	add    %bh,0x42(%esi)
c000aa33:	42                   	inc    %edx
c000aa34:	04 04                	add    $0x4,%al
c000aa36:	08 08                	or     %cl,(%eax)
c000aa38:	08 10                	or     %dl,(%eax)
c000aa3a:	10 10                	adc    %dl,(%eax)
c000aa3c:	10 38                	adc    %bh,(%eax)
c000aa3e:	00 00                	add    %al,(%eax)
c000aa40:	00 18                	add    %bl,(%eax)
c000aa42:	24 42                	and    $0x42,%al
c000aa44:	42                   	inc    %edx
c000aa45:	42                   	inc    %edx
c000aa46:	24 18                	and    $0x18,%al
c000aa48:	24 42                	and    $0x42,%al
c000aa4a:	42                   	inc    %edx
c000aa4b:	42                   	inc    %edx
c000aa4c:	24 18                	and    $0x18,%al
c000aa4e:	00 00                	add    %al,(%eax)
c000aa50:	00 18                	add    %bl,(%eax)
c000aa52:	24 42                	and    $0x42,%al
c000aa54:	42                   	inc    %edx
c000aa55:	42                   	inc    %edx
c000aa56:	42                   	inc    %edx
c000aa57:	42                   	inc    %edx
c000aa58:	26 1a 02             	sbb    %es:(%edx),%al
c000aa5b:	42                   	inc    %edx
c000aa5c:	24 18                	and    $0x18,%al
c000aa5e:	00 00                	add    %al,(%eax)
c000aa60:	00 00                	add    %al,(%eax)
c000aa62:	00 00                	add    %al,(%eax)
c000aa64:	00 18                	add    %bl,(%eax)
c000aa66:	18 00                	sbb    %al,(%eax)
c000aa68:	00 00                	add    %al,(%eax)
c000aa6a:	00 00                	add    %al,(%eax)
c000aa6c:	18 18                	sbb    %bl,(%eax)
c000aa6e:	00 00                	add    %al,(%eax)
c000aa70:	00 00                	add    %al,(%eax)
c000aa72:	00 00                	add    %al,(%eax)
c000aa74:	00 18                	add    %bl,(%eax)
c000aa76:	18 00                	sbb    %al,(%eax)
c000aa78:	00 00                	add    %al,(%eax)
c000aa7a:	00 18                	add    %bl,(%eax)
c000aa7c:	18 08                	sbb    %cl,(%eax)
c000aa7e:	08 10                	or     %dl,(%eax)
c000aa80:	00 02                	add    %al,(%edx)
c000aa82:	04 08                	add    $0x8,%al
c000aa84:	10 20                	adc    %ah,(%eax)
c000aa86:	40                   	inc    %eax
c000aa87:	80 80 40 20 10 08 04 	addb   $0x4,0x8102040(%eax)
c000aa8e:	02 00                	add    (%eax),%al
c000aa90:	00 00                	add    %al,(%eax)
c000aa92:	00 00                	add    %al,(%eax)
c000aa94:	00 00                	add    %al,(%eax)
c000aa96:	fe 00                	incb   (%eax)
c000aa98:	00 fe                	add    %bh,%dh
c000aa9a:	00 00                	add    %al,(%eax)
c000aa9c:	00 00                	add    %al,(%eax)
c000aa9e:	00 00                	add    %al,(%eax)
c000aaa0:	00 80 40 20 10 08    	add    %al,0x8102040(%eax)
c000aaa6:	04 02                	add    $0x2,%al
c000aaa8:	02 04 08             	add    (%eax,%ecx,1),%al
c000aaab:	10 20                	adc    %ah,(%eax)
c000aaad:	40                   	inc    %eax
c000aaae:	80 00 00             	addb   $0x0,(%eax)
c000aab1:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c000aab5:	82                   	(bad)  
c000aab6:	04 08                	add    $0x8,%al
c000aab8:	10 10                	adc    %dl,(%eax)
c000aaba:	00 00                	add    %al,(%eax)
c000aabc:	18 18                	sbb    %bl,(%eax)
c000aabe:	00 00                	add    %al,(%eax)
c000aac0:	00 38                	add    %bh,(%eax)
c000aac2:	44                   	inc    %esp
c000aac3:	82                   	(bad)  
c000aac4:	9a aa aa aa aa aa 9c 	lcall  $0x9caa,$0xaaaaaaaa
c000aacb:	80 46 38 00          	addb   $0x0,0x38(%esi)
c000aacf:	00 00                	add    %al,(%eax)
c000aad1:	18 18                	sbb    %bl,(%eax)
c000aad3:	18 18                	sbb    %bl,(%eax)
c000aad5:	24 24                	and    $0x24,%al
c000aad7:	24 24                	and    $0x24,%al
c000aad9:	7e 42                	jle    c000ab1d <PKnFont+0x45d>
c000aadb:	42                   	inc    %edx
c000aadc:	42                   	inc    %edx
c000aadd:	e7 00                	out    %eax,$0x0
c000aadf:	00 00                	add    %al,(%eax)
c000aae1:	f0 48                	lock dec %eax
c000aae3:	44                   	inc    %esp
c000aae4:	44                   	inc    %esp
c000aae5:	44                   	inc    %esp
c000aae6:	48                   	dec    %eax
c000aae7:	78 44                	js     c000ab2d <PKnFont+0x46d>
c000aae9:	42                   	inc    %edx
c000aaea:	42                   	inc    %edx
c000aaeb:	42                   	inc    %edx
c000aaec:	44                   	inc    %esp
c000aaed:	f8                   	clc    
c000aaee:	00 00                	add    %al,(%eax)
c000aaf0:	00 3a                	add    %bh,(%edx)
c000aaf2:	46                   	inc    %esi
c000aaf3:	42                   	inc    %edx
c000aaf4:	82                   	(bad)  
c000aaf5:	80 80 80 80 80 82 42 	addb   $0x42,-0x7d7f7f80(%eax)
c000aafc:	44                   	inc    %esp
c000aafd:	38 00                	cmp    %al,(%eax)
c000aaff:	00 00                	add    %al,(%eax)
c000ab01:	f8                   	clc    
c000ab02:	44                   	inc    %esp
c000ab03:	44                   	inc    %esp
c000ab04:	42                   	inc    %edx
c000ab05:	42                   	inc    %edx
c000ab06:	42                   	inc    %edx
c000ab07:	42                   	inc    %edx
c000ab08:	42                   	inc    %edx
c000ab09:	42                   	inc    %edx
c000ab0a:	42                   	inc    %edx
c000ab0b:	44                   	inc    %esp
c000ab0c:	44                   	inc    %esp
c000ab0d:	f8                   	clc    
c000ab0e:	00 00                	add    %al,(%eax)
c000ab10:	00 fe                	add    %bh,%dh
c000ab12:	42                   	inc    %edx
c000ab13:	42                   	inc    %edx
c000ab14:	40                   	inc    %eax
c000ab15:	40                   	inc    %eax
c000ab16:	44                   	inc    %esp
c000ab17:	7c 44                	jl     c000ab5d <PKnFont+0x49d>
c000ab19:	40                   	inc    %eax
c000ab1a:	40                   	inc    %eax
c000ab1b:	42                   	inc    %edx
c000ab1c:	42                   	inc    %edx
c000ab1d:	fe 00                	incb   (%eax)
c000ab1f:	00 00                	add    %al,(%eax)
c000ab21:	fe 42 42             	incb   0x42(%edx)
c000ab24:	40                   	inc    %eax
c000ab25:	40                   	inc    %eax
c000ab26:	44                   	inc    %esp
c000ab27:	7c 44                	jl     c000ab6d <PKnFont+0x4ad>
c000ab29:	44                   	inc    %esp
c000ab2a:	40                   	inc    %eax
c000ab2b:	40                   	inc    %eax
c000ab2c:	40                   	inc    %eax
c000ab2d:	f0 00 00             	lock add %al,(%eax)
c000ab30:	00 3a                	add    %bh,(%edx)
c000ab32:	46                   	inc    %esi
c000ab33:	42                   	inc    %edx
c000ab34:	82                   	(bad)  
c000ab35:	80 80 9e 82 82 82 42 	addb   $0x42,-0x7d7d7d62(%eax)
c000ab3c:	46                   	inc    %esi
c000ab3d:	38 00                	cmp    %al,(%eax)
c000ab3f:	00 00                	add    %al,(%eax)
c000ab41:	e7 42                	out    %eax,$0x42
c000ab43:	42                   	inc    %edx
c000ab44:	42                   	inc    %edx
c000ab45:	42                   	inc    %edx
c000ab46:	42                   	inc    %edx
c000ab47:	7e 42                	jle    c000ab8b <PKnFont+0x4cb>
c000ab49:	42                   	inc    %edx
c000ab4a:	42                   	inc    %edx
c000ab4b:	42                   	inc    %edx
c000ab4c:	42                   	inc    %edx
c000ab4d:	e7 00                	out    %eax,$0x0
c000ab4f:	00 00                	add    %al,(%eax)
c000ab51:	7c 10                	jl     c000ab63 <PKnFont+0x4a3>
c000ab53:	10 10                	adc    %dl,(%eax)
c000ab55:	10 10                	adc    %dl,(%eax)
c000ab57:	10 10                	adc    %dl,(%eax)
c000ab59:	10 10                	adc    %dl,(%eax)
c000ab5b:	10 10                	adc    %dl,(%eax)
c000ab5d:	7c 00                	jl     c000ab5f <PKnFont+0x49f>
c000ab5f:	00 00                	add    %al,(%eax)
c000ab61:	1f                   	pop    %ds
c000ab62:	04 04                	add    $0x4,%al
c000ab64:	04 04                	add    $0x4,%al
c000ab66:	04 04                	add    $0x4,%al
c000ab68:	04 04                	add    $0x4,%al
c000ab6a:	04 04                	add    $0x4,%al
c000ab6c:	84 48 30             	test   %cl,0x30(%eax)
c000ab6f:	00 00                	add    %al,(%eax)
c000ab71:	e7 42                	out    %eax,$0x42
c000ab73:	44                   	inc    %esp
c000ab74:	48                   	dec    %eax
c000ab75:	50                   	push   %eax
c000ab76:	50                   	push   %eax
c000ab77:	60                   	pusha  
c000ab78:	50                   	push   %eax
c000ab79:	50                   	push   %eax
c000ab7a:	48                   	dec    %eax
c000ab7b:	44                   	inc    %esp
c000ab7c:	42                   	inc    %edx
c000ab7d:	e7 00                	out    %eax,$0x0
c000ab7f:	00 00                	add    %al,(%eax)
c000ab81:	f0 40                	lock inc %eax
c000ab83:	40                   	inc    %eax
c000ab84:	40                   	inc    %eax
c000ab85:	40                   	inc    %eax
c000ab86:	40                   	inc    %eax
c000ab87:	40                   	inc    %eax
c000ab88:	40                   	inc    %eax
c000ab89:	40                   	inc    %eax
c000ab8a:	40                   	inc    %eax
c000ab8b:	42                   	inc    %edx
c000ab8c:	42                   	inc    %edx
c000ab8d:	fe 00                	incb   (%eax)
c000ab8f:	00 00                	add    %al,(%eax)
c000ab91:	c3                   	ret    
c000ab92:	42                   	inc    %edx
c000ab93:	66 66 66 5a          	data16 data16 pop %dx
c000ab97:	5a                   	pop    %edx
c000ab98:	5a                   	pop    %edx
c000ab99:	42                   	inc    %edx
c000ab9a:	42                   	inc    %edx
c000ab9b:	42                   	inc    %edx
c000ab9c:	42                   	inc    %edx
c000ab9d:	e7 00                	out    %eax,$0x0
c000ab9f:	00 00                	add    %al,(%eax)
c000aba1:	c7 42 62 62 52 52 52 	movl   $0x52525262,0x62(%edx)
c000aba8:	4a                   	dec    %edx
c000aba9:	4a                   	dec    %edx
c000abaa:	4a                   	dec    %edx
c000abab:	46                   	inc    %esi
c000abac:	46                   	inc    %esi
c000abad:	e2 00                	loop   c000abaf <PKnFont+0x4ef>
c000abaf:	00 00                	add    %al,(%eax)
c000abb1:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c000abb5:	82                   	(bad)  
c000abb6:	82                   	(bad)  
c000abb7:	82                   	(bad)  
c000abb8:	82                   	(bad)  
c000abb9:	82                   	(bad)  
c000abba:	82                   	(bad)  
c000abbb:	82                   	(bad)  
c000abbc:	44                   	inc    %esp
c000abbd:	38 00                	cmp    %al,(%eax)
c000abbf:	00 00                	add    %al,(%eax)
c000abc1:	f8                   	clc    
c000abc2:	44                   	inc    %esp
c000abc3:	42                   	inc    %edx
c000abc4:	42                   	inc    %edx
c000abc5:	42                   	inc    %edx
c000abc6:	44                   	inc    %esp
c000abc7:	78 40                	js     c000ac09 <PKnFont+0x549>
c000abc9:	40                   	inc    %eax
c000abca:	40                   	inc    %eax
c000abcb:	40                   	inc    %eax
c000abcc:	40                   	inc    %eax
c000abcd:	f0 00 00             	lock add %al,(%eax)
c000abd0:	00 38                	add    %bh,(%eax)
c000abd2:	44                   	inc    %esp
c000abd3:	82                   	(bad)  
c000abd4:	82                   	(bad)  
c000abd5:	82                   	(bad)  
c000abd6:	82                   	(bad)  
c000abd7:	82                   	(bad)  
c000abd8:	82                   	(bad)  
c000abd9:	82                   	(bad)  
c000abda:	92                   	xchg   %eax,%edx
c000abdb:	8a 44 3a 00          	mov    0x0(%edx,%edi,1),%al
c000abdf:	00 00                	add    %al,(%eax)
c000abe1:	fc                   	cld    
c000abe2:	42                   	inc    %edx
c000abe3:	42                   	inc    %edx
c000abe4:	42                   	inc    %edx
c000abe5:	42                   	inc    %edx
c000abe6:	7c 44                	jl     c000ac2c <PKnFont+0x56c>
c000abe8:	42                   	inc    %edx
c000abe9:	42                   	inc    %edx
c000abea:	42                   	inc    %edx
c000abeb:	42                   	inc    %edx
c000abec:	42                   	inc    %edx
c000abed:	e7 00                	out    %eax,$0x0
c000abef:	00 00                	add    %al,(%eax)
c000abf1:	3a 46 82             	cmp    -0x7e(%esi),%al
c000abf4:	82                   	(bad)  
c000abf5:	80 40 38 04          	addb   $0x4,0x38(%eax)
c000abf9:	02 82 82 c4 b8 00    	add    0xb8c482(%edx),%al
c000abff:	00 00                	add    %al,(%eax)
c000ac01:	fe                   	(bad)  
c000ac02:	92                   	xchg   %eax,%edx
c000ac03:	92                   	xchg   %eax,%edx
c000ac04:	10 10                	adc    %dl,(%eax)
c000ac06:	10 10                	adc    %dl,(%eax)
c000ac08:	10 10                	adc    %dl,(%eax)
c000ac0a:	10 10                	adc    %dl,(%eax)
c000ac0c:	10 7c 00 00          	adc    %bh,0x0(%eax,%eax,1)
c000ac10:	00 e7                	add    %ah,%bh
c000ac12:	42                   	inc    %edx
c000ac13:	42                   	inc    %edx
c000ac14:	42                   	inc    %edx
c000ac15:	42                   	inc    %edx
c000ac16:	42                   	inc    %edx
c000ac17:	42                   	inc    %edx
c000ac18:	42                   	inc    %edx
c000ac19:	42                   	inc    %edx
c000ac1a:	42                   	inc    %edx
c000ac1b:	42                   	inc    %edx
c000ac1c:	24 3c                	and    $0x3c,%al
c000ac1e:	00 00                	add    %al,(%eax)
c000ac20:	00 e7                	add    %ah,%bh
c000ac22:	42                   	inc    %edx
c000ac23:	42                   	inc    %edx
c000ac24:	42                   	inc    %edx
c000ac25:	42                   	inc    %edx
c000ac26:	24 24                	and    $0x24,%al
c000ac28:	24 24                	and    $0x24,%al
c000ac2a:	18 18                	sbb    %bl,(%eax)
c000ac2c:	18 18                	sbb    %bl,(%eax)
c000ac2e:	00 00                	add    %al,(%eax)
c000ac30:	00 e7                	add    %ah,%bh
c000ac32:	42                   	inc    %edx
c000ac33:	42                   	inc    %edx
c000ac34:	42                   	inc    %edx
c000ac35:	5a                   	pop    %edx
c000ac36:	5a                   	pop    %edx
c000ac37:	5a                   	pop    %edx
c000ac38:	5a                   	pop    %edx
c000ac39:	24 24                	and    $0x24,%al
c000ac3b:	24 24                	and    $0x24,%al
c000ac3d:	24 00                	and    $0x0,%al
c000ac3f:	00 00                	add    %al,(%eax)
c000ac41:	e7 42                	out    %eax,$0x42
c000ac43:	42                   	inc    %edx
c000ac44:	24 24                	and    $0x24,%al
c000ac46:	24 18                	and    $0x18,%al
c000ac48:	24 24                	and    $0x24,%al
c000ac4a:	24 42                	and    $0x42,%al
c000ac4c:	42                   	inc    %edx
c000ac4d:	e7 00                	out    %eax,$0x0
c000ac4f:	00 00                	add    %al,(%eax)
c000ac51:	ee                   	out    %al,(%dx)
c000ac52:	44                   	inc    %esp
c000ac53:	44                   	inc    %esp
c000ac54:	44                   	inc    %esp
c000ac55:	28 28                	sub    %ch,(%eax)
c000ac57:	28 10                	sub    %dl,(%eax)
c000ac59:	10 10                	adc    %dl,(%eax)
c000ac5b:	10 10                	adc    %dl,(%eax)
c000ac5d:	7c 00                	jl     c000ac5f <PKnFont+0x59f>
c000ac5f:	00 00                	add    %al,(%eax)
c000ac61:	fe 84 84 08 08 10 10 	incb   0x10100808(%esp,%eax,4)
c000ac68:	20 20                	and    %ah,(%eax)
c000ac6a:	40                   	inc    %eax
c000ac6b:	42                   	inc    %edx
c000ac6c:	82                   	(bad)  
c000ac6d:	fe 00                	incb   (%eax)
c000ac6f:	00 00                	add    %al,(%eax)
c000ac71:	3e 20 20             	and    %ah,%ds:(%eax)
c000ac74:	20 20                	and    %ah,(%eax)
c000ac76:	20 20                	and    %ah,(%eax)
c000ac78:	20 20                	and    %ah,(%eax)
c000ac7a:	20 20                	and    %ah,(%eax)
c000ac7c:	20 20                	and    %ah,(%eax)
c000ac7e:	3e 00 80 80 40 40 20 	add    %al,%ds:0x20404080(%eax)
c000ac85:	20 20                	and    %ah,(%eax)
c000ac87:	10 10                	adc    %dl,(%eax)
c000ac89:	08 08                	or     %cl,(%eax)
c000ac8b:	04 04                	add    $0x4,%al
c000ac8d:	04 02                	add    $0x2,%al
c000ac8f:	02 00                	add    (%eax),%al
c000ac91:	7c 04                	jl     c000ac97 <PKnFont+0x5d7>
c000ac93:	04 04                	add    $0x4,%al
c000ac95:	04 04                	add    $0x4,%al
c000ac97:	04 04                	add    $0x4,%al
c000ac99:	04 04                	add    $0x4,%al
c000ac9b:	04 04                	add    $0x4,%al
c000ac9d:	04 7c                	add    $0x7c,%al
c000ac9f:	00 00                	add    %al,(%eax)
c000aca1:	10 28                	adc    %ch,(%eax)
c000aca3:	44                   	inc    %esp
c000aca4:	82                   	(bad)  
	...
c000acbd:	00 fe                	add    %bh,%dh
c000acbf:	00 10                	add    %dl,(%eax)
c000acc1:	08 04 00             	or     %al,(%eax,%eax,1)
	...
c000acd4:	00 70 08             	add    %dh,0x8(%eax)
c000acd7:	04 3c                	add    $0x3c,%al
c000acd9:	44                   	inc    %esp
c000acda:	84 84 8c 76 00 00 c0 	test   %al,-0x3fffff8a(%esp,%ecx,4)
c000ace1:	40                   	inc    %eax
c000ace2:	40                   	inc    %eax
c000ace3:	40                   	inc    %eax
c000ace4:	40                   	inc    %eax
c000ace5:	58                   	pop    %eax
c000ace6:	64 42                	fs inc %edx
c000ace8:	42                   	inc    %edx
c000ace9:	42                   	inc    %edx
c000acea:	42                   	inc    %edx
c000aceb:	42                   	inc    %edx
c000acec:	64 58                	fs pop %eax
c000acee:	00 00                	add    %al,(%eax)
c000acf0:	00 00                	add    %al,(%eax)
c000acf2:	00 00                	add    %al,(%eax)
c000acf4:	00 30                	add    %dh,(%eax)
c000acf6:	4c                   	dec    %esp
c000acf7:	84 84 80 80 82 44 38 	test   %al,0x38448280(%eax,%eax,4)
c000acfe:	00 00                	add    %al,(%eax)
c000ad00:	0c 04                	or     $0x4,%al
c000ad02:	04 04                	add    $0x4,%al
c000ad04:	04 34                	add    $0x34,%al
c000ad06:	4c                   	dec    %esp
c000ad07:	84 84 84 84 84 4c 36 	test   %al,0x364c8484(%esp,%eax,4)
c000ad0e:	00 00                	add    %al,(%eax)
c000ad10:	00 00                	add    %al,(%eax)
c000ad12:	00 00                	add    %al,(%eax)
c000ad14:	00 38                	add    %bh,(%eax)
c000ad16:	44                   	inc    %esp
c000ad17:	82                   	(bad)  
c000ad18:	82                   	(bad)  
c000ad19:	fc                   	cld    
c000ad1a:	80 82 42 3c 00 00 0e 	addb   $0xe,0x3c42(%edx)
c000ad21:	10 10                	adc    %dl,(%eax)
c000ad23:	10 10                	adc    %dl,(%eax)
c000ad25:	7c 10                	jl     c000ad37 <PKnFont+0x677>
c000ad27:	10 10                	adc    %dl,(%eax)
c000ad29:	10 10                	adc    %dl,(%eax)
c000ad2b:	10 10                	adc    %dl,(%eax)
c000ad2d:	7c 00                	jl     c000ad2f <PKnFont+0x66f>
c000ad2f:	00 00                	add    %al,(%eax)
c000ad31:	00 00                	add    %al,(%eax)
c000ad33:	00 00                	add    %al,(%eax)
c000ad35:	36 4c                	ss dec %esp
c000ad37:	84 84 84 84 4c 34 04 	test   %al,0x4344c84(%esp,%eax,4)
c000ad3e:	04 38                	add    $0x38,%al
c000ad40:	c0 40 40 40          	rolb   $0x40,0x40(%eax)
c000ad44:	40                   	inc    %eax
c000ad45:	58                   	pop    %eax
c000ad46:	64 42                	fs inc %edx
c000ad48:	42                   	inc    %edx
c000ad49:	42                   	inc    %edx
c000ad4a:	42                   	inc    %edx
c000ad4b:	42                   	inc    %edx
c000ad4c:	42                   	inc    %edx
c000ad4d:	e3 00                	jecxz  c000ad4f <PKnFont+0x68f>
c000ad4f:	00 00                	add    %al,(%eax)
c000ad51:	10 10                	adc    %dl,(%eax)
c000ad53:	00 00                	add    %al,(%eax)
c000ad55:	30 10                	xor    %dl,(%eax)
c000ad57:	10 10                	adc    %dl,(%eax)
c000ad59:	10 10                	adc    %dl,(%eax)
c000ad5b:	10 10                	adc    %dl,(%eax)
c000ad5d:	38 00                	cmp    %al,(%eax)
c000ad5f:	00 00                	add    %al,(%eax)
c000ad61:	04 04                	add    $0x4,%al
c000ad63:	00 00                	add    %al,(%eax)
c000ad65:	0c 04                	or     $0x4,%al
c000ad67:	04 04                	add    $0x4,%al
c000ad69:	04 04                	add    $0x4,%al
c000ad6b:	04 04                	add    $0x4,%al
c000ad6d:	08 08                	or     %cl,(%eax)
c000ad6f:	30 c0                	xor    %al,%al
c000ad71:	40                   	inc    %eax
c000ad72:	40                   	inc    %eax
c000ad73:	40                   	inc    %eax
c000ad74:	40                   	inc    %eax
c000ad75:	4e                   	dec    %esi
c000ad76:	44                   	inc    %esp
c000ad77:	48                   	dec    %eax
c000ad78:	50                   	push   %eax
c000ad79:	60                   	pusha  
c000ad7a:	50                   	push   %eax
c000ad7b:	48                   	dec    %eax
c000ad7c:	44                   	inc    %esp
c000ad7d:	e6 00                	out    %al,$0x0
c000ad7f:	00 30                	add    %dh,(%eax)
c000ad81:	10 10                	adc    %dl,(%eax)
c000ad83:	10 10                	adc    %dl,(%eax)
c000ad85:	10 10                	adc    %dl,(%eax)
c000ad87:	10 10                	adc    %dl,(%eax)
c000ad89:	10 10                	adc    %dl,(%eax)
c000ad8b:	10 10                	adc    %dl,(%eax)
c000ad8d:	38 00                	cmp    %al,(%eax)
c000ad8f:	00 00                	add    %al,(%eax)
c000ad91:	00 00                	add    %al,(%eax)
c000ad93:	00 00                	add    %al,(%eax)
c000ad95:	f6                   	(bad)  
c000ad96:	49                   	dec    %ecx
c000ad97:	49                   	dec    %ecx
c000ad98:	49                   	dec    %ecx
c000ad99:	49                   	dec    %ecx
c000ad9a:	49                   	dec    %ecx
c000ad9b:	49                   	dec    %ecx
c000ad9c:	49                   	dec    %ecx
c000ad9d:	db 00                	fildl  (%eax)
c000ad9f:	00 00                	add    %al,(%eax)
c000ada1:	00 00                	add    %al,(%eax)
c000ada3:	00 00                	add    %al,(%eax)
c000ada5:	d8 64 42 42          	fsubs  0x42(%edx,%eax,2)
c000ada9:	42                   	inc    %edx
c000adaa:	42                   	inc    %edx
c000adab:	42                   	inc    %edx
c000adac:	42                   	inc    %edx
c000adad:	e3 00                	jecxz  c000adaf <PKnFont+0x6ef>
c000adaf:	00 00                	add    %al,(%eax)
c000adb1:	00 00                	add    %al,(%eax)
c000adb3:	00 00                	add    %al,(%eax)
c000adb5:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c000adb9:	82                   	(bad)  
c000adba:	82                   	(bad)  
c000adbb:	82                   	(bad)  
c000adbc:	44                   	inc    %esp
c000adbd:	38 00                	cmp    %al,(%eax)
c000adbf:	00 00                	add    %al,(%eax)
c000adc1:	00 00                	add    %al,(%eax)
c000adc3:	00 d8                	add    %bl,%al
c000adc5:	64 42                	fs inc %edx
c000adc7:	42                   	inc    %edx
c000adc8:	42                   	inc    %edx
c000adc9:	42                   	inc    %edx
c000adca:	42                   	inc    %edx
c000adcb:	64 58                	fs pop %eax
c000adcd:	40                   	inc    %eax
c000adce:	40                   	inc    %eax
c000adcf:	e0 00                	loopne c000add1 <PKnFont+0x711>
c000add1:	00 00                	add    %al,(%eax)
c000add3:	00 34 4c             	add    %dh,(%esp,%ecx,2)
c000add6:	84 84 84 84 84 4c 34 	test   %al,0x344c8484(%esp,%eax,4)
c000addd:	04 04                	add    $0x4,%al
c000addf:	0e                   	push   %cs
c000ade0:	00 00                	add    %al,(%eax)
c000ade2:	00 00                	add    %al,(%eax)
c000ade4:	00 dc                	add    %bl,%ah
c000ade6:	62 42 40             	bound  %eax,0x40(%edx)
c000ade9:	40                   	inc    %eax
c000adea:	40                   	inc    %eax
c000adeb:	40                   	inc    %eax
c000adec:	40                   	inc    %eax
c000aded:	e0 00                	loopne c000adef <PKnFont+0x72f>
c000adef:	00 00                	add    %al,(%eax)
c000adf1:	00 00                	add    %al,(%eax)
c000adf3:	00 00                	add    %al,(%eax)
c000adf5:	7a 86                	jp     c000ad7d <PKnFont+0x6bd>
c000adf7:	82                   	(bad)  
c000adf8:	c0 38 06             	sarb   $0x6,(%eax)
c000adfb:	82                   	(bad)  
c000adfc:	c2 bc 00             	ret    $0xbc
c000adff:	00 00                	add    %al,(%eax)
c000ae01:	00 10                	add    %dl,(%eax)
c000ae03:	10 10                	adc    %dl,(%eax)
c000ae05:	7c 10                	jl     c000ae17 <PKnFont+0x757>
c000ae07:	10 10                	adc    %dl,(%eax)
c000ae09:	10 10                	adc    %dl,(%eax)
c000ae0b:	10 10                	adc    %dl,(%eax)
c000ae0d:	0e                   	push   %cs
c000ae0e:	00 00                	add    %al,(%eax)
c000ae10:	00 00                	add    %al,(%eax)
c000ae12:	00 00                	add    %al,(%eax)
c000ae14:	00 c6                	add    %al,%dh
c000ae16:	42                   	inc    %edx
c000ae17:	42                   	inc    %edx
c000ae18:	42                   	inc    %edx
c000ae19:	42                   	inc    %edx
c000ae1a:	42                   	inc    %edx
c000ae1b:	42                   	inc    %edx
c000ae1c:	46                   	inc    %esi
c000ae1d:	3b 00                	cmp    (%eax),%eax
c000ae1f:	00 00                	add    %al,(%eax)
c000ae21:	00 00                	add    %al,(%eax)
c000ae23:	00 00                	add    %al,(%eax)
c000ae25:	e7 42                	out    %eax,$0x42
c000ae27:	42                   	inc    %edx
c000ae28:	42                   	inc    %edx
c000ae29:	24 24                	and    $0x24,%al
c000ae2b:	24 18                	and    $0x18,%al
c000ae2d:	18 00                	sbb    %al,(%eax)
c000ae2f:	00 00                	add    %al,(%eax)
c000ae31:	00 00                	add    %al,(%eax)
c000ae33:	00 00                	add    %al,(%eax)
c000ae35:	e7 42                	out    %eax,$0x42
c000ae37:	42                   	inc    %edx
c000ae38:	5a                   	pop    %edx
c000ae39:	5a                   	pop    %edx
c000ae3a:	5a                   	pop    %edx
c000ae3b:	24 24                	and    $0x24,%al
c000ae3d:	24 00                	and    $0x0,%al
c000ae3f:	00 00                	add    %al,(%eax)
c000ae41:	00 00                	add    %al,(%eax)
c000ae43:	00 00                	add    %al,(%eax)
c000ae45:	c6 44 28 28 10       	movb   $0x10,0x28(%eax,%ebp,1)
c000ae4a:	28 28                	sub    %ch,(%eax)
c000ae4c:	44                   	inc    %esp
c000ae4d:	c6 00 00             	movb   $0x0,(%eax)
c000ae50:	00 00                	add    %al,(%eax)
c000ae52:	00 00                	add    %al,(%eax)
c000ae54:	00 e7                	add    %ah,%bh
c000ae56:	42                   	inc    %edx
c000ae57:	42                   	inc    %edx
c000ae58:	24 24                	and    $0x24,%al
c000ae5a:	24 18                	and    $0x18,%al
c000ae5c:	18 10                	sbb    %dl,(%eax)
c000ae5e:	10 60 00             	adc    %ah,0x0(%eax)
c000ae61:	00 00                	add    %al,(%eax)
c000ae63:	00 00                	add    %al,(%eax)
c000ae65:	fe 82 84 08 10 20    	incb   0x20100884(%edx)
c000ae6b:	42                   	inc    %edx
c000ae6c:	82                   	(bad)  
c000ae6d:	fe 00                	incb   (%eax)
c000ae6f:	00 00                	add    %al,(%eax)
c000ae71:	06                   	push   %es
c000ae72:	08 10                	or     %dl,(%eax)
c000ae74:	10 10                	adc    %dl,(%eax)
c000ae76:	10 60 10             	adc    %ah,0x10(%eax)
c000ae79:	10 10                	adc    %dl,(%eax)
c000ae7b:	10 08                	adc    %cl,(%eax)
c000ae7d:	06                   	push   %es
c000ae7e:	00 00                	add    %al,(%eax)
c000ae80:	10 10                	adc    %dl,(%eax)
c000ae82:	10 10                	adc    %dl,(%eax)
c000ae84:	10 10                	adc    %dl,(%eax)
c000ae86:	10 10                	adc    %dl,(%eax)
c000ae88:	10 10                	adc    %dl,(%eax)
c000ae8a:	10 10                	adc    %dl,(%eax)
c000ae8c:	10 10                	adc    %dl,(%eax)
c000ae8e:	10 10                	adc    %dl,(%eax)
c000ae90:	00 60 10             	add    %ah,0x10(%eax)
c000ae93:	08 08                	or     %cl,(%eax)
c000ae95:	08 08                	or     %cl,(%eax)
c000ae97:	06                   	push   %es
c000ae98:	08 08                	or     %cl,(%eax)
c000ae9a:	08 08                	or     %cl,(%eax)
c000ae9c:	10 60 00             	adc    %ah,0x0(%eax)
c000ae9f:	00 00                	add    %al,(%eax)
c000aea1:	72 8c                	jb     c000ae2f <PKnFont+0x76f>
	...

c000b6c0 <intr_entry_table>:
c000b6c0:	70 8a                	jo     c000b64c <PKnFont+0xf8c>
c000b6c2:	00 c0                	add    %al,%al
c000b6c4:	a2 8a 00 c0 d4       	mov    %al,0xd4c0008a
c000b6c9:	8a 00                	mov    (%eax),%al
c000b6cb:	c0 06 8b             	rolb   $0x8b,(%esi)
c000b6ce:	00 c0                	add    %al,%al
c000b6d0:	38 8b 00 c0 6a 8b    	cmp    %cl,-0x74954000(%ebx)
c000b6d6:	00 c0                	add    %al,%al
c000b6d8:	9c                   	pushf  
c000b6d9:	8b 00                	mov    (%eax),%eax
c000b6db:	c0 ce 8b             	ror    $0x8b,%dh
c000b6de:	00 c0                	add    %al,%al
c000b6e0:	00 8c 00 c0 2e 8c 00 	add    %cl,0x8c2ec0(%eax,%eax,1)
c000b6e7:	c0 60 8c 00          	shlb   $0x0,-0x74(%eax)
c000b6eb:	c0 8e 8c 00 c0 bc 8c 	rorb   $0x8c,-0x433fff74(%esi)
c000b6f2:	00 c0                	add    %al,%al
c000b6f4:	ee                   	out    %al,(%dx)
c000b6f5:	8c 00                	mov    %es,(%eax)
c000b6f7:	c0 1c 8d 00 c0 4a 8d 	rcrb   $0x0,-0x72b54000(,%ecx,4)
c000b6fe:	00 
c000b6ff:	c0 7c 8d 00 c0       	sarb   $0xc0,0x0(%ebp,%ecx,4)
c000b704:	ae                   	scas   %es:(%edi),%al
c000b705:	8d 00                	lea    (%eax),%eax
c000b707:	c0 dc 8d             	rcr    $0x8d,%ah
c000b70a:	00 c0                	add    %al,%al
c000b70c:	0e                   	push   %cs
c000b70d:	8e 00                	mov    (%eax),%es
c000b70f:	c0 40 8e 00          	rolb   $0x0,-0x72(%eax)
c000b713:	c0                   	(bad)  
c000b714:	72 8e                	jb     c000b6a4 <PKnFont+0xfe4>
c000b716:	00 c0                	add    %al,%al
c000b718:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c000b719:	8e 00                	mov    (%eax),%es
c000b71b:	c0 d6 8e             	rcl    $0x8e,%dh
c000b71e:	00 c0                	add    %al,%al
c000b720:	08 8f 00 c0 36 8f    	or     %cl,-0x70c94000(%edi)
c000b726:	00 c0                	add    %al,%al
c000b728:	68 8f 00 c0 96       	push   $0x96c0008f
c000b72d:	8f 00                	popl   (%eax)
c000b72f:	c0 c4 8f             	rol    $0x8f,%ah
c000b732:	00 c0                	add    %al,%al
c000b734:	f6                   	(bad)  
c000b735:	8f 00                	popl   (%eax)
c000b737:	c0 24 90 00          	shlb   $0x0,(%eax,%edx,4)
c000b73b:	c0 52 90 00          	rclb   $0x0,-0x70(%edx)
c000b73f:	c0 84 90 00 c0 b6 90 	rolb   $0x0,-0x6f494000(%eax,%edx,4)
c000b746:	00 
c000b747:	c0 e8 90             	shr    $0x90,%al
c000b74a:	00 c0                	add    %al,%al
c000b74c:	1a 91 00 c0 4c 91    	sbb    -0x6eb34000(%ecx),%dl
c000b752:	00 c0                	add    %al,%al
c000b754:	7e 91                	jle    c000b6e7 <intr_entry_table+0x27>
c000b756:	00 c0                	add    %al,%al
c000b758:	b0 91                	mov    $0x91,%al
c000b75a:	00 c0                	add    %al,%al
c000b75c:	e2 91                	loop   c000b6ef <intr_entry_table+0x2f>
c000b75e:	00 c0                	add    %al,%al
c000b760:	14 92                	adc    $0x92,%al
c000b762:	00 c0                	add    %al,%al
c000b764:	46                   	inc    %esi
c000b765:	92                   	xchg   %eax,%edx
c000b766:	00 c0                	add    %al,%al
c000b768:	78 92                	js     c000b6fc <intr_entry_table+0x3c>
c000b76a:	00 c0                	add    %al,%al
c000b76c:	aa                   	stos   %al,%es:(%edi)
c000b76d:	92                   	xchg   %eax,%edx
c000b76e:	00 c0                	add    %al,%al
c000b770:	dc 92 00 c0 0e 93    	fcoml  -0x6cf14000(%edx)
c000b776:	00 c0                	add    %al,%al
c000b778:	40                   	inc    %eax
c000b779:	93                   	xchg   %eax,%ebx
c000b77a:	00 c0                	add    %al,%al
c000b77c:	72 93                	jb     c000b711 <intr_entry_table+0x51>
c000b77e:	00 c0                	add    %al,%al

Disassembly of section .eh_frame:

c000b780 <.eh_frame>:
c000b780:	10 00                	adc    %al,(%eax)
c000b782:	00 00                	add    %al,(%eax)
c000b784:	00 00                	add    %al,(%eax)
c000b786:	00 00                	add    %al,(%eax)
c000b788:	01 00                	add    %eax,(%eax)
c000b78a:	01 7c 08 0c          	add    %edi,0xc(%eax,%ecx,1)
c000b78e:	04 04                	add    $0x4,%al
c000b790:	88 01                	mov    %al,(%ecx)
c000b792:	00 00                	add    %al,(%eax)
c000b794:	14 00                	adc    $0x0,%al
c000b796:	00 00                	add    %al,(%eax)
c000b798:	18 00                	sbb    %al,(%eax)
c000b79a:	00 00                	add    %al,(%eax)
c000b79c:	24 7f                	and    $0x7f,%al
c000b79e:	00 c0                	add    %al,%al
c000b7a0:	06                   	push   %es
c000b7a1:	00 00                	add    %al,(%eax)
c000b7a3:	00 41 0e             	add    %al,0xe(%ecx)
c000b7a6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b7ac:	64 01 00             	add    %eax,%fs:(%eax)
c000b7af:	00 30                	add    %dh,(%eax)
c000b7b1:	00 00                	add    %al,(%eax)
c000b7b3:	00 2a                	add    %ch,(%edx)
c000b7b5:	7f 00                	jg     c000b7b7 <_edata+0x37>
c000b7b7:	c0 3f 02             	sarb   $0x2,(%edi)
c000b7ba:	00 00                	add    %al,(%eax)
c000b7bc:	41                   	inc    %ecx
c000b7bd:	0e                   	push   %cs
c000b7be:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b7c4:	46                   	inc    %esi
c000b7c5:	2e 0c 83             	cs or  $0x83,%al
c000b7c8:	05 86 04 87 03       	add    $0x3870486,%eax
c000b7cd:	5b                   	pop    %ebx
c000b7ce:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b7d2:	00 4f 2e             	add    %cl,0x2e(%edi)
c000b7d5:	04 04                	add    $0x4,%al
c000b7d7:	07                   	pop    %es
c000b7d8:	00 00                	add    %al,(%eax)
c000b7da:	00 2e                	add    %ch,(%esi)
c000b7dc:	08 47 2e             	or     %al,0x2e(%edi)
c000b7df:	0c 49                	or     $0x49,%al
c000b7e1:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000b7e5:	14 41                	adc    $0x41,%al
c000b7e7:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000b7eb:	1c 45                	sbb    $0x45,%al
c000b7ed:	2e 20 4e 2e          	and    %cl,%cs:0x2e(%esi)
c000b7f1:	08 4c 2e 0c          	or     %cl,0xc(%esi,%ebp,1)
c000b7f5:	49                   	dec    %ecx
c000b7f6:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000b7fa:	14 41                	adc    $0x41,%al
c000b7fc:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000b800:	1c 45                	sbb    $0x45,%al
c000b802:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b806:	04 04                	add    $0x4,%al
c000b808:	02 00                	add    (%eax),%al
c000b80a:	00 00                	add    %al,(%eax)
c000b80c:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b810:	0c 46                	or     $0x46,%al
c000b812:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b816:	14 41                	adc    $0x41,%al
c000b818:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000b81c:	1c 45                	sbb    $0x45,%al
c000b81e:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b822:	0c 42                	or     $0x42,%al
c000b824:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000b828:	14 41                	adc    $0x41,%al
c000b82a:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000b82e:	1c 45                	sbb    $0x45,%al
c000b830:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b834:	04 04                	add    $0x4,%al
c000b836:	02 00                	add    (%eax),%al
c000b838:	00 00                	add    %al,(%eax)
c000b83a:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b83e:	0c 46                	or     $0x46,%al
c000b840:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b844:	14 41                	adc    $0x41,%al
c000b846:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000b84a:	1c 45                	sbb    $0x45,%al
c000b84c:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b850:	0c 42                	or     $0x42,%al
c000b852:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000b856:	14 41                	adc    $0x41,%al
c000b858:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000b85c:	1c 45                	sbb    $0x45,%al
c000b85e:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b862:	04 04                	add    $0x4,%al
c000b864:	02 00                	add    (%eax),%al
c000b866:	00 00                	add    %al,(%eax)
c000b868:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b86c:	0c 46                	or     $0x46,%al
c000b86e:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b872:	14 41                	adc    $0x41,%al
c000b874:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000b878:	1c 45                	sbb    $0x45,%al
c000b87a:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b87e:	0c 42                	or     $0x42,%al
c000b880:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000b884:	14 41                	adc    $0x41,%al
c000b886:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000b88a:	1c 45                	sbb    $0x45,%al
c000b88c:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b890:	04 04                	add    $0x4,%al
c000b892:	02 00                	add    (%eax),%al
c000b894:	00 00                	add    %al,(%eax)
c000b896:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b89a:	0c 46                	or     $0x46,%al
c000b89c:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b8a0:	14 41                	adc    $0x41,%al
c000b8a2:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000b8a6:	1c 45                	sbb    $0x45,%al
c000b8a8:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b8ac:	0c 42                	or     $0x42,%al
c000b8ae:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000b8b2:	14 41                	adc    $0x41,%al
c000b8b4:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000b8b8:	1c 45                	sbb    $0x45,%al
c000b8ba:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b8be:	04 04                	add    $0x4,%al
c000b8c0:	02 00                	add    (%eax),%al
c000b8c2:	00 00                	add    %al,(%eax)
c000b8c4:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b8c8:	0c 46                	or     $0x46,%al
c000b8ca:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b8ce:	14 41                	adc    $0x41,%al
c000b8d0:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000b8d4:	1c 45                	sbb    $0x45,%al
c000b8d6:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b8da:	0c 42                	or     $0x42,%al
c000b8dc:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000b8e0:	14 41                	adc    $0x41,%al
c000b8e2:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000b8e6:	1c 45                	sbb    $0x45,%al
c000b8e8:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b8ec:	04 04                	add    $0x4,%al
c000b8ee:	02 00                	add    (%eax),%al
c000b8f0:	00 00                	add    %al,(%eax)
c000b8f2:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b8f6:	0c 46                	or     $0x46,%al
c000b8f8:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b8fc:	14 41                	adc    $0x41,%al
c000b8fe:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000b902:	1c 45                	sbb    $0x45,%al
c000b904:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b908:	00 45 2e             	add    %al,0x2e(%ebp)
c000b90b:	0c 45                	or     $0x45,%al
c000b90d:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b911:	00 00                	add    %al,(%eax)
c000b913:	00 4c 01 00          	add    %cl,0x0(%ecx,%eax,1)
c000b917:	00 98 01 00 00 69    	add    %bl,0x69000001(%eax)
c000b91d:	81 00 c0 99 01 00    	addl   $0x199c0,(%eax)
c000b923:	00 41 0e             	add    %al,0xe(%ecx)
c000b926:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b92c:	42                   	inc    %edx
c000b92d:	83 03 46             	addl   $0x46,(%ebx)
c000b930:	2e 04 04             	cs add $0x4,%al
c000b933:	01 00                	add    %eax,(%eax)
c000b935:	00 00                	add    %al,(%eax)
c000b937:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000b93b:	0c 42                	or     $0x42,%al
c000b93d:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b941:	00 46 2e             	add    %al,0x2e(%esi)
c000b944:	0c 42                	or     $0x42,%al
c000b946:	2e 10 50 2e          	adc    %dl,%cs:0x2e(%eax)
c000b94a:	0c 41                	or     $0x41,%al
c000b94c:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b950:	0c 42                	or     $0x42,%al
c000b952:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b956:	0c 41                	or     $0x41,%al
c000b958:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b95c:	0c 42                	or     $0x42,%al
c000b95e:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b962:	0c 41                	or     $0x41,%al
c000b964:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b968:	0c 42                	or     $0x42,%al
c000b96a:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000b96e:	0c 41                	or     $0x41,%al
c000b970:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000b974:	0c 42                	or     $0x42,%al
c000b976:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b97a:	0c 41                	or     $0x41,%al
c000b97c:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b980:	0c 42                	or     $0x42,%al
c000b982:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b986:	04 04                	add    $0x4,%al
c000b988:	02 00                	add    (%eax),%al
c000b98a:	00 00                	add    %al,(%eax)
c000b98c:	2e 08 49 2e          	or     %cl,%cs:0x2e(%ecx)
c000b990:	0c 42                	or     $0x42,%al
c000b992:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b996:	0c 41                	or     $0x41,%al
c000b998:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b99c:	0c 42                	or     $0x42,%al
c000b99e:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b9a2:	04 04                	add    $0x4,%al
c000b9a4:	02 00                	add    (%eax),%al
c000b9a6:	00 00                	add    %al,(%eax)
c000b9a8:	2e 08 49 2e          	or     %cl,%cs:0x2e(%ecx)
c000b9ac:	0c 42                	or     $0x42,%al
c000b9ae:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b9b2:	0c 41                	or     $0x41,%al
c000b9b4:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b9b8:	0c 42                	or     $0x42,%al
c000b9ba:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b9be:	0c 41                	or     $0x41,%al
c000b9c0:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000b9c4:	0c 42                	or     $0x42,%al
c000b9c6:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b9ca:	0c 41                	or     $0x41,%al
c000b9cc:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b9d0:	0c 42                	or     $0x42,%al
c000b9d2:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b9d6:	04 04                	add    $0x4,%al
c000b9d8:	02 00                	add    (%eax),%al
c000b9da:	00 00                	add    %al,(%eax)
c000b9dc:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000b9e0:	0c 42                	or     $0x42,%al
c000b9e2:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b9e6:	0c 41                	or     $0x41,%al
c000b9e8:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000b9ec:	0c 42                	or     $0x42,%al
c000b9ee:	2e 10 51 2e          	adc    %dl,%cs:0x2e(%ecx)
c000b9f2:	14 42                	adc    $0x42,%al
c000b9f4:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000b9f8:	1c 45                	sbb    $0x45,%al
c000b9fa:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b9fe:	0c 45                	or     $0x45,%al
c000ba00:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ba04:	14 42                	adc    $0x42,%al
c000ba06:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ba0a:	1c 45                	sbb    $0x45,%al
c000ba0c:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ba10:	00 45 2e             	add    %al,0x2e(%ebp)
c000ba13:	04 04                	add    $0x4,%al
c000ba15:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ba1a:	08 42 2e             	or     %al,0x2e(%edx)
c000ba1d:	0c 45                	or     $0x45,%al
c000ba1f:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000ba23:	14 45                	adc    $0x45,%al
c000ba25:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ba29:	1c 45                	sbb    $0x45,%al
c000ba2b:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ba2f:	08 45 2e             	or     %al,0x2e(%ebp)
c000ba32:	0c 42                	or     $0x42,%al
c000ba34:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000ba38:	0c 41                	or     $0x41,%al
c000ba3a:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000ba3e:	0c 42                	or     $0x42,%al
c000ba40:	2e 10 4d 2e          	adc    %cl,%cs:0x2e(%ebp)
c000ba44:	04 04                	add    $0x4,%al
c000ba46:	02 00                	add    (%eax),%al
c000ba48:	00 00                	add    %al,(%eax)
c000ba4a:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ba4e:	0c 42                	or     $0x42,%al
c000ba50:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000ba54:	0c 41                	or     $0x41,%al
c000ba56:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000ba5a:	0c 42                	or     $0x42,%al
c000ba5c:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ba60:	00 00                	add    %al,(%eax)
c000ba62:	00 00                	add    %al,(%eax)
c000ba64:	2c 00                	sub    $0x0,%al
c000ba66:	00 00                	add    %al,(%eax)
c000ba68:	e8 02 00 00 04       	call   c400ba6f <_kernel_end+0x3fdecab>
c000ba6d:	83 00 c0             	addl   $0xffffffc0,(%eax)
c000ba70:	1a 00                	sbb    (%eax),%al
c000ba72:	00 00                	add    %al,(%eax)
c000ba74:	41                   	inc    %ecx
c000ba75:	0e                   	push   %cs
c000ba76:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ba7c:	43                   	inc    %ebx
c000ba7d:	2e 04 04             	cs add $0x4,%al
c000ba80:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ba85:	08 42 2e             	or     %al,0x2e(%edx)
c000ba88:	0c 43                	or     $0x43,%al
c000ba8a:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ba8e:	00 41 c5             	add    %al,-0x3b(%ecx)
c000ba91:	0c 04                	or     $0x4,%al
c000ba93:	04 1c                	add    $0x1c,%al
c000ba95:	00 00                	add    %al,(%eax)
c000ba97:	00 18                	add    %bl,(%eax)
c000ba99:	03 00                	add    (%eax),%eax
c000ba9b:	00 1e                	add    %bl,(%esi)
c000ba9d:	83 00 c0             	addl   $0xffffffc0,(%eax)
c000baa0:	23 00                	and    (%eax),%eax
c000baa2:	00 00                	add    %al,(%eax)
c000baa4:	41                   	inc    %ecx
c000baa5:	0e                   	push   %cs
c000baa6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000baac:	47                   	inc    %edi
c000baad:	0c 04                	or     $0x4,%al
c000baaf:	04 c5                	add    $0xc5,%al
c000bab1:	00 00                	add    %al,(%eax)
c000bab3:	00 50 00             	add    %dl,0x0(%eax)
c000bab6:	00 00                	add    %al,(%eax)
c000bab8:	38 03                	cmp    %al,(%ebx)
c000baba:	00 00                	add    %al,(%eax)
c000babc:	41                   	inc    %ecx
c000babd:	83 00 c0             	addl   $0xffffffc0,(%eax)
c000bac0:	be 00 00 00 41       	mov    $0x41000000,%esi
c000bac5:	0e                   	push   %cs
c000bac6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bacc:	42                   	inc    %edx
c000bacd:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000bad0:	03 46 83             	add    -0x7d(%esi),%eax
c000bad3:	05 5c 2e 04 04       	add    $0x4042e5c,%eax
c000bad8:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000badd:	08 42 2e             	or     %al,0x2e(%edx)
c000bae0:	0c 45                	or     $0x45,%al
c000bae2:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bae6:	00 02                	add    %al,(%edx)
c000bae8:	4e                   	dec    %esi
c000bae9:	2e 04 04             	cs add $0x4,%al
c000baec:	02 00                	add    (%eax),%al
c000baee:	00 00                	add    %al,(%eax)
c000baf0:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000baf4:	0c 41                	or     $0x41,%al
c000baf6:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000bafa:	00 62 c3             	add    %ah,-0x3d(%edx)
c000bafd:	41                   	inc    %ecx
c000bafe:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bb02:	0c 04                	or     $0x4,%al
c000bb04:	04 c5                	add    $0xc5,%al
c000bb06:	00 00                	add    %al,(%eax)
c000bb08:	3c 00                	cmp    $0x0,%al
c000bb0a:	00 00                	add    %al,(%eax)
c000bb0c:	8c 03                	mov    %es,(%ebx)
c000bb0e:	00 00                	add    %al,(%eax)
c000bb10:	ff 83 00 c0 68 00    	incl   0x68c000(%ebx)
c000bb16:	00 00                	add    %al,(%eax)
c000bb18:	41                   	inc    %ecx
c000bb19:	0e                   	push   %cs
c000bb1a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bb20:	46                   	inc    %esi
c000bb21:	83 05 86 04 87 03 53 	addl   $0x53,0x3870486
c000bb28:	2e 04 04             	cs add $0x4,%al
c000bb2b:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000bb30:	08 42 2e             	or     %al,0x2e(%edx)
c000bb33:	0c 45                	or     $0x45,%al
c000bb35:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bb39:	00 74 c3 41          	add    %dh,0x41(%ebx,%eax,8)
c000bb3d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bb41:	0c 04                	or     $0x4,%al
c000bb43:	04 c5                	add    $0xc5,%al
c000bb45:	00 00                	add    %al,(%eax)
c000bb47:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000bb4a:	00 00                	add    %al,(%eax)
c000bb4c:	cc                   	int3   
c000bb4d:	03 00                	add    (%eax),%eax
c000bb4f:	00 68 84             	add    %ch,-0x7c(%eax)
c000bb52:	00 c0                	add    %al,%al
c000bb54:	66 00 00             	data16 add %al,(%eax)
c000bb57:	00 41 0e             	add    %al,0xe(%ecx)
c000bb5a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000bb60:	48                   	dec    %eax
c000bb61:	83 05 86 04 87 03 67 	addl   $0x67,0x3870486
c000bb68:	2e 04 04             	cs add $0x4,%al
c000bb6b:	01 00                	add    %eax,(%eax)
c000bb6d:	00 00                	add    %al,(%eax)
c000bb6f:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bb73:	0c 42                	or     $0x42,%al
c000bb75:	2e 10 5e 2e          	adc    %bl,%cs:0x2e(%esi)
c000bb79:	00 4c c3 41          	add    %cl,0x41(%ebx,%eax,8)
c000bb7d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bb81:	0c 04                	or     $0x4,%al
c000bb83:	04 c5                	add    $0xc5,%al
c000bb85:	00 00                	add    %al,(%eax)
c000bb87:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000bb8a:	00 00                	add    %al,(%eax)
c000bb8c:	0c 04                	or     $0x4,%al
c000bb8e:	00 00                	add    %al,(%eax)
c000bb90:	ce                   	into   
c000bb91:	84 00                	test   %al,(%eax)
c000bb93:	c0 66 00 00          	shlb   $0x0,0x0(%esi)
c000bb97:	00 41 0e             	add    %al,0xe(%ecx)
c000bb9a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000bba0:	48                   	dec    %eax
c000bba1:	83 05 86 04 87 03 67 	addl   $0x67,0x3870486
c000bba8:	2e 04 04             	cs add $0x4,%al
c000bbab:	01 00                	add    %eax,(%eax)
c000bbad:	00 00                	add    %al,(%eax)
c000bbaf:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000bbb3:	0c 42                	or     $0x42,%al
c000bbb5:	2e 10 5e 2e          	adc    %bl,%cs:0x2e(%esi)
c000bbb9:	00 4c c3 41          	add    %cl,0x41(%ebx,%eax,8)
c000bbbd:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bbc1:	0c 04                	or     $0x4,%al
c000bbc3:	04 c5                	add    $0xc5,%al
c000bbc5:	00 00                	add    %al,(%eax)
c000bbc7:	00 dc                	add    %bl,%ah
c000bbc9:	00 00                	add    %al,(%eax)
c000bbcb:	00 4c 04 00          	add    %cl,0x0(%esp,%eax,1)
c000bbcf:	00 34 85 00 c0 e1 00 	add    %dh,0xe1c000(,%eax,4)
c000bbd6:	00 00                	add    %al,(%eax)
c000bbd8:	41                   	inc    %ecx
c000bbd9:	0e                   	push   %cs
c000bbda:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bbe0:	41                   	inc    %ecx
c000bbe1:	83 03 4e             	addl   $0x4e,(%ebx)
c000bbe4:	2e 0c 42             	cs or  $0x42,%al
c000bbe7:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bbeb:	00 41 2e             	add    %al,0x2e(%ecx)
c000bbee:	04 04                	add    $0x4,%al
c000bbf0:	01 00                	add    %eax,(%eax)
c000bbf2:	00 00                	add    %al,(%eax)
c000bbf4:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bbf8:	0c 42                	or     $0x42,%al
c000bbfa:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bbfe:	00 46 2e             	add    %al,0x2e(%esi)
c000bc01:	0c 42                	or     $0x42,%al
c000bc03:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc07:	0c 41                	or     $0x41,%al
c000bc09:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc0d:	0c 42                	or     $0x42,%al
c000bc0f:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc13:	0c 41                	or     $0x41,%al
c000bc15:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc19:	0c 42                	or     $0x42,%al
c000bc1b:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc1f:	0c 41                	or     $0x41,%al
c000bc21:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000bc25:	0c 42                	or     $0x42,%al
c000bc27:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc2b:	0c 41                	or     $0x41,%al
c000bc2d:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bc31:	0c 42                	or     $0x42,%al
c000bc33:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc37:	0c 41                	or     $0x41,%al
c000bc39:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc3d:	0c 42                	or     $0x42,%al
c000bc3f:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc43:	0c 41                	or     $0x41,%al
c000bc45:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000bc49:	0c 42                	or     $0x42,%al
c000bc4b:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc4f:	0c 41                	or     $0x41,%al
c000bc51:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bc55:	0c 42                	or     $0x42,%al
c000bc57:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc5b:	0c 41                	or     $0x41,%al
c000bc5d:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc61:	0c 42                	or     $0x42,%al
c000bc63:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bc67:	04 04                	add    $0x4,%al
c000bc69:	02 00                	add    (%eax),%al
c000bc6b:	00 00                	add    %al,(%eax)
c000bc6d:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000bc71:	0c 42                	or     $0x42,%al
c000bc73:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc77:	0c 41                	or     $0x41,%al
c000bc79:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bc7d:	0c 42                	or     $0x42,%al
c000bc7f:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc83:	0c 41                	or     $0x41,%al
c000bc85:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bc89:	0c 42                	or     $0x42,%al
c000bc8b:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc8f:	0c 41                	or     $0x41,%al
c000bc91:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000bc95:	0c 42                	or     $0x42,%al
c000bc97:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000bc9b:	0c 41                	or     $0x41,%al
c000bc9d:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000bca1:	0c 42                	or     $0x42,%al
c000bca3:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bca7:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000bcaa:	00 00                	add    %al,(%eax)
c000bcac:	2c 05                	sub    $0x5,%al
c000bcae:	00 00                	add    %al,(%eax)
c000bcb0:	18 86 00 c0 25 00    	sbb    %al,0x25c000(%esi)
c000bcb6:	00 00                	add    %al,(%eax)
c000bcb8:	41                   	inc    %ecx
c000bcb9:	0e                   	push   %cs
c000bcba:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bcc0:	61                   	popa   
c000bcc1:	0c 04                	or     $0x4,%al
c000bcc3:	04 c5                	add    $0xc5,%al
c000bcc5:	00 00                	add    %al,(%eax)
c000bcc7:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000bcca:	00 00                	add    %al,(%eax)
c000bccc:	4c                   	dec    %esp
c000bccd:	05 00 00 3d 86       	add    $0x863d0000,%eax
c000bcd2:	00 c0                	add    %al,%al
c000bcd4:	bb 00 00 00 41       	mov    $0x41000000,%ebx
c000bcd9:	0e                   	push   %cs
c000bcda:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bce0:	46                   	inc    %esi
c000bce1:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000bce8:	7b 2e                	jnp    c000bd18 <_edata+0x598>
c000bcea:	0c 41                	or     $0x41,%al
c000bcec:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bcf0:	00 5b 2e             	add    %bl,0x2e(%ebx)
c000bcf3:	0c 41                	or     $0x41,%al
c000bcf5:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bcf9:	00 46 c3             	add    %al,-0x3d(%esi)
c000bcfc:	41                   	inc    %ecx
c000bcfd:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bd01:	0c 04                	or     $0x4,%al
c000bd03:	04 c5                	add    $0xc5,%al
c000bd05:	00 00                	add    %al,(%eax)
c000bd07:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c000bd0b:	00 8c 05 00 00 f8 86 	add    %cl,-0x79080000(%ebp,%eax,1)
c000bd12:	00 c0                	add    %al,%al
c000bd14:	c9                   	leave  
c000bd15:	00 00                	add    %al,(%eax)
c000bd17:	00 41 0e             	add    %al,0xe(%ecx)
c000bd1a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bd20:	46                   	inc    %esi
c000bd21:	83 05 86 04 87 03 5a 	addl   $0x5a,0x3870486
c000bd28:	2e 04 04             	cs add $0x4,%al
c000bd2b:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000bd30:	08 42 2e             	or     %al,0x2e(%edx)
c000bd33:	0c 45                	or     $0x45,%al
c000bd35:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bd39:	00 4b 2e             	add    %cl,0x2e(%ebx)
c000bd3c:	0c 41                	or     $0x41,%al
c000bd3e:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bd42:	00 02                	add    %al,(%edx)
c000bd44:	6b 2e 0c             	imul   $0xc,(%esi),%ebp
c000bd47:	41                   	inc    %ecx
c000bd48:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bd4c:	00 46 c3             	add    %al,-0x3d(%esi)
c000bd4f:	41                   	inc    %ecx
c000bd50:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bd54:	0c 04                	or     $0x4,%al
c000bd56:	04 c5                	add    $0xc5,%al
c000bd58:	1c 00                	sbb    $0x0,%al
c000bd5a:	00 00                	add    %al,(%eax)
c000bd5c:	dc 05 00 00 c1 87    	faddl  0x87c10000
c000bd62:	00 c0                	add    %al,%al
c000bd64:	14 00                	adc    $0x0,%al
c000bd66:	00 00                	add    %al,(%eax)
c000bd68:	41                   	inc    %ecx
c000bd69:	0e                   	push   %cs
c000bd6a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bd70:	44                   	inc    %esp
c000bd71:	0c 04                	or     $0x4,%al
c000bd73:	04 c5                	add    $0xc5,%al
c000bd75:	00 00                	add    %al,(%eax)
c000bd77:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000bd7a:	00 00                	add    %al,(%eax)
c000bd7c:	fc                   	cld    
c000bd7d:	05 00 00 d5 87       	add    $0x87d50000,%eax
c000bd82:	00 c0                	add    %al,%al
c000bd84:	12 00                	adc    (%eax),%al
c000bd86:	00 00                	add    %al,(%eax)
c000bd88:	41                   	inc    %ecx
c000bd89:	0e                   	push   %cs
c000bd8a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bd90:	44                   	inc    %esp
c000bd91:	0c 04                	or     $0x4,%al
c000bd93:	04 c5                	add    $0xc5,%al
c000bd95:	00 00                	add    %al,(%eax)
c000bd97:	00 28                	add    %ch,(%eax)
c000bd99:	00 00                	add    %al,(%eax)
c000bd9b:	00 1c 06             	add    %bl,(%esi,%eax,1)
c000bd9e:	00 00                	add    %al,(%eax)
c000bda0:	e8 87 00 c0 4d       	call   dc0be2c <AR_CODE32+0xdbffd94>
c000bda5:	00 00                	add    %al,(%eax)
c000bda7:	00 41 0e             	add    %al,0xe(%ecx)
c000bdaa:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bdb0:	49                   	dec    %ecx
c000bdb1:	83 05 86 04 87 03 7d 	addl   $0x7d,0x3870486
c000bdb8:	c3                   	ret    
c000bdb9:	41                   	inc    %ecx
c000bdba:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bdbe:	0c 04                	or     $0x4,%al
c000bdc0:	04 c5                	add    $0xc5,%al
c000bdc2:	00 00                	add    %al,(%eax)
c000bdc4:	1c 00                	sbb    $0x0,%al
c000bdc6:	00 00                	add    %al,(%eax)
c000bdc8:	48                   	dec    %eax
c000bdc9:	06                   	push   %es
c000bdca:	00 00                	add    %al,(%eax)
c000bdcc:	35 88 00 c0 25       	xor    $0x25c00088,%eax
c000bdd1:	00 00                	add    %al,(%eax)
c000bdd3:	00 41 0e             	add    %al,0xe(%ecx)
c000bdd6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bddc:	61                   	popa   
c000bddd:	0c 04                	or     $0x4,%al
c000bddf:	04 c5                	add    $0xc5,%al
c000bde1:	00 00                	add    %al,(%eax)
c000bde3:	00 a0 00 00 00 68    	add    %ah,0x68000000(%eax)
c000bde9:	06                   	push   %es
c000bdea:	00 00                	add    %al,(%eax)
c000bdec:	5a                   	pop    %edx
c000bded:	88 00                	mov    %al,(%eax)
c000bdef:	c0 f8 00             	sar    $0x0,%al
c000bdf2:	00 00                	add    %al,(%eax)
c000bdf4:	41                   	inc    %ecx
c000bdf5:	0e                   	push   %cs
c000bdf6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bdfc:	41                   	inc    %ecx
c000bdfd:	83 03 7e             	addl   $0x7e,(%ebx)
c000be00:	2e 04 04             	cs add $0x4,%al
c000be03:	07                   	pop    %es
c000be04:	00 00                	add    %al,(%eax)
c000be06:	00 2e                	add    %ch,(%esi)
c000be08:	08 42 2e             	or     %al,0x2e(%edx)
c000be0b:	0c 42                	or     $0x42,%al
c000be0d:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000be11:	14 41                	adc    $0x41,%al
c000be13:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000be17:	1c 48                	sbb    $0x48,%al
c000be19:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000be1d:	24 42                	and    $0x42,%al
c000be1f:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000be23:	2c 41                	sub    $0x41,%al
c000be25:	2e 30 4d 2e          	xor    %cl,%cs:0x2e(%ebp)
c000be29:	00 47 2e             	add    %al,0x2e(%edi)
c000be2c:	04 04                	add    $0x4,%al
c000be2e:	02 00                	add    (%eax),%al
c000be30:	00 00                	add    %al,(%eax)
c000be32:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000be36:	0c 42                	or     $0x42,%al
c000be38:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000be3c:	14 41                	adc    $0x41,%al
c000be3e:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000be42:	1c 42                	sbb    $0x42,%al
c000be44:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000be48:	24 42                	and    $0x42,%al
c000be4a:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000be4e:	2c 41                	sub    $0x41,%al
c000be50:	2e 30 4d 2e          	xor    %cl,%cs:0x2e(%ebp)
c000be54:	00 47 2e             	add    %al,0x2e(%edi)
c000be57:	04 04                	add    $0x4,%al
c000be59:	02 00                	add    (%eax),%al
c000be5b:	00 00                	add    %al,(%eax)
c000be5d:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000be61:	0c 42                	or     $0x42,%al
c000be63:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000be67:	14 41                	adc    $0x41,%al
c000be69:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000be6d:	1c 42                	sbb    $0x42,%al
c000be6f:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000be73:	24 42                	and    $0x42,%al
c000be75:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000be79:	2c 41                	sub    $0x41,%al
c000be7b:	2e 30 48 2e          	xor    %cl,%cs:0x2e(%eax)
c000be7f:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000be83:	04 04                	add    $0x4,%al
c000be85:	c3                   	ret    
c000be86:	00 00                	add    %al,(%eax)
c000be88:	28 00                	sub    %al,(%eax)
c000be8a:	00 00                	add    %al,(%eax)
c000be8c:	0c 07                	or     $0x7,%al
c000be8e:	00 00                	add    %al,(%eax)
c000be90:	52                   	push   %edx
c000be91:	89 00                	mov    %eax,(%eax)
c000be93:	c0 95 00 00 00 41 0e 	rclb   $0xe,0x41000000(%ebp)
c000be9a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bea0:	46                   	inc    %esi
c000bea1:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000bea8:	88 c3                	mov    %al,%bl
c000beaa:	41                   	inc    %ecx
c000beab:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000beaf:	0c 04                	or     $0x4,%al
c000beb1:	04 c5                	add    $0xc5,%al
c000beb3:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c000beb7:	00 38                	add    %bh,(%eax)
c000beb9:	07                   	pop    %es
c000beba:	00 00                	add    %al,(%eax)
c000bebc:	e7 89                	out    %eax,$0x89
c000bebe:	00 c0                	add    %al,%al
c000bec0:	37                   	aaa    
c000bec1:	00 00                	add    %al,(%eax)
c000bec3:	00 41 0e             	add    %al,0xe(%ecx)
c000bec6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000becc:	41                   	inc    %ecx
c000becd:	87 03                	xchg   %eax,(%ebx)
c000becf:	44                   	inc    %esp
c000bed0:	86 04 04             	xchg   %al,(%esp,%eax,1)
c000bed3:	04 00                	add    $0x0,%al
c000bed5:	00 00                	add    %al,(%eax)
c000bed7:	83 05 4a 2e 04 04 01 	addl   $0x1,0x4042e4a
c000bede:	00 00                	add    %al,(%eax)
c000bee0:	00 2e                	add    %ch,(%esi)
c000bee2:	08 43 2e             	or     %al,0x2e(%ebx)
c000bee5:	0c 41                	or     $0x41,%al
c000bee7:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000beeb:	14 48                	adc    $0x48,%al
c000beed:	2e 00 4a c3          	add    %cl,%cs:-0x3d(%edx)
c000bef1:	41                   	inc    %ecx
c000bef2:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000bef6:	0c 04                	or     $0x4,%al
c000bef8:	04 c5                	add    $0xc5,%al
c000befa:	00 00                	add    %al,(%eax)
c000befc:	34 00                	xor    $0x0,%al
c000befe:	00 00                	add    %al,(%eax)
c000bf00:	80 07 00             	addb   $0x0,(%edi)
c000bf03:	00 20                	add    %ah,(%eax)
c000bf05:	8a 00                	mov    (%eax),%al
c000bf07:	c0 4a 00 00          	rorb   $0x0,0x0(%edx)
c000bf0b:	00 41 0e             	add    %al,0xe(%ecx)
c000bf0e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bf14:	43                   	inc    %ebx
c000bf15:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bf19:	0c 42                	or     $0x42,%al
c000bf1b:	2e 10 6b 2e          	adc    %ch,%cs:0x2e(%ebx)
c000bf1f:	0c 41                	or     $0x41,%al
c000bf21:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000bf25:	0c 42                	or     $0x42,%al
c000bf27:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000bf2b:	00 41 c5             	add    %al,-0x3b(%ecx)
c000bf2e:	0c 04                	or     $0x4,%al
c000bf30:	04 00                	add    $0x0,%al
c000bf32:	00 00                	add    %al,(%eax)
c000bf34:	1c 00                	sbb    $0x0,%al
c000bf36:	00 00                	add    %al,(%eax)
c000bf38:	b8 07 00 00 a4       	mov    $0xa4000007,%eax
c000bf3d:	93                   	xchg   %eax,%ebx
c000bf3e:	00 c0                	add    %al,%al
c000bf40:	10 00                	adc    %al,(%eax)
c000bf42:	00 00                	add    %al,(%eax)
c000bf44:	41                   	inc    %ecx
c000bf45:	0e                   	push   %cs
c000bf46:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000bf4c:	47                   	inc    %edi
c000bf4d:	0c 04                	or     $0x4,%al
c000bf4f:	04 c5                	add    $0xc5,%al
c000bf51:	00 00                	add    %al,(%eax)
c000bf53:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000bf56:	00 00                	add    %al,(%eax)
c000bf58:	d8 07                	fadds  (%edi)
c000bf5a:	00 00                	add    %al,(%eax)
c000bf5c:	b4 93                	mov    $0x93,%ah
c000bf5e:	00 c0                	add    %al,%al
c000bf60:	3d 00 00 00 41       	cmp    $0x41000000,%eax
c000bf65:	0e                   	push   %cs
c000bf66:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000bf6c:	74 0c                	je     c000bf7a <_edata+0x7fa>
c000bf6e:	04 04                	add    $0x4,%al
c000bf70:	c5 00                	lds    (%eax),%eax
c000bf72:	00 00                	add    %al,(%eax)
c000bf74:	1c 00                	sbb    $0x0,%al
c000bf76:	00 00                	add    %al,(%eax)
c000bf78:	f8                   	clc    
c000bf79:	07                   	pop    %es
c000bf7a:	00 00                	add    %al,(%eax)
c000bf7c:	f1                   	icebp  
c000bf7d:	93                   	xchg   %eax,%ebx
c000bf7e:	00 c0                	add    %al,%al
c000bf80:	69 00 00 00 41 0e    	imul   $0xe410000,(%eax),%eax
c000bf86:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000bf8c:	02 63 0c             	add    0xc(%ebx),%ah
c000bf8f:	04 04                	add    $0x4,%al
c000bf91:	c5 00                	lds    (%eax),%eax
c000bf93:	00 20                	add    %ah,(%eax)
c000bf95:	00 00                	add    %al,(%eax)
c000bf97:	00 18                	add    %bl,(%eax)
c000bf99:	08 00                	or     %al,(%eax)
c000bf9b:	00 5a 94             	add    %bl,-0x6c(%edx)
c000bf9e:	00 c0                	add    %al,%al
c000bfa0:	2c 00                	sub    $0x0,%al
c000bfa2:	00 00                	add    %al,(%eax)
c000bfa4:	41                   	inc    %ecx
c000bfa5:	0e                   	push   %cs
c000bfa6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bfac:	44                   	inc    %esp
c000bfad:	83 03 63             	addl   $0x63,(%ebx)
c000bfb0:	c3                   	ret    
c000bfb1:	41                   	inc    %ecx
c000bfb2:	0c 04                	or     $0x4,%al
c000bfb4:	04 c5                	add    $0xc5,%al
c000bfb6:	00 00                	add    %al,(%eax)
c000bfb8:	1c 00                	sbb    $0x0,%al
c000bfba:	00 00                	add    %al,(%eax)
c000bfbc:	3c 08                	cmp    $0x8,%al
c000bfbe:	00 00                	add    %al,(%eax)
c000bfc0:	86 94 00 c0 cd 00 00 	xchg   %dl,0xcdc0(%eax,%eax,1)
c000bfc7:	00 41 0e             	add    %al,0xe(%ecx)
c000bfca:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bfd0:	02 c9                	add    %cl,%cl
c000bfd2:	0c 04                	or     $0x4,%al
c000bfd4:	04 c5                	add    $0xc5,%al
c000bfd6:	00 00                	add    %al,(%eax)
c000bfd8:	1c 00                	sbb    $0x0,%al
c000bfda:	00 00                	add    %al,(%eax)
c000bfdc:	5c                   	pop    %esp
c000bfdd:	08 00                	or     %al,(%eax)
c000bfdf:	00 53 95             	add    %dl,-0x6b(%ebx)
c000bfe2:	00 c0                	add    %al,%al
c000bfe4:	32 00                	xor    (%eax),%al
c000bfe6:	00 00                	add    %al,(%eax)
c000bfe8:	41                   	inc    %ecx
c000bfe9:	0e                   	push   %cs
c000bfea:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000bff0:	6e                   	outsb  %ds:(%esi),(%dx)
c000bff1:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000bff4:	04 00                	add    $0x0,%al
c000bff6:	00 00                	add    %al,(%eax)
c000bff8:	1c 00                	sbb    $0x0,%al
c000bffa:	00 00                	add    %al,(%eax)
c000bffc:	7c 08                	jl     c000c006 <_edata+0x886>
c000bffe:	00 00                	add    %al,(%eax)
c000c000:	85 95 00 c0 10 00    	test   %edx,0x10c000(%ebp)
c000c006:	00 00                	add    %al,(%eax)
c000c008:	41                   	inc    %ecx
c000c009:	0e                   	push   %cs
c000c00a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c010:	4c                   	dec    %esp
c000c011:	0c 04                	or     $0x4,%al
c000c013:	04 c5                	add    $0xc5,%al
c000c015:	00 00                	add    %al,(%eax)
c000c017:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c01a:	00 00                	add    %al,(%eax)
c000c01c:	9c                   	pushf  
c000c01d:	08 00                	or     %al,(%eax)
c000c01f:	00 95 95 00 c0 14    	add    %dl,0x14c00095(%ebp)
c000c025:	00 00                	add    %al,(%eax)
c000c027:	00 41 0e             	add    %al,0xe(%ecx)
c000c02a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c030:	50                   	push   %eax
c000c031:	0c 04                	or     $0x4,%al
c000c033:	04 c5                	add    $0xc5,%al
c000c035:	00 00                	add    %al,(%eax)
c000c037:	00 e4                	add    %ah,%ah
c000c039:	00 00                	add    %al,(%eax)
c000c03b:	00 bc 08 00 00 a9 95 	add    %bh,-0x6a570000(%eax,%ecx,1)
c000c042:	00 c0                	add    %al,%al
c000c044:	f7 00 00 00 41 0e    	testl  $0xe410000,(%eax)
c000c04a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c050:	41                   	inc    %ecx
c000c051:	86 03                	xchg   %al,(%ebx)
c000c053:	46                   	inc    %esi
c000c054:	83 04 04 0b          	addl   $0xb,(%esp,%eax,1)
c000c058:	00 00                	add    %al,(%eax)
c000c05a:	00 2e                	add    %ch,(%esi)
c000c05c:	0c 42                	or     $0x42,%al
c000c05e:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c062:	00 41 2e             	add    %al,0x2e(%ecx)
c000c065:	04 04                	add    $0x4,%al
c000c067:	01 00                	add    %eax,(%eax)
c000c069:	00 00                	add    %al,(%eax)
c000c06b:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000c06f:	0c 42                	or     $0x42,%al
c000c071:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c075:	00 46 2e             	add    %al,0x2e(%esi)
c000c078:	0c 42                	or     $0x42,%al
c000c07a:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c07e:	0c 41                	or     $0x41,%al
c000c080:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c084:	0c 42                	or     $0x42,%al
c000c086:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c08a:	0c 41                	or     $0x41,%al
c000c08c:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c090:	0c 42                	or     $0x42,%al
c000c092:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c096:	0c 41                	or     $0x41,%al
c000c098:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c09c:	0c 42                	or     $0x42,%al
c000c09e:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c0a2:	0c 41                	or     $0x41,%al
c000c0a4:	2e 08 48 2e          	or     %cl,%cs:0x2e(%eax)
c000c0a8:	0c 42                	or     $0x42,%al
c000c0aa:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c0ae:	04 04                	add    $0x4,%al
c000c0b0:	02 00                	add    (%eax),%al
c000c0b2:	00 00                	add    %al,(%eax)
c000c0b4:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c0b8:	0c 42                	or     $0x42,%al
c000c0ba:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c0be:	0c 41                	or     $0x41,%al
c000c0c0:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c0c4:	0c 42                	or     $0x42,%al
c000c0c6:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c0ca:	00 46 2e             	add    %al,0x2e(%esi)
c000c0cd:	04 04                	add    $0x4,%al
c000c0cf:	01 00                	add    %eax,(%eax)
c000c0d1:	00 00                	add    %al,(%eax)
c000c0d3:	2e 08 47 2e          	or     %al,%cs:0x2e(%edi)
c000c0d7:	0c 42                	or     $0x42,%al
c000c0d9:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c0dd:	00 49 2e             	add    %cl,0x2e(%ecx)
c000c0e0:	04 04                	add    $0x4,%al
c000c0e2:	01 00                	add    %eax,(%eax)
c000c0e4:	00 00                	add    %al,(%eax)
c000c0e6:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c0ea:	0c 42                	or     $0x42,%al
c000c0ec:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c0f0:	04 04                	add    $0x4,%al
c000c0f2:	02 00                	add    (%eax),%al
c000c0f4:	00 00                	add    %al,(%eax)
c000c0f6:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c0fa:	0c 42                	or     $0x42,%al
c000c0fc:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c100:	0c 41                	or     $0x41,%al
c000c102:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c106:	0c 42                	or     $0x42,%al
c000c108:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c10c:	00 41 2e             	add    %al,0x2e(%ecx)
c000c10f:	04 04                	add    $0x4,%al
c000c111:	01 00                	add    %eax,(%eax)
c000c113:	00 00                	add    %al,(%eax)
c000c115:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c119:	0c 42                	or     $0x42,%al
c000c11b:	2e 10 4d 2e          	adc    %cl,%cs:0x2e(%ebp)
c000c11f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c122:	00 00                	add    %al,(%eax)
c000c124:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c000c125:	09 00                	or     %eax,(%eax)
c000c127:	00 a0 96 00 c0 17    	add    %ah,0x17c00096(%eax)
c000c12d:	00 00                	add    %al,(%eax)
c000c12f:	00 41 0e             	add    %al,0xe(%ecx)
c000c132:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c138:	53                   	push   %ebx
c000c139:	0c 04                	or     $0x4,%al
c000c13b:	04 c5                	add    $0xc5,%al
c000c13d:	00 00                	add    %al,(%eax)
c000c13f:	00 24 00             	add    %ah,(%eax,%eax,1)
c000c142:	00 00                	add    %al,(%eax)
c000c144:	c4 09                	les    (%ecx),%ecx
c000c146:	00 00                	add    %al,(%eax)
c000c148:	b7 96                	mov    $0x96,%bh
c000c14a:	00 c0                	add    %al,%al
c000c14c:	15 00 00 00 41       	adc    $0x41000000,%eax
c000c151:	0e                   	push   %cs
c000c152:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c158:	47                   	inc    %edi
c000c159:	0a 0c 04             	or     (%esp,%eax,1),%cl
c000c15c:	04 c5                	add    $0xc5,%al
c000c15e:	45                   	inc    %ebp
c000c15f:	0b 41 0c             	or     0xc(%ecx),%eax
c000c162:	04 04                	add    $0x4,%al
c000c164:	c5 00                	lds    (%eax),%eax
c000c166:	00 00                	add    %al,(%eax)
c000c168:	2c 00                	sub    $0x0,%al
c000c16a:	00 00                	add    %al,(%eax)
c000c16c:	ec                   	in     (%dx),%al
c000c16d:	09 00                	or     %eax,(%eax)
c000c16f:	00 cc                	add    %cl,%ah
c000c171:	96                   	xchg   %eax,%esi
c000c172:	00 c0                	add    %al,%al
c000c174:	1e                   	push   %ds
c000c175:	00 00                	add    %al,(%eax)
c000c177:	00 41 0e             	add    %al,0xe(%ecx)
c000c17a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c180:	45                   	inc    %ebp
c000c181:	2e 04 04             	cs add $0x4,%al
c000c184:	02 00                	add    (%eax),%al
c000c186:	00 00                	add    %al,(%eax)
c000c188:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c18c:	0c 45                	or     $0x45,%al
c000c18e:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c192:	00 41 c5             	add    %al,-0x3b(%ecx)
c000c195:	0c 04                	or     $0x4,%al
c000c197:	04 68                	add    $0x68,%al
c000c199:	00 00                	add    %al,(%eax)
c000c19b:	00 1c 0a             	add    %bl,(%edx,%ecx,1)
c000c19e:	00 00                	add    %al,(%eax)
c000c1a0:	ea 96 00 c0 dd 01 00 	ljmp   $0x1,$0xddc00096
c000c1a7:	00 41 0e             	add    %al,0xe(%ecx)
c000c1aa:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000c1b0:	46                   	inc    %esi
c000c1b1:	83 03 03             	addl   $0x3,(%ebx)
c000c1b4:	1b 01                	sbb    (%ecx),%eax
c000c1b6:	2e 04 04             	cs add $0x4,%al
c000c1b9:	04 00                	add    $0x0,%al
c000c1bb:	00 00                	add    %al,(%eax)
c000c1bd:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c1c1:	0c 42                	or     $0x42,%al
c000c1c3:	2e 10 54 2e 00       	adc    %dl,%cs:0x0(%esi,%ebp,1)
c000c1c8:	49                   	dec    %ecx
c000c1c9:	2e 04 04             	cs add $0x4,%al
c000c1cc:	01 00                	add    %eax,(%eax)
c000c1ce:	00 00                	add    %al,(%eax)
c000c1d0:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c1d4:	0c 42                	or     $0x42,%al
c000c1d6:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c1da:	0c 41                	or     $0x41,%al
c000c1dc:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000c1e1:	45                   	inc    %ebp
c000c1e2:	2e 10 47 2e          	adc    %al,%cs:0x2e(%edi)
c000c1e6:	00 02                	add    %al,(%edx)
c000c1e8:	5c                   	pop    %esp
c000c1e9:	2e 04 04             	cs add $0x4,%al
c000c1ec:	01 00                	add    %eax,(%eax)
c000c1ee:	00 00                	add    %al,(%eax)
c000c1f0:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c1f4:	0c 42                	or     $0x42,%al
c000c1f6:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c1fa:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000c1fe:	04 04                	add    $0x4,%al
c000c200:	c3                   	ret    
c000c201:	00 00                	add    %al,(%eax)
c000c203:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c206:	00 00                	add    %al,(%eax)
c000c208:	88 0a                	mov    %cl,(%edx)
c000c20a:	00 00                	add    %al,(%eax)
c000c20c:	c8 98 00 c0          	enter  $0x98,$0xc0
c000c210:	1e                   	push   %ds
c000c211:	00 00                	add    %al,(%eax)
c000c213:	00 41 0e             	add    %al,0xe(%ecx)
c000c216:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c21c:	5a                   	pop    %edx
c000c21d:	0c 04                	or     $0x4,%al
c000c21f:	04 c5                	add    $0xc5,%al
c000c221:	00 00                	add    %al,(%eax)
c000c223:	00 28                	add    %ch,(%eax)
c000c225:	00 00                	add    %al,(%eax)
c000c227:	00 a8 0a 00 00 e6    	add    %ch,-0x19fffff6(%eax)
c000c22d:	98                   	cwtl   
c000c22e:	00 c0                	add    %al,%al
c000c230:	29 00                	sub    %eax,(%eax)
c000c232:	00 00                	add    %al,(%eax)
c000c234:	41                   	inc    %ecx
c000c235:	0e                   	push   %cs
c000c236:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c23c:	41                   	inc    %ecx
c000c23d:	86 03                	xchg   %al,(%ebx)
c000c23f:	44                   	inc    %esp
c000c240:	83 04 04 1a          	addl   $0x1a,(%esp,%eax,1)
c000c244:	00 00                	add    %al,(%eax)
c000c246:	00 c3                	add    %al,%bl
c000c248:	41                   	inc    %ecx
c000c249:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c24d:	04 c5                	add    $0xc5,%al
c000c24f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c252:	00 00                	add    %al,(%eax)
c000c254:	d4 0a                	aam    $0xa
c000c256:	00 00                	add    %al,(%eax)
c000c258:	0f 99 00             	setns  (%eax)
c000c25b:	c0 18 00             	rcrb   $0x0,(%eax)
c000c25e:	00 00                	add    %al,(%eax)
c000c260:	41                   	inc    %ecx
c000c261:	0e                   	push   %cs
c000c262:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c268:	50                   	push   %eax
c000c269:	0c 04                	or     $0x4,%al
c000c26b:	04 c5                	add    $0xc5,%al
c000c26d:	00 00                	add    %al,(%eax)
c000c26f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c272:	00 00                	add    %al,(%eax)
c000c274:	f4                   	hlt    
c000c275:	0a 00                	or     (%eax),%al
c000c277:	00 27                	add    %ah,(%edi)
c000c279:	99                   	cltd   
c000c27a:	00 c0                	add    %al,%al
c000c27c:	18 00                	sbb    %al,(%eax)
c000c27e:	00 00                	add    %al,(%eax)
c000c280:	41                   	inc    %ecx
c000c281:	0e                   	push   %cs
c000c282:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c288:	50                   	push   %eax
c000c289:	0c 04                	or     $0x4,%al
c000c28b:	04 c5                	add    $0xc5,%al
c000c28d:	00 00                	add    %al,(%eax)
c000c28f:	00 28                	add    %ch,(%eax)
c000c291:	00 00                	add    %al,(%eax)
c000c293:	00 14 0b             	add    %dl,(%ebx,%ecx,1)
c000c296:	00 00                	add    %al,(%eax)
c000c298:	3f                   	aas    
c000c299:	99                   	cltd   
c000c29a:	00 c0                	add    %al,%al
c000c29c:	3f                   	aas    
c000c29d:	00 00                	add    %al,(%eax)
c000c29f:	00 41 0e             	add    %al,0xe(%ecx)
c000c2a2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c2a8:	42                   	inc    %edx
c000c2a9:	83 03 6d             	addl   $0x6d,(%ebx)
c000c2ac:	2e 0c 41             	cs or  $0x41,%al
c000c2af:	2e 10 4b c5          	adc    %cl,%cs:-0x3b(%ebx)
c000c2b3:	0c 04                	or     $0x4,%al
c000c2b5:	04 c3                	add    $0xc3,%al
c000c2b7:	41                   	inc    %ecx
c000c2b8:	13 03                	adc    (%ebx),%eax
c000c2ba:	2e 00 1c 00          	add    %bl,%cs:(%eax,%eax,1)
c000c2be:	00 00                	add    %al,(%eax)
c000c2c0:	40                   	inc    %eax
c000c2c1:	0b 00                	or     (%eax),%eax
c000c2c3:	00 7e 99             	add    %bh,-0x67(%esi)
c000c2c6:	00 c0                	add    %al,%al
c000c2c8:	12 00                	adc    (%eax),%al
c000c2ca:	00 00                	add    %al,(%eax)
c000c2cc:	41                   	inc    %ecx
c000c2cd:	0e                   	push   %cs
c000c2ce:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c2d4:	4a                   	dec    %edx
c000c2d5:	0c 04                	or     $0x4,%al
c000c2d7:	04 c5                	add    $0xc5,%al
c000c2d9:	00 00                	add    %al,(%eax)
c000c2db:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c2de:	00 00                	add    %al,(%eax)
c000c2e0:	60                   	pusha  
c000c2e1:	0b 00                	or     (%eax),%eax
c000c2e3:	00 90 99 00 c0 27    	add    %dl,0x27c00099(%eax)
c000c2e9:	00 00                	add    %al,(%eax)
c000c2eb:	00 41 0e             	add    %al,0xe(%ecx)
c000c2ee:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c2f4:	63 0c 04             	arpl   %cx,(%esp,%eax,1)
c000c2f7:	04 c5                	add    $0xc5,%al
c000c2f9:	00 00                	add    %al,(%eax)
c000c2fb:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000c2fe:	00 00                	add    %al,(%eax)
c000c300:	80 0b 00             	orb    $0x0,(%ebx)
c000c303:	00 b7 99 00 c0 38    	add    %dh,0x38c00099(%edi)
c000c309:	00 00                	add    %al,(%eax)
c000c30b:	00 41 0e             	add    %al,0xe(%ecx)
c000c30e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c314:	46                   	inc    %esi
c000c315:	83 05 86 04 87 03 4f 	addl   $0x4f,0x3870486
c000c31c:	2e 04 04             	cs add $0x4,%al
c000c31f:	01 00                	add    %eax,(%eax)
c000c321:	00 00                	add    %al,(%eax)
c000c323:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c327:	0c 41                	or     $0x41,%al
c000c329:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c32d:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000c330:	41                   	inc    %ecx
c000c331:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c335:	0c 04                	or     $0x4,%al
c000c337:	04 c5                	add    $0xc5,%al
c000c339:	00 00                	add    %al,(%eax)
c000c33b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c33e:	00 00                	add    %al,(%eax)
c000c340:	c0 0b 00             	rorb   $0x0,(%ebx)
c000c343:	00 ef                	add    %ch,%bh
c000c345:	99                   	cltd   
c000c346:	00 c0                	add    %al,%al
c000c348:	1a 00                	sbb    (%eax),%al
c000c34a:	00 00                	add    %al,(%eax)
c000c34c:	41                   	inc    %ecx
c000c34d:	0e                   	push   %cs
c000c34e:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c354:	54                   	push   %esp
c000c355:	0c 04                	or     $0x4,%al
c000c357:	04 c5                	add    $0xc5,%al
c000c359:	00 00                	add    %al,(%eax)
c000c35b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c35e:	00 00                	add    %al,(%eax)
c000c360:	e0 0b                	loopne c000c36d <_edata+0xbed>
c000c362:	00 00                	add    %al,(%eax)
c000c364:	09 9a 00 c0 14 00    	or     %ebx,0x14c000(%edx)
c000c36a:	00 00                	add    %al,(%eax)
c000c36c:	41                   	inc    %ecx
c000c36d:	0e                   	push   %cs
c000c36e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c374:	44                   	inc    %esp
c000c375:	0c 04                	or     $0x4,%al
c000c377:	04 c5                	add    $0xc5,%al
c000c379:	00 00                	add    %al,(%eax)
c000c37b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c37e:	00 00                	add    %al,(%eax)
c000c380:	00 0c 00             	add    %cl,(%eax,%eax,1)
c000c383:	00 20                	add    %ah,(%eax)
c000c385:	9a 00 c0 23 00 00 00 	lcall  $0x0,$0x23c000
c000c38c:	41                   	inc    %ecx
c000c38d:	0e                   	push   %cs
c000c38e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c394:	5f                   	pop    %edi
c000c395:	0c 04                	or     $0x4,%al
c000c397:	04 c5                	add    $0xc5,%al
c000c399:	00 00                	add    %al,(%eax)
c000c39b:	00 20                	add    %ah,(%eax)
c000c39d:	00 00                	add    %al,(%eax)
c000c39f:	00 20                	add    %ah,(%eax)
c000c3a1:	0c 00                	or     $0x0,%al
c000c3a3:	00 43 9a             	add    %al,-0x66(%ebx)
c000c3a6:	00 c0                	add    %al,%al
c000c3a8:	1b 00                	sbb    (%eax),%eax
c000c3aa:	00 00                	add    %al,(%eax)
c000c3ac:	41                   	inc    %ecx
c000c3ad:	0e                   	push   %cs
c000c3ae:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c3b4:	46                   	inc    %esi
c000c3b5:	83 03 4e             	addl   $0x4e,(%ebx)
c000c3b8:	c3                   	ret    
c000c3b9:	41                   	inc    %ecx
c000c3ba:	0c 04                	or     $0x4,%al
c000c3bc:	04 c5                	add    $0xc5,%al
c000c3be:	00 00                	add    %al,(%eax)
c000c3c0:	28 00                	sub    %al,(%eax)
c000c3c2:	00 00                	add    %al,(%eax)
c000c3c4:	44                   	inc    %esp
c000c3c5:	0c 00                	or     $0x0,%al
c000c3c7:	00 5e 9a             	add    %bl,-0x66(%esi)
c000c3ca:	00 c0                	add    %al,%al
c000c3cc:	62 00                	bound  %eax,(%eax)
c000c3ce:	00 00                	add    %al,(%eax)
c000c3d0:	41                   	inc    %ecx
c000c3d1:	0e                   	push   %cs
c000c3d2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c3d8:	44                   	inc    %esp
c000c3d9:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000c3e0:	57                   	push   %edi
c000c3e1:	c3                   	ret    
c000c3e2:	41                   	inc    %ecx
c000c3e3:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c3e7:	0c 04                	or     $0x4,%al
c000c3e9:	04 c5                	add    $0xc5,%al
c000c3eb:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c3ee:	00 00                	add    %al,(%eax)
c000c3f0:	70 0c                	jo     c000c3fe <_edata+0xc7e>
c000c3f2:	00 00                	add    %al,(%eax)
c000c3f4:	c0 9a 00 c0 0d 00 00 	rcrb   $0x0,0xdc000(%edx)
c000c3fb:	00 41 0e             	add    %al,0xe(%ecx)
c000c3fe:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c404:	45                   	inc    %ebp
c000c405:	0c 04                	or     $0x4,%al
c000c407:	04 c5                	add    $0xc5,%al
c000c409:	00 00                	add    %al,(%eax)
c000c40b:	00 28                	add    %ch,(%eax)
c000c40d:	00 00                	add    %al,(%eax)
c000c40f:	00 90 0c 00 00 cd    	add    %dl,-0x32fffff4(%eax)
c000c415:	9a 00 c0 0a 01 00 00 	lcall  $0x0,$0x10ac000
c000c41c:	41                   	inc    %ecx
c000c41d:	0e                   	push   %cs
c000c41e:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c424:	46                   	inc    %esi
c000c425:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000c42c:	fb                   	sti    
c000c42d:	c3                   	ret    
c000c42e:	41                   	inc    %ecx
c000c42f:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c433:	0c 04                	or     $0x4,%al
c000c435:	04 c5                	add    $0xc5,%al
c000c437:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c43a:	00 00                	add    %al,(%eax)
c000c43c:	bc 0c 00 00 d7       	mov    $0xd700000c,%esp
c000c441:	9b                   	fwait
c000c442:	00 c0                	add    %al,%al
c000c444:	0d 00 00 00 41       	or     $0x41000000,%eax
c000c449:	0e                   	push   %cs
c000c44a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c450:	45                   	inc    %ebp
c000c451:	0c 04                	or     $0x4,%al
c000c453:	04 c5                	add    $0xc5,%al
c000c455:	00 00                	add    %al,(%eax)
c000c457:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c000c45b:	00 dc                	add    %bl,%ah
c000c45d:	0c 00                	or     $0x0,%al
c000c45f:	00 e4                	add    %ah,%ah
c000c461:	9b                   	fwait
c000c462:	00 c0                	add    %al,%al
c000c464:	55                   	push   %ebp
c000c465:	00 00                	add    %al,(%eax)
c000c467:	00 41 0e             	add    %al,0xe(%ecx)
c000c46a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c470:	42                   	inc    %edx
c000c471:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000c475:	4f                   	dec    %edi
c000c476:	2e 04 04             	cs add $0x4,%al
c000c479:	07                   	pop    %es
c000c47a:	00 00                	add    %al,(%eax)
c000c47c:	00 2e                	add    %ch,(%esi)
c000c47e:	08 4b 2e             	or     %cl,0x2e(%ebx)
c000c481:	0c 46                	or     $0x46,%al
c000c483:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000c487:	14 45                	adc    $0x45,%al
c000c489:	2e 18 4a 2e          	sbb    %cl,%cs:0x2e(%edx)
c000c48d:	1c 45                	sbb    $0x45,%al
c000c48f:	2e 20 45 2e          	and    %al,%cs:0x2e(%ebp)
c000c493:	24 48                	and    $0x48,%al
c000c495:	2e 00 44 c3 41       	add    %al,%cs:0x41(%ebx,%eax,8)
c000c49a:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c49e:	04 c5                	add    $0xc5,%al
c000c4a0:	1c 00                	sbb    $0x0,%al
c000c4a2:	00 00                	add    %al,(%eax)
c000c4a4:	24 0d                	and    $0xd,%al
c000c4a6:	00 00                	add    %al,(%eax)
c000c4a8:	39 9c 00 c0 12 00 00 	cmp    %ebx,0x12c0(%eax,%eax,1)
c000c4af:	00 41 0e             	add    %al,0xe(%ecx)
c000c4b2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c4b8:	44                   	inc    %esp
c000c4b9:	0c 04                	or     $0x4,%al
c000c4bb:	04 c5                	add    $0xc5,%al
c000c4bd:	00 00                	add    %al,(%eax)
c000c4bf:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c4c2:	00 00                	add    %al,(%eax)
c000c4c4:	44                   	inc    %esp
c000c4c5:	0d 00 00 4b 9c       	or     $0x9c4b0000,%eax
c000c4ca:	00 c0                	add    %al,%al
c000c4cc:	22 00                	and    (%eax),%al
c000c4ce:	00 00                	add    %al,(%eax)
c000c4d0:	41                   	inc    %ecx
c000c4d1:	0e                   	push   %cs
c000c4d2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c4d8:	44                   	inc    %esp
c000c4d9:	0c 04                	or     $0x4,%al
c000c4db:	04 c5                	add    $0xc5,%al
c000c4dd:	00 00                	add    %al,(%eax)
c000c4df:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c000c4e3:	00 64 0d 00          	add    %ah,0x0(%ebp,%ecx,1)
c000c4e7:	00 6d 9c             	add    %ch,-0x64(%ebp)
c000c4ea:	00 c0                	add    %al,%al
c000c4ec:	70 00                	jo     c000c4ee <_edata+0xd6e>
c000c4ee:	00 00                	add    %al,(%eax)
c000c4f0:	41                   	inc    %ecx
c000c4f1:	0e                   	push   %cs
c000c4f2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c4f8:	46                   	inc    %esi
c000c4f9:	83 05 86 04 87 03 47 	addl   $0x47,0x3870486
c000c500:	2e 04 04             	cs add $0x4,%al
c000c503:	13 00                	adc    (%eax),%eax
c000c505:	00 00                	add    %al,(%eax)
c000c507:	2e 00 52 2e          	add    %dl,%cs:0x2e(%edx)
c000c50b:	04 04                	add    $0x4,%al
c000c50d:	08 00                	or     %al,(%eax)
c000c50f:	00 00                	add    %al,(%eax)
c000c511:	2e 08 48 2e          	or     %cl,%cs:0x2e(%eax)
c000c515:	14 51                	adc    $0x51,%al
c000c517:	2e 18 47 2e          	sbb    %al,%cs:0x2e(%edi)
c000c51b:	1c 41                	sbb    $0x41,%al
c000c51d:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000c521:	00 46 c3             	add    %al,-0x3d(%esi)
c000c524:	41                   	inc    %ecx
c000c525:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c529:	0c 04                	or     $0x4,%al
c000c52b:	04 c5                	add    $0xc5,%al
c000c52d:	00 00                	add    %al,(%eax)
c000c52f:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c000c533:	00 b4 0d 00 00 dd 9c 	add    %dh,-0x63230000(%ebp,%ecx,1)
c000c53a:	00 c0                	add    %al,%al
c000c53c:	6a 00                	push   $0x0
c000c53e:	00 00                	add    %al,(%eax)
c000c540:	41                   	inc    %ecx
c000c541:	0e                   	push   %cs
c000c542:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c548:	46                   	inc    %esi
c000c549:	83 05 86 04 87 03 58 	addl   $0x58,0x3870486
c000c550:	2e 04 04             	cs add $0x4,%al
c000c553:	03 00                	add    (%eax),%eax
c000c555:	00 00                	add    %al,(%eax)
c000c557:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000c55b:	04 04                	add    $0x4,%al
c000c55d:	01 00                	add    %eax,(%eax)
c000c55f:	00 00                	add    %al,(%eax)
c000c561:	2e 00 4c 2e 04       	add    %cl,%cs:0x4(%esi,%ebp,1)
c000c566:	04 03                	add    $0x3,%al
c000c568:	00 00                	add    %al,(%eax)
c000c56a:	00 2e                	add    %ch,(%esi)
c000c56c:	08 46 2e             	or     %al,0x2e(%esi)
c000c56f:	04 04                	add    $0x4,%al
c000c571:	01 00                	add    %eax,(%eax)
c000c573:	00 00                	add    %al,(%eax)
c000c575:	2e 00 45 2e          	add    %al,%cs:0x2e(%ebp)
c000c579:	04 04                	add    $0x4,%al
c000c57b:	02 00                	add    (%eax),%al
c000c57d:	00 00                	add    %al,(%eax)
c000c57f:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c583:	0c 41                	or     $0x41,%al
c000c585:	2e 10 4e 2e          	adc    %cl,%cs:0x2e(%esi)
c000c589:	00 4e c3             	add    %cl,-0x3d(%esi)
c000c58c:	41                   	inc    %ecx
c000c58d:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c591:	0c 04                	or     $0x4,%al
c000c593:	04 c5                	add    $0xc5,%al
c000c595:	00 00                	add    %al,(%eax)
c000c597:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
c000c59b:	00 1c 0e             	add    %bl,(%esi,%ecx,1)
c000c59e:	00 00                	add    %al,(%eax)
c000c5a0:	47                   	inc    %edi
c000c5a1:	9d                   	popf   
c000c5a2:	00 c0                	add    %al,%al
c000c5a4:	5a                   	pop    %edx
c000c5a5:	00 00                	add    %al,(%eax)
c000c5a7:	00 41 0e             	add    %al,0xe(%ecx)
c000c5aa:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c5b0:	42                   	inc    %edx
c000c5b1:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000c5b5:	44                   	inc    %esp
c000c5b6:	2e 04 04             	cs add $0x4,%al
c000c5b9:	01 00                	add    %eax,(%eax)
c000c5bb:	00 00                	add    %al,(%eax)
c000c5bd:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c5c1:	0c 42                	or     $0x42,%al
c000c5c3:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c5c7:	00 4a 2e             	add    %cl,0x2e(%edx)
c000c5ca:	04 04                	add    $0x4,%al
c000c5cc:	01 00                	add    %eax,(%eax)
c000c5ce:	00 00                	add    %al,(%eax)
c000c5d0:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000c5d4:	0c 41                	or     $0x41,%al
c000c5d6:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c5da:	00 41 2e             	add    %al,0x2e(%ecx)
c000c5dd:	04 04                	add    $0x4,%al
c000c5df:	01 00                	add    %eax,(%eax)
c000c5e1:	00 00                	add    %al,(%eax)
c000c5e3:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c5e7:	0c 42                	or     $0x42,%al
c000c5e9:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c5ed:	04 04                	add    $0x4,%al
c000c5ef:	02 00                	add    (%eax),%al
c000c5f1:	00 00                	add    %al,(%eax)
c000c5f3:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000c5f7:	0c 42                	or     $0x42,%al
c000c5f9:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c5fd:	0c 41                	or     $0x41,%al
c000c5ff:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000c603:	0c 42                	or     $0x42,%al
c000c605:	2e 10 4b c3          	adc    %cl,%cs:-0x3d(%ebx)
c000c609:	41                   	inc    %ecx
c000c60a:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c60e:	04 c5                	add    $0xc5,%al
c000c610:	41                   	inc    %ecx
c000c611:	13 03                	adc    (%ebx),%eax
c000c613:	2e 00 00             	add    %al,%cs:(%eax)
c000c616:	00 00                	add    %al,(%eax)
c000c618:	28 00                	sub    %al,(%eax)
c000c61a:	00 00                	add    %al,(%eax)
c000c61c:	9c                   	pushf  
c000c61d:	0e                   	push   %cs
c000c61e:	00 00                	add    %al,(%eax)
c000c620:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c000c621:	9d                   	popf   
c000c622:	00 c0                	add    %al,%al
c000c624:	5f                   	pop    %edi
c000c625:	00 00                	add    %al,(%eax)
c000c627:	00 41 0e             	add    %al,0xe(%ecx)
c000c62a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c630:	45                   	inc    %ebp
c000c631:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000c634:	03 44 83 05          	add    0x5(%ebx,%eax,4),%eax
c000c638:	02 4f c3             	add    -0x3d(%edi),%cl
c000c63b:	41                   	inc    %ecx
c000c63c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c640:	0c 04                	or     $0x4,%al
c000c642:	04 c5                	add    $0xc5,%al
c000c644:	28 00                	sub    %al,(%eax)
c000c646:	00 00                	add    %al,(%eax)
c000c648:	c8 0e 00 00          	enter  $0xe,$0x0
c000c64c:	03 9e 00 c0 44 00    	add    0x44c000(%esi),%ebx
c000c652:	00 00                	add    %al,(%eax)
c000c654:	41                   	inc    %ecx
c000c655:	0e                   	push   %cs
c000c656:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c65c:	44                   	inc    %esp
c000c65d:	86 03                	xchg   %al,(%ebx)
c000c65f:	47                   	inc    %edi
c000c660:	83 04 04 33          	addl   $0x33,(%esp,%eax,1)
c000c664:	00 00                	add    %al,(%eax)
c000c666:	00 c3                	add    %al,%bl
c000c668:	41                   	inc    %ecx
c000c669:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c66d:	04 c5                	add    $0xc5,%al
c000c66f:	00 24 00             	add    %ah,(%eax,%eax,1)
c000c672:	00 00                	add    %al,(%eax)
c000c674:	f4                   	hlt    
c000c675:	0e                   	push   %cs
c000c676:	00 00                	add    %al,(%eax)
c000c678:	47                   	inc    %edi
c000c679:	9e                   	sahf   
c000c67a:	00 c0                	add    %al,%al
c000c67c:	3a 00                	cmp    (%eax),%al
c000c67e:	00 00                	add    %al,(%eax)
c000c680:	41                   	inc    %ecx
c000c681:	0e                   	push   %cs
c000c682:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c688:	42                   	inc    %edx
c000c689:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000c68d:	72 c3                	jb     c000c652 <_edata+0xed2>
c000c68f:	41                   	inc    %ecx
c000c690:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c694:	04 c5                	add    $0xc5,%al
c000c696:	00 00                	add    %al,(%eax)
c000c698:	20 00                	and    %al,(%eax)
c000c69a:	00 00                	add    %al,(%eax)
c000c69c:	1c 0f                	sbb    $0xf,%al
c000c69e:	00 00                	add    %al,(%eax)
c000c6a0:	81 9e 00 c0 2e 00 00 	sbbl   $0xe410000,0x2ec000(%esi)
c000c6a7:	00 41 0e 
c000c6aa:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000c6b0:	46                   	inc    %esi
c000c6b1:	83 03 5e             	addl   $0x5e,(%ebx)
c000c6b4:	c3                   	ret    
c000c6b5:	41                   	inc    %ecx
c000c6b6:	0c 04                	or     $0x4,%al
c000c6b8:	04 c5                	add    $0xc5,%al
c000c6ba:	00 00                	add    %al,(%eax)
c000c6bc:	1c 00                	sbb    $0x0,%al
c000c6be:	00 00                	add    %al,(%eax)
c000c6c0:	40                   	inc    %eax
c000c6c1:	0f 00 00             	sldt   (%eax)
c000c6c4:	af                   	scas   %es:(%edi),%eax
c000c6c5:	9e                   	sahf   
c000c6c6:	00 c0                	add    %al,%al
c000c6c8:	27                   	daa    
c000c6c9:	00 00                	add    %al,(%eax)
c000c6cb:	00 41 0e             	add    %al,0xe(%ecx)
c000c6ce:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000c6d4:	5e                   	pop    %esi
c000c6d5:	0c 04                	or     $0x4,%al
c000c6d7:	04 c5                	add    $0xc5,%al
c000c6d9:	00 00                	add    %al,(%eax)
c000c6db:	00 2c 00             	add    %ch,(%eax,%eax,1)
c000c6de:	00 00                	add    %al,(%eax)
c000c6e0:	60                   	pusha  
c000c6e1:	0f 00 00             	sldt   (%eax)
c000c6e4:	d6                   	(bad)  
c000c6e5:	9e                   	sahf   
c000c6e6:	00 c0                	add    %al,%al
c000c6e8:	a1 00 00 00 41       	mov    0x41000000,%eax
c000c6ed:	0e                   	push   %cs
c000c6ee:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c6f4:	42                   	inc    %edx
c000c6f5:	83 03 02             	addl   $0x2,(%ebx)
c000c6f8:	92                   	xchg   %eax,%edx
c000c6f9:	0a c3                	or     %bl,%al
c000c6fb:	41                   	inc    %ecx
c000c6fc:	0c 04                	or     $0x4,%al
c000c6fe:	04 c5                	add    $0xc5,%al
c000c700:	45                   	inc    %ebp
c000c701:	0b 42 c3             	or     -0x3d(%edx),%eax
c000c704:	41                   	inc    %ecx
c000c705:	0c 04                	or     $0x4,%al
c000c707:	04 c5                	add    $0xc5,%al
c000c709:	00 00                	add    %al,(%eax)
c000c70b:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000c70e:	00 00                	add    %al,(%eax)
c000c710:	90                   	nop
c000c711:	0f 00 00             	sldt   (%eax)
c000c714:	77 9f                	ja     c000c6b5 <_edata+0xf35>
c000c716:	00 c0                	add    %al,%al
c000c718:	28 00                	sub    %al,(%eax)
c000c71a:	00 00                	add    %al,(%eax)
c000c71c:	41                   	inc    %ecx
c000c71d:	0e                   	push   %cs
c000c71e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c724:	41                   	inc    %ecx
c000c725:	86 03                	xchg   %al,(%ebx)
c000c727:	45                   	inc    %ebp
c000c728:	83 04 04 0a          	addl   $0xa,(%esp,%eax,1)
c000c72c:	00 00                	add    %al,(%eax)
c000c72e:	00 2e                	add    %ch,(%esi)
c000c730:	04 04                	add    $0x4,%al
c000c732:	01 00                	add    %eax,(%eax)
c000c734:	00 00                	add    %al,(%eax)
c000c736:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000c73a:	04 04                	add    $0x4,%al
c000c73c:	01 00                	add    %eax,(%eax)
c000c73e:	00 00                	add    %al,(%eax)
c000c740:	2e 00 4a c3          	add    %cl,%cs:-0x3d(%edx)
c000c744:	41                   	inc    %ecx
c000c745:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c749:	04 c5                	add    $0xc5,%al
c000c74b:	00 38                	add    %bh,(%eax)
c000c74d:	00 00                	add    %al,(%eax)
c000c74f:	00 d0                	add    %dl,%al
c000c751:	0f 00 00             	sldt   (%eax)
c000c754:	9f                   	lahf   
c000c755:	9f                   	lahf   
c000c756:	00 c0                	add    %al,%al
c000c758:	3a 00                	cmp    (%eax),%al
c000c75a:	00 00                	add    %al,(%eax)
c000c75c:	41                   	inc    %ecx
c000c75d:	0e                   	push   %cs
c000c75e:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c764:	47                   	inc    %edi
c000c765:	83 04 87 03          	addl   $0x3,(%edi,%eax,4)
c000c769:	51                   	push   %ecx
c000c76a:	2e 04 04             	cs add $0x4,%al
c000c76d:	04 00                	add    $0x0,%al
c000c76f:	00 00                	add    %al,(%eax)
c000c771:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c775:	0c 46                	or     $0x46,%al
c000c777:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000c77b:	14 48                	adc    $0x48,%al
c000c77d:	2e 00 44 c3 41       	add    %al,%cs:0x41(%ebx,%eax,8)
c000c782:	c7 41 0c 04 04 c5 38 	movl   $0x38c50404,0xc(%ecx)
c000c789:	00 00                	add    %al,(%eax)
c000c78b:	00 0c 10             	add    %cl,(%eax,%edx,1)
c000c78e:	00 00                	add    %al,(%eax)
c000c790:	d9 9f 00 c0 3a 00    	fstps  0x3ac000(%edi)
c000c796:	00 00                	add    %al,(%eax)
c000c798:	41                   	inc    %ecx
c000c799:	0e                   	push   %cs
c000c79a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c7a0:	47                   	inc    %edi
c000c7a1:	83 04 87 03          	addl   $0x3,(%edi,%eax,4)
c000c7a5:	51                   	push   %ecx
c000c7a6:	2e 04 04             	cs add $0x4,%al
c000c7a9:	04 00                	add    $0x0,%al
c000c7ab:	00 00                	add    %al,(%eax)
c000c7ad:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c7b1:	0c 46                	or     $0x46,%al
c000c7b3:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000c7b7:	14 48                	adc    $0x48,%al
c000c7b9:	2e 00 44 c3 41       	add    %al,%cs:0x41(%ebx,%eax,8)
c000c7be:	c7 41 0c 04 04 c5 38 	movl   $0x38c50404,0xc(%ecx)
c000c7c5:	00 00                	add    %al,(%eax)
c000c7c7:	00 48 10             	add    %cl,0x10(%eax)
c000c7ca:	00 00                	add    %al,(%eax)
c000c7cc:	14 a0                	adc    $0xa0,%al
c000c7ce:	00 c0                	add    %al,%al
c000c7d0:	47                   	inc    %edi
c000c7d1:	00 00                	add    %al,(%eax)
c000c7d3:	00 41 0e             	add    %al,0xe(%ecx)
c000c7d6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c7dc:	45                   	inc    %ebp
c000c7dd:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000c7e1:	52                   	push   %edx
c000c7e2:	2e 04 04             	cs add $0x4,%al
c000c7e5:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000c7ea:	08 42 2e             	or     %al,0x2e(%edx)
c000c7ed:	0c 45                	or     $0x45,%al
c000c7ef:	2e 10 4e 2e          	adc    %cl,%cs:0x2e(%esi)
c000c7f3:	00 50 c3             	add    %dl,-0x3d(%eax)
c000c7f6:	41                   	inc    %ecx
c000c7f7:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c7fb:	04 c5                	add    $0xc5,%al
c000c7fd:	00 00                	add    %al,(%eax)
c000c7ff:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000c802:	00 00                	add    %al,(%eax)
c000c804:	84 10                	test   %dl,(%eax)
c000c806:	00 00                	add    %al,(%eax)
c000c808:	5b                   	pop    %ebx
c000c809:	a0 00 c0 4a 00       	mov    0x4ac000,%al
c000c80e:	00 00                	add    %al,(%eax)
c000c810:	41                   	inc    %ecx
c000c811:	0e                   	push   %cs
c000c812:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c818:	46                   	inc    %esi
c000c819:	83 05 86 04 87 03 56 	addl   $0x56,0x3870486
c000c820:	2e 04 04             	cs add $0x4,%al
c000c823:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000c828:	08 42 2e             	or     %al,0x2e(%edx)
c000c82b:	0c 45                	or     $0x45,%al
c000c82d:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c831:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000c834:	41                   	inc    %ecx
c000c835:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000c839:	0c 04                	or     $0x4,%al
c000c83b:	04 c5                	add    $0xc5,%al
c000c83d:	00 00                	add    %al,(%eax)
c000c83f:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000c842:	00 00                	add    %al,(%eax)
c000c844:	c4 10                	les    (%eax),%edx
c000c846:	00 00                	add    %al,(%eax)
c000c848:	a5                   	movsl  %ds:(%esi),%es:(%edi)
c000c849:	a0 00 c0 42 00       	mov    0x42c000,%al
c000c84e:	00 00                	add    %al,(%eax)
c000c850:	41                   	inc    %ecx
c000c851:	0e                   	push   %cs
c000c852:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c858:	41                   	inc    %ecx
c000c859:	86 03                	xchg   %al,(%ebx)
c000c85b:	44                   	inc    %esp
c000c85c:	83 04 04 10          	addl   $0x10,(%esp,%eax,1)
c000c860:	00 00                	add    %al,(%eax)
c000c862:	00 2e                	add    %ch,(%esi)
c000c864:	04 04                	add    $0x4,%al
c000c866:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000c86b:	08 42 2e             	or     %al,0x2e(%edx)
c000c86e:	0c 45                	or     $0x45,%al
c000c870:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c874:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000c877:	41                   	inc    %ecx
c000c878:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c87c:	04 c5                	add    $0xc5,%al
c000c87e:	00 00                	add    %al,(%eax)
c000c880:	20 00                	and    %al,(%eax)
c000c882:	00 00                	add    %al,(%eax)
c000c884:	04 11                	add    $0x11,%al
c000c886:	00 00                	add    %al,(%eax)
c000c888:	e7 a0                	out    %eax,$0xa0
c000c88a:	00 c0                	add    %al,%al
c000c88c:	1a 00                	sbb    (%eax),%al
c000c88e:	00 00                	add    %al,(%eax)
c000c890:	41                   	inc    %ecx
c000c891:	0e                   	push   %cs
c000c892:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000c898:	44                   	inc    %esp
c000c899:	83 03 4f             	addl   $0x4f,(%ebx)
c000c89c:	c3                   	ret    
c000c89d:	41                   	inc    %ecx
c000c89e:	0c 04                	or     $0x4,%al
c000c8a0:	04 c5                	add    $0xc5,%al
c000c8a2:	00 00                	add    %al,(%eax)
c000c8a4:	28 00                	sub    %al,(%eax)
c000c8a6:	00 00                	add    %al,(%eax)
c000c8a8:	28 11                	sub    %dl,(%ecx)
c000c8aa:	00 00                	add    %al,(%eax)
c000c8ac:	28 a1 00 c0 1a 00    	sub    %ah,0x1ac000(%ecx)
c000c8b2:	00 00                	add    %al,(%eax)
c000c8b4:	41                   	inc    %ecx
c000c8b5:	0e                   	push   %cs
c000c8b6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c8bc:	41                   	inc    %ecx
c000c8bd:	86 03                	xchg   %al,(%ebx)
c000c8bf:	44                   	inc    %esp
c000c8c0:	83 04 04 0e          	addl   $0xe,(%esp,%eax,1)
c000c8c4:	00 00                	add    %al,(%eax)
c000c8c6:	00 c3                	add    %al,%bl
c000c8c8:	41                   	inc    %ecx
c000c8c9:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000c8cd:	04 c5                	add    $0xc5,%al
c000c8cf:	00 38                	add    %bh,(%eax)
c000c8d1:	00 00                	add    %al,(%eax)
c000c8d3:	00 54 11 00          	add    %dl,0x0(%ecx,%edx,1)
c000c8d7:	00 42 a1             	add    %al,-0x5f(%edx)
c000c8da:	00 c0                	add    %al,%al
c000c8dc:	5d                   	pop    %ebp
c000c8dd:	00 00                	add    %al,(%eax)
c000c8df:	00 41 0e             	add    %al,0xe(%ecx)
c000c8e2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c8e8:	44                   	inc    %esp
c000c8e9:	2e 04 83             	cs add $0x83,%al
c000c8ec:	03 48 2e             	add    0x2e(%eax),%ecx
c000c8ef:	08 42 2e             	or     %al,0x2e(%edx)
c000c8f2:	0c 41                	or     $0x41,%al
c000c8f4:	2e 10 49 2e          	adc    %cl,%cs:0x2e(%ecx)
c000c8f8:	0c 41                	or     $0x41,%al
c000c8fa:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c8fe:	0c 44                	or     $0x44,%al
c000c900:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c904:	00 71 c5             	add    %dh,-0x3b(%ecx)
c000c907:	0c 04                	or     $0x4,%al
c000c909:	04 c3                	add    $0xc3,%al
c000c90b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000c90e:	00 00                	add    %al,(%eax)
c000c910:	90                   	nop
c000c911:	11 00                	adc    %eax,(%eax)
c000c913:	00 9f a1 00 c0 0c    	add    %bl,0xcc000a1(%edi)
c000c919:	00 00                	add    %al,(%eax)
c000c91b:	00 41 0e             	add    %al,0xe(%ecx)
c000c91e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c924:	48                   	dec    %eax
c000c925:	0c 04                	or     $0x4,%al
c000c927:	04 c5                	add    $0xc5,%al
c000c929:	00 00                	add    %al,(%eax)
c000c92b:	00 60 00             	add    %ah,0x0(%eax)
c000c92e:	00 00                	add    %al,(%eax)
c000c930:	b0 11                	mov    $0x11,%al
c000c932:	00 00                	add    %al,(%eax)
c000c934:	ab                   	stos   %eax,%es:(%edi)
c000c935:	a1 00 c0 6c 00       	mov    0x6cc000,%eax
c000c93a:	00 00                	add    %al,(%eax)
c000c93c:	41                   	inc    %ecx
c000c93d:	0e                   	push   %cs
c000c93e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c944:	43                   	inc    %ebx
c000c945:	2e 0c 42             	cs or  $0x42,%al
c000c948:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000c94c:	14 42                	adc    $0x42,%al
c000c94e:	2e 18 41 2e          	sbb    %al,%cs:0x2e(%ecx)
c000c952:	1c 45                	sbb    $0x45,%al
c000c954:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000c958:	0c 42                	or     $0x42,%al
c000c95a:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000c95e:	14 42                	adc    $0x42,%al
c000c960:	2e 18 41 2e          	sbb    %al,%cs:0x2e(%ecx)
c000c964:	1c 45                	sbb    $0x45,%al
c000c966:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000c96a:	00 46 2e             	add    %al,0x2e(%esi)
c000c96d:	04 04                	add    $0x4,%al
c000c96f:	02 00                	add    (%eax),%al
c000c971:	00 00                	add    %al,(%eax)
c000c973:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c977:	0c 41                	or     $0x41,%al
c000c979:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000c97d:	0c 41                	or     $0x41,%al
c000c97f:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000c983:	0c 45                	or     $0x45,%al
c000c985:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c989:	00 41 c5             	add    %al,-0x3b(%ecx)
c000c98c:	0c 04                	or     $0x4,%al
c000c98e:	04 00                	add    $0x0,%al
c000c990:	1c 00                	sbb    $0x0,%al
c000c992:	00 00                	add    %al,(%eax)
c000c994:	14 12                	adc    $0x12,%al
c000c996:	00 00                	add    %al,(%eax)
c000c998:	17                   	pop    %ss
c000c999:	a2 00 c0 56 00       	mov    %al,0x56c000
c000c99e:	00 00                	add    %al,(%eax)
c000c9a0:	41                   	inc    %ecx
c000c9a1:	0e                   	push   %cs
c000c9a2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c9a8:	02 52 0c             	add    0xc(%edx),%dl
c000c9ab:	04 04                	add    $0x4,%al
c000c9ad:	c5 00                	lds    (%eax),%eax
c000c9af:	00 60 00             	add    %ah,0x0(%eax)
c000c9b2:	00 00                	add    %al,(%eax)
c000c9b4:	34 12                	xor    $0x12,%al
c000c9b6:	00 00                	add    %al,(%eax)
c000c9b8:	6d                   	insl   (%dx),%es:(%edi)
c000c9b9:	a2 00 c0 5a 00       	mov    %al,0x5ac000
c000c9be:	00 00                	add    %al,(%eax)
c000c9c0:	41                   	inc    %ecx
c000c9c1:	0e                   	push   %cs
c000c9c2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000c9c8:	44                   	inc    %esp
c000c9c9:	2e 0c 83             	cs or  $0x83,%al
c000c9cc:	03 45 2e             	add    0x2e(%ebp),%eax
c000c9cf:	10 48 2e             	adc    %cl,0x2e(%eax)
c000c9d2:	04 04                	add    $0x4,%al
c000c9d4:	04 00                	add    $0x0,%al
c000c9d6:	00 00                	add    %al,(%eax)
c000c9d8:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c9dc:	0c 44                	or     $0x44,%al
c000c9de:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000c9e2:	04 04                	add    $0x4,%al
c000c9e4:	03 00                	add    (%eax),%eax
c000c9e6:	00 00                	add    %al,(%eax)
c000c9e8:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000c9ec:	0c 43                	or     $0x43,%al
c000c9ee:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c9f2:	0c 41                	or     $0x41,%al
c000c9f4:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000c9f9:	45                   	inc    %ebp
c000c9fa:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000c9fe:	0c 41                	or     $0x41,%al
c000ca00:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ca04:	0c 45                	or     $0x45,%al
c000ca06:	2e 10 4c c5 0c       	adc    %cl,%cs:0xc(%ebp,%eax,8)
c000ca0b:	04 04                	add    $0x4,%al
c000ca0d:	c3                   	ret    
c000ca0e:	41                   	inc    %ecx
c000ca0f:	13 03                	adc    (%ebx),%eax
c000ca11:	2e 00 00             	add    %al,%cs:(%eax)
c000ca14:	4c                   	dec    %esp
c000ca15:	00 00                	add    %al,(%eax)
c000ca17:	00 98 12 00 00 c7    	add    %bl,-0x38ffffee(%eax)
c000ca1d:	a2 00 c0 62 00       	mov    %al,0x62c000
c000ca22:	00 00                	add    %al,(%eax)
c000ca24:	41                   	inc    %ecx
c000ca25:	0e                   	push   %cs
c000ca26:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ca2c:	53                   	push   %ebx
c000ca2d:	2e 04 04             	cs add $0x4,%al
c000ca30:	01 00                	add    %eax,(%eax)
c000ca32:	00 00                	add    %al,(%eax)
c000ca34:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000ca39:	45                   	inc    %ebp
c000ca3a:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000ca3e:	00 4e 2e             	add    %cl,0x2e(%esi)
c000ca41:	04 04                	add    $0x4,%al
c000ca43:	01 00                	add    %eax,(%eax)
c000ca45:	00 00                	add    %al,(%eax)
c000ca47:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000ca4c:	45                   	inc    %ebp
c000ca4d:	2e 10 50 2e          	adc    %dl,%cs:0x2e(%eax)
c000ca51:	0c 41                	or     $0x41,%al
c000ca53:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ca57:	0c 43                	or     $0x43,%al
c000ca59:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ca5d:	00 41 c5             	add    %al,-0x3b(%ecx)
c000ca60:	0c 04                	or     $0x4,%al
c000ca62:	04 00                	add    $0x0,%al
c000ca64:	38 00                	cmp    %al,(%eax)
c000ca66:	00 00                	add    %al,(%eax)
c000ca68:	e8 12 00 00 29       	call   e900ca7f <_kernel_end+0x28fdfcbb>
c000ca6d:	a3 00 c0 48 00       	mov    %eax,0x48c000
c000ca72:	00 00                	add    %al,(%eax)
c000ca74:	41                   	inc    %ecx
c000ca75:	0e                   	push   %cs
c000ca76:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ca7c:	42                   	inc    %edx
c000ca7d:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000ca81:	4d                   	dec    %ebp
c000ca82:	2e 04 04             	cs add $0x4,%al
c000ca85:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ca8a:	08 42 2e             	or     %al,0x2e(%edx)
c000ca8d:	0c 45                	or     $0x45,%al
c000ca8f:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ca93:	00 5b c3             	add    %bl,-0x3d(%ebx)
c000ca96:	41                   	inc    %ecx
c000ca97:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000ca9b:	04 c5                	add    $0xc5,%al
c000ca9d:	00 00                	add    %al,(%eax)
c000ca9f:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c000caa3:	00 24 13             	add    %ah,(%ebx,%edx,1)
c000caa6:	00 00                	add    %al,(%eax)
c000caa8:	71 a3                	jno    c000ca4d <_edata+0x12cd>
c000caaa:	00 c0                	add    %al,%al
c000caac:	5b                   	pop    %ebx
c000caad:	00 00                	add    %al,(%eax)
c000caaf:	00 41 0e             	add    %al,0xe(%ecx)
c000cab2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cab8:	42                   	inc    %edx
c000cab9:	83 03 55             	addl   $0x55,(%ebx)
c000cabc:	2e 04 04             	cs add $0x4,%al
c000cabf:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000cac4:	08 45 2e             	or     %al,0x2e(%ebp)
c000cac7:	0c 45                	or     $0x45,%al
c000cac9:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000cacd:	00 41 2e             	add    %al,0x2e(%ecx)
c000cad0:	04 04                	add    $0x4,%al
c000cad2:	01 00                	add    %eax,(%eax)
c000cad4:	00 00                	add    %al,(%eax)
c000cad6:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000cadb:	45                   	inc    %ebp
c000cadc:	2e 10 5a 2e          	adc    %bl,%cs:0x2e(%edx)
c000cae0:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000cae4:	04 04                	add    $0x4,%al
c000cae6:	c3                   	ret    
c000cae7:	00 28                	add    %ch,(%eax)
c000cae9:	00 00                	add    %al,(%eax)
c000caeb:	00 6c 13 00          	add    %ch,0x0(%ebx,%edx,1)
c000caef:	00 cc                	add    %cl,%ah
c000caf1:	a3 00 c0 ac 00       	mov    %eax,0xacc000
c000caf6:	00 00                	add    %al,(%eax)
c000caf8:	41                   	inc    %ecx
c000caf9:	0e                   	push   %cs
c000cafa:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000cb00:	42                   	inc    %edx
c000cb01:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000cb04:	03 49 83             	add    -0x7d(%ecx),%ecx
c000cb07:	05 02 96 c3 41       	add    $0x41c39602,%eax
c000cb0c:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000cb10:	0c 04                	or     $0x4,%al
c000cb12:	04 c5                	add    $0xc5,%al
c000cb14:	1c 00                	sbb    $0x0,%al
c000cb16:	00 00                	add    %al,(%eax)
c000cb18:	98                   	cwtl   
c000cb19:	13 00                	adc    (%eax),%eax
c000cb1b:	00 78 a4             	add    %bh,-0x5c(%eax)
c000cb1e:	00 c0                	add    %al,%al
c000cb20:	18 00                	sbb    %al,(%eax)
c000cb22:	00 00                	add    %al,(%eax)
c000cb24:	41                   	inc    %ecx
c000cb25:	0e                   	push   %cs
c000cb26:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000cb2c:	4f                   	dec    %edi
c000cb2d:	0c 04                	or     $0x4,%al
c000cb2f:	04 c5                	add    $0xc5,%al
c000cb31:	00 00                	add    %al,(%eax)
c000cb33:	00 24 00             	add    %ah,(%eax,%eax,1)
c000cb36:	00 00                	add    %al,(%eax)
c000cb38:	b8 13 00 00 90       	mov    $0x90000013,%eax
c000cb3d:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c000cb3e:	00 c0                	add    %al,%al
c000cb40:	2f                   	das    
c000cb41:	00 00                	add    %al,(%eax)
c000cb43:	00 41 0e             	add    %al,0xe(%ecx)
c000cb46:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000cb4c:	5c                   	pop    %esp
c000cb4d:	0a c5                	or     %ch,%al
c000cb4f:	0c 04                	or     $0x4,%al
c000cb51:	04 45                	add    $0x45,%al
c000cb53:	0b 45 c5             	or     -0x3b(%ebp),%eax
c000cb56:	0c 04                	or     $0x4,%al
c000cb58:	04 00                	add    $0x0,%al
	...

Disassembly of section .rodata:

c000cb5c <_rodata>:
c000cb5c:	0a 50 65             	or     0x65(%eax),%dl
c000cb5f:	6e                   	outsb  %ds:(%esi),(%dx)
c000cb60:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000cb63:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000cb68:	65 6c                	gs insb (%dx),%es:(%edi)
c000cb6a:	20 28                	and    %ch,(%eax)
c000cb6c:	50                   	push   %eax
c000cb6d:	4b                   	dec    %ebx
c000cb6e:	6e                   	outsb  %ds:(%esi),(%dx)
c000cb6f:	29 20                	sub    %esp,(%eax)
c000cb71:	76 65                	jbe    c000cbd8 <_rodata+0x7c>
c000cb73:	72 73                	jb     c000cbe8 <_rodata+0x8c>
c000cb75:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000cb7c:	2e 30 20             	xor    %ah,%cs:(%eax)
c000cb7f:	74 65                	je     c000cbe6 <_rodata+0x8a>
c000cb81:	73 74                	jae    c000cbf7 <_rodata+0x9b>
c000cb83:	0a 00                	or     (%eax),%al
c000cb85:	43                   	inc    %ebx
c000cb86:	6f                   	outsl  %ds:(%esi),(%dx)
c000cb87:	70 79                	jo     c000cc02 <_rodata+0xa6>
c000cb89:	72 69                	jb     c000cbf4 <_rodata+0x98>
c000cb8b:	67 68 74 20 28 63    	addr16 push $0x63282074
c000cb91:	29 20                	sub    %esp,(%eax)
c000cb93:	32 30                	xor    (%eax),%dh
c000cb95:	32 31                	xor    (%ecx),%dh
c000cb97:	2d 32 30 32 32       	sub    $0x32323032,%eax
c000cb9c:	20 4c 69 6e          	and    %cl,0x6e(%ecx,%ebp,2)
c000cba0:	43                   	inc    %ebx
c000cba1:	68 65 6e 6a 75       	push   $0x756a6e65
c000cba6:	6e                   	outsb  %ds:(%esi),(%dx)
c000cba7:	2c 41                	sub    $0x41,%al
c000cba9:	6c                   	insb   (%dx),%es:(%edi)
c000cbaa:	6c                   	insb   (%dx),%es:(%edi)
c000cbab:	20 72 69             	and    %dh,0x69(%edx)
c000cbae:	67 68 74 73 20 72    	addr16 push $0x72207374
c000cbb4:	65 73 65             	gs jae c000cc1c <_rodata+0xc0>
c000cbb7:	72 76                	jb     c000cc2f <_rodata+0xd3>
c000cbb9:	65 64 2e 0a 0a       	gs fs or %cs:(%edx),%cl
c000cbbe:	00 43 50             	add    %al,0x50(%ebx)
c000cbc1:	55                   	push   %ebp
c000cbc2:	20 20                	and    %ah,(%eax)
c000cbc4:	20 20                	and    %ah,(%eax)
c000cbc6:	3a 00                	cmp    (%eax),%al
c000cbc8:	4d                   	dec    %ebp
c000cbc9:	65 6d                	gs insl (%dx),%es:(%edi)
c000cbcb:	6f                   	outsl  %ds:(%esi),(%dx)
c000cbcc:	72 79                	jb     c000cc47 <_rodata+0xeb>
c000cbce:	20 3a                	and    %bh,(%edx)
c000cbd0:	00 4d 42             	add    %cl,0x42(%ebp)
c000cbd3:	20 28                	and    %ch,(%eax)
c000cbd5:	20 00                	and    %al,(%eax)
c000cbd7:	4b                   	dec    %ebx
c000cbd8:	42                   	inc    %edx
c000cbd9:	20 29                	and    %ch,(%ecx)
c000cbdb:	20 00                	and    %al,(%eax)
c000cbdd:	44                   	inc    %esp
c000cbde:	69 73 6b 20 20 20 3a 	imul   $0x3a202020,0x6b(%ebx),%esi
c000cbe5:	00 50 65             	add    %dl,0x65(%eax)
c000cbe8:	6e                   	outsb  %ds:(%esi),(%dx)
c000cbe9:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000cbec:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000cbf1:	65 6c                	gs insb (%dx),%es:(%edi)
c000cbf3:	20 28                	and    %ch,(%eax)
c000cbf5:	50                   	push   %eax
c000cbf6:	4b                   	dec    %ebx
c000cbf7:	6e                   	outsb  %ds:(%esi),(%dx)
c000cbf8:	29 20                	sub    %esp,(%eax)
c000cbfa:	76 65                	jbe    c000cc61 <_rodata+0x105>
c000cbfc:	72 73                	jb     c000cc71 <PKn_Version+0x1>
c000cbfe:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000cc05:	2e 30 20             	xor    %ah,%cs:(%eax)
c000cc08:	74 65                	je     c000cc6f <_rodata+0x113>
c000cc0a:	73 74                	jae    c000cc80 <PKn_Version+0x10>
c000cc0c:	00 43 6f             	add    %al,0x6f(%ebx)
c000cc0f:	70 79                	jo     c000cc8a <PKn_Version+0x1a>
c000cc11:	72 69                	jb     c000cc7c <PKn_Version+0xc>
c000cc13:	67 68 74 20 28 63    	addr16 push $0x63282074
c000cc19:	29 20                	sub    %esp,(%eax)
c000cc1b:	32 30                	xor    (%eax),%dh
c000cc1d:	32 31                	xor    (%ecx),%dh
c000cc1f:	2d 32 30 32 32       	sub    $0x32323032,%eax
c000cc24:	20 4c 69 6e          	and    %cl,0x6e(%ecx,%ebp,2)
c000cc28:	43                   	inc    %ebx
c000cc29:	68 65 6e 6a 75       	push   $0x756a6e65
c000cc2e:	6e                   	outsb  %ds:(%esi),(%dx)
c000cc2f:	2c 20                	sub    $0x20,%al
c000cc31:	41                   	inc    %ecx
c000cc32:	6c                   	insb   (%dx),%es:(%edi)
c000cc33:	6c                   	insb   (%dx),%es:(%edi)
c000cc34:	20 72 69             	and    %dh,0x69(%edx)
c000cc37:	67 68 74 73 20 72    	addr16 push $0x72207374
c000cc3d:	65 73 65             	gs jae c000cca5 <PKn_Version+0x35>
c000cc40:	72 76                	jb     c000ccb8 <PKn_Version+0x48>
c000cc42:	65 64 2e 00 61 72    	gs fs add %ah,%cs:0x72(%ecx)
c000cc48:	67 5f                	addr16 pop %edi
c000cc4a:	41                   	inc    %ecx
c000cc4b:	20 00                	and    %al,(%eax)
c000cc4d:	6b 5f 61 00          	imul   $0x0,0x61(%edi),%ebx
c000cc51:	61                   	popa   
c000cc52:	72 67                	jb     c000ccbb <PKn_Version+0x4b>
c000cc54:	5f                   	pop    %edi
c000cc55:	42                   	inc    %edx
c000cc56:	20 00                	and    %al,(%eax)
c000cc58:	50                   	push   %eax
c000cc59:	4b                   	dec    %ebx
c000cc5a:	6e                   	outsb  %ds:(%esi),(%dx)
c000cc5b:	0a 00                	or     (%eax),%al
c000cc5d:	4b                   	dec    %ebx
c000cc5e:	65 72 6e             	gs jb  c000cccf <PKn_Version+0x5f>
c000cc61:	65 6c                	gs insb (%dx),%es:(%edi)
c000cc63:	20 50 43             	and    %dl,0x43(%eax)
c000cc66:	42                   	inc    %edx
c000cc67:	20 61 74             	and    %ah,0x74(%ecx)
c000cc6a:	20 30                	and    %dh,(%eax)
c000cc6c:	78 00                	js     c000cc6e <_rodata+0x112>
c000cc6e:	0a 00                	or     (%eax),%al

c000cc70 <PKn_Version>:
c000cc70:	50                   	push   %eax
c000cc71:	65 6e                	outsb  %gs:(%esi),(%dx)
c000cc73:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000cc76:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000cc7b:	65 6c                	gs insb (%dx),%es:(%edi)
c000cc7d:	20 28                	and    %ch,(%eax)
c000cc7f:	50                   	push   %eax
c000cc80:	4b                   	dec    %ebx
c000cc81:	6e                   	outsb  %ds:(%esi),(%dx)
c000cc82:	29 20                	sub    %esp,(%eax)
c000cc84:	76 65                	jbe    c000cceb <PKn_Version+0x7b>
c000cc86:	72 73                	jb     c000ccfb <PKn_Version+0x8b>
c000cc88:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000cc8f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000cc92:	74 65                	je     c000ccf9 <PKn_Version+0x89>
c000cc94:	73 74                	jae    c000cd0a <PKn_Version+0x9a>
c000cc96:	00 00                	add    %al,(%eax)
c000cc98:	62 79 74             	bound  %edi,0x74(%ecx)
c000cc9b:	65 5f                	gs pop %edi
c000cc9d:	69 6e 64 65 78 20 3c 	imul   $0x3c207865,0x64(%esi),%ebp
c000cca4:	20 28                	and    %ch,(%eax)
c000cca6:	62 74 6d 70          	bound  %esi,0x70(%ebp,%ebp,2)
c000ccaa:	2d 3e 62 74 6d       	sub    $0x6d74623e,%eax
c000ccaf:	70 5f                	jo     c000cd10 <__func__.858+0x4>
c000ccb1:	62 79 74             	bound  %edi,0x74(%ecx)
c000ccb4:	65 73 5f             	gs jae c000cd16 <__func__.858+0xa>
c000ccb7:	6c                   	insb   (%dx),%es:(%edi)
c000ccb8:	65 6e                	outsb  %gs:(%esi),(%dx)
c000ccba:	29 00                	sub    %eax,(%eax)
c000ccbc:	6c                   	insb   (%dx),%es:(%edi)
c000ccbd:	69 62 2f 62 69 74 6d 	imul   $0x6d746962,0x2f(%edx),%esp
c000ccc4:	61                   	popa   
c000ccc5:	70 2e                	jo     c000ccf5 <PKn_Version+0x85>
c000ccc7:	63 00                	arpl   %ax,(%eax)
c000ccc9:	76 61                	jbe    c000cd2c <__func__.875+0x10>
c000cccb:	6c                   	insb   (%dx),%es:(%edi)
c000cccc:	75 65                	jne    c000cd33 <__func__.875+0x17>
c000ccce:	20 3d 3d 20 30 20    	and    %bh,0x2030203d
c000ccd4:	7c 7c                	jl     c000cd52 <__func__.875+0x36>
c000ccd6:	20 76 61             	and    %dh,0x61(%esi)
c000ccd9:	6c                   	insb   (%dx),%es:(%edi)
c000ccda:	75 65                	jne    c000cd41 <__func__.875+0x25>
c000ccdc:	20 3d 3d 20 31 00    	and    %bh,0x31203d
c000cce2:	00 00                	add    %al,(%eax)
c000cce4:	50                   	push   %eax
c000cce5:	65 6e                	outsb  %gs:(%esi),(%dx)
c000cce7:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000ccea:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000ccef:	65 6c                	gs insb (%dx),%es:(%edi)
c000ccf1:	20 28                	and    %ch,(%eax)
c000ccf3:	50                   	push   %eax
c000ccf4:	4b                   	dec    %ebx
c000ccf5:	6e                   	outsb  %ds:(%esi),(%dx)
c000ccf6:	29 20                	sub    %esp,(%eax)
c000ccf8:	76 65                	jbe    c000cd5f <__func__.875+0x43>
c000ccfa:	72 73                	jb     c000cd6f <__func__.875+0x53>
c000ccfc:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000cd03:	2e 30 20             	xor    %ah,%cs:(%eax)
c000cd06:	74 65                	je     c000cd6d <__func__.875+0x51>
c000cd08:	73 74                	jae    c000cd7e <__func__.875+0x62>
	...

c000cd0c <__func__.858>:
c000cd0c:	62 69 74             	bound  %ebp,0x74(%ecx)
c000cd0f:	6d                   	insl   (%dx),%es:(%edi)
c000cd10:	61                   	popa   
c000cd11:	70 5f                	jo     c000cd72 <__func__.875+0x56>
c000cd13:	61                   	popa   
c000cd14:	6c                   	insb   (%dx),%es:(%edi)
c000cd15:	6c                   	insb   (%dx),%es:(%edi)
c000cd16:	6f                   	outsl  %ds:(%esi),(%dx)
c000cd17:	63 00                	arpl   %ax,(%eax)
c000cd19:	00 00                	add    %al,(%eax)
	...

c000cd1c <__func__.875>:
c000cd1c:	62 69 74             	bound  %ebp,0x74(%ecx)
c000cd1f:	6d                   	insl   (%dx),%es:(%edi)
c000cd20:	61                   	popa   
c000cd21:	70 5f                	jo     c000cd82 <__func__.875+0x66>
c000cd23:	73 65                	jae    c000cd8a <__func__.875+0x6e>
c000cd25:	74 00                	je     c000cd27 <__func__.875+0xb>
c000cd27:	00 50 65             	add    %dl,0x65(%eax)
c000cd2a:	6e                   	outsb  %ds:(%esi),(%dx)
c000cd2b:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000cd2e:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000cd33:	65 6c                	gs insb (%dx),%es:(%edi)
c000cd35:	20 28                	and    %ch,(%eax)
c000cd37:	50                   	push   %eax
c000cd38:	4b                   	dec    %ebx
c000cd39:	6e                   	outsb  %ds:(%esi),(%dx)
c000cd3a:	29 20                	sub    %esp,(%eax)
c000cd3c:	76 65                	jbe    c000cda3 <__func__.875+0x87>
c000cd3e:	72 73                	jb     c000cdb3 <__func__.875+0x97>
c000cd40:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000cd47:	2e 30 20             	xor    %ah,%cs:(%eax)
c000cd4a:	74 65                	je     c000cdb1 <__func__.875+0x95>
c000cd4c:	73 74                	jae    c000cdc2 <__func__.875+0xa6>
c000cd4e:	00 00                	add    %al,(%eax)
c000cd50:	0a 20                	or     (%eax),%ah
c000cd52:	41                   	inc    %ecx
c000cd53:	73 73                	jae    c000cdc8 <__func__.875+0xac>
c000cd55:	65 72 74             	gs jb  c000cdcc <__func__.875+0xb0>
c000cd58:	20 45 72             	and    %al,0x72(%ebp)
c000cd5b:	72 6f                	jb     c000cdcc <__func__.875+0xb0>
c000cd5d:	72 0a                	jb     c000cd69 <__func__.875+0x4d>
c000cd5f:	00 20                	add    %ah,(%eax)
c000cd61:	46                   	inc    %esi
c000cd62:	69 6c 65 3a 20 20 20 	imul   $0x20202020,0x3a(%ebp,%eiz,2),%ebp
c000cd69:	20 
c000cd6a:	20 20                	and    %ah,(%eax)
c000cd6c:	20 20                	and    %ah,(%eax)
c000cd6e:	00 20                	add    %ah,(%eax)
c000cd70:	49                   	dec    %ecx
c000cd71:	6e                   	outsb  %ds:(%esi),(%dx)
c000cd72:	20 66 75             	and    %ah,0x75(%esi)
c000cd75:	6e                   	outsb  %ds:(%esi),(%dx)
c000cd76:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c000cd7a:	6e                   	outsb  %ds:(%esi),(%dx)
c000cd7b:	3a 20                	cmp    (%eax),%ah
c000cd7d:	00 20                	add    %ah,(%eax)
c000cd7f:	4c                   	dec    %esp
c000cd80:	69 6e 65 3a 20 20 20 	imul   $0x2020203a,0x65(%esi),%ebp
c000cd87:	20 20                	and    %ah,(%eax)
c000cd89:	20 20                	and    %ah,(%eax)
c000cd8b:	20 00                	and    %al,(%eax)
c000cd8d:	20 43 6f             	and    %al,0x6f(%ebx)
c000cd90:	6e                   	outsb  %ds:(%esi),(%dx)
c000cd91:	64 69 74 69 6f 6e 3a 	imul   $0x20203a6e,%fs:0x6f(%ecx,%ebp,2),%esi
c000cd98:	20 20 
c000cd9a:	20 00                	and    %al,(%eax)
c000cd9c:	50                   	push   %eax
c000cd9d:	65 6e                	outsb  %gs:(%esi),(%dx)
c000cd9f:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000cda2:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000cda7:	65 6c                	gs insb (%dx),%es:(%edi)
c000cda9:	20 28                	and    %ch,(%eax)
c000cdab:	50                   	push   %eax
c000cdac:	4b                   	dec    %ebx
c000cdad:	6e                   	outsb  %ds:(%esi),(%dx)
c000cdae:	29 20                	sub    %esp,(%eax)
c000cdb0:	76 65                	jbe    c000ce17 <__func__.877+0x3>
c000cdb2:	72 73                	jb     c000ce27 <__func__.877+0x13>
c000cdb4:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000cdbb:	2e 30 20             	xor    %ah,%cs:(%eax)
c000cdbe:	74 65                	je     c000ce25 <__func__.877+0x11>
c000cdc0:	73 74                	jae    c000ce36 <__func__.877+0x22>
c000cdc2:	00 00                	add    %al,(%eax)
c000cdc4:	21 28                	and    %ebp,(%eax)
c000cdc6:	66 69 66 6f 2d 3e    	imul   $0x3e2d,0x6f(%esi),%sp
c000cdcc:	66 72 65             	data16 jb c000ce34 <__func__.877+0x20>
c000cdcf:	65 20 3d 3d 20 66 69 	and    %bh,%gs:0x6966203d
c000cdd6:	66 6f                	outsw  %ds:(%esi),(%dx)
c000cdd8:	2d 3e 73 69 7a       	sub    $0x7a69733e,%eax
c000cddd:	65 29 00             	sub    %eax,%gs:(%eax)
c000cde0:	6c                   	insb   (%dx),%es:(%edi)
c000cde1:	69 62 2f 66 69 66 6f 	imul   $0x6f666966,0x2f(%edx),%esp
c000cde8:	2e 63 00             	arpl   %ax,%cs:(%eax)
c000cdeb:	00 50 65             	add    %dl,0x65(%eax)
c000cdee:	6e                   	outsb  %ds:(%esi),(%dx)
c000cdef:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000cdf2:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000cdf7:	65 6c                	gs insb (%dx),%es:(%edi)
c000cdf9:	20 28                	and    %ch,(%eax)
c000cdfb:	50                   	push   %eax
c000cdfc:	4b                   	dec    %ebx
c000cdfd:	6e                   	outsb  %ds:(%esi),(%dx)
c000cdfe:	29 20                	sub    %esp,(%eax)
c000ce00:	76 65                	jbe    c000ce67 <__func__.877+0x53>
c000ce02:	72 73                	jb     c000ce77 <__func__.877+0x63>
c000ce04:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000ce0b:	2e 30 20             	xor    %ah,%cs:(%eax)
c000ce0e:	74 65                	je     c000ce75 <__func__.877+0x61>
c000ce10:	73 74                	jae    c000ce86 <__func__.877+0x72>
	...

c000ce14 <__func__.877>:
c000ce14:	66 69 66 6f 5f 67    	imul   $0x675f,0x6f(%esi),%sp
c000ce1a:	65 74 00             	gs je  c000ce1d <__func__.877+0x9>
c000ce1d:	00 00                	add    %al,(%eax)
c000ce1f:	00 50 65             	add    %dl,0x65(%eax)
c000ce22:	6e                   	outsb  %ds:(%esi),(%dx)
c000ce23:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000ce26:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000ce2b:	65 6c                	gs insb (%dx),%es:(%edi)
c000ce2d:	20 28                	and    %ch,(%eax)
c000ce2f:	50                   	push   %eax
c000ce30:	4b                   	dec    %ebx
c000ce31:	6e                   	outsb  %ds:(%esi),(%dx)
c000ce32:	29 20                	sub    %esp,(%eax)
c000ce34:	76 65                	jbe    c000ce9b <__func__.877+0x87>
c000ce36:	72 73                	jb     c000ceab <__func__.877+0x97>
c000ce38:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000ce3f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000ce42:	74 65                	je     c000cea9 <__func__.877+0x95>
c000ce44:	73 74                	jae    c000ceba <__func__.877+0xa6>
c000ce46:	00 00                	add    %al,(%eax)
c000ce48:	5b                   	pop    %ebx
c000ce49:	69 6e 69 6e 5d 3a 61 	imul   $0x613a5d6e,0x69(%esi),%ebp
c000ce50:	6c                   	insb   (%dx),%es:(%edi)
c000ce51:	6c                   	insb   (%dx),%es:(%edi)
c000ce52:	0a 00                	or     (%eax),%al
c000ce54:	5b                   	pop    %ebx
c000ce55:	69 6e 69 74 5d 3a 69 	imul   $0x693a5d74,0x69(%esi),%ebp
c000ce5c:	6e                   	outsb  %ds:(%esi),(%dx)
c000ce5d:	69 74 20 64 6f 77 6e 	imul   $0x2e6e776f,0x64(%eax,%eiz,1),%esi
c000ce64:	2e 
c000ce65:	0a 00                	or     (%eax),%al
c000ce67:	00 50 65             	add    %dl,0x65(%eax)
c000ce6a:	6e                   	outsb  %ds:(%esi),(%dx)
c000ce6b:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000ce6e:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000ce73:	65 6c                	gs insb (%dx),%es:(%edi)
c000ce75:	20 28                	and    %ch,(%eax)
c000ce77:	50                   	push   %eax
c000ce78:	4b                   	dec    %ebx
c000ce79:	6e                   	outsb  %ds:(%esi),(%dx)
c000ce7a:	29 20                	sub    %esp,(%eax)
c000ce7c:	76 65                	jbe    c000cee3 <__func__.877+0xcf>
c000ce7e:	72 73                	jb     c000cef3 <__func__.877+0xdf>
c000ce80:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000ce87:	2e 30 20             	xor    %ah,%cs:(%eax)
c000ce8a:	74 65                	je     c000cef1 <__func__.877+0xdd>
c000ce8c:	73 74                	jae    c000cf02 <__func__.877+0xee>
c000ce8e:	00 00                	add    %al,(%eax)
c000ce90:	23 44 45 20          	and    0x20(%ebp,%eax,2),%eax
c000ce94:	44                   	inc    %esp
c000ce95:	69 76 69 64 65 20 45 	imul   $0x45206564,0x69(%esi),%esi
c000ce9c:	72 72                	jb     c000cf10 <__func__.877+0xfc>
c000ce9e:	6f                   	outsl  %ds:(%esi),(%dx)
c000ce9f:	72 00                	jb     c000cea1 <__func__.877+0x8d>
c000cea1:	23 44 42 20          	and    0x20(%edx,%eax,2),%eax
c000cea5:	44                   	inc    %esp
c000cea6:	65 62 75 67          	bound  %esi,%gs:0x67(%ebp)
c000ceaa:	20 45 78             	and    %al,0x78(%ebp)
c000cead:	63 65 70             	arpl   %sp,0x70(%ebp)
c000ceb0:	74 69                	je     c000cf1b <__func__.877+0x107>
c000ceb2:	6f                   	outsl  %ds:(%esi),(%dx)
c000ceb3:	6e                   	outsb  %ds:(%esi),(%dx)
c000ceb4:	00 4e 4d             	add    %cl,0x4d(%esi)
c000ceb7:	49                   	dec    %ecx
c000ceb8:	20 49 6e             	and    %cl,0x6e(%ecx)
c000cebb:	74 65                	je     c000cf22 <__func__.877+0x10e>
c000cebd:	72 72                	jb     c000cf31 <__func__.877+0x11d>
c000cebf:	75 70                	jne    c000cf31 <__func__.877+0x11d>
c000cec1:	74 00                	je     c000cec3 <__func__.877+0xaf>
c000cec3:	23 42 50             	and    0x50(%edx),%eax
c000cec6:	20 42 72             	and    %al,0x72(%edx)
c000cec9:	65 61                	gs popa 
c000cecb:	6b 70 6f 69          	imul   $0x69,0x6f(%eax),%esi
c000cecf:	6e                   	outsb  %ds:(%esi),(%dx)
c000ced0:	74 20                	je     c000cef2 <__func__.877+0xde>
c000ced2:	45                   	inc    %ebp
c000ced3:	78 63                	js     c000cf38 <__func__.877+0x124>
c000ced5:	65 70 74             	gs jo  c000cf4c <__func__.877+0x138>
c000ced8:	69 6f 6e 00 23 4f 46 	imul   $0x464f2300,0x6e(%edi),%ebp
c000cedf:	20 4f 76             	and    %cl,0x76(%edi)
c000cee2:	65 72 66             	gs jb  c000cf4b <__func__.877+0x137>
c000cee5:	6c                   	insb   (%dx),%es:(%edi)
c000cee6:	6f                   	outsl  %ds:(%esi),(%dx)
c000cee7:	77 20                	ja     c000cf09 <__func__.877+0xf5>
c000cee9:	45                   	inc    %ebp
c000ceea:	78 63                	js     c000cf4f <__func__.877+0x13b>
c000ceec:	65 70 74             	gs jo  c000cf63 <__func__.877+0x14f>
c000ceef:	69 6f 6e 00 23 42 52 	imul   $0x52422300,0x6e(%edi),%ebp
c000cef6:	20 42 4f             	and    %al,0x4f(%edx)
c000cef9:	55                   	push   %ebp
c000cefa:	4e                   	dec    %esi
c000cefb:	44                   	inc    %esp
c000cefc:	20 52 61             	and    %dl,0x61(%edx)
c000ceff:	6e                   	outsb  %ds:(%esi),(%dx)
c000cf00:	67 65 20 45 78       	and    %al,%gs:0x78(%di)
c000cf05:	63 65 65             	arpl   %sp,0x65(%ebp)
c000cf08:	64 65 64 20 45 78    	fs gs and %al,%fs:0x78(%ebp)
c000cf0e:	63 65 70             	arpl   %sp,0x70(%ebp)
c000cf11:	74 69                	je     c000cf7c <__func__.877+0x168>
c000cf13:	6f                   	outsl  %ds:(%esi),(%dx)
c000cf14:	6e                   	outsb  %ds:(%esi),(%dx)
c000cf15:	00 23                	add    %ah,(%ebx)
c000cf17:	55                   	push   %ebp
c000cf18:	44                   	inc    %esp
c000cf19:	20 49 6e             	and    %cl,0x6e(%ecx)
c000cf1c:	76 61                	jbe    c000cf7f <__func__.877+0x16b>
c000cf1e:	6c                   	insb   (%dx),%es:(%edi)
c000cf1f:	69 64 20 4f 70 63 6f 	imul   $0x646f6370,0x4f(%eax,%eiz,1),%esp
c000cf26:	64 
c000cf27:	65 20 45 78          	and    %al,%gs:0x78(%ebp)
c000cf2b:	63 65 70             	arpl   %sp,0x70(%ebp)
c000cf2e:	74 69                	je     c000cf99 <__func__.877+0x185>
c000cf30:	6f                   	outsl  %ds:(%esi),(%dx)
c000cf31:	6e                   	outsb  %ds:(%esi),(%dx)
c000cf32:	00 23                	add    %ah,(%ebx)
c000cf34:	4e                   	dec    %esi
c000cf35:	4d                   	dec    %ebp
c000cf36:	20 44 65 76          	and    %al,0x76(%ebp,%eiz,2)
c000cf3a:	69 63 65 20 4e 6f 74 	imul   $0x746f4e20,0x65(%ebx),%esp
c000cf41:	20 41 76             	and    %al,0x76(%ecx)
c000cf44:	61                   	popa   
c000cf45:	69 6c 61 62 6c 65 20 	imul   $0x4520656c,0x62(%ecx,%eiz,2),%ebp
c000cf4c:	45 
c000cf4d:	78 63                	js     c000cfb2 <__func__.877+0x19e>
c000cf4f:	65 70 74             	gs jo  c000cfc6 <__func__.877+0x1b2>
c000cf52:	69 6f 6e 00 23 44 46 	imul   $0x46442300,0x6e(%edi),%ebp
c000cf59:	20 44 6f 75          	and    %al,0x75(%edi,%ebp,2)
c000cf5d:	62 6c 65 20          	bound  %ebp,0x20(%ebp,%eiz,2)
c000cf61:	46                   	inc    %esi
c000cf62:	61                   	popa   
c000cf63:	75 6c                	jne    c000cfd1 <__func__.877+0x1bd>
c000cf65:	74 20                	je     c000cf87 <__func__.877+0x173>
c000cf67:	45                   	inc    %ebp
c000cf68:	78 63                	js     c000cfcd <__func__.877+0x1b9>
c000cf6a:	65 70 74             	gs jo  c000cfe1 <__func__.877+0x1cd>
c000cf6d:	69 6f 6e 00 43 6f 70 	imul   $0x706f4300,0x6e(%edi),%ebp
c000cf74:	72 6f                	jb     c000cfe5 <__func__.877+0x1d1>
c000cf76:	63 65 73             	arpl   %sp,0x73(%ebp)
c000cf79:	73 6f                	jae    c000cfea <__func__.877+0x1d6>
c000cf7b:	72 20                	jb     c000cf9d <__func__.877+0x189>
c000cf7d:	53                   	push   %ebx
c000cf7e:	65 67 6d             	gs insl (%dx),%es:(%di)
c000cf81:	65 6e                	outsb  %gs:(%esi),(%dx)
c000cf83:	74 20                	je     c000cfa5 <__func__.877+0x191>
c000cf85:	4f                   	dec    %edi
c000cf86:	76 65                	jbe    c000cfed <__func__.877+0x1d9>
c000cf88:	72 72                	jb     c000cffc <__func__.877+0x1e8>
c000cf8a:	75 6e                	jne    c000cffa <__func__.877+0x1e6>
c000cf8c:	00 23                	add    %ah,(%ebx)
c000cf8e:	54                   	push   %esp
c000cf8f:	53                   	push   %ebx
c000cf90:	20 49 6e             	and    %cl,0x6e(%ecx)
c000cf93:	76 61                	jbe    c000cff6 <__func__.877+0x1e2>
c000cf95:	6c                   	insb   (%dx),%es:(%edi)
c000cf96:	69 64 20 54 53 53 20 	imul   $0x45205353,0x54(%eax,%eiz,1),%esp
c000cf9d:	45 
c000cf9e:	78 63                	js     c000d003 <__func__.877+0x1ef>
c000cfa0:	65 70 74             	gs jo  c000d017 <__func__.877+0x203>
c000cfa3:	69 6f 6e 00 23 4e 50 	imul   $0x504e2300,0x6e(%edi),%ebp
c000cfaa:	20 53 65             	and    %dl,0x65(%ebx)
c000cfad:	67 6d                	insl   (%dx),%es:(%di)
c000cfaf:	65 6e                	outsb  %gs:(%esi),(%dx)
c000cfb1:	74 20                	je     c000cfd3 <__func__.877+0x1bf>
c000cfb3:	4e                   	dec    %esi
c000cfb4:	6f                   	outsl  %ds:(%esi),(%dx)
c000cfb5:	74 20                	je     c000cfd7 <__func__.877+0x1c3>
c000cfb7:	50                   	push   %eax
c000cfb8:	72 65                	jb     c000d01f <__func__.877+0x20b>
c000cfba:	73 65                	jae    c000d021 <__func__.877+0x20d>
c000cfbc:	6e                   	outsb  %ds:(%esi),(%dx)
c000cfbd:	74 00                	je     c000cfbf <__func__.877+0x1ab>
c000cfbf:	23 53 53             	and    0x53(%ebx),%edx
c000cfc2:	20 53 74             	and    %dl,0x74(%ebx)
c000cfc5:	61                   	popa   
c000cfc6:	63 6b 20             	arpl   %bp,0x20(%ebx)
c000cfc9:	46                   	inc    %esi
c000cfca:	61                   	popa   
c000cfcb:	75 6c                	jne    c000d039 <__func__.877+0x225>
c000cfcd:	74 20                	je     c000cfef <__func__.877+0x1db>
c000cfcf:	45                   	inc    %ebp
c000cfd0:	78 63                	js     c000d035 <__func__.877+0x221>
c000cfd2:	65 70 74             	gs jo  c000d049 <__func__.877+0x235>
c000cfd5:	69 6f 6e 00 23 47 50 	imul   $0x50472300,0x6e(%edi),%ebp
c000cfdc:	20 47 65             	and    %al,0x65(%edi)
c000cfdf:	6e                   	outsb  %ds:(%esi),(%dx)
c000cfe0:	65 72 61             	gs jb  c000d044 <__func__.877+0x230>
c000cfe3:	6c                   	insb   (%dx),%es:(%edi)
c000cfe4:	20 50 72             	and    %dl,0x72(%eax)
c000cfe7:	6f                   	outsl  %ds:(%esi),(%dx)
c000cfe8:	74 65                	je     c000d04f <__func__.877+0x23b>
c000cfea:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c000cfee:	6e                   	outsb  %ds:(%esi),(%dx)
c000cfef:	20 45 78             	and    %al,0x78(%ebp)
c000cff2:	63 65 70             	arpl   %sp,0x70(%ebp)
c000cff5:	74 69                	je     c000d060 <__func__.877+0x24c>
c000cff7:	6f                   	outsl  %ds:(%esi),(%dx)
c000cff8:	6e                   	outsb  %ds:(%esi),(%dx)
c000cff9:	00 23                	add    %ah,(%ebx)
c000cffb:	50                   	push   %eax
c000cffc:	46                   	inc    %esi
c000cffd:	20 50 61             	and    %dl,0x61(%eax)
c000d000:	67 65 2d 46 61 75 6c 	addr16 gs sub $0x6c756146,%eax
c000d007:	74 20                	je     c000d029 <__func__.877+0x215>
c000d009:	45                   	inc    %ebp
c000d00a:	78 63                	js     c000d06f <__func__.877+0x25b>
c000d00c:	65 70 74             	gs jo  c000d083 <__func__.877+0x26f>
c000d00f:	69 6f 6e 00 52 65 73 	imul   $0x73655200,0x6e(%edi),%ebp
c000d016:	65 72 76             	gs jb  c000d08f <__func__.877+0x27b>
c000d019:	65 64 00 23          	gs add %ah,%fs:(%ebx)
c000d01d:	4d                   	dec    %ebp
c000d01e:	46                   	inc    %esi
c000d01f:	20 78 38             	and    %bh,0x38(%eax)
c000d022:	37                   	aaa    
c000d023:	20 46 50             	and    %al,0x50(%esi)
c000d026:	55                   	push   %ebp
c000d027:	20 46 6c             	and    %al,0x6c(%esi)
c000d02a:	6f                   	outsl  %ds:(%esi),(%dx)
c000d02b:	61                   	popa   
c000d02c:	74 69                	je     c000d097 <__func__.877+0x283>
c000d02e:	6e                   	outsb  %ds:(%esi),(%dx)
c000d02f:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000d035:	74 20                	je     c000d057 <__func__.877+0x243>
c000d037:	45                   	inc    %ebp
c000d038:	72 72                	jb     c000d0ac <__func__.877+0x298>
c000d03a:	6f                   	outsl  %ds:(%esi),(%dx)
c000d03b:	72 00                	jb     c000d03d <__func__.877+0x229>
c000d03d:	23 41 43             	and    0x43(%ecx),%eax
c000d040:	20 41 6c             	and    %al,0x6c(%ecx)
c000d043:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%edi),%esp
c000d04a:	20 43 68             	and    %al,0x68(%ebx)
c000d04d:	65 63 6b 20          	arpl   %bp,%gs:0x20(%ebx)
c000d051:	45                   	inc    %ebp
c000d052:	78 63                	js     c000d0b7 <__func__.877+0x2a3>
c000d054:	65 70 74             	gs jo  c000d0cb <__func__.877+0x2b7>
c000d057:	69 6f 6e 00 23 4d 43 	imul   $0x434d2300,0x6e(%edi),%ebp
c000d05e:	20 4d 61             	and    %cl,0x61(%ebp)
c000d061:	63 68 69             	arpl   %bp,0x69(%eax)
c000d064:	6e                   	outsb  %ds:(%esi),(%dx)
c000d065:	65 2d 43 68 65 63    	gs sub $0x63656843,%eax
c000d06b:	6b 20 45             	imul   $0x45,(%eax),%esp
c000d06e:	78 63                	js     c000d0d3 <__func__.877+0x2bf>
c000d070:	65 70 74             	gs jo  c000d0e7 <__func__.877+0x2d3>
c000d073:	69 6f 6e 00 23 58 46 	imul   $0x46582300,0x6e(%edi),%ebp
c000d07a:	20 53 49             	and    %dl,0x49(%ebx)
c000d07d:	4d                   	dec    %ebp
c000d07e:	44                   	inc    %esp
c000d07f:	20 46 6c             	and    %al,0x6c(%esi)
c000d082:	6f                   	outsl  %ds:(%esi),(%dx)
c000d083:	61                   	popa   
c000d084:	74 69                	je     c000d0ef <__func__.877+0x2db>
c000d086:	6e                   	outsb  %ds:(%esi),(%dx)
c000d087:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000d08d:	74 20                	je     c000d0af <__func__.877+0x29b>
c000d08f:	45                   	inc    %ebp
c000d090:	78 63                	js     c000d0f5 <__func__.877+0x2e1>
c000d092:	65 70 74             	gs jo  c000d109 <__func__.877+0x2f5>
c000d095:	69 6f 6e 00 53 6f 72 	imul   $0x726f5300,0x6e(%edi),%ebp
c000d09c:	72 79                	jb     c000d117 <__func__.877+0x303>
c000d09e:	2c 20                	sub    $0x20,%al
c000d0a0:	61                   	popa   
c000d0a1:	20 70 72             	and    %dh,0x72(%eax)
c000d0a4:	6f                   	outsl  %ds:(%esi),(%dx)
c000d0a5:	62 6c 65 6d          	bound  %ebp,0x6d(%ebp,%eiz,2)
c000d0a9:	20 62 65             	and    %ah,0x65(%edx)
c000d0ac:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d0ae:	20 64 65 74          	and    %ah,0x74(%ebp,%eiz,2)
c000d0b2:	65 63 74 65 64       	arpl   %si,%gs:0x64(%ebp,%eiz,2)
c000d0b7:	20 61 6e             	and    %ah,0x6e(%ecx)
c000d0ba:	64 20 50 4b          	and    %dl,%fs:0x4b(%eax)
c000d0be:	6e                   	outsb  %ds:(%esi),(%dx)
c000d0bf:	20 73 68             	and    %dh,0x68(%ebx)
c000d0c2:	75 74                	jne    c000d138 <__func__.877+0x324>
c000d0c4:	20 64 6f 77          	and    %ah,0x77(%edi,%ebp,2)
c000d0c8:	6e                   	outsb  %ds:(%esi),(%dx)
c000d0c9:	20 74 6f 20          	and    %dh,0x20(%edi,%ebp,2)
c000d0cd:	70 72                	jo     c000d141 <__func__.877+0x32d>
c000d0cf:	65 76 65             	gs jbe c000d137 <__func__.877+0x323>
c000d0d2:	6e                   	outsb  %ds:(%esi),(%dx)
c000d0d3:	74 20                	je     c000d0f5 <__func__.877+0x2e1>
c000d0d5:	64 61                	fs popa 
c000d0d7:	6d                   	insl   (%dx),%es:(%edi)
c000d0d8:	61                   	popa   
c000d0d9:	67 65 20 74 6f       	and    %dh,%gs:0x6f(%si)
c000d0de:	20 79 6f             	and    %bh,0x6f(%ecx)
c000d0e1:	75 72                	jne    c000d155 <__func__.877+0x341>
c000d0e3:	20 63 6f             	and    %ah,0x6f(%ebx)
c000d0e6:	6d                   	insl   (%dx),%es:(%edi)
c000d0e7:	70 75                	jo     c000d15e <__func__.877+0x34a>
c000d0e9:	74 65                	je     c000d150 <__func__.877+0x33c>
c000d0eb:	72 2e                	jb     c000d11b <__func__.877+0x307>
c000d0ed:	0a 49 66             	or     0x66(%ecx),%cl
c000d0f0:	20 74 68 69          	and    %dh,0x69(%eax,%ebp,2)
c000d0f4:	73 20                	jae    c000d116 <__func__.877+0x302>
c000d0f6:	69 73 20 74 68 65 20 	imul   $0x20656874,0x20(%ebx),%esi
c000d0fd:	66 69 72 73 74 20    	imul   $0x2074,0x73(%edx),%si
c000d103:	74 69                	je     c000d16e <__func__.877+0x35a>
c000d105:	6d                   	insl   (%dx),%es:(%edi)
c000d106:	65 20 79 6f          	and    %bh,%gs:0x6f(%ecx)
c000d10a:	75 27                	jne    c000d133 <__func__.877+0x31f>
c000d10c:	76 65                	jbe    c000d173 <__func__.877+0x35f>
c000d10e:	20 73 65             	and    %dh,0x65(%ebx)
c000d111:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d113:	20 74 68 69          	and    %dh,0x69(%eax,%ebp,2)
c000d117:	73 20                	jae    c000d139 <__func__.877+0x325>
c000d119:	73 74                	jae    c000d18f <__func__.877+0x37b>
c000d11b:	6f                   	outsl  %ds:(%esi),(%dx)
c000d11c:	70 20                	jo     c000d13e <__func__.877+0x32a>
c000d11e:	65 72 72             	gs jb  c000d193 <__func__.877+0x37f>
c000d121:	6f                   	outsl  %ds:(%esi),(%dx)
c000d122:	72 20                	jb     c000d144 <__func__.877+0x330>
c000d124:	73 65                	jae    c000d18b <__func__.877+0x377>
c000d126:	72 65                	jb     c000d18d <__func__.877+0x379>
c000d128:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d12a:	2c 20                	sub    $0x20,%al
c000d12c:	72 65                	jb     c000d193 <__func__.877+0x37f>
c000d12e:	73 74                	jae    c000d1a4 <__func__.877+0x390>
c000d130:	61                   	popa   
c000d131:	72 74                	jb     c000d1a7 <__func__.877+0x393>
c000d133:	20 79 6f             	and    %bh,0x6f(%ecx)
c000d136:	75 72                	jne    c000d1aa <__func__.877+0x396>
c000d138:	20 63 6f             	and    %ah,0x6f(%ebx)
c000d13b:	6d                   	insl   (%dx),%es:(%edi)
c000d13c:	70 75                	jo     c000d1b3 <__func__.877+0x39f>
c000d13e:	74 65                	je     c000d1a5 <__func__.877+0x391>
c000d140:	72 2e                	jb     c000d170 <__func__.877+0x35c>
c000d142:	49                   	dec    %ecx
c000d143:	66 20 74 68 69       	data16 and %dh,0x69(%eax,%ebp,2)
c000d148:	73 20                	jae    c000d16a <__func__.877+0x356>
c000d14a:	73 63                	jae    c000d1af <__func__.877+0x39b>
c000d14c:	72 65                	jb     c000d1b3 <__func__.877+0x39f>
c000d14e:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d150:	20 61 70             	and    %ah,0x70(%ecx)
c000d153:	70 65                	jo     c000d1ba <__func__.877+0x3a6>
c000d155:	72 73                	jb     c000d1ca <__func__.877+0x3b6>
c000d157:	20 61 67             	and    %ah,0x67(%ecx)
c000d15a:	61                   	popa   
c000d15b:	69 6e 2c 66 6f 6c 6c 	imul   $0x6c6c6f66,0x2c(%esi),%ebp
c000d162:	6f                   	outsl  %ds:(%esi),(%dx)
c000d163:	77 20                	ja     c000d185 <__func__.877+0x371>
c000d165:	74 68                	je     c000d1cf <__func__.877+0x3bb>
c000d167:	65 73 65             	gs jae c000d1cf <__func__.877+0x3bb>
c000d16a:	20 73 74             	and    %dh,0x74(%ebx)
c000d16d:	65 70 73             	gs jo  c000d1e3 <__func__.877+0x3cf>
c000d170:	3a 0a                	cmp    (%edx),%cl
c000d172:	20 31                	and    %dh,(%ecx)
c000d174:	2e 20 52 65          	and    %dl,%cs:0x65(%edx)
c000d178:	62 75 69             	bound  %esi,0x69(%ebp)
c000d17b:	6c                   	insb   (%dx),%es:(%edi)
c000d17c:	64 20 50 65          	and    %dl,%fs:0x65(%eax)
c000d180:	6e                   	outsb  %ds:(%esi),(%dx)
c000d181:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d184:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d189:	65 6c                	gs insb (%dx),%es:(%edi)
c000d18b:	2e 20 0a             	and    %cl,%cs:(%edx)
c000d18e:	20 32                	and    %dh,(%edx)
c000d190:	2e 20 44 65 62       	and    %al,%cs:0x62(%ebp,%eiz,2)
c000d195:	75 67                	jne    c000d1fe <__func__.877+0x3ea>
c000d197:	20 50 65             	and    %dl,0x65(%eax)
c000d19a:	6e                   	outsb  %ds:(%esi),(%dx)
c000d19b:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d19e:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d1a3:	65 6c                	gs insb (%dx),%es:(%edi)
c000d1a5:	20 6f 6e             	and    %ch,0x6e(%edi)
c000d1a8:	20 62 6f             	and    %ah,0x6f(%edx)
c000d1ab:	63 68 73             	arpl   %bp,0x73(%eax)
c000d1ae:	20 6f 72             	and    %ch,0x72(%edi)
c000d1b1:	20 6f 74             	and    %ch,0x74(%edi)
c000d1b4:	68 65 72 20 76       	push   $0x76207265
c000d1b9:	69 72 74 75 61 6c 20 	imul   $0x206c6175,0x74(%edx),%esi
c000d1c0:	6d                   	insl   (%dx),%es:(%edi)
c000d1c1:	61                   	popa   
c000d1c2:	63 68 69             	arpl   %bp,0x69(%eax)
c000d1c5:	6e                   	outsb  %ds:(%esi),(%dx)
c000d1c6:	65 2e 0a 00          	gs or  %cs:(%eax),%al
c000d1ca:	0a 20                	or     (%eax),%ah
c000d1cc:	00 0a                	add    %cl,(%edx)
c000d1ce:	20 69 6e             	and    %ch,0x6e(%ecx)
c000d1d1:	74 72                	je     c000d245 <__func__.877+0x431>
c000d1d3:	3a 20                	cmp    (%eax),%ah
c000d1d5:	30 78 00             	xor    %bh,0x0(%eax)
c000d1d8:	20 28                	and    %ch,(%eax)
c000d1da:	20 66 61             	and    %ah,0x61(%esi)
c000d1dd:	75 6c                	jne    c000d24b <__func__.877+0x437>
c000d1df:	74 20                	je     c000d201 <__func__.877+0x3ed>
c000d1e1:	61                   	popa   
c000d1e2:	64 64 72 65          	fs fs jb c000d24b <__func__.877+0x437>
c000d1e6:	73 73                	jae    c000d25b <__func__.877+0x447>
c000d1e8:	3a 20                	cmp    (%eax),%ah
c000d1ea:	30 78 00             	xor    %bh,0x0(%eax)
c000d1ed:	20 29                	and    %ch,(%ecx)
c000d1ef:	0a 00                	or     (%eax),%al
c000d1f1:	0a 20                	or     (%eax),%ah
c000d1f3:	43                   	inc    %ebx
c000d1f4:	50                   	push   %eax
c000d1f5:	55                   	push   %ebp
c000d1f6:	20 3a                	and    %bh,(%edx)
c000d1f8:	00 00                	add    %al,(%eax)
c000d1fa:	00 00                	add    %al,(%eax)
c000d1fc:	50                   	push   %eax
c000d1fd:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d1ff:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d202:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d207:	65 6c                	gs insb (%dx),%es:(%edi)
c000d209:	20 28                	and    %ch,(%eax)
c000d20b:	50                   	push   %eax
c000d20c:	4b                   	dec    %ebx
c000d20d:	6e                   	outsb  %ds:(%esi),(%dx)
c000d20e:	29 20                	sub    %esp,(%eax)
c000d210:	76 65                	jbe    c000d277 <keymap+0x17>
c000d212:	72 73                	jb     c000d287 <keymap+0x27>
c000d214:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d21b:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d21e:	74 65                	je     c000d285 <keymap+0x25>
c000d220:	73 74                	jae    c000d296 <keymap+0x36>
c000d222:	00 00                	add    %al,(%eax)
c000d224:	66 69 66 6f 5f 70    	imul   $0x705f,0x6f(%esi),%sp
c000d22a:	75 74                	jne    c000d2a0 <keymap+0x40>
c000d22c:	00 75 6e             	add    %dh,0x6e(%ebp)
c000d22f:	6b 6e 6f 77          	imul   $0x77,0x6f(%esi),%ebp
c000d233:	20 6b 65             	and    %ch,0x65(%ebx)
c000d236:	79 00                	jns    c000d238 <__func__.877+0x424>
c000d238:	50                   	push   %eax
c000d239:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d23b:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d23e:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d243:	65 6c                	gs insb (%dx),%es:(%edi)
c000d245:	20 28                	and    %ch,(%eax)
c000d247:	50                   	push   %eax
c000d248:	4b                   	dec    %ebx
c000d249:	6e                   	outsb  %ds:(%esi),(%dx)
c000d24a:	29 20                	sub    %esp,(%eax)
c000d24c:	76 65                	jbe    c000d2b3 <keymap+0x53>
c000d24e:	72 73                	jb     c000d2c3 <keymap+0x63>
c000d250:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d257:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d25a:	74 65                	je     c000d2c1 <keymap+0x61>
c000d25c:	73 74                	jae    c000d2d2 <keymap+0x72>
	...

c000d260 <keymap>:
c000d260:	00 00                	add    %al,(%eax)
c000d262:	1b 1b                	sbb    (%ebx),%ebx
c000d264:	31 21                	xor    %esp,(%ecx)
c000d266:	32 40 33             	xor    0x33(%eax),%al
c000d269:	23 34 24             	and    (%esp),%esi
c000d26c:	35 25 36 5e 37       	xor    $0x375e3625,%eax
c000d271:	26 38 2a             	cmp    %ch,%es:(%edx)
c000d274:	39 28                	cmp    %ebp,(%eax)
c000d276:	30 29                	xor    %ch,(%ecx)
c000d278:	2d 5f 3d 2b 08       	sub    $0x82b3d5f,%eax
c000d27d:	08 09                	or     %cl,(%ecx)
c000d27f:	09 71 51             	or     %esi,0x51(%ecx)
c000d282:	77 57                	ja     c000d2db <keymap+0x7b>
c000d284:	65 45                	gs inc %ebp
c000d286:	72 52                	jb     c000d2da <keymap+0x7a>
c000d288:	74 54                	je     c000d2de <keymap+0x7e>
c000d28a:	79 59                	jns    c000d2e5 <keymap+0x85>
c000d28c:	75 55                	jne    c000d2e3 <keymap+0x83>
c000d28e:	69 49 6f 4f 70 50 5b 	imul   $0x5b50704f,0x6f(%ecx),%ecx
c000d295:	7b 5d                	jnp    c000d2f4 <keymap+0x94>
c000d297:	7d 0d                	jge    c000d2a6 <keymap+0x46>
c000d299:	0d 00 00 61 41       	or     $0x41610000,%eax
c000d29e:	73 53                	jae    c000d2f3 <keymap+0x93>
c000d2a0:	64 44                	fs inc %esp
c000d2a2:	66 46                	inc    %si
c000d2a4:	67 47                	addr16 inc %edi
c000d2a6:	68 48 6a 4a 6b       	push   $0x6b4a6a48
c000d2ab:	4b                   	dec    %ebx
c000d2ac:	6c                   	insb   (%dx),%es:(%edi)
c000d2ad:	4c                   	dec    %esp
c000d2ae:	3b 3a                	cmp    (%edx),%edi
c000d2b0:	27                   	daa    
c000d2b1:	22 60 7e             	and    0x7e(%eax),%ah
c000d2b4:	00 00                	add    %al,(%eax)
c000d2b6:	5c                   	pop    %esp
c000d2b7:	7c 7a                	jl     c000d333 <keymap+0xd3>
c000d2b9:	5a                   	pop    %edx
c000d2ba:	78 58                	js     c000d314 <keymap+0xb4>
c000d2bc:	63 43 76             	arpl   %ax,0x76(%ebx)
c000d2bf:	56                   	push   %esi
c000d2c0:	62 42 6e             	bound  %eax,0x6e(%edx)
c000d2c3:	4e                   	dec    %esi
c000d2c4:	6d                   	insl   (%dx),%es:(%edi)
c000d2c5:	4d                   	dec    %ebp
c000d2c6:	2c 3c                	sub    $0x3c,%al
c000d2c8:	2e 3e 2f             	cs ds das 
c000d2cb:	3f                   	aas    
c000d2cc:	00 00                	add    %al,(%eax)
c000d2ce:	2a 2a                	sub    (%edx),%ch
c000d2d0:	00 00                	add    %al,(%eax)
c000d2d2:	20 20                	and    %ah,(%eax)
c000d2d4:	00 00                	add    %al,(%eax)
c000d2d6:	00 00                	add    %al,(%eax)
c000d2d8:	50                   	push   %eax
c000d2d9:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d2db:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d2de:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d2e3:	65 6c                	gs insb (%dx),%es:(%edi)
c000d2e5:	20 28                	and    %ch,(%eax)
c000d2e7:	50                   	push   %eax
c000d2e8:	4b                   	dec    %ebx
c000d2e9:	6e                   	outsb  %ds:(%esi),(%dx)
c000d2ea:	29 20                	sub    %esp,(%eax)
c000d2ec:	76 65                	jbe    c000d353 <keymap+0xf3>
c000d2ee:	72 73                	jb     c000d363 <keymap+0x103>
c000d2f0:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d2f7:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d2fa:	74 65                	je     c000d361 <keymap+0x101>
c000d2fc:	73 74                	jae    c000d372 <keymap+0x112>
c000d2fe:	00 00                	add    %al,(%eax)
c000d300:	4d                   	dec    %ebp
c000d301:	65 6d                	gs insl (%dx),%es:(%edi)
c000d303:	5f                   	pop    %edi
c000d304:	61                   	popa   
c000d305:	6c                   	insb   (%dx),%es:(%edi)
c000d306:	6c                   	insb   (%dx),%es:(%edi)
c000d307:	6f                   	outsl  %ds:(%esi),(%dx)
c000d308:	63 3a                	arpl   %di,(%edx)
c000d30a:	20 30                	and    %dh,(%eax)
c000d30c:	78 00                	js     c000d30e <keymap+0xae>
c000d30e:	00 00                	add    %al,(%eax)
c000d310:	50                   	push   %eax
c000d311:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d313:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d316:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d31b:	65 6c                	gs insb (%dx),%es:(%edi)
c000d31d:	20 28                	and    %ch,(%eax)
c000d31f:	50                   	push   %eax
c000d320:	4b                   	dec    %ebx
c000d321:	6e                   	outsb  %ds:(%esi),(%dx)
c000d322:	29 20                	sub    %esp,(%eax)
c000d324:	76 65                	jbe    c000d38b <keymap+0x12b>
c000d326:	72 73                	jb     c000d39b <digits.970+0x3>
c000d328:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d32f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d332:	74 65                	je     c000d399 <digits.970+0x1>
c000d334:	73 74                	jae    c000d3aa <digits.970+0x12>
c000d336:	00 00                	add    %al,(%eax)
c000d338:	73 9f                	jae    c000d2d9 <keymap+0x79>
c000d33a:	00 c0                	add    %al,%al
c000d33c:	2f                   	das    
c000d33d:	9f                   	lahf   
c000d33e:	00 c0                	add    %al,%al
c000d340:	2f                   	das    
c000d341:	9f                   	lahf   
c000d342:	00 c0                	add    %al,%al
c000d344:	2f                   	das    
c000d345:	9f                   	lahf   
c000d346:	00 c0                	add    %al,%al
c000d348:	2f                   	das    
c000d349:	9f                   	lahf   
c000d34a:	00 c0                	add    %al,%al
c000d34c:	2f                   	das    
c000d34d:	9f                   	lahf   
c000d34e:	00 c0                	add    %al,%al
c000d350:	2f                   	das    
c000d351:	9f                   	lahf   
c000d352:	00 c0                	add    %al,%al
c000d354:	2f                   	das    
c000d355:	9f                   	lahf   
c000d356:	00 c0                	add    %al,%al
c000d358:	08 9f 00 c0 27 9f    	or     %bl,-0x60d84000(%edi)
c000d35e:	00 c0                	add    %al,%al
c000d360:	16                   	push   %ss
c000d361:	9f                   	lahf   
c000d362:	00 c0                	add    %al,%al
c000d364:	2f                   	das    
c000d365:	9f                   	lahf   
c000d366:	00 c0                	add    %al,%al
c000d368:	2f                   	das    
c000d369:	9f                   	lahf   
c000d36a:	00 c0                	add    %al,%al
c000d36c:	16                   	push   %ss
c000d36d:	9f                   	lahf   
c000d36e:	00 c0                	add    %al,%al
c000d370:	50                   	push   %eax
c000d371:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d373:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d376:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d37b:	65 6c                	gs insb (%dx),%es:(%edi)
c000d37d:	20 28                	and    %ch,(%eax)
c000d37f:	50                   	push   %eax
c000d380:	4b                   	dec    %ebx
c000d381:	6e                   	outsb  %ds:(%esi),(%dx)
c000d382:	29 20                	sub    %esp,(%eax)
c000d384:	76 65                	jbe    c000d3eb <digits.989+0x2b>
c000d386:	72 73                	jb     c000d3fb <digits.989+0x3b>
c000d388:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d38f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d392:	74 65                	je     c000d3f9 <digits.989+0x39>
c000d394:	73 74                	jae    c000d40a <digits.989+0x4a>
	...

c000d398 <digits.970>:
c000d398:	30 31                	xor    %dh,(%ecx)
c000d39a:	32 33                	xor    (%ebx),%dh
c000d39c:	34 35                	xor    $0x35,%al
c000d39e:	36 37                	ss aaa 
c000d3a0:	38 39                	cmp    %bh,(%ecx)
c000d3a2:	41                   	inc    %ecx
c000d3a3:	42                   	inc    %edx
c000d3a4:	43                   	inc    %ebx
c000d3a5:	44                   	inc    %esp
c000d3a6:	45                   	inc    %ebp
c000d3a7:	46                   	inc    %esi
c000d3a8:	47                   	inc    %edi
c000d3a9:	48                   	dec    %eax
c000d3aa:	49                   	dec    %ecx
c000d3ab:	4a                   	dec    %edx
c000d3ac:	4b                   	dec    %ebx
c000d3ad:	4c                   	dec    %esp
c000d3ae:	4d                   	dec    %ebp
c000d3af:	4e                   	dec    %esi
c000d3b0:	4f                   	dec    %edi
c000d3b1:	50                   	push   %eax
c000d3b2:	51                   	push   %ecx
c000d3b3:	52                   	push   %edx
c000d3b4:	53                   	push   %ebx
c000d3b5:	54                   	push   %esp
c000d3b6:	55                   	push   %ebp
c000d3b7:	56                   	push   %esi
c000d3b8:	57                   	push   %edi
c000d3b9:	58                   	pop    %eax
c000d3ba:	59                   	pop    %ecx
c000d3bb:	5a                   	pop    %edx
c000d3bc:	00 00                	add    %al,(%eax)
	...

c000d3c0 <digits.989>:
c000d3c0:	30 31                	xor    %dh,(%ecx)
c000d3c2:	32 33                	xor    (%ebx),%dh
c000d3c4:	34 35                	xor    $0x35,%al
c000d3c6:	36 37                	ss aaa 
c000d3c8:	38 39                	cmp    %bh,(%ecx)
c000d3ca:	41                   	inc    %ecx
c000d3cb:	42                   	inc    %edx
c000d3cc:	43                   	inc    %ebx
c000d3cd:	44                   	inc    %esp
c000d3ce:	45                   	inc    %ebp
c000d3cf:	46                   	inc    %esi
c000d3d0:	47                   	inc    %edi
c000d3d1:	48                   	dec    %eax
c000d3d2:	49                   	dec    %ecx
c000d3d3:	4a                   	dec    %edx
c000d3d4:	4b                   	dec    %ebx
c000d3d5:	4c                   	dec    %esp
c000d3d6:	4d                   	dec    %ebp
c000d3d7:	4e                   	dec    %esi
c000d3d8:	4f                   	dec    %edi
c000d3d9:	50                   	push   %eax
c000d3da:	51                   	push   %ecx
c000d3db:	52                   	push   %edx
c000d3dc:	53                   	push   %ebx
c000d3dd:	54                   	push   %esp
c000d3de:	55                   	push   %ebp
c000d3df:	56                   	push   %esi
c000d3e0:	57                   	push   %edi
c000d3e1:	58                   	pop    %eax
c000d3e2:	59                   	pop    %ecx
c000d3e3:	5a                   	pop    %edx
c000d3e4:	00 00                	add    %al,(%eax)
c000d3e6:	00 00                	add    %al,(%eax)
c000d3e8:	64 73 74             	fs jae c000d45f <digits.989+0x9f>
c000d3eb:	5f                   	pop    %edi
c000d3ec:	5f                   	pop    %edi
c000d3ed:	20 21                	and    %ah,(%ecx)
c000d3ef:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000d3f4:	4c                   	dec    %esp
c000d3f5:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
c000d3f9:	2f                   	das    
c000d3fa:	73 74                	jae    c000d470 <__func__.842>
c000d3fc:	72 69                	jb     c000d467 <digits.989+0xa7>
c000d3fe:	6e                   	outsb  %ds:(%esi),(%dx)
c000d3ff:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
c000d403:	64 73 74             	fs jae c000d47a <__func__.854+0x2>
c000d406:	5f                   	pop    %edi
c000d407:	5f                   	pop    %edi
c000d408:	20 21                	and    %ah,(%ecx)
c000d40a:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000d40f:	4c                   	dec    %esp
c000d410:	20 26                	and    %ah,(%esi)
c000d412:	26 20 73 72          	and    %dh,%es:0x72(%ebx)
c000d416:	63 5f 5f             	arpl   %bx,0x5f(%edi)
c000d419:	20 21                	and    %ah,(%ecx)
c000d41b:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000d420:	4c                   	dec    %esp
c000d421:	00 70 31             	add    %dh,0x31(%eax)
c000d424:	5f                   	pop    %edi
c000d425:	5f                   	pop    %edi
c000d426:	20 21                	and    %ah,(%ecx)
c000d428:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000d42d:	4c                   	dec    %esp
c000d42e:	20 26                	and    %ah,(%esi)
c000d430:	26 20 70 32          	and    %dh,%es:0x32(%eax)
c000d434:	5f                   	pop    %edi
c000d435:	5f                   	pop    %edi
c000d436:	20 21                	and    %ah,(%ecx)
c000d438:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000d43d:	4c                   	dec    %esp
c000d43e:	00 00                	add    %al,(%eax)
c000d440:	50                   	push   %eax
c000d441:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d443:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d446:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d44b:	65 6c                	gs insb (%dx),%es:(%edi)
c000d44d:	20 28                	and    %ch,(%eax)
c000d44f:	50                   	push   %eax
c000d450:	4b                   	dec    %ebx
c000d451:	6e                   	outsb  %ds:(%esi),(%dx)
c000d452:	29 20                	sub    %esp,(%eax)
c000d454:	76 65                	jbe    c000d4bb <__func__.854+0x43>
c000d456:	72 73                	jb     c000d4cb <__func__.854+0x53>
c000d458:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d45f:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d462:	74 65                	je     c000d4c9 <__func__.854+0x51>
c000d464:	73 74                	jae    c000d4da <__func__.854+0x62>
	...

c000d468 <__func__.831>:
c000d468:	6d                   	insl   (%dx),%es:(%edi)
c000d469:	65 6d                	gs insl (%dx),%es:(%edi)
c000d46b:	73 65                	jae    c000d4d2 <__func__.854+0x5a>
c000d46d:	74 00                	je     c000d46f <__func__.831+0x7>
	...

c000d470 <__func__.842>:
c000d470:	6d                   	insl   (%dx),%es:(%edi)
c000d471:	65 6d                	gs insl (%dx),%es:(%edi)
c000d473:	63 70 79             	arpl   %si,0x79(%eax)
	...

c000d478 <__func__.854>:
c000d478:	6d                   	insl   (%dx),%es:(%edi)
c000d479:	65 6d                	gs insl (%dx),%es:(%edi)
c000d47b:	63 6d 70             	arpl   %bp,0x70(%ebp)
c000d47e:	00 00                	add    %al,(%eax)
c000d480:	6d                   	insl   (%dx),%es:(%edi)
c000d481:	61                   	popa   
c000d482:	69 6e 00 73 74 61 74 	imul   $0x74617473,0x0(%esi),%ebp
c000d489:	75 73                	jne    c000d4fe <__func__.854+0x86>
c000d48b:	20 21                	and    %ah,(%ecx)
c000d48d:	3d 20 54 41 53       	cmp    $0x53415420,%eax
c000d492:	4b                   	dec    %ebx
c000d493:	5f                   	pop    %edi
c000d494:	52                   	push   %edx
c000d495:	55                   	push   %ebp
c000d496:	4e                   	dec    %esi
c000d497:	4e                   	dec    %esi
c000d498:	49                   	dec    %ecx
c000d499:	4e                   	dec    %esi
c000d49a:	47                   	inc    %edi
c000d49b:	20 26                	and    %ah,(%esi)
c000d49d:	26 20 73 74          	and    %dh,%es:0x74(%ebx)
c000d4a1:	61                   	popa   
c000d4a2:	74 75                	je     c000d519 <__func__.1051+0xd>
c000d4a4:	73 20                	jae    c000d4c6 <__func__.854+0x4e>
c000d4a6:	21 3d 20 54 41 53    	and    %edi,0x53415420
c000d4ac:	4b                   	dec    %ebx
c000d4ad:	5f                   	pop    %edi
c000d4ae:	52                   	push   %edx
c000d4af:	45                   	inc    %ebp
c000d4b0:	41                   	inc    %ecx
c000d4b1:	44                   	inc    %esp
c000d4b2:	59                   	pop    %ecx
c000d4b3:	00 74 68 72          	add    %dh,0x72(%eax,%ebp,2)
c000d4b7:	65 61                	gs popa 
c000d4b9:	64 2f                	fs das 
c000d4bb:	74 68                	je     c000d525 <__func__.1058+0x9>
c000d4bd:	72 65                	jb     c000d524 <__func__.1058+0x8>
c000d4bf:	61                   	popa   
c000d4c0:	64 2e 63 00          	fs arpl %ax,%cs:(%eax)
c000d4c4:	74 68                	je     c000d52e <__func__.1058+0x12>
c000d4c6:	72 65                	jb     c000d52d <__func__.1058+0x11>
c000d4c8:	61                   	popa   
c000d4c9:	64 2d 3e 73 74 61    	fs sub $0x6174733e,%eax
c000d4cf:	74 75                	je     c000d546 <__func__.1058+0x2a>
c000d4d1:	73 20                	jae    c000d4f3 <__func__.854+0x7b>
c000d4d3:	21 3d 20 54 41 53    	and    %edi,0x53415420
c000d4d9:	4b                   	dec    %ebx
c000d4da:	5f                   	pop    %edi
c000d4db:	52                   	push   %edx
c000d4dc:	45                   	inc    %ebp
c000d4dd:	41                   	inc    %ecx
c000d4de:	44                   	inc    %esp
c000d4df:	59                   	pop    %ecx
c000d4e0:	00 00                	add    %al,(%eax)
c000d4e2:	00 00                	add    %al,(%eax)
c000d4e4:	50                   	push   %eax
c000d4e5:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d4e7:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d4ea:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d4ef:	65 6c                	gs insb (%dx),%es:(%edi)
c000d4f1:	20 28                	and    %ch,(%eax)
c000d4f3:	50                   	push   %eax
c000d4f4:	4b                   	dec    %ebx
c000d4f5:	6e                   	outsb  %ds:(%esi),(%dx)
c000d4f6:	29 20                	sub    %esp,(%eax)
c000d4f8:	76 65                	jbe    c000d55f <__func__.1058+0x43>
c000d4fa:	72 73                	jb     c000d56f <__func__.1058+0x53>
c000d4fc:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d503:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d506:	74 65                	je     c000d56d <__func__.1058+0x51>
c000d508:	73 74                	jae    c000d57e <_bss+0x2>
	...

c000d50c <__func__.1051>:
c000d50c:	74 68                	je     c000d576 <__func__.1058+0x5a>
c000d50e:	72 65                	jb     c000d575 <__func__.1058+0x59>
c000d510:	61                   	popa   
c000d511:	64 5f                	fs pop %edi
c000d513:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c000d517:	6b 00 00             	imul   $0x0,(%eax),%eax
	...

c000d51c <__func__.1058>:
c000d51c:	74 68                	je     c000d586 <_bss+0xa>
c000d51e:	72 65                	jb     c000d585 <_bss+0x9>
c000d520:	61                   	popa   
c000d521:	64 5f                	fs pop %edi
c000d523:	75 6e                	jne    c000d593 <_bss+0x17>
c000d525:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c000d529:	6b 00 00             	imul   $0x0,(%eax),%eax
c000d52c:	50                   	push   %eax
c000d52d:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d52f:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d532:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d537:	65 6c                	gs insb (%dx),%es:(%edi)
c000d539:	20 28                	and    %ch,(%eax)
c000d53b:	50                   	push   %eax
c000d53c:	4b                   	dec    %ebx
c000d53d:	6e                   	outsb  %ds:(%esi),(%dx)
c000d53e:	29 20                	sub    %esp,(%eax)
c000d540:	76 65                	jbe    c000d5a7 <_bss+0x2b>
c000d542:	72 73                	jb     c000d5b7 <_bss+0x3b>
c000d544:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d54b:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d54e:	74 65                	je     c000d5b5 <_bss+0x39>
c000d550:	73 74                	jae    c000d5c6 <ext_scandcode+0x2>
c000d552:	00 00                	add    %al,(%eax)
c000d554:	50                   	push   %eax
c000d555:	65 6e                	outsb  %gs:(%esi),(%dx)
c000d557:	63 69 6c             	arpl   %bp,0x6c(%ecx)
c000d55a:	2d 4b 65 72 6e       	sub    $0x6e72654b,%eax
c000d55f:	65 6c                	gs insb (%dx),%es:(%edi)
c000d561:	20 28                	and    %ch,(%eax)
c000d563:	50                   	push   %eax
c000d564:	4b                   	dec    %ebx
c000d565:	6e                   	outsb  %ds:(%esi),(%dx)
c000d566:	29 20                	sub    %esp,(%eax)
c000d568:	76 65                	jbe    c000d5cf <alt_status+0x3>
c000d56a:	72 73                	jb     c000d5df <_ebss+0x7>
c000d56c:	69 6f 6e 20 30 2e 30 	imul   $0x302e3020,0x6e(%edi),%ebp
c000d573:	2e 30 20             	xor    %ah,%cs:(%eax)
c000d576:	74 65                	je     c000d5dd <_ebss+0x5>
c000d578:	73 74                	jae    c000d5ee <_ebss+0x16>
	...

Disassembly of section .bss:

c000d57c <_bss>:
	...

c000d5bc <shift_status>:
c000d5bc:	00 00                	add    %al,(%eax)
	...

c000d5c0 <casplock_status>:
c000d5c0:	00 00                	add    %al,(%eax)
	...

c000d5c4 <ext_scandcode>:
c000d5c4:	00 00                	add    %al,(%eax)
	...

c000d5c8 <ctrl_status>:
c000d5c8:	00 00                	add    %al,(%eax)
	...

c000d5cc <alt_status>:
c000d5cc:	00 00                	add    %al,(%eax)
	...

c000d5d0 <i>:
c000d5d0:	00 00                	add    %al,(%eax)
	...

c000d5d4 <ticks>:
c000d5d4:	00 00                	add    %al,(%eax)
	...

c000d5d8 <_ebss>:
	...

c000d5f0 <Screen>:
	...

c000d63c <intr_name>:
	...

c000d6f8 <idt>:
	...

c000d870 <idt_table>:
	...

c000d92c <keybuf>:
	...

c000d948 <user_pool>:
	...

c0015658 <user_vaddr>:
	...

c001d368 <kernel_vaddr>:
	...

c0025078 <kernel_pool>:
	...

c002cd88 <all_thread>:
	...

c002cda4 <main_thread>:
c002cda4:	00 00                	add    %al,(%eax)
	...

c002cda8 <ready_thread>:
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
