
build/kernel.o:     file format elf32-i386


Disassembly of section .text:

c0007f00 <_start>:
c0007f00:	66 b8 18 00          	mov    $0x18,%ax
c0007f04:	8e e8                	mov    %eax,%gs
c0007f06:	65 c6 05 60 04 00 00 	movb   $0x4b,%gs:0x460
c0007f0d:	4b 
c0007f0e:	65 c6 05 62 04 00 00 	movb   $0x65,%gs:0x462
c0007f15:	65 
c0007f16:	65 c6 05 64 04 00 00 	movb   $0x72,%gs:0x464
c0007f1d:	72 
c0007f1e:	65 c6 05 66 04 00 00 	movb   $0x6e,%gs:0x466
c0007f25:	6e 
c0007f26:	65 c6 05 68 04 00 00 	movb   $0x65,%gs:0x468
c0007f2d:	65 
c0007f2e:	65 c6 05 6a 04 00 00 	movb   $0x6c,%gs:0x46a
c0007f35:	6c 
c0007f36:	66 b8 10 00          	mov    $0x10,%ax
c0007f3a:	8e d8                	mov    %eax,%ds
c0007f3c:	8e c0                	mov    %eax,%es
c0007f3e:	8e d0                	mov    %eax,%ss
c0007f40:	8e e0                	mov    %eax,%fs
c0007f42:	bc 00 7b 00 c0       	mov    $0xc0007b00,%esp
c0007f47:	0f 01 15 78 99 00 c0 	lgdtl  0xc0009978
c0007f4e:	e9 ad 03 00 00       	jmp    c0008300 <kernel_main>
c0007f53:	e9 fb ff ff ff       	jmp    c0007f53 <_start+0x53>

c0007f58 <k_thread_b>:
c0007f58:	55                   	push   %ebp
c0007f59:	89 e5                	mov    %esp,%ebp
c0007f5b:	53                   	push   %ebx
c0007f5c:	31 db                	xor    %ebx,%ebx
c0007f5e:	52                   	push   %edx
c0007f5f:	50                   	push   %eax
c0007f60:	50                   	push   %eax
c0007f61:	6a 32                	push   $0x32
c0007f63:	6a 1e                	push   $0x1e
c0007f65:	6a 28                	push   $0x28
c0007f67:	6a 14                	push   $0x14
c0007f69:	53                   	push   %ebx
c0007f6a:	43                   	inc    %ebx
c0007f6b:	68 08 bd 00 c0       	push   $0xc000bd08
c0007f70:	e8 eb 09 00 00       	call   c0008960 <RectangleFill>
c0007f75:	83 c4 14             	add    $0x14,%esp
c0007f78:	6a 02                	push   $0x2
c0007f7a:	e8 dc 16 00 00       	call   c000965b <thread_block>
c0007f7f:	83 c4 10             	add    $0x10,%esp
c0007f82:	eb db                	jmp    c0007f5f <k_thread_b+0x7>

c0007f84 <k_thread_a>:
c0007f84:	55                   	push   %ebp
c0007f85:	89 e5                	mov    %esp,%ebp
c0007f87:	57                   	push   %edi
c0007f88:	56                   	push   %esi
c0007f89:	53                   	push   %ebx
c0007f8a:	83 ec 18             	sub    $0x18,%esp
c0007f8d:	8b 1d 1c 7c 00 00    	mov    0x7c1c,%ebx
c0007f93:	68 f0 bc 00 c0       	push   $0xc000bcf0
c0007f98:	e8 e7 16 00 00       	call   c0009684 <get_time>
c0007f9d:	83 c4 10             	add    $0x10,%esp
c0007fa0:	83 eb 22             	sub    $0x22,%ebx
c0007fa3:	e8 45 0e 00 00       	call   c0008ded <intr_disable>
c0007fa8:	8b 15 1c 7c 00 00    	mov    0x7c1c,%edx
c0007fae:	8b 35 f0 bc 00 c0    	mov    0xc000bcf0,%esi
c0007fb4:	89 c7                	mov    %eax,%edi
c0007fb6:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0007fbb:	51                   	push   %ecx
c0007fbc:	51                   	push   %ecx
c0007fbd:	8d 4a f8             	lea    -0x8(%edx),%ecx
c0007fc0:	83 ea 26             	sub    $0x26,%edx
c0007fc3:	51                   	push   %ecx
c0007fc4:	8d 48 f9             	lea    -0x7(%eax),%ecx
c0007fc7:	2d d1 00 00 00       	sub    $0xd1,%eax
c0007fcc:	51                   	push   %ecx
c0007fcd:	52                   	push   %edx
c0007fce:	50                   	push   %eax
c0007fcf:	68 84 84 84 00       	push   $0x848484
c0007fd4:	68 08 bd 00 c0       	push   $0xc000bd08
c0007fd9:	e8 82 09 00 00       	call   c0008960 <RectangleFill>
c0007fde:	8b 15 1c 7c 00 00    	mov    0x7c1c,%edx
c0007fe4:	83 c4 18             	add    $0x18,%esp
c0007fe7:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0007fec:	8d 4a f5             	lea    -0xb(%edx),%ecx
c0007fef:	83 ea 29             	sub    $0x29,%edx
c0007ff2:	51                   	push   %ecx
c0007ff3:	8d 48 f6             	lea    -0xa(%eax),%ecx
c0007ff6:	2d d4 00 00 00       	sub    $0xd4,%eax
c0007ffb:	51                   	push   %ecx
c0007ffc:	52                   	push   %edx
c0007ffd:	50                   	push   %eax
c0007ffe:	68 ff ff ff 00       	push   $0xffffff
c0008003:	68 08 bd 00 c0       	push   $0xc000bd08
c0008008:	e8 53 09 00 00       	call   c0008960 <RectangleFill>
c000800d:	a1 04 bd 00 c0       	mov    0xc000bd04,%eax
c0008012:	83 c4 14             	add    $0x14,%esp
c0008015:	25 00 f0 00 00       	and    $0xf000,%eax
c000801a:	c1 e8 0c             	shr    $0xc,%eax
c000801d:	83 c0 30             	add    $0x30,%eax
c0008020:	50                   	push   %eax
c0008021:	6a 00                	push   $0x0
c0008023:	53                   	push   %ebx
c0008024:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008029:	2d ca 00 00 00       	sub    $0xca,%eax
c000802e:	50                   	push   %eax
c000802f:	68 08 bd 00 c0       	push   $0xc000bd08
c0008034:	e8 91 0a 00 00       	call   c0008aca <put_char_graphic>
c0008039:	a1 04 bd 00 c0       	mov    0xc000bd04,%eax
c000803e:	83 c4 14             	add    $0x14,%esp
c0008041:	25 00 0f 00 00       	and    $0xf00,%eax
c0008046:	c1 e8 08             	shr    $0x8,%eax
c0008049:	83 c0 30             	add    $0x30,%eax
c000804c:	50                   	push   %eax
c000804d:	6a 00                	push   $0x0
c000804f:	53                   	push   %ebx
c0008050:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008055:	2d c0 00 00 00       	sub    $0xc0,%eax
c000805a:	50                   	push   %eax
c000805b:	68 08 bd 00 c0       	push   $0xc000bd08
c0008060:	e8 65 0a 00 00       	call   c0008aca <put_char_graphic>
c0008065:	a1 04 bd 00 c0       	mov    0xc000bd04,%eax
c000806a:	83 c4 14             	add    $0x14,%esp
c000806d:	25 f0 00 00 00       	and    $0xf0,%eax
c0008072:	c1 e8 04             	shr    $0x4,%eax
c0008075:	83 c0 30             	add    $0x30,%eax
c0008078:	50                   	push   %eax
c0008079:	6a 00                	push   $0x0
c000807b:	53                   	push   %ebx
c000807c:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008081:	2d b6 00 00 00       	sub    $0xb6,%eax
c0008086:	50                   	push   %eax
c0008087:	68 08 bd 00 c0       	push   $0xc000bd08
c000808c:	e8 39 0a 00 00       	call   c0008aca <put_char_graphic>
c0008091:	a1 04 bd 00 c0       	mov    0xc000bd04,%eax
c0008096:	83 c4 14             	add    $0x14,%esp
c0008099:	83 e0 0f             	and    $0xf,%eax
c000809c:	83 c0 30             	add    $0x30,%eax
c000809f:	50                   	push   %eax
c00080a0:	6a 00                	push   $0x0
c00080a2:	53                   	push   %ebx
c00080a3:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080a8:	2d ac 00 00 00       	sub    $0xac,%eax
c00080ad:	50                   	push   %eax
c00080ae:	68 08 bd 00 c0       	push   $0xc000bd08
c00080b3:	e8 12 0a 00 00       	call   c0008aca <put_char_graphic>
c00080b8:	83 c4 14             	add    $0x14,%esp
c00080bb:	6a 2f                	push   $0x2f
c00080bd:	6a 00                	push   $0x0
c00080bf:	53                   	push   %ebx
c00080c0:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080c5:	2d a2 00 00 00       	sub    $0xa2,%eax
c00080ca:	50                   	push   %eax
c00080cb:	68 08 bd 00 c0       	push   $0xc000bd08
c00080d0:	e8 f5 09 00 00       	call   c0008aca <put_char_graphic>
c00080d5:	a1 00 bd 00 c0       	mov    0xc000bd00,%eax
c00080da:	83 c4 14             	add    $0x14,%esp
c00080dd:	25 f0 00 00 00       	and    $0xf0,%eax
c00080e2:	c1 e8 04             	shr    $0x4,%eax
c00080e5:	83 c0 30             	add    $0x30,%eax
c00080e8:	50                   	push   %eax
c00080e9:	6a 00                	push   $0x0
c00080eb:	53                   	push   %ebx
c00080ec:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00080f1:	2d 98 00 00 00       	sub    $0x98,%eax
c00080f6:	50                   	push   %eax
c00080f7:	68 08 bd 00 c0       	push   $0xc000bd08
c00080fc:	e8 c9 09 00 00       	call   c0008aca <put_char_graphic>
c0008101:	a1 00 bd 00 c0       	mov    0xc000bd00,%eax
c0008106:	83 c4 14             	add    $0x14,%esp
c0008109:	83 e0 0f             	and    $0xf,%eax
c000810c:	83 c0 30             	add    $0x30,%eax
c000810f:	50                   	push   %eax
c0008110:	6a 00                	push   $0x0
c0008112:	53                   	push   %ebx
c0008113:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008118:	2d 8e 00 00 00       	sub    $0x8e,%eax
c000811d:	50                   	push   %eax
c000811e:	68 08 bd 00 c0       	push   $0xc000bd08
c0008123:	e8 a2 09 00 00       	call   c0008aca <put_char_graphic>
c0008128:	83 c4 14             	add    $0x14,%esp
c000812b:	6a 2f                	push   $0x2f
c000812d:	6a 00                	push   $0x0
c000812f:	53                   	push   %ebx
c0008130:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008135:	2d 84 00 00 00       	sub    $0x84,%eax
c000813a:	50                   	push   %eax
c000813b:	68 08 bd 00 c0       	push   $0xc000bd08
c0008140:	e8 85 09 00 00       	call   c0008aca <put_char_graphic>
c0008145:	a1 fc bc 00 c0       	mov    0xc000bcfc,%eax
c000814a:	83 c4 14             	add    $0x14,%esp
c000814d:	25 f0 00 00 00       	and    $0xf0,%eax
c0008152:	c1 e8 04             	shr    $0x4,%eax
c0008155:	83 c0 30             	add    $0x30,%eax
c0008158:	50                   	push   %eax
c0008159:	6a 00                	push   $0x0
c000815b:	53                   	push   %ebx
c000815c:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008161:	83 e8 7a             	sub    $0x7a,%eax
c0008164:	50                   	push   %eax
c0008165:	68 08 bd 00 c0       	push   $0xc000bd08
c000816a:	e8 5b 09 00 00       	call   c0008aca <put_char_graphic>
c000816f:	a1 fc bc 00 c0       	mov    0xc000bcfc,%eax
c0008174:	83 c4 14             	add    $0x14,%esp
c0008177:	83 e0 0f             	and    $0xf,%eax
c000817a:	83 c0 30             	add    $0x30,%eax
c000817d:	50                   	push   %eax
c000817e:	6a 00                	push   $0x0
c0008180:	53                   	push   %ebx
c0008181:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008186:	83 e8 70             	sub    $0x70,%eax
c0008189:	50                   	push   %eax
c000818a:	68 08 bd 00 c0       	push   $0xc000bd08
c000818f:	e8 36 09 00 00       	call   c0008aca <put_char_graphic>
c0008194:	83 c4 14             	add    $0x14,%esp
c0008197:	6a 20                	push   $0x20
c0008199:	6a 00                	push   $0x0
c000819b:	53                   	push   %ebx
c000819c:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00081a1:	83 e8 66             	sub    $0x66,%eax
c00081a4:	50                   	push   %eax
c00081a5:	68 08 bd 00 c0       	push   $0xc000bd08
c00081aa:	e8 1b 09 00 00       	call   c0008aca <put_char_graphic>
c00081af:	8b 15 f8 bc 00 c0    	mov    0xc000bcf8,%edx
c00081b5:	83 c4 14             	add    $0x14,%esp
c00081b8:	81 e2 f0 00 00 00    	and    $0xf0,%edx
c00081be:	c1 ea 04             	shr    $0x4,%edx
c00081c1:	8d 42 30             	lea    0x30(%edx),%eax
c00081c4:	50                   	push   %eax
c00081c5:	6a 00                	push   $0x0
c00081c7:	53                   	push   %ebx
c00081c8:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00081cd:	83 e8 5c             	sub    $0x5c,%eax
c00081d0:	50                   	push   %eax
c00081d1:	68 08 bd 00 c0       	push   $0xc000bd08
c00081d6:	e8 ef 08 00 00       	call   c0008aca <put_char_graphic>
c00081db:	a1 f8 bc 00 c0       	mov    0xc000bcf8,%eax
c00081e0:	83 c4 14             	add    $0x14,%esp
c00081e3:	83 e0 0f             	and    $0xf,%eax
c00081e6:	83 c0 30             	add    $0x30,%eax
c00081e9:	50                   	push   %eax
c00081ea:	6a 00                	push   $0x0
c00081ec:	53                   	push   %ebx
c00081ed:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00081f2:	83 e8 52             	sub    $0x52,%eax
c00081f5:	50                   	push   %eax
c00081f6:	68 08 bd 00 c0       	push   $0xc000bd08
c00081fb:	e8 ca 08 00 00       	call   c0008aca <put_char_graphic>
c0008200:	83 c4 14             	add    $0x14,%esp
c0008203:	6a 3a                	push   $0x3a
c0008205:	6a 00                	push   $0x0
c0008207:	53                   	push   %ebx
c0008208:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000820d:	83 e8 48             	sub    $0x48,%eax
c0008210:	50                   	push   %eax
c0008211:	68 08 bd 00 c0       	push   $0xc000bd08
c0008216:	e8 af 08 00 00       	call   c0008aca <put_char_graphic>
c000821b:	8b 15 f4 bc 00 c0    	mov    0xc000bcf4,%edx
c0008221:	83 c4 14             	add    $0x14,%esp
c0008224:	81 e2 f0 00 00 00    	and    $0xf0,%edx
c000822a:	c1 ea 04             	shr    $0x4,%edx
c000822d:	8d 42 30             	lea    0x30(%edx),%eax
c0008230:	50                   	push   %eax
c0008231:	6a 00                	push   $0x0
c0008233:	53                   	push   %ebx
c0008234:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008239:	83 e8 3e             	sub    $0x3e,%eax
c000823c:	50                   	push   %eax
c000823d:	68 08 bd 00 c0       	push   $0xc000bd08
c0008242:	e8 83 08 00 00       	call   c0008aca <put_char_graphic>
c0008247:	a1 f4 bc 00 c0       	mov    0xc000bcf4,%eax
c000824c:	83 c4 14             	add    $0x14,%esp
c000824f:	83 e0 0f             	and    $0xf,%eax
c0008252:	83 c0 30             	add    $0x30,%eax
c0008255:	50                   	push   %eax
c0008256:	6a 00                	push   $0x0
c0008258:	53                   	push   %ebx
c0008259:	a1 18 7c 00 00       	mov    0x7c18,%eax
c000825e:	83 e8 34             	sub    $0x34,%eax
c0008261:	50                   	push   %eax
c0008262:	68 08 bd 00 c0       	push   $0xc000bd08
c0008267:	e8 5e 08 00 00       	call   c0008aca <put_char_graphic>
c000826c:	83 c4 14             	add    $0x14,%esp
c000826f:	6a 3a                	push   $0x3a
c0008271:	6a 00                	push   $0x0
c0008273:	53                   	push   %ebx
c0008274:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008279:	83 e8 2a             	sub    $0x2a,%eax
c000827c:	50                   	push   %eax
c000827d:	68 08 bd 00 c0       	push   $0xc000bd08
c0008282:	e8 43 08 00 00       	call   c0008aca <put_char_graphic>
c0008287:	8b 15 f0 bc 00 c0    	mov    0xc000bcf0,%edx
c000828d:	83 c4 14             	add    $0x14,%esp
c0008290:	81 e2 f0 00 00 00    	and    $0xf0,%edx
c0008296:	c1 ea 04             	shr    $0x4,%edx
c0008299:	8d 42 30             	lea    0x30(%edx),%eax
c000829c:	50                   	push   %eax
c000829d:	6a 00                	push   $0x0
c000829f:	53                   	push   %ebx
c00082a0:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00082a5:	83 e8 20             	sub    $0x20,%eax
c00082a8:	50                   	push   %eax
c00082a9:	68 08 bd 00 c0       	push   $0xc000bd08
c00082ae:	e8 17 08 00 00       	call   c0008aca <put_char_graphic>
c00082b3:	a1 f0 bc 00 c0       	mov    0xc000bcf0,%eax
c00082b8:	83 c4 14             	add    $0x14,%esp
c00082bb:	83 e0 0f             	and    $0xf,%eax
c00082be:	83 c0 30             	add    $0x30,%eax
c00082c1:	50                   	push   %eax
c00082c2:	6a 00                	push   $0x0
c00082c4:	53                   	push   %ebx
c00082c5:	a1 18 7c 00 00       	mov    0x7c18,%eax
c00082ca:	83 e8 16             	sub    $0x16,%eax
c00082cd:	50                   	push   %eax
c00082ce:	68 08 bd 00 c0       	push   $0xc000bd08
c00082d3:	e8 f2 07 00 00       	call   c0008aca <put_char_graphic>
c00082d8:	83 c4 14             	add    $0x14,%esp
c00082db:	57                   	push   %edi
c00082dc:	e8 37 0b 00 00       	call   c0008e18 <intr_set_status>
c00082e1:	eb 0d                	jmp    c00082f0 <k_thread_a+0x36c>
c00082e3:	83 ec 0c             	sub    $0xc,%esp
c00082e6:	68 f0 bc 00 c0       	push   $0xc000bcf0
c00082eb:	e8 94 13 00 00       	call   c0009684 <get_time>
c00082f0:	83 c4 10             	add    $0x10,%esp
c00082f3:	39 35 f0 bc 00 c0    	cmp    %esi,0xc000bcf0
c00082f9:	74 e8                	je     c00082e3 <k_thread_a+0x35f>
c00082fb:	e9 a3 fc ff ff       	jmp    c0007fa3 <k_thread_a+0x1f>

c0008300 <kernel_main>:
c0008300:	55                   	push   %ebp
c0008301:	89 e5                	mov    %esp,%ebp
c0008303:	83 ec 08             	sub    $0x8,%esp
c0008306:	e8 85 08 00 00       	call   c0008b90 <init_all>
c000830b:	e8 f1 0a 00 00       	call   c0008e01 <intr_enable>
c0008310:	50                   	push   %eax
c0008311:	50                   	push   %eax
c0008312:	6a 0c                	push   $0xc
c0008314:	68 84 b9 00 c0       	push   $0xc000b984
c0008319:	68 ff ff ff 0f       	push   $0xfffffff
c000831e:	6a 28                	push   $0x28
c0008320:	6a 14                	push   $0x14
c0008322:	68 08 bd 00 c0       	push   $0xc000bd08
c0008327:	e8 29 08 00 00       	call   c0008b55 <put_str_graphic>
c000832c:	83 c4 14             	add    $0x14,%esp
c000832f:	68 91 b9 00 c0       	push   $0xc000b991
c0008334:	e8 d6 0f 00 00       	call   c000930f <put_str>
c0008339:	c7 04 24 50 00 00 00 	movl   $0x50,(%esp)
c0008340:	e8 40 0f 00 00       	call   c0009285 <put_char>
c0008345:	c7 04 24 4b 00 00 00 	movl   $0x4b,(%esp)
c000834c:	e8 34 0f 00 00       	call   c0009285 <put_char>
c0008351:	c7 04 24 6e 00 00 00 	movl   $0x6e,(%esp)
c0008358:	e8 28 0f 00 00       	call   c0009285 <put_char>
c000835d:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0008364:	e8 1c 0f 00 00       	call   c0009285 <put_char>
c0008369:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
c0008370:	e8 10 0f 00 00       	call   c0009285 <put_char>
c0008375:	c7 04 24 63 00 00 00 	movl   $0x63,(%esp)
c000837c:	e8 04 0f 00 00       	call   c0009285 <put_char>
c0008381:	c7 04 24 29 00 00 00 	movl   $0x29,(%esp)
c0008388:	e8 f8 0e 00 00       	call   c0009285 <put_char>
c000838d:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0008394:	e8 ec 0e 00 00       	call   c0009285 <put_char>
c0008399:	c7 04 24 4c 00 00 00 	movl   $0x4c,(%esp)
c00083a0:	e8 e0 0e 00 00       	call   c0009285 <put_char>
c00083a5:	c7 04 24 69 00 00 00 	movl   $0x69,(%esp)
c00083ac:	e8 d4 0e 00 00       	call   c0009285 <put_char>
c00083b1:	c7 04 24 6e 00 00 00 	movl   $0x6e,(%esp)
c00083b8:	e8 c8 0e 00 00       	call   c0009285 <put_char>
c00083bd:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
c00083c4:	e8 bc 0e 00 00       	call   c0009285 <put_char>
c00083c9:	c7 04 24 68 00 00 00 	movl   $0x68,(%esp)
c00083d0:	e8 b0 0e 00 00       	call   c0009285 <put_char>
c00083d5:	c7 04 24 65 00 00 00 	movl   $0x65,(%esp)
c00083dc:	e8 a4 0e 00 00       	call   c0009285 <put_char>
c00083e1:	c7 04 24 6e 00 00 00 	movl   $0x6e,(%esp)
c00083e8:	e8 98 0e 00 00       	call   c0009285 <put_char>
c00083ed:	c7 04 24 6a 00 00 00 	movl   $0x6a,(%esp)
c00083f4:	e8 8c 0e 00 00       	call   c0009285 <put_char>
c00083f9:	c7 04 24 75 00 00 00 	movl   $0x75,(%esp)
c0008400:	e8 80 0e 00 00       	call   c0009285 <put_char>
c0008405:	c7 04 24 6e 00 00 00 	movl   $0x6e,(%esp)
c000840c:	e8 74 0e 00 00       	call   c0009285 <put_char>
c0008411:	c7 04 24 50 00 00 00 	movl   $0x50,(%esp)
c0008418:	68 ff ff ff 00       	push   $0xffffff
c000841d:	6a 14                	push   $0x14
c000841f:	6a 14                	push   $0x14
c0008421:	68 08 bd 00 c0       	push   $0xc000bd08
c0008426:	e8 9f 06 00 00       	call   c0008aca <put_char_graphic>
c000842b:	83 c4 14             	add    $0x14,%esp
c000842e:	6a 4b                	push   $0x4b
c0008430:	68 ff ff ff 00       	push   $0xffffff
c0008435:	6a 14                	push   $0x14
c0008437:	6a 1e                	push   $0x1e
c0008439:	68 08 bd 00 c0       	push   $0xc000bd08
c000843e:	e8 87 06 00 00       	call   c0008aca <put_char_graphic>
c0008443:	83 c4 14             	add    $0x14,%esp
c0008446:	6a 6e                	push   $0x6e
c0008448:	68 ff ff ff 00       	push   $0xffffff
c000844d:	6a 14                	push   $0x14
c000844f:	6a 28                	push   $0x28
c0008451:	68 08 bd 00 c0       	push   $0xc000bd08
c0008456:	e8 6f 06 00 00       	call   c0008aca <put_char_graphic>
c000845b:	83 c4 14             	add    $0x14,%esp
c000845e:	6a 20                	push   $0x20
c0008460:	68 ff ff ff 00       	push   $0xffffff
c0008465:	6a 14                	push   $0x14
c0008467:	6a 32                	push   $0x32
c0008469:	68 08 bd 00 c0       	push   $0xc000bd08
c000846e:	e8 57 06 00 00       	call   c0008aca <put_char_graphic>
c0008473:	83 c4 14             	add    $0x14,%esp
c0008476:	6a 28                	push   $0x28
c0008478:	68 ff ff ff 00       	push   $0xffffff
c000847d:	6a 14                	push   $0x14
c000847f:	6a 3c                	push   $0x3c
c0008481:	68 08 bd 00 c0       	push   $0xc000bd08
c0008486:	e8 3f 06 00 00       	call   c0008aca <put_char_graphic>
c000848b:	83 c4 14             	add    $0x14,%esp
c000848e:	6a 63                	push   $0x63
c0008490:	68 ff ff ff 00       	push   $0xffffff
c0008495:	6a 14                	push   $0x14
c0008497:	6a 46                	push   $0x46
c0008499:	68 08 bd 00 c0       	push   $0xc000bd08
c000849e:	e8 27 06 00 00       	call   c0008aca <put_char_graphic>
c00084a3:	83 c4 14             	add    $0x14,%esp
c00084a6:	6a 29                	push   $0x29
c00084a8:	68 ff ff ff 00       	push   $0xffffff
c00084ad:	6a 14                	push   $0x14
c00084af:	6a 50                	push   $0x50
c00084b1:	68 08 bd 00 c0       	push   $0xc000bd08
c00084b6:	e8 0f 06 00 00       	call   c0008aca <put_char_graphic>
c00084bb:	83 c4 14             	add    $0x14,%esp
c00084be:	6a 20                	push   $0x20
c00084c0:	68 ff ff ff 00       	push   $0xffffff
c00084c5:	6a 14                	push   $0x14
c00084c7:	6a 5a                	push   $0x5a
c00084c9:	68 08 bd 00 c0       	push   $0xc000bd08
c00084ce:	e8 f7 05 00 00       	call   c0008aca <put_char_graphic>
c00084d3:	83 c4 14             	add    $0x14,%esp
c00084d6:	6a 4c                	push   $0x4c
c00084d8:	68 ff ff ff 00       	push   $0xffffff
c00084dd:	6a 14                	push   $0x14
c00084df:	6a 64                	push   $0x64
c00084e1:	68 08 bd 00 c0       	push   $0xc000bd08
c00084e6:	e8 df 05 00 00       	call   c0008aca <put_char_graphic>
c00084eb:	83 c4 14             	add    $0x14,%esp
c00084ee:	6a 69                	push   $0x69
c00084f0:	68 ff ff ff 00       	push   $0xffffff
c00084f5:	6a 14                	push   $0x14
c00084f7:	6a 6e                	push   $0x6e
c00084f9:	68 08 bd 00 c0       	push   $0xc000bd08
c00084fe:	e8 c7 05 00 00       	call   c0008aca <put_char_graphic>
c0008503:	83 c4 14             	add    $0x14,%esp
c0008506:	6a 6e                	push   $0x6e
c0008508:	68 ff ff ff 00       	push   $0xffffff
c000850d:	6a 14                	push   $0x14
c000850f:	6a 78                	push   $0x78
c0008511:	68 08 bd 00 c0       	push   $0xc000bd08
c0008516:	e8 af 05 00 00       	call   c0008aca <put_char_graphic>
c000851b:	83 c4 14             	add    $0x14,%esp
c000851e:	6a 43                	push   $0x43
c0008520:	68 ff ff ff 00       	push   $0xffffff
c0008525:	6a 14                	push   $0x14
c0008527:	68 82 00 00 00       	push   $0x82
c000852c:	68 08 bd 00 c0       	push   $0xc000bd08
c0008531:	e8 94 05 00 00       	call   c0008aca <put_char_graphic>
c0008536:	83 c4 14             	add    $0x14,%esp
c0008539:	6a 68                	push   $0x68
c000853b:	68 ff ff ff 00       	push   $0xffffff
c0008540:	6a 14                	push   $0x14
c0008542:	68 8c 00 00 00       	push   $0x8c
c0008547:	68 08 bd 00 c0       	push   $0xc000bd08
c000854c:	e8 79 05 00 00       	call   c0008aca <put_char_graphic>
c0008551:	83 c4 14             	add    $0x14,%esp
c0008554:	6a 65                	push   $0x65
c0008556:	68 ff ff ff 00       	push   $0xffffff
c000855b:	6a 14                	push   $0x14
c000855d:	68 96 00 00 00       	push   $0x96
c0008562:	68 08 bd 00 c0       	push   $0xc000bd08
c0008567:	e8 5e 05 00 00       	call   c0008aca <put_char_graphic>
c000856c:	83 c4 14             	add    $0x14,%esp
c000856f:	6a 6e                	push   $0x6e
c0008571:	68 ff ff ff 00       	push   $0xffffff
c0008576:	6a 14                	push   $0x14
c0008578:	68 a0 00 00 00       	push   $0xa0
c000857d:	68 08 bd 00 c0       	push   $0xc000bd08
c0008582:	e8 43 05 00 00       	call   c0008aca <put_char_graphic>
c0008587:	83 c4 14             	add    $0x14,%esp
c000858a:	6a 6a                	push   $0x6a
c000858c:	68 ff ff ff 00       	push   $0xffffff
c0008591:	6a 14                	push   $0x14
c0008593:	68 aa 00 00 00       	push   $0xaa
c0008598:	68 08 bd 00 c0       	push   $0xc000bd08
c000859d:	e8 28 05 00 00       	call   c0008aca <put_char_graphic>
c00085a2:	83 c4 14             	add    $0x14,%esp
c00085a5:	6a 75                	push   $0x75
c00085a7:	68 ff ff ff 00       	push   $0xffffff
c00085ac:	6a 14                	push   $0x14
c00085ae:	68 b4 00 00 00       	push   $0xb4
c00085b3:	68 08 bd 00 c0       	push   $0xc000bd08
c00085b8:	e8 0d 05 00 00       	call   c0008aca <put_char_graphic>
c00085bd:	83 c4 14             	add    $0x14,%esp
c00085c0:	6a 6e                	push   $0x6e
c00085c2:	68 ff ff ff 00       	push   $0xffffff
c00085c7:	6a 14                	push   $0x14
c00085c9:	68 be 00 00 00       	push   $0xbe
c00085ce:	68 08 bd 00 c0       	push   $0xc000bd08
c00085d3:	e8 f2 04 00 00       	call   c0008aca <put_char_graphic>
c00085d8:	83 c4 20             	add    $0x20,%esp
c00085db:	6a 00                	push   $0x0
c00085dd:	68 84 7f 00 c0       	push   $0xc0007f84
c00085e2:	6a 1f                	push   $0x1f
c00085e4:	68 9e b9 00 c0       	push   $0xc000b99e
c00085e9:	e8 b2 0f 00 00       	call   c00095a0 <thread_start>
c00085ee:	6a 00                	push   $0x0
c00085f0:	68 58 7f 00 c0       	push   $0xc0007f58
c00085f5:	6a 1f                	push   $0x1f
c00085f7:	68 a2 b9 00 c0       	push   $0xc000b9a2
c00085fc:	e8 9f 0f 00 00       	call   c00095a0 <thread_start>
c0008601:	83 c4 20             	add    $0x20,%esp
c0008604:	e8 f8 07 00 00       	call   c0008e01 <intr_enable>
c0008609:	f4                   	hlt    
c000860a:	eb f8                	jmp    c0008604 <kernel_main+0x304>

c000860c <bitmap_init>:
c000860c:	55                   	push   %ebp
c000860d:	89 e5                	mov    %esp,%ebp
c000860f:	83 ec 0c             	sub    $0xc,%esp
c0008612:	8b 45 08             	mov    0x8(%ebp),%eax
c0008615:	ff 30                	pushl  (%eax)
c0008617:	6a 00                	push   $0x0
c0008619:	ff 70 04             	pushl  0x4(%eax)
c000861c:	e8 3f 0d 00 00       	call   c0009360 <memset>
c0008621:	83 c4 10             	add    $0x10,%esp
c0008624:	c9                   	leave  
c0008625:	c3                   	ret    

c0008626 <bitmap_scan_test>:
c0008626:	55                   	push   %ebp
c0008627:	89 e5                	mov    %esp,%ebp
c0008629:	8b 55 08             	mov    0x8(%ebp),%edx
c000862c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c000862f:	5d                   	pop    %ebp
c0008630:	8b 52 04             	mov    0x4(%edx),%edx
c0008633:	89 c8                	mov    %ecx,%eax
c0008635:	83 e1 07             	and    $0x7,%ecx
c0008638:	c1 e8 03             	shr    $0x3,%eax
c000863b:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c000863f:	ba 01 00 00 00       	mov    $0x1,%edx
c0008644:	d3 e2                	shl    %cl,%edx
c0008646:	21 d0                	and    %edx,%eax
c0008648:	c3                   	ret    

c0008649 <bitmap_alloc>:
c0008649:	55                   	push   %ebp
c000864a:	89 e5                	mov    %esp,%ebp
c000864c:	57                   	push   %edi
c000864d:	56                   	push   %esi
c000864e:	31 f6                	xor    %esi,%esi
c0008650:	53                   	push   %ebx
c0008651:	83 ec 1c             	sub    $0x1c,%esp
c0008654:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0008657:	8b 43 04             	mov    0x4(%ebx),%eax
c000865a:	eb 01                	jmp    c000865d <bitmap_alloc+0x14>
c000865c:	46                   	inc    %esi
c000865d:	80 3c 30 ff          	cmpb   $0xff,(%eax,%esi,1)
c0008661:	75 04                	jne    c0008667 <bitmap_alloc+0x1e>
c0008663:	3b 33                	cmp    (%ebx),%esi
c0008665:	72 f5                	jb     c000865c <bitmap_alloc+0x13>
c0008667:	3b 33                	cmp    (%ebx),%esi
c0008669:	72 19                	jb     c0008684 <bitmap_alloc+0x3b>
c000866b:	68 a8 b9 00 c0       	push   $0xc000b9a8
c0008670:	68 f4 b9 00 c0       	push   $0xc000b9f4
c0008675:	6a 2e                	push   $0x2e
c0008677:	68 cc b9 00 c0       	push   $0xc000b9cc
c000867c:	e8 ef 00 00 00       	call   c0008770 <panic_spin>
c0008681:	83 c4 10             	add    $0x10,%esp
c0008684:	8b 13                	mov    (%ebx),%edx
c0008686:	83 c8 ff             	or     $0xffffffff,%eax
c0008689:	39 d6                	cmp    %edx,%esi
c000868b:	74 72                	je     c00086ff <bitmap_alloc+0xb6>
c000868d:	8b 43 04             	mov    0x4(%ebx),%eax
c0008690:	31 c9                	xor    %ecx,%ecx
c0008692:	bf 01 00 00 00       	mov    $0x1,%edi
c0008697:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c000869a:	89 55 dc             	mov    %edx,-0x24(%ebp)
c000869d:	8a 04 30             	mov    (%eax,%esi,1),%al
c00086a0:	eb 01                	jmp    c00086a3 <bitmap_alloc+0x5a>
c00086a2:	41                   	inc    %ecx
c00086a3:	89 fe                	mov    %edi,%esi
c00086a5:	d3 e6                	shl    %cl,%esi
c00086a7:	89 f2                	mov    %esi,%edx
c00086a9:	84 d0                	test   %dl,%al
c00086ab:	75 f5                	jne    c00086a2 <bitmap_alloc+0x59>
c00086ad:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00086b0:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
c00086b4:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00086b7:	8d 0c f1             	lea    (%ecx,%esi,8),%ecx
c00086ba:	89 c8                	mov    %ecx,%eax
c00086bc:	74 41                	je     c00086ff <bitmap_alloc+0xb6>
c00086be:	8d 3c d5 00 00 00 00 	lea    0x0(,%edx,8),%edi
c00086c5:	be 01 00 00 00       	mov    $0x1,%esi
c00086ca:	29 cf                	sub    %ecx,%edi
c00086cc:	8d 51 01             	lea    0x1(%ecx),%edx
c00086cf:	eb 27                	jmp    c00086f8 <bitmap_alloc+0xaf>
c00086d1:	50                   	push   %eax
c00086d2:	46                   	inc    %esi
c00086d3:	50                   	push   %eax
c00086d4:	52                   	push   %edx
c00086d5:	53                   	push   %ebx
c00086d6:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00086d9:	e8 48 ff ff ff       	call   c0008626 <bitmap_scan_test>
c00086de:	83 c4 10             	add    $0x10,%esp
c00086e1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00086e4:	85 c0                	test   %eax,%eax
c00086e6:	74 02                	je     c00086ea <bitmap_alloc+0xa1>
c00086e8:	31 f6                	xor    %esi,%esi
c00086ea:	3b 75 0c             	cmp    0xc(%ebp),%esi
c00086ed:	75 07                	jne    c00086f6 <bitmap_alloc+0xad>
c00086ef:	29 f2                	sub    %esi,%edx
c00086f1:	8d 42 01             	lea    0x1(%edx),%eax
c00086f4:	eb 09                	jmp    c00086ff <bitmap_alloc+0xb6>
c00086f6:	4f                   	dec    %edi
c00086f7:	42                   	inc    %edx
c00086f8:	85 ff                	test   %edi,%edi
c00086fa:	75 d5                	jne    c00086d1 <bitmap_alloc+0x88>
c00086fc:	83 c8 ff             	or     $0xffffffff,%eax
c00086ff:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008702:	5b                   	pop    %ebx
c0008703:	5e                   	pop    %esi
c0008704:	5f                   	pop    %edi
c0008705:	5d                   	pop    %ebp
c0008706:	c3                   	ret    

c0008707 <bitmap_set>:
c0008707:	55                   	push   %ebp
c0008708:	89 e5                	mov    %esp,%ebp
c000870a:	57                   	push   %edi
c000870b:	56                   	push   %esi
c000870c:	53                   	push   %ebx
c000870d:	83 ec 0c             	sub    $0xc,%esp
c0008710:	8a 5d 10             	mov    0x10(%ebp),%bl
c0008713:	8b 75 08             	mov    0x8(%ebp),%esi
c0008716:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0008719:	80 fb 01             	cmp    $0x1,%bl
c000871c:	76 19                	jbe    c0008737 <bitmap_set+0x30>
c000871e:	68 d9 b9 00 c0       	push   $0xc000b9d9
c0008723:	68 04 ba 00 c0       	push   $0xc000ba04
c0008728:	6a 65                	push   $0x65
c000872a:	68 cc b9 00 c0       	push   $0xc000b9cc
c000872f:	e8 3c 00 00 00       	call   c0008770 <panic_spin>
c0008734:	83 c4 10             	add    $0x10,%esp
c0008737:	89 fa                	mov    %edi,%edx
c0008739:	89 f9                	mov    %edi,%ecx
c000873b:	c1 ea 03             	shr    $0x3,%edx
c000873e:	83 e1 07             	and    $0x7,%ecx
c0008741:	84 db                	test   %bl,%bl
c0008743:	74 06                	je     c000874b <bitmap_set+0x44>
c0008745:	fe cb                	dec    %bl
c0008747:	75 1e                	jne    c0008767 <bitmap_set+0x60>
c0008749:	eb 10                	jmp    c000875b <bitmap_set+0x54>
c000874b:	03 56 04             	add    0x4(%esi),%edx
c000874e:	b8 01 00 00 00       	mov    $0x1,%eax
c0008753:	d3 e0                	shl    %cl,%eax
c0008755:	f7 d0                	not    %eax
c0008757:	20 02                	and    %al,(%edx)
c0008759:	eb 0c                	jmp    c0008767 <bitmap_set+0x60>
c000875b:	03 56 04             	add    0x4(%esi),%edx
c000875e:	b8 01 00 00 00       	mov    $0x1,%eax
c0008763:	d3 e0                	shl    %cl,%eax
c0008765:	08 02                	or     %al,(%edx)
c0008767:	8d 65 f4             	lea    -0xc(%ebp),%esp
c000876a:	5b                   	pop    %ebx
c000876b:	5e                   	pop    %esi
c000876c:	5f                   	pop    %edi
c000876d:	5d                   	pop    %ebp
c000876e:	c3                   	ret    
	...

c0008770 <panic_spin>:
c0008770:	55                   	push   %ebp
c0008771:	89 e5                	mov    %esp,%ebp
c0008773:	83 ec 08             	sub    $0x8,%esp
c0008776:	e8 72 06 00 00       	call   c0008ded <intr_disable>
c000877b:	83 ec 0c             	sub    $0xc,%esp
c000877e:	68 0f ba 00 c0       	push   $0xc000ba0f
c0008783:	e8 87 0b 00 00       	call   c000930f <put_str>
c0008788:	c7 04 24 16 ba 00 c0 	movl   $0xc000ba16,(%esp)
c000878f:	e8 7b 0b 00 00       	call   c000930f <put_str>
c0008794:	5a                   	pop    %edx
c0008795:	ff 75 08             	pushl  0x8(%ebp)
c0008798:	e8 72 0b 00 00       	call   c000930f <put_str>
c000879d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00087a4:	e8 dc 0a 00 00       	call   c0009285 <put_char>
c00087a9:	c7 04 24 1c ba 00 c0 	movl   $0xc000ba1c,(%esp)
c00087b0:	e8 5a 0b 00 00       	call   c000930f <put_str>
c00087b5:	59                   	pop    %ecx
c00087b6:	ff 75 10             	pushl  0x10(%ebp)
c00087b9:	e8 51 0b 00 00       	call   c000930f <put_str>
c00087be:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00087c5:	e8 bb 0a 00 00       	call   c0009285 <put_char>
c00087ca:	c7 04 24 2a ba 00 c0 	movl   $0xc000ba2a,(%esp)
c00087d1:	e8 39 0b 00 00       	call   c000930f <put_str>
c00087d6:	58                   	pop    %eax
c00087d7:	ff 75 0c             	pushl  0xc(%ebp)
c00087da:	e8 4f 0b 00 00       	call   c000932e <put_int>
c00087df:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00087e6:	e8 9a 0a 00 00       	call   c0009285 <put_char>
c00087eb:	c7 04 24 30 ba 00 c0 	movl   $0xc000ba30,(%esp)
c00087f2:	e8 18 0b 00 00       	call   c000930f <put_str>
c00087f7:	58                   	pop    %eax
c00087f8:	ff 75 14             	pushl  0x14(%ebp)
c00087fb:	e8 0f 0b 00 00       	call   c000930f <put_str>
c0008800:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0008807:	e8 79 0a 00 00       	call   c0009285 <put_char>
c000880c:	83 c4 10             	add    $0x10,%esp
c000880f:	eb fe                	jmp    c000880f <panic_spin+0x9f>
c0008811:	00 00                	add    %al,(%eax)
	...

c0008814 <init_fifo>:
c0008814:	55                   	push   %ebp
c0008815:	89 e5                	mov    %esp,%ebp
c0008817:	8b 45 08             	mov    0x8(%ebp),%eax
c000881a:	8b 55 14             	mov    0x14(%ebp),%edx
c000881d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0008820:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0008827:	89 50 08             	mov    %edx,0x8(%eax)
c000882a:	89 48 04             	mov    %ecx,0x4(%eax)
c000882d:	89 50 0c             	mov    %edx,0xc(%eax)
c0008830:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0008837:	5d                   	pop    %ebp
c0008838:	c3                   	ret    

c0008839 <fifo_put>:
c0008839:	55                   	push   %ebp
c000883a:	89 e5                	mov    %esp,%ebp
c000883c:	8b 45 08             	mov    0x8(%ebp),%eax
c000883f:	57                   	push   %edi
c0008840:	8b 55 0c             	mov    0xc(%ebp),%edx
c0008843:	56                   	push   %esi
c0008844:	53                   	push   %ebx
c0008845:	8b 48 0c             	mov    0xc(%eax),%ecx
c0008848:	85 c9                	test   %ecx,%ecx
c000884a:	75 09                	jne    c0008855 <fifo_put+0x1c>
c000884c:	c7 40 18 01 00 00 00 	movl   $0x1,0x18(%eax)
c0008853:	eb 6f                	jmp    c00088c4 <fifo_put+0x8b>
c0008855:	49                   	dec    %ecx
c0008856:	89 48 0c             	mov    %ecx,0xc(%eax)
c0008859:	8b 48 04             	mov    0x4(%eax),%ecx
c000885c:	83 f9 10             	cmp    $0x10,%ecx
c000885f:	74 21                	je     c0008882 <fifo_put+0x49>
c0008861:	7f 07                	jg     c000886a <fifo_put+0x31>
c0008863:	83 f9 08             	cmp    $0x8,%ecx
c0008866:	75 5c                	jne    c00088c4 <fifo_put+0x8b>
c0008868:	eb 0c                	jmp    c0008876 <fifo_put+0x3d>
c000886a:	83 f9 20             	cmp    $0x20,%ecx
c000886d:	74 21                	je     c0008890 <fifo_put+0x57>
c000886f:	83 f9 40             	cmp    $0x40,%ecx
c0008872:	75 50                	jne    c00088c4 <fifo_put+0x8b>
c0008874:	eb 26                	jmp    c000889c <fifo_put+0x63>
c0008876:	8a 1a                	mov    (%edx),%bl
c0008878:	8b 08                	mov    (%eax),%ecx
c000887a:	8b 50 14             	mov    0x14(%eax),%edx
c000887d:	88 1c 11             	mov    %bl,(%ecx,%edx,1)
c0008880:	eb 2b                	jmp    c00088ad <fifo_put+0x74>
c0008882:	66 8b 32             	mov    (%edx),%si
c0008885:	8b 48 14             	mov    0x14(%eax),%ecx
c0008888:	8b 10                	mov    (%eax),%edx
c000888a:	66 89 34 4a          	mov    %si,(%edx,%ecx,2)
c000888e:	eb 1d                	jmp    c00088ad <fifo_put+0x74>
c0008890:	8b 32                	mov    (%edx),%esi
c0008892:	8b 48 14             	mov    0x14(%eax),%ecx
c0008895:	8b 10                	mov    (%eax),%edx
c0008897:	89 34 8a             	mov    %esi,(%edx,%ecx,4)
c000889a:	eb 11                	jmp    c00088ad <fifo_put+0x74>
c000889c:	8b 32                	mov    (%edx),%esi
c000889e:	8b 7a 04             	mov    0x4(%edx),%edi
c00088a1:	8b 48 14             	mov    0x14(%eax),%ecx
c00088a4:	8b 10                	mov    (%eax),%edx
c00088a6:	89 34 ca             	mov    %esi,(%edx,%ecx,8)
c00088a9:	89 7c ca 04          	mov    %edi,0x4(%edx,%ecx,8)
c00088ad:	8b 50 14             	mov    0x14(%eax),%edx
c00088b0:	31 c9                	xor    %ecx,%ecx
c00088b2:	42                   	inc    %edx
c00088b3:	3b 50 08             	cmp    0x8(%eax),%edx
c00088b6:	0f 95 c1             	setne  %cl
c00088b9:	f7 d9                	neg    %ecx
c00088bb:	21 ca                	and    %ecx,%edx
c00088bd:	89 50 14             	mov    %edx,0x14(%eax)
c00088c0:	31 c0                	xor    %eax,%eax
c00088c2:	eb 03                	jmp    c00088c7 <fifo_put+0x8e>
c00088c4:	83 c8 ff             	or     $0xffffffff,%eax
c00088c7:	5b                   	pop    %ebx
c00088c8:	5e                   	pop    %esi
c00088c9:	5f                   	pop    %edi
c00088ca:	5d                   	pop    %ebp
c00088cb:	c3                   	ret    

c00088cc <fifo_get>:
c00088cc:	55                   	push   %ebp
c00088cd:	83 c8 ff             	or     $0xffffffff,%eax
c00088d0:	89 e5                	mov    %esp,%ebp
c00088d2:	8b 55 08             	mov    0x8(%ebp),%edx
c00088d5:	57                   	push   %edi
c00088d6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00088d9:	56                   	push   %esi
c00088da:	53                   	push   %ebx
c00088db:	8b 5a 0c             	mov    0xc(%edx),%ebx
c00088de:	3b 5a 08             	cmp    0x8(%edx),%ebx
c00088e1:	74 64                	je     c0008947 <fifo_get+0x7b>
c00088e3:	43                   	inc    %ebx
c00088e4:	8b 42 10             	mov    0x10(%edx),%eax
c00088e7:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00088ea:	8b 5a 04             	mov    0x4(%edx),%ebx
c00088ed:	83 fb 10             	cmp    $0x10,%ebx
c00088f0:	74 1e                	je     c0008910 <fifo_get+0x44>
c00088f2:	7f 07                	jg     c00088fb <fifo_get+0x2f>
c00088f4:	83 fb 08             	cmp    $0x8,%ebx
c00088f7:	75 39                	jne    c0008932 <fifo_get+0x66>
c00088f9:	eb 0c                	jmp    c0008907 <fifo_get+0x3b>
c00088fb:	83 fb 20             	cmp    $0x20,%ebx
c00088fe:	74 1b                	je     c000891b <fifo_get+0x4f>
c0008900:	83 fb 40             	cmp    $0x40,%ebx
c0008903:	75 2d                	jne    c0008932 <fifo_get+0x66>
c0008905:	eb 1d                	jmp    c0008924 <fifo_get+0x58>
c0008907:	8b 1a                	mov    (%edx),%ebx
c0008909:	8a 04 03             	mov    (%ebx,%eax,1),%al
c000890c:	88 01                	mov    %al,(%ecx)
c000890e:	eb 22                	jmp    c0008932 <fifo_get+0x66>
c0008910:	8b 1a                	mov    (%edx),%ebx
c0008912:	66 8b 04 43          	mov    (%ebx,%eax,2),%ax
c0008916:	66 89 01             	mov    %ax,(%ecx)
c0008919:	eb 17                	jmp    c0008932 <fifo_get+0x66>
c000891b:	8b 1a                	mov    (%edx),%ebx
c000891d:	8b 04 83             	mov    (%ebx,%eax,4),%eax
c0008920:	89 01                	mov    %eax,(%ecx)
c0008922:	eb 0e                	jmp    c0008932 <fifo_get+0x66>
c0008924:	8b 1a                	mov    (%edx),%ebx
c0008926:	8b 34 c3             	mov    (%ebx,%eax,8),%esi
c0008929:	8b 7c c3 04          	mov    0x4(%ebx,%eax,8),%edi
c000892d:	89 31                	mov    %esi,(%ecx)
c000892f:	89 79 04             	mov    %edi,0x4(%ecx)
c0008932:	8b 42 10             	mov    0x10(%edx),%eax
c0008935:	31 c9                	xor    %ecx,%ecx
c0008937:	40                   	inc    %eax
c0008938:	3b 42 08             	cmp    0x8(%edx),%eax
c000893b:	0f 95 c1             	setne  %cl
c000893e:	f7 d9                	neg    %ecx
c0008940:	21 c8                	and    %ecx,%eax
c0008942:	89 42 10             	mov    %eax,0x10(%edx)
c0008945:	31 c0                	xor    %eax,%eax
c0008947:	5b                   	pop    %ebx
c0008948:	5e                   	pop    %esi
c0008949:	5f                   	pop    %edi
c000894a:	5d                   	pop    %ebp
c000894b:	c3                   	ret    

c000894c <fifo_empty>:
c000894c:	55                   	push   %ebp
c000894d:	89 e5                	mov    %esp,%ebp
c000894f:	8b 45 08             	mov    0x8(%ebp),%eax
c0008952:	5d                   	pop    %ebp
c0008953:	8b 50 08             	mov    0x8(%eax),%edx
c0008956:	39 50 0c             	cmp    %edx,0xc(%eax)
c0008959:	0f 94 c0             	sete   %al
c000895c:	0f b6 c0             	movzbl %al,%eax
c000895f:	c3                   	ret    

c0008960 <RectangleFill>:
c0008960:	55                   	push   %ebp
c0008961:	89 e5                	mov    %esp,%ebp
c0008963:	57                   	push   %edi
c0008964:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0008967:	56                   	push   %esi
c0008968:	8b 45 14             	mov    0x14(%ebp),%eax
c000896b:	53                   	push   %ebx
c000896c:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000896f:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c0008976:	75 30                	jne    c00089a8 <RectangleFill+0x48>
c0008978:	89 ca                	mov    %ecx,%edx
c000897a:	81 e2 00 00 00 ff    	and    $0xff000000,%edx
c0008980:	81 fa 00 00 00 ff    	cmp    $0xff000000,%edx
c0008986:	75 16                	jne    c000899e <RectangleFill+0x3e>
c0008988:	eb 1e                	jmp    c00089a8 <RectangleFill+0x48>
c000898a:	8b 7b 04             	mov    0x4(%ebx),%edi
c000898d:	8b 33                	mov    (%ebx),%esi
c000898f:	0f af f8             	imul   %eax,%edi
c0008992:	01 d7                	add    %edx,%edi
c0008994:	42                   	inc    %edx
c0008995:	89 0c be             	mov    %ecx,(%esi,%edi,4)
c0008998:	3b 55 18             	cmp    0x18(%ebp),%edx
c000899b:	7e ed                	jle    c000898a <RectangleFill+0x2a>
c000899d:	40                   	inc    %eax
c000899e:	3b 45 1c             	cmp    0x1c(%ebp),%eax
c00089a1:	7f 05                	jg     c00089a8 <RectangleFill+0x48>
c00089a3:	8b 55 10             	mov    0x10(%ebp),%edx
c00089a6:	eb f0                	jmp    c0008998 <RectangleFill+0x38>
c00089a8:	5b                   	pop    %ebx
c00089a9:	5e                   	pop    %esi
c00089aa:	5f                   	pop    %edi
c00089ab:	5d                   	pop    %ebp
c00089ac:	c3                   	ret    

c00089ad <init_Rectangle>:
c00089ad:	55                   	push   %ebp
c00089ae:	89 e5                	mov    %esp,%ebp
c00089b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00089b3:	8b 55 0c             	mov    0xc(%ebp),%edx
c00089b6:	89 10                	mov    %edx,(%eax)
c00089b8:	8b 55 10             	mov    0x10(%ebp),%edx
c00089bb:	89 50 04             	mov    %edx,0x4(%eax)
c00089be:	8b 55 14             	mov    0x14(%ebp),%edx
c00089c1:	89 50 08             	mov    %edx,0x8(%eax)
c00089c4:	8b 55 18             	mov    0x18(%ebp),%edx
c00089c7:	89 50 0c             	mov    %edx,0xc(%eax)
c00089ca:	8b 55 1c             	mov    0x1c(%ebp),%edx
c00089cd:	89 50 10             	mov    %edx,0x10(%eax)
c00089d0:	5d                   	pop    %ebp
c00089d1:	c3                   	ret    

c00089d2 <init_screen>:
c00089d2:	55                   	push   %ebp
c00089d3:	89 e5                	mov    %esp,%ebp
c00089d5:	53                   	push   %ebx
c00089d6:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00089d9:	83 3d 0c 7c 00 00 01 	cmpl   $0x1,0x7c0c
c00089e0:	0f 85 df 00 00 00    	jne    c0008ac5 <init_screen+0xf3>
c00089e6:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c00089eb:	8b 15 18 7c 00 00    	mov    0x7c18,%edx
c00089f1:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c00089f8:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c00089ff:	89 43 08             	mov    %eax,0x8(%ebx)
c0008a02:	89 53 04             	mov    %edx,0x4(%ebx)
c0008a05:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008a0a:	c7 03 00 00 00 fe    	movl   $0xfe000000,(%ebx)
c0008a10:	83 e8 33             	sub    $0x33,%eax
c0008a13:	50                   	push   %eax
c0008a14:	a1 18 7c 00 00       	mov    0x7c18,%eax
c0008a19:	48                   	dec    %eax
c0008a1a:	50                   	push   %eax
c0008a1b:	6a 00                	push   $0x0
c0008a1d:	6a 00                	push   $0x0
c0008a1f:	68 84 84 00 00       	push   $0x8484
c0008a24:	53                   	push   %ebx
c0008a25:	e8 36 ff ff ff       	call   c0008960 <RectangleFill>
c0008a2a:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008a2f:	8d 50 ff             	lea    -0x1(%eax),%edx
c0008a32:	83 e8 33             	sub    $0x33,%eax
c0008a35:	52                   	push   %edx
c0008a36:	8b 15 18 7c 00 00    	mov    0x7c18,%edx
c0008a3c:	4a                   	dec    %edx
c0008a3d:	52                   	push   %edx
c0008a3e:	50                   	push   %eax
c0008a3f:	6a 00                	push   $0x0
c0008a41:	68 c6 c6 c6 00       	push   $0xc6c6c6
c0008a46:	53                   	push   %ebx
c0008a47:	e8 14 ff ff ff       	call   c0008960 <RectangleFill>
c0008a4c:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008a51:	83 c4 30             	add    $0x30,%esp
c0008a54:	8d 50 f8             	lea    -0x8(%eax),%edx
c0008a57:	83 e8 26             	sub    $0x26,%eax
c0008a5a:	52                   	push   %edx
c0008a5b:	6a 2b                	push   $0x2b
c0008a5d:	50                   	push   %eax
c0008a5e:	6a 0d                	push   $0xd
c0008a60:	68 84 84 84 00       	push   $0x848484
c0008a65:	53                   	push   %ebx
c0008a66:	e8 f5 fe ff ff       	call   c0008960 <RectangleFill>
c0008a6b:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008a70:	8d 50 f5             	lea    -0xb(%eax),%edx
c0008a73:	83 e8 29             	sub    $0x29,%eax
c0008a76:	52                   	push   %edx
c0008a77:	6a 28                	push   $0x28
c0008a79:	50                   	push   %eax
c0008a7a:	6a 0a                	push   $0xa
c0008a7c:	68 ff ff ff 00       	push   $0xffffff
c0008a81:	53                   	push   %ebx
c0008a82:	e8 d9 fe ff ff       	call   c0008960 <RectangleFill>
c0008a87:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008a8c:	83 c4 30             	add    $0x30,%esp
c0008a8f:	8d 50 f8             	lea    -0x8(%eax),%edx
c0008a92:	83 e8 26             	sub    $0x26,%eax
c0008a95:	52                   	push   %edx
c0008a96:	6a 3a                	push   $0x3a
c0008a98:	50                   	push   %eax
c0008a99:	6a 35                	push   $0x35
c0008a9b:	68 84 84 84 00       	push   $0x848484
c0008aa0:	53                   	push   %ebx
c0008aa1:	e8 ba fe ff ff       	call   c0008960 <RectangleFill>
c0008aa6:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c0008aab:	8d 50 f5             	lea    -0xb(%eax),%edx
c0008aae:	83 e8 29             	sub    $0x29,%eax
c0008ab1:	52                   	push   %edx
c0008ab2:	6a 37                	push   $0x37
c0008ab4:	50                   	push   %eax
c0008ab5:	6a 32                	push   $0x32
c0008ab7:	68 ff ff ff 00       	push   $0xffffff
c0008abc:	53                   	push   %ebx
c0008abd:	e8 9e fe ff ff       	call   c0008960 <RectangleFill>
c0008ac2:	83 c4 30             	add    $0x30,%esp
c0008ac5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0008ac8:	c9                   	leave  
c0008ac9:	c3                   	ret    

c0008aca <put_char_graphic>:
c0008aca:	55                   	push   %ebp
c0008acb:	89 e5                	mov    %esp,%ebp
c0008acd:	57                   	push   %edi
c0008ace:	56                   	push   %esi
c0008acf:	53                   	push   %ebx
c0008ad0:	31 db                	xor    %ebx,%ebx
c0008ad2:	83 ec 08             	sub    $0x8,%esp
c0008ad5:	8b 75 08             	mov    0x8(%ebp),%esi
c0008ad8:	0f be 55 18          	movsbl 0x18(%ebp),%edx
c0008adc:	8b 45 14             	mov    0x14(%ebp),%eax
c0008adf:	8b 3e                	mov    (%esi),%edi
c0008ae1:	c1 e2 04             	shl    $0x4,%edx
c0008ae4:	81 c2 80 99 00 c0    	add    $0xc0009980,%edx
c0008aea:	89 55 f0             	mov    %edx,-0x10(%ebp)
c0008aed:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0008af0:	8b 4d ec             	mov    -0x14(%ebp),%ecx
c0008af3:	8b 55 10             	mov    0x10(%ebp),%edx
c0008af6:	8b 75 f0             	mov    -0x10(%ebp),%esi
c0008af9:	01 da                	add    %ebx,%edx
c0008afb:	0f af 51 04          	imul   0x4(%ecx),%edx
c0008aff:	0f be 0c 1e          	movsbl (%esi,%ebx,1),%ecx
c0008b03:	03 55 0c             	add    0xc(%ebp),%edx
c0008b06:	f6 c1 80             	test   $0x80,%cl
c0008b09:	8d 14 97             	lea    (%edi,%edx,4),%edx
c0008b0c:	74 02                	je     c0008b10 <put_char_graphic+0x46>
c0008b0e:	89 02                	mov    %eax,(%edx)
c0008b10:	f6 c1 40             	test   $0x40,%cl
c0008b13:	74 03                	je     c0008b18 <put_char_graphic+0x4e>
c0008b15:	89 42 04             	mov    %eax,0x4(%edx)
c0008b18:	f6 c1 20             	test   $0x20,%cl
c0008b1b:	74 03                	je     c0008b20 <put_char_graphic+0x56>
c0008b1d:	89 42 08             	mov    %eax,0x8(%edx)
c0008b20:	f6 c1 10             	test   $0x10,%cl
c0008b23:	74 03                	je     c0008b28 <put_char_graphic+0x5e>
c0008b25:	89 42 0c             	mov    %eax,0xc(%edx)
c0008b28:	f6 c1 08             	test   $0x8,%cl
c0008b2b:	74 03                	je     c0008b30 <put_char_graphic+0x66>
c0008b2d:	89 42 10             	mov    %eax,0x10(%edx)
c0008b30:	f6 c1 04             	test   $0x4,%cl
c0008b33:	74 03                	je     c0008b38 <put_char_graphic+0x6e>
c0008b35:	89 42 14             	mov    %eax,0x14(%edx)
c0008b38:	f6 c1 02             	test   $0x2,%cl
c0008b3b:	74 03                	je     c0008b40 <put_char_graphic+0x76>
c0008b3d:	89 42 18             	mov    %eax,0x18(%edx)
c0008b40:	80 e1 01             	and    $0x1,%cl
c0008b43:	74 03                	je     c0008b48 <put_char_graphic+0x7e>
c0008b45:	89 42 1c             	mov    %eax,0x1c(%edx)
c0008b48:	43                   	inc    %ebx
c0008b49:	83 fb 10             	cmp    $0x10,%ebx
c0008b4c:	75 a2                	jne    c0008af0 <put_char_graphic+0x26>
c0008b4e:	58                   	pop    %eax
c0008b4f:	5a                   	pop    %edx
c0008b50:	5b                   	pop    %ebx
c0008b51:	5e                   	pop    %esi
c0008b52:	5f                   	pop    %edi
c0008b53:	5d                   	pop    %ebp
c0008b54:	c3                   	ret    

c0008b55 <put_str_graphic>:
c0008b55:	55                   	push   %ebp
c0008b56:	89 e5                	mov    %esp,%ebp
c0008b58:	57                   	push   %edi
c0008b59:	8b 7d 14             	mov    0x14(%ebp),%edi
c0008b5c:	56                   	push   %esi
c0008b5d:	8b 75 0c             	mov    0xc(%ebp),%esi
c0008b60:	53                   	push   %ebx
c0008b61:	31 db                	xor    %ebx,%ebx
c0008b63:	eb 1c                	jmp    c0008b81 <put_str_graphic+0x2c>
c0008b65:	8b 55 18             	mov    0x18(%ebp),%edx
c0008b68:	0f be 04 1a          	movsbl (%edx,%ebx,1),%eax
c0008b6c:	43                   	inc    %ebx
c0008b6d:	50                   	push   %eax
c0008b6e:	57                   	push   %edi
c0008b6f:	ff 75 10             	pushl  0x10(%ebp)
c0008b72:	56                   	push   %esi
c0008b73:	83 c6 0a             	add    $0xa,%esi
c0008b76:	ff 75 08             	pushl  0x8(%ebp)
c0008b79:	e8 4c ff ff ff       	call   c0008aca <put_char_graphic>
c0008b7e:	83 c4 14             	add    $0x14,%esp
c0008b81:	3b 5d 1c             	cmp    0x1c(%ebp),%ebx
c0008b84:	7c df                	jl     c0008b65 <put_str_graphic+0x10>
c0008b86:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0008b89:	5b                   	pop    %ebx
c0008b8a:	5e                   	pop    %esi
c0008b8b:	5f                   	pop    %edi
c0008b8c:	5d                   	pop    %ebp
c0008b8d:	c3                   	ret    
	...

c0008b90 <init_all>:
c0008b90:	55                   	push   %ebp
c0008b91:	89 e5                	mov    %esp,%ebp
c0008b93:	83 ec 08             	sub    $0x8,%esp
c0008b96:	e8 10 02 00 00       	call   c0008dab <init_idt>
c0008b9b:	e8 90 0b 00 00       	call   c0009730 <init_pit>
c0008ba0:	e8 4f 04 00 00       	call   c0008ff4 <init_memory>
c0008ba5:	e8 34 09 00 00       	call   c00094de <init_thread>
c0008baa:	83 ec 0c             	sub    $0xc,%esp
c0008bad:	68 08 bd 00 c0       	push   $0xc000bd08
c0008bb2:	e8 1b fe ff ff       	call   c00089d2 <init_screen>
c0008bb7:	83 c4 10             	add    $0x10,%esp
c0008bba:	c9                   	leave  
c0008bbb:	c3                   	ret    
c0008bbc:	00 00                	add    %al,(%eax)
	...

c0008bc0 <asm_intr0x20_handler>:
c0008bc0:	06                   	push   %es
c0008bc1:	1e                   	push   %ds
c0008bc2:	60                   	pusha  
c0008bc3:	89 e0                	mov    %esp,%eax
c0008bc5:	50                   	push   %eax
c0008bc6:	66 8c d0             	mov    %ss,%ax
c0008bc9:	8e d8                	mov    %eax,%ds
c0008bcb:	8e c0                	mov    %eax,%es
c0008bcd:	e8 76 0b 00 00       	call   c0009748 <intr0x20_handler>
c0008bd2:	58                   	pop    %eax
c0008bd3:	61                   	popa   
c0008bd4:	1f                   	pop    %ds
c0008bd5:	07                   	pop    %es
c0008bd6:	cf                   	iret   
	...

c0008bd8 <init_pic>:
c0008bd8:	55                   	push   %ebp
c0008bd9:	ba 21 00 00 00       	mov    $0x21,%edx
c0008bde:	89 e5                	mov    %esp,%ebp
c0008be0:	b8 ff 00 00 00       	mov    $0xff,%eax
c0008be5:	ee                   	out    %al,(%dx)
c0008be6:	b2 a1                	mov    $0xa1,%dl
c0008be8:	ee                   	out    %al,(%dx)
c0008be9:	b2 20                	mov    $0x20,%dl
c0008beb:	b0 11                	mov    $0x11,%al
c0008bed:	ee                   	out    %al,(%dx)
c0008bee:	b2 21                	mov    $0x21,%dl
c0008bf0:	b0 20                	mov    $0x20,%al
c0008bf2:	ee                   	out    %al,(%dx)
c0008bf3:	b0 04                	mov    $0x4,%al
c0008bf5:	ee                   	out    %al,(%dx)
c0008bf6:	b0 01                	mov    $0x1,%al
c0008bf8:	ee                   	out    %al,(%dx)
c0008bf9:	b2 a0                	mov    $0xa0,%dl
c0008bfb:	b0 11                	mov    $0x11,%al
c0008bfd:	ee                   	out    %al,(%dx)
c0008bfe:	b2 a1                	mov    $0xa1,%dl
c0008c00:	b0 28                	mov    $0x28,%al
c0008c02:	ee                   	out    %al,(%dx)
c0008c03:	b0 02                	mov    $0x2,%al
c0008c05:	ee                   	out    %al,(%dx)
c0008c06:	b0 01                	mov    $0x1,%al
c0008c08:	ee                   	out    %al,(%dx)
c0008c09:	b2 21                	mov    $0x21,%dl
c0008c0b:	b0 fe                	mov    $0xfe,%al
c0008c0d:	ee                   	out    %al,(%dx)
c0008c0e:	b2 a1                	mov    $0xa1,%dl
c0008c10:	b0 ff                	mov    $0xff,%al
c0008c12:	ee                   	out    %al,(%dx)
c0008c13:	5d                   	pop    %ebp
c0008c14:	c3                   	ret    

c0008c15 <idt_desc_init>:
c0008c15:	55                   	push   %ebp
c0008c16:	31 c0                	xor    %eax,%eax
c0008c18:	89 e5                	mov    %esp,%ebp
c0008c1a:	c7 05 00 aa 00 c0 c0 	movl   $0xc0008bc0,0xc000aa00
c0008c21:	8b 00 c0 
c0008c24:	8b 0c 85 80 a9 00 c0 	mov    -0x3fff5680(,%eax,4),%ecx
c0008c2b:	8d 14 c5 10 be 00 c0 	lea    -0x3fff41f0(,%eax,8),%edx
c0008c32:	66 c7 42 02 08 00    	movw   $0x8,0x2(%edx)
c0008c38:	c6 42 04 00          	movb   $0x0,0x4(%edx)
c0008c3c:	c6 42 05 8e          	movb   $0x8e,0x5(%edx)
c0008c40:	66 89 0c c5 10 be 00 	mov    %cx,-0x3fff41f0(,%eax,8)
c0008c47:	c0 
c0008c48:	40                   	inc    %eax
c0008c49:	c1 e9 10             	shr    $0x10,%ecx
c0008c4c:	83 f8 2f             	cmp    $0x2f,%eax
c0008c4f:	66 89 4a 06          	mov    %cx,0x6(%edx)
c0008c53:	75 cf                	jne    c0008c24 <idt_desc_init+0xf>
c0008c55:	5d                   	pop    %ebp
c0008c56:	c3                   	ret    

c0008c57 <set_gatedesc>:
c0008c57:	55                   	push   %ebp
c0008c58:	89 e5                	mov    %esp,%ebp
c0008c5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0008c5d:	53                   	push   %ebx
c0008c5e:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0008c61:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0008c64:	8b 55 0c             	mov    0xc(%ebp),%edx
c0008c67:	88 48 05             	mov    %cl,0x5(%eax)
c0008c6a:	66 89 58 02          	mov    %bx,0x2(%eax)
c0008c6e:	89 cb                	mov    %ecx,%ebx
c0008c70:	66 89 10             	mov    %dx,(%eax)
c0008c73:	c1 fb 08             	sar    $0x8,%ebx
c0008c76:	c1 ea 10             	shr    $0x10,%edx
c0008c79:	88 58 04             	mov    %bl,0x4(%eax)
c0008c7c:	66 89 50 06          	mov    %dx,0x6(%eax)
c0008c80:	5b                   	pop    %ebx
c0008c81:	5d                   	pop    %ebp
c0008c82:	c3                   	ret    

c0008c83 <general_intr_handler>:
c0008c83:	55                   	push   %ebp
c0008c84:	b8 20 00 00 00       	mov    $0x20,%eax
c0008c89:	89 e5                	mov    %esp,%ebp
c0008c8b:	89 c2                	mov    %eax,%edx
c0008c8d:	56                   	push   %esi
c0008c8e:	53                   	push   %ebx
c0008c8f:	8a 5d 08             	mov    0x8(%ebp),%bl
c0008c92:	ee                   	out    %al,(%dx)
c0008c93:	b2 a0                	mov    $0xa0,%dl
c0008c95:	ee                   	out    %al,(%dx)
c0008c96:	83 ec 0c             	sub    $0xc,%esp
c0008c99:	0f b6 f3             	movzbl %bl,%esi
c0008c9c:	68 3c ba 00 c0       	push   $0xc000ba3c
c0008ca1:	e8 69 06 00 00       	call   c000930f <put_str>
c0008ca6:	89 34 24             	mov    %esi,(%esp)
c0008ca9:	e8 80 06 00 00       	call   c000932e <put_int>
c0008cae:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0008cb5:	e8 cb 05 00 00       	call   c0009285 <put_char>
c0008cba:	83 c4 10             	add    $0x10,%esp
c0008cbd:	80 fb 14             	cmp    $0x14,%bl
c0008cc0:	77 15                	ja     c0008cd7 <general_intr_handler+0x54>
c0008cc2:	8b 04 b5 54 bd 00 c0 	mov    -0x3fff42ac(,%esi,4),%eax
c0008cc9:	89 45 08             	mov    %eax,0x8(%ebp)
c0008ccc:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0008ccf:	5b                   	pop    %ebx
c0008cd0:	5e                   	pop    %esi
c0008cd1:	5d                   	pop    %ebp
c0008cd2:	e9 38 06 00 00       	jmp    c000930f <put_str>
c0008cd7:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0008cda:	5b                   	pop    %ebx
c0008cdb:	5e                   	pop    %esi
c0008cdc:	5d                   	pop    %ebp
c0008cdd:	c3                   	ret    

c0008cde <exception_init>:
c0008cde:	55                   	push   %ebp
c0008cdf:	89 e5                	mov    %esp,%ebp
c0008ce1:	c7 05 54 bd 00 c0 42 	movl   $0xc000ba42,0xc000bd54
c0008ce8:	ba 00 c0 
c0008ceb:	c7 05 58 bd 00 c0 53 	movl   $0xc000ba53,0xc000bd58
c0008cf2:	ba 00 c0 
c0008cf5:	c7 05 5c bd 00 c0 67 	movl   $0xc000ba67,0xc000bd5c
c0008cfc:	ba 00 c0 
c0008cff:	c7 05 60 bd 00 c0 75 	movl   $0xc000ba75,0xc000bd60
c0008d06:	ba 00 c0 
c0008d09:	c7 05 64 bd 00 c0 8e 	movl   $0xc000ba8e,0xc000bd64
c0008d10:	ba 00 c0 
c0008d13:	c7 05 68 bd 00 c0 a5 	movl   $0xc000baa5,0xc000bd68
c0008d1a:	ba 00 c0 
c0008d1d:	c7 05 6c bd 00 c0 c8 	movl   $0xc000bac8,0xc000bd6c
c0008d24:	ba 00 c0 
c0008d27:	c7 05 70 bd 00 c0 e5 	movl   $0xc000bae5,0xc000bd70
c0008d2e:	ba 00 c0 
c0008d31:	c7 05 74 bd 00 c0 08 	movl   $0xc000bb08,0xc000bd74
c0008d38:	bb 00 c0 
c0008d3b:	c7 05 78 bd 00 c0 23 	movl   $0xc000bb23,0xc000bd78
c0008d42:	bb 00 c0 
c0008d45:	c7 05 7c bd 00 c0 3f 	movl   $0xc000bb3f,0xc000bd7c
c0008d4c:	bb 00 c0 
c0008d4f:	c7 05 80 bd 00 c0 59 	movl   $0xc000bb59,0xc000bd80
c0008d56:	bb 00 c0 
c0008d59:	c7 05 84 bd 00 c0 71 	movl   $0xc000bb71,0xc000bd84
c0008d60:	bb 00 c0 
c0008d63:	c7 05 88 bd 00 c0 8b 	movl   $0xc000bb8b,0xc000bd88
c0008d6a:	bb 00 c0 
c0008d6d:	c7 05 8c bd 00 c0 ac 	movl   $0xc000bbac,0xc000bd8c
c0008d74:	bb 00 c0 
c0008d77:	c7 05 90 bd 00 c0 c5 	movl   $0xc000bbc5,0xc000bd90
c0008d7e:	bb 00 c0 
c0008d81:	c7 05 94 bd 00 c0 ce 	movl   $0xc000bbce,0xc000bd94
c0008d88:	bb 00 c0 
c0008d8b:	c7 05 98 bd 00 c0 ef 	movl   $0xc000bbef,0xc000bd98
c0008d92:	bb 00 c0 
c0008d95:	c7 05 9c bd 00 c0 0d 	movl   $0xc000bc0d,0xc000bd9c
c0008d9c:	bc 00 c0 
c0008d9f:	c7 05 a0 bd 00 c0 29 	movl   $0xc000bc29,0xc000bda0
c0008da6:	bc 00 c0 
c0008da9:	5d                   	pop    %ebp
c0008daa:	c3                   	ret    

c0008dab <init_idt>:
c0008dab:	55                   	push   %ebp
c0008dac:	89 e5                	mov    %esp,%ebp
c0008dae:	83 ec 10             	sub    $0x10,%esp
c0008db1:	e8 5f fe ff ff       	call   c0008c15 <idt_desc_init>
c0008db6:	e8 1d fe ff ff       	call   c0008bd8 <init_pic>
c0008dbb:	b8 10 be 00 c0       	mov    $0xc000be10,%eax
c0008dc0:	c1 e0 10             	shl    $0x10,%eax
c0008dc3:	0d 77 01 00 00       	or     $0x177,%eax
c0008dc8:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0008dcb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0008dd2:	e8 07 ff ff ff       	call   c0008cde <exception_init>
c0008dd7:	0f 01 5d f8          	lidtl  -0x8(%ebp)
c0008ddb:	c9                   	leave  
c0008ddc:	c3                   	ret    

c0008ddd <intr_get_status>:
c0008ddd:	55                   	push   %ebp
c0008dde:	89 e5                	mov    %esp,%ebp
c0008de0:	9c                   	pushf  
c0008de1:	58                   	pop    %eax
c0008de2:	f6 c4 02             	test   $0x2,%ah
c0008de5:	0f 95 c0             	setne  %al
c0008de8:	0f b6 c0             	movzbl %al,%eax
c0008deb:	5d                   	pop    %ebp
c0008dec:	c3                   	ret    

c0008ded <intr_disable>:
c0008ded:	55                   	push   %ebp
c0008dee:	89 e5                	mov    %esp,%ebp
c0008df0:	e8 e8 ff ff ff       	call   c0008ddd <intr_get_status>
c0008df5:	31 d2                	xor    %edx,%edx
c0008df7:	48                   	dec    %eax
c0008df8:	75 03                	jne    c0008dfd <intr_disable+0x10>
c0008dfa:	fa                   	cli    
c0008dfb:	b2 01                	mov    $0x1,%dl
c0008dfd:	89 d0                	mov    %edx,%eax
c0008dff:	5d                   	pop    %ebp
c0008e00:	c3                   	ret    

c0008e01 <intr_enable>:
c0008e01:	55                   	push   %ebp
c0008e02:	89 e5                	mov    %esp,%ebp
c0008e04:	e8 d4 ff ff ff       	call   c0008ddd <intr_get_status>
c0008e09:	ba 01 00 00 00       	mov    $0x1,%edx
c0008e0e:	48                   	dec    %eax
c0008e0f:	74 03                	je     c0008e14 <intr_enable+0x13>
c0008e11:	fb                   	sti    
c0008e12:	30 d2                	xor    %dl,%dl
c0008e14:	89 d0                	mov    %edx,%eax
c0008e16:	5d                   	pop    %ebp
c0008e17:	c3                   	ret    

c0008e18 <intr_set_status>:
c0008e18:	55                   	push   %ebp
c0008e19:	89 e5                	mov    %esp,%ebp
c0008e1b:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0008e1f:	75 06                	jne    c0008e27 <intr_set_status+0xf>
c0008e21:	5d                   	pop    %ebp
c0008e22:	e9 da ff ff ff       	jmp    c0008e01 <intr_enable>
c0008e27:	5d                   	pop    %ebp
c0008e28:	e9 c0 ff ff ff       	jmp    c0008ded <intr_disable>
c0008e2d:	00 00                	add    %al,(%eax)
	...

c0008e30 <init_memmam>:
c0008e30:	55                   	push   %ebp
c0008e31:	89 e5                	mov    %esp,%ebp
c0008e33:	8b 45 08             	mov    0x8(%ebp),%eax
c0008e36:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0008e3c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0008e43:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0008e4a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0008e51:	5d                   	pop    %ebp
c0008e52:	c3                   	ret    

c0008e53 <TotalFreeSize>:
c0008e53:	55                   	push   %ebp
c0008e54:	31 d2                	xor    %edx,%edx
c0008e56:	89 e5                	mov    %esp,%ebp
c0008e58:	31 c0                	xor    %eax,%eax
c0008e5a:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0008e5d:	53                   	push   %ebx
c0008e5e:	8b 19                	mov    (%ecx),%ebx
c0008e60:	eb 05                	jmp    c0008e67 <TotalFreeSize+0x14>
c0008e62:	03 44 d1 14          	add    0x14(%ecx,%edx,8),%eax
c0008e66:	42                   	inc    %edx
c0008e67:	39 da                	cmp    %ebx,%edx
c0008e69:	75 f7                	jne    c0008e62 <TotalFreeSize+0xf>
c0008e6b:	5b                   	pop    %ebx
c0008e6c:	5d                   	pop    %ebp
c0008e6d:	c3                   	ret    

c0008e6e <mem_alloc>:
c0008e6e:	55                   	push   %ebp
c0008e6f:	89 e5                	mov    %esp,%ebp
c0008e71:	57                   	push   %edi
c0008e72:	56                   	push   %esi
c0008e73:	53                   	push   %ebx
c0008e74:	51                   	push   %ecx
c0008e75:	8b 55 08             	mov    0x8(%ebp),%edx
c0008e78:	31 c9                	xor    %ecx,%ecx
c0008e7a:	8b 02                	mov    (%edx),%eax
c0008e7c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0008e7f:	eb 42                	jmp    c0008ec3 <mem_alloc+0x55>
c0008e81:	8b 74 ca 14          	mov    0x14(%edx,%ecx,8),%esi
c0008e85:	3b 75 0c             	cmp    0xc(%ebp),%esi
c0008e88:	72 38                	jb     c0008ec2 <mem_alloc+0x54>
c0008e8a:	8d 59 02             	lea    0x2(%ecx),%ebx
c0008e8d:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0008e90:	8b 04 da             	mov    (%edx,%ebx,8),%eax
c0008e93:	2b 75 0c             	sub    0xc(%ebp),%esi
c0008e96:	01 c7                	add    %eax,%edi
c0008e98:	85 f6                	test   %esi,%esi
c0008e9a:	89 3c da             	mov    %edi,(%edx,%ebx,8)
c0008e9d:	89 74 da 04          	mov    %esi,0x4(%edx,%ebx,8)
c0008ea1:	75 27                	jne    c0008eca <mem_alloc+0x5c>
c0008ea3:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0008ea6:	4b                   	dec    %ebx
c0008ea7:	89 1a                	mov    %ebx,(%edx)
c0008ea9:	eb 11                	jmp    c0008ebc <mem_alloc+0x4e>
c0008eab:	41                   	inc    %ecx
c0008eac:	8b 74 ca 10          	mov    0x10(%edx,%ecx,8),%esi
c0008eb0:	8b 7c ca 14          	mov    0x14(%edx,%ecx,8),%edi
c0008eb4:	89 74 ca 08          	mov    %esi,0x8(%edx,%ecx,8)
c0008eb8:	89 7c ca 0c          	mov    %edi,0xc(%edx,%ecx,8)
c0008ebc:	39 d9                	cmp    %ebx,%ecx
c0008ebe:	72 eb                	jb     c0008eab <mem_alloc+0x3d>
c0008ec0:	eb 08                	jmp    c0008eca <mem_alloc+0x5c>
c0008ec2:	41                   	inc    %ecx
c0008ec3:	3b 4d f0             	cmp    -0x10(%ebp),%ecx
c0008ec6:	75 b9                	jne    c0008e81 <mem_alloc+0x13>
c0008ec8:	31 c0                	xor    %eax,%eax
c0008eca:	5a                   	pop    %edx
c0008ecb:	5b                   	pop    %ebx
c0008ecc:	5e                   	pop    %esi
c0008ecd:	5f                   	pop    %edi
c0008ece:	5d                   	pop    %ebp
c0008ecf:	c3                   	ret    

c0008ed0 <mem_alloc_page>:
c0008ed0:	55                   	push   %ebp
c0008ed1:	89 e5                	mov    %esp,%ebp
c0008ed3:	c1 65 0c 0c          	shll   $0xc,0xc(%ebp)
c0008ed7:	5d                   	pop    %ebp
c0008ed8:	e9 91 ff ff ff       	jmp    c0008e6e <mem_alloc>

c0008edd <mem_free>:
c0008edd:	55                   	push   %ebp
c0008ede:	31 c9                	xor    %ecx,%ecx
c0008ee0:	89 e5                	mov    %esp,%ebp
c0008ee2:	57                   	push   %edi
c0008ee3:	56                   	push   %esi
c0008ee4:	53                   	push   %ebx
c0008ee5:	83 ec 10             	sub    $0x10,%esp
c0008ee8:	8b 55 08             	mov    0x8(%ebp),%edx
c0008eeb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0008eee:	8b 75 10             	mov    0x10(%ebp),%esi
c0008ef1:	8b 02                	mov    (%edx),%eax
c0008ef3:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0008ef6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0008ef9:	eb 07                	jmp    c0008f02 <mem_free+0x25>
c0008efb:	39 5c ca 10          	cmp    %ebx,0x10(%edx,%ecx,8)
c0008eff:	77 06                	ja     c0008f07 <mem_free+0x2a>
c0008f01:	41                   	inc    %ecx
c0008f02:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0008f05:	75 f4                	jne    c0008efb <mem_free+0x1e>
c0008f07:	85 c9                	test   %ecx,%ecx
c0008f09:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0008f0c:	74 60                	je     c0008f6e <mem_free+0x91>
c0008f0e:	8d 79 01             	lea    0x1(%ecx),%edi
c0008f11:	8b 44 fa 04          	mov    0x4(%edx,%edi,8),%eax
c0008f15:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0008f18:	03 04 fa             	add    (%edx,%edi,8),%eax
c0008f1b:	39 d8                	cmp    %ebx,%eax
c0008f1d:	75 4f                	jne    c0008f6e <mem_free+0x91>
c0008f1f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0008f22:	01 f0                	add    %esi,%eax
c0008f24:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0008f27:	89 44 fa 04          	mov    %eax,0x4(%edx,%edi,8)
c0008f2b:	31 c0                	xor    %eax,%eax
c0008f2d:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0008f30:	0f 83 a9 00 00 00    	jae    c0008fdf <mem_free+0x102>
c0008f36:	01 de                	add    %ebx,%esi
c0008f38:	8d 59 02             	lea    0x2(%ecx),%ebx
c0008f3b:	39 34 da             	cmp    %esi,(%edx,%ebx,8)
c0008f3e:	0f 85 9b 00 00 00    	jne    c0008fdf <mem_free+0x102>
c0008f44:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0008f47:	03 44 da 04          	add    0x4(%edx,%ebx,8),%eax
c0008f4b:	89 44 fa 04          	mov    %eax,0x4(%edx,%edi,8)
c0008f4f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0008f52:	48                   	dec    %eax
c0008f53:	89 02                	mov    %eax,(%edx)
c0008f55:	eb 11                	jmp    c0008f68 <mem_free+0x8b>
c0008f57:	41                   	inc    %ecx
c0008f58:	8b 74 ca 10          	mov    0x10(%edx,%ecx,8),%esi
c0008f5c:	8b 7c ca 14          	mov    0x14(%edx,%ecx,8),%edi
c0008f60:	89 74 ca 08          	mov    %esi,0x8(%edx,%ecx,8)
c0008f64:	89 7c ca 0c          	mov    %edi,0xc(%edx,%ecx,8)
c0008f68:	39 c1                	cmp    %eax,%ecx
c0008f6a:	72 eb                	jb     c0008f57 <mem_free+0x7a>
c0008f6c:	eb 1d                	jmp    c0008f8b <mem_free+0xae>
c0008f6e:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
c0008f71:	73 1c                	jae    c0008f8f <mem_free+0xb2>
c0008f73:	8d 3c 33             	lea    (%ebx,%esi,1),%edi
c0008f76:	89 7d f0             	mov    %edi,-0x10(%ebp)
c0008f79:	8d 79 02             	lea    0x2(%ecx),%edi
c0008f7c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0008f7f:	39 04 fa             	cmp    %eax,(%edx,%edi,8)
c0008f82:	75 0b                	jne    c0008f8f <mem_free+0xb2>
c0008f84:	01 74 fa 04          	add    %esi,0x4(%edx,%edi,8)
c0008f88:	89 1c fa             	mov    %ebx,(%edx,%edi,8)
c0008f8b:	31 c0                	xor    %eax,%eax
c0008f8d:	eb 50                	jmp    c0008fdf <mem_free+0x102>
c0008f8f:	81 7d ec 9f 0f 00 00 	cmpl   $0xf9f,-0x14(%ebp)
c0008f96:	76 15                	jbe    c0008fad <mem_free+0xd0>
c0008f98:	eb 3a                	jmp    c0008fd4 <mem_free+0xf7>
c0008f9a:	8b 74 c2 08          	mov    0x8(%edx,%eax,8),%esi
c0008f9e:	8b 7c c2 0c          	mov    0xc(%edx,%eax,8),%edi
c0008fa2:	89 74 c2 10          	mov    %esi,0x10(%edx,%eax,8)
c0008fa6:	89 7c c2 14          	mov    %edi,0x14(%edx,%eax,8)
c0008faa:	40                   	inc    %eax
c0008fab:	eb 06                	jmp    c0008fb3 <mem_free+0xd6>
c0008fad:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0008fb0:	89 75 f0             	mov    %esi,-0x10(%ebp)
c0008fb3:	39 c8                	cmp    %ecx,%eax
c0008fb5:	7f e3                	jg     c0008f9a <mem_free+0xbd>
c0008fb7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0008fba:	8b 75 f0             	mov    -0x10(%ebp),%esi
c0008fbd:	40                   	inc    %eax
c0008fbe:	39 42 04             	cmp    %eax,0x4(%edx)
c0008fc1:	89 02                	mov    %eax,(%edx)
c0008fc3:	73 03                	jae    c0008fc8 <mem_free+0xeb>
c0008fc5:	89 42 04             	mov    %eax,0x4(%edx)
c0008fc8:	83 c1 02             	add    $0x2,%ecx
c0008fcb:	89 1c ca             	mov    %ebx,(%edx,%ecx,8)
c0008fce:	89 74 ca 04          	mov    %esi,0x4(%edx,%ecx,8)
c0008fd2:	eb b7                	jmp    c0008f8b <mem_free+0xae>
c0008fd4:	ff 42 0c             	incl   0xc(%edx)
c0008fd7:	b8 01 00 00 00       	mov    $0x1,%eax
c0008fdc:	01 72 08             	add    %esi,0x8(%edx)
c0008fdf:	83 c4 10             	add    $0x10,%esp
c0008fe2:	5b                   	pop    %ebx
c0008fe3:	5e                   	pop    %esi
c0008fe4:	5f                   	pop    %edi
c0008fe5:	5d                   	pop    %ebp
c0008fe6:	c3                   	ret    

c0008fe7 <mem_free_page>:
c0008fe7:	55                   	push   %ebp
c0008fe8:	89 e5                	mov    %esp,%ebp
c0008fea:	c1 65 10 0c          	shll   $0xc,0x10(%ebp)
c0008fee:	5d                   	pop    %ebp
c0008fef:	e9 e9 fe ff ff       	jmp    c0008edd <mem_free>

c0008ff4 <init_memory>:
c0008ff4:	55                   	push   %ebp
c0008ff5:	89 e5                	mov    %esp,%ebp
c0008ff7:	56                   	push   %esi
c0008ff8:	53                   	push   %ebx
c0008ff9:	8b 35 00 7c 00 00    	mov    0x7c00,%esi
c0008fff:	8d 9e 00 e0 ef ff    	lea    -0x102000(%esi),%ebx
c0009005:	d1 eb                	shr    %ebx
c0009007:	53                   	push   %ebx
c0009008:	29 de                	sub    %ebx,%esi
c000900a:	68 00 20 10 00       	push   $0x102000
c000900f:	81 c3 00 20 10 00    	add    $0x102000,%ebx
c0009015:	68 b8 36 02 c0       	push   $0xc00236b8
c000901a:	e8 c8 ff ff ff       	call   c0008fe7 <mem_free_page>
c000901f:	56                   	push   %esi
c0009020:	53                   	push   %ebx
c0009021:	68 88 bf 00 c0       	push   $0xc000bf88
c0009026:	e8 bc ff ff ff       	call   c0008fe7 <mem_free_page>
c000902b:	68 00 00 10 00       	push   $0x100000
c0009030:	6a 00                	push   $0x0
c0009032:	68 a8 b9 01 c0       	push   $0xc001b9a8
c0009037:	e8 ab ff ff ff       	call   c0008fe7 <mem_free_page>
c000903c:	83 c4 24             	add    $0x24,%esp
c000903f:	68 ff ff ff 3d       	push   $0x3dffffff
c0009044:	68 00 00 00 c0       	push   $0xc0000000
c0009049:	68 a8 b9 01 c0       	push   $0xc001b9a8
c000904e:	e8 94 ff ff ff       	call   c0008fe7 <mem_free_page>
c0009053:	83 c4 0c             	add    $0xc,%esp
c0009056:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0009059:	5b                   	pop    %ebx
c000905a:	5e                   	pop    %esi
c000905b:	5d                   	pop    %ebp
c000905c:	c3                   	ret    

c000905d <pde_ptr>:
c000905d:	55                   	push   %ebp
c000905e:	89 e5                	mov    %esp,%ebp
c0009060:	8b 45 08             	mov    0x8(%ebp),%eax
c0009063:	5d                   	pop    %ebp
c0009064:	c1 e8 16             	shr    $0x16,%eax
c0009067:	8d 04 85 00 f0 ff ff 	lea    -0x1000(,%eax,4),%eax
c000906e:	c3                   	ret    

c000906f <pte_ptr>:
c000906f:	55                   	push   %ebp
c0009070:	89 e5                	mov    %esp,%ebp
c0009072:	8b 45 08             	mov    0x8(%ebp),%eax
c0009075:	5d                   	pop    %ebp
c0009076:	89 c2                	mov    %eax,%edx
c0009078:	25 00 f0 3f 00       	and    $0x3ff000,%eax
c000907d:	81 e2 00 00 c0 ff    	and    $0xffc00000,%edx
c0009083:	c1 ea 0a             	shr    $0xa,%edx
c0009086:	c1 e8 0a             	shr    $0xa,%eax
c0009089:	8d 84 02 00 00 c0 ff 	lea    -0x400000(%edx,%eax,1),%eax
c0009090:	c3                   	ret    

c0009091 <page_table_add>:
c0009091:	55                   	push   %ebp
c0009092:	89 e5                	mov    %esp,%ebp
c0009094:	57                   	push   %edi
c0009095:	56                   	push   %esi
c0009096:	53                   	push   %ebx
c0009097:	83 ec 0c             	sub    $0xc,%esp
c000909a:	8b 45 08             	mov    0x8(%ebp),%eax
c000909d:	8b 75 0c             	mov    0xc(%ebp),%esi
c00090a0:	50                   	push   %eax
c00090a1:	89 c7                	mov    %eax,%edi
c00090a3:	e8 c7 ff ff ff       	call   c000906f <pte_ptr>
c00090a8:	c1 ef 16             	shr    $0x16,%edi
c00090ab:	f6 04 bd 00 f0 ff ff 	testb  $0x1,-0x1000(,%edi,4)
c00090b2:	01 
c00090b3:	5b                   	pop    %ebx
c00090b4:	89 c3                	mov    %eax,%ebx
c00090b6:	74 0c                	je     c00090c4 <page_table_add+0x33>
c00090b8:	f6 00 01             	testb  $0x1,(%eax)
c00090bb:	75 3c                	jne    c00090f9 <page_table_add+0x68>
c00090bd:	83 ce 07             	or     $0x7,%esi
c00090c0:	89 30                	mov    %esi,(%eax)
c00090c2:	eb 35                	jmp    c00090f9 <page_table_add+0x68>
c00090c4:	6a 01                	push   $0x1
c00090c6:	83 ce 07             	or     $0x7,%esi
c00090c9:	68 b8 36 02 c0       	push   $0xc00236b8
c00090ce:	e8 fd fd ff ff       	call   c0008ed0 <mem_alloc_page>
c00090d3:	83 ec 0c             	sub    $0xc,%esp
c00090d6:	83 c8 07             	or     $0x7,%eax
c00090d9:	89 04 bd 00 f0 ff ff 	mov    %eax,-0x1000(,%edi,4)
c00090e0:	89 d8                	mov    %ebx,%eax
c00090e2:	68 00 10 00 00       	push   $0x1000
c00090e7:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00090ec:	6a 00                	push   $0x0
c00090ee:	50                   	push   %eax
c00090ef:	e8 6c 02 00 00       	call   c0009360 <memset>
c00090f4:	83 c4 20             	add    $0x20,%esp
c00090f7:	89 33                	mov    %esi,(%ebx)
c00090f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00090fc:	5b                   	pop    %ebx
c00090fd:	5e                   	pop    %esi
c00090fe:	5f                   	pop    %edi
c00090ff:	5d                   	pop    %ebp
c0009100:	c3                   	ret    

c0009101 <page_alloc>:
c0009101:	55                   	push   %ebp
c0009102:	89 e5                	mov    %esp,%ebp
c0009104:	57                   	push   %edi
c0009105:	56                   	push   %esi
c0009106:	53                   	push   %ebx
c0009107:	83 ec 1c             	sub    $0x1c,%esp
c000910a:	8b 75 0c             	mov    0xc(%ebp),%esi
c000910d:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0009111:	c7 45 e4 88 bf 00 c0 	movl   $0xc000bf88,-0x1c(%ebp)
c0009118:	75 07                	jne    c0009121 <page_alloc+0x20>
c000911a:	c7 45 e4 b8 36 02 c0 	movl   $0xc00236b8,-0x1c(%ebp)
c0009121:	56                   	push   %esi
c0009122:	ff 75 e4             	pushl  -0x1c(%ebp)
c0009125:	e8 a6 fd ff ff       	call   c0008ed0 <mem_alloc_page>
c000912a:	59                   	pop    %ecx
c000912b:	5f                   	pop    %edi
c000912c:	85 c0                	test   %eax,%eax
c000912e:	89 c3                	mov    %eax,%ebx
c0009130:	89 c7                	mov    %eax,%edi
c0009132:	75 25                	jne    c0009159 <page_alloc+0x58>
c0009134:	eb 2b                	jmp    c0009161 <page_alloc+0x60>
c0009136:	6a 01                	push   $0x1
c0009138:	ff 75 e4             	pushl  -0x1c(%ebp)
c000913b:	e8 90 fd ff ff       	call   c0008ed0 <mem_alloc_page>
c0009140:	59                   	pop    %ecx
c0009141:	5a                   	pop    %edx
c0009142:	85 c0                	test   %eax,%eax
c0009144:	74 19                	je     c000915f <page_alloc+0x5e>
c0009146:	52                   	push   %edx
c0009147:	4e                   	dec    %esi
c0009148:	52                   	push   %edx
c0009149:	50                   	push   %eax
c000914a:	57                   	push   %edi
c000914b:	81 c7 00 10 00 00    	add    $0x1000,%edi
c0009151:	e8 3b ff ff ff       	call   c0009091 <page_table_add>
c0009156:	83 c4 10             	add    $0x10,%esp
c0009159:	85 f6                	test   %esi,%esi
c000915b:	75 d9                	jne    c0009136 <page_alloc+0x35>
c000915d:	eb 02                	jmp    c0009161 <page_alloc+0x60>
c000915f:	31 db                	xor    %ebx,%ebx
c0009161:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0009164:	89 d8                	mov    %ebx,%eax
c0009166:	5b                   	pop    %ebx
c0009167:	5e                   	pop    %esi
c0009168:	5f                   	pop    %edi
c0009169:	5d                   	pop    %ebp
c000916a:	c3                   	ret    

c000916b <get_kernel_page>:
c000916b:	55                   	push   %ebp
c000916c:	89 e5                	mov    %esp,%ebp
c000916e:	53                   	push   %ebx
c000916f:	83 ec 1c             	sub    $0x1c,%esp
c0009172:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0009175:	53                   	push   %ebx
c0009176:	6a 01                	push   $0x1
c0009178:	e8 84 ff ff ff       	call   c0009101 <page_alloc>
c000917d:	83 c4 10             	add    $0x10,%esp
c0009180:	85 c0                	test   %eax,%eax
c0009182:	74 16                	je     c000919a <get_kernel_page+0x2f>
c0009184:	c1 e3 0c             	shl    $0xc,%ebx
c0009187:	52                   	push   %edx
c0009188:	53                   	push   %ebx
c0009189:	6a 00                	push   $0x0
c000918b:	50                   	push   %eax
c000918c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000918f:	e8 cc 01 00 00       	call   c0009360 <memset>
c0009194:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0009197:	83 c4 10             	add    $0x10,%esp
c000919a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000919d:	c9                   	leave  
c000919e:	c3                   	ret    
	...

c00091a0 <itoa>:
c00091a0:	55                   	push   %ebp
c00091a1:	89 e5                	mov    %esp,%ebp
c00091a3:	57                   	push   %edi
c00091a4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00091a7:	56                   	push   %esi
c00091a8:	8b 75 08             	mov    0x8(%ebp),%esi
c00091ab:	53                   	push   %ebx
c00091ac:	8b 7d 10             	mov    0x10(%ebp),%edi
c00091af:	31 db                	xor    %ebx,%ebx
c00091b1:	89 f0                	mov    %esi,%eax
c00091b3:	99                   	cltd   
c00091b4:	89 d0                	mov    %edx,%eax
c00091b6:	31 f0                	xor    %esi,%eax
c00091b8:	29 d0                	sub    %edx,%eax
c00091ba:	eb 02                	jmp    c00091be <itoa+0x1e>
c00091bc:	89 d3                	mov    %edx,%ebx
c00091be:	99                   	cltd   
c00091bf:	f7 ff                	idiv   %edi
c00091c1:	8a 92 4c bc 00 c0    	mov    -0x3fff43b4(%edx),%dl
c00091c7:	85 c0                	test   %eax,%eax
c00091c9:	88 14 19             	mov    %dl,(%ecx,%ebx,1)
c00091cc:	8d 53 01             	lea    0x1(%ebx),%edx
c00091cf:	7f eb                	jg     c00091bc <itoa+0x1c>
c00091d1:	85 f6                	test   %esi,%esi
c00091d3:	79 07                	jns    c00091dc <itoa+0x3c>
c00091d5:	c6 04 11 2d          	movb   $0x2d,(%ecx,%edx,1)
c00091d9:	8d 53 02             	lea    0x2(%ebx),%edx
c00091dc:	c6 04 11 00          	movb   $0x0,(%ecx,%edx,1)
c00091e0:	89 c8                	mov    %ecx,%eax
c00091e2:	eb 01                	jmp    c00091e5 <itoa+0x45>
c00091e4:	40                   	inc    %eax
c00091e5:	80 38 00             	cmpb   $0x0,(%eax)
c00091e8:	75 fa                	jne    c00091e4 <itoa+0x44>
c00091ea:	eb 09                	jmp    c00091f5 <itoa+0x55>
c00091ec:	8a 11                	mov    (%ecx),%dl
c00091ee:	8a 18                	mov    (%eax),%bl
c00091f0:	88 19                	mov    %bl,(%ecx)
c00091f2:	41                   	inc    %ecx
c00091f3:	88 10                	mov    %dl,(%eax)
c00091f5:	48                   	dec    %eax
c00091f6:	39 c8                	cmp    %ecx,%eax
c00091f8:	77 f2                	ja     c00091ec <itoa+0x4c>
c00091fa:	5b                   	pop    %ebx
c00091fb:	5e                   	pop    %esi
c00091fc:	5f                   	pop    %edi
c00091fd:	5d                   	pop    %ebp
c00091fe:	c3                   	ret    

c00091ff <roll_screen>:
c00091ff:	55                   	push   %ebp
c0009200:	31 c0                	xor    %eax,%eax
c0009202:	89 e5                	mov    %esp,%ebp
c0009204:	56                   	push   %esi
c0009205:	53                   	push   %ebx
c0009206:	8b 15 18 7c 00 00    	mov    0x7c18,%edx
c000920c:	8b 0d 10 7c 00 00    	mov    0x7c10,%ecx
c0009212:	8d 1c 51             	lea    (%ecx,%edx,2),%ebx
c0009215:	4a                   	dec    %edx
c0009216:	0f af 15 1c 7c 00 00 	imul   0x7c1c,%edx
c000921d:	eb 09                	jmp    c0009228 <roll_screen+0x29>
c000921f:	66 8b 34 43          	mov    (%ebx,%eax,2),%si
c0009223:	66 89 34 41          	mov    %si,(%ecx,%eax,2)
c0009227:	40                   	inc    %eax
c0009228:	39 d0                	cmp    %edx,%eax
c000922a:	75 f3                	jne    c000921f <roll_screen+0x20>
c000922c:	5b                   	pop    %ebx
c000922d:	5e                   	pop    %esi
c000922e:	5d                   	pop    %ebp
c000922f:	c3                   	ret    

c0009230 <get_cursor>:
c0009230:	55                   	push   %ebp
c0009231:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0009236:	89 e5                	mov    %esp,%ebp
c0009238:	b8 0e 00 00 00       	mov    $0xe,%eax
c000923d:	53                   	push   %ebx
c000923e:	ee                   	out    %al,(%dx)
c000923f:	bb d5 03 00 00       	mov    $0x3d5,%ebx
c0009244:	89 da                	mov    %ebx,%edx
c0009246:	ec                   	in     (%dx),%al
c0009247:	89 c1                	mov    %eax,%ecx
c0009249:	b2 d4                	mov    $0xd4,%dl
c000924b:	b8 0f 00 00 00       	mov    $0xf,%eax
c0009250:	ee                   	out    %al,(%dx)
c0009251:	89 da                	mov    %ebx,%edx
c0009253:	ec                   	in     (%dx),%al
c0009254:	c1 e1 08             	shl    $0x8,%ecx
c0009257:	09 c1                	or     %eax,%ecx
c0009259:	89 c8                	mov    %ecx,%eax
c000925b:	5b                   	pop    %ebx
c000925c:	5d                   	pop    %ebp
c000925d:	c3                   	ret    

c000925e <set_cursor>:
c000925e:	55                   	push   %ebp
c000925f:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0009264:	89 e5                	mov    %esp,%ebp
c0009266:	b8 0e 00 00 00       	mov    $0xe,%eax
c000926b:	8b 4d 08             	mov    0x8(%ebp),%ecx
c000926e:	ee                   	out    %al,(%dx)
c000926f:	0f b6 c5             	movzbl %ch,%eax
c0009272:	b2 d5                	mov    $0xd5,%dl
c0009274:	ee                   	out    %al,(%dx)
c0009275:	b8 0f 00 00 00       	mov    $0xf,%eax
c000927a:	b2 d4                	mov    $0xd4,%dl
c000927c:	ee                   	out    %al,(%dx)
c000927d:	0f b6 c1             	movzbl %cl,%eax
c0009280:	b2 d5                	mov    $0xd5,%dl
c0009282:	ee                   	out    %al,(%dx)
c0009283:	5d                   	pop    %ebp
c0009284:	c3                   	ret    

c0009285 <put_char>:
c0009285:	55                   	push   %ebp
c0009286:	89 e5                	mov    %esp,%ebp
c0009288:	56                   	push   %esi
c0009289:	8b 75 08             	mov    0x8(%ebp),%esi
c000928c:	53                   	push   %ebx
c000928d:	83 3d 0c 7c 00 00 00 	cmpl   $0x0,0x7c0c
c0009294:	89 f3                	mov    %esi,%ebx
c0009296:	75 73                	jne    c000930b <put_char+0x86>
c0009298:	e8 93 ff ff ff       	call   c0009230 <get_cursor>
c000929d:	80 fb 0a             	cmp    $0xa,%bl
c00092a0:	74 19                	je     c00092bb <put_char+0x36>
c00092a2:	80 fb 0d             	cmp    $0xd,%bl
c00092a5:	74 14                	je     c00092bb <put_char+0x36>
c00092a7:	80 fb 08             	cmp    $0x8,%bl
c00092aa:	8b 15 10 7c 00 00    	mov    0x7c10,%edx
c00092b0:	75 1a                	jne    c00092cc <put_char+0x47>
c00092b2:	8d 48 ff             	lea    -0x1(%eax),%ecx
c00092b5:	c6 04 4a 20          	movb   $0x20,(%edx,%ecx,2)
c00092b9:	eb 22                	jmp    c00092dd <put_char+0x58>
c00092bb:	8b 1d 18 7c 00 00    	mov    0x7c18,%ebx
c00092c1:	31 d2                	xor    %edx,%edx
c00092c3:	8d 0c 18             	lea    (%eax,%ebx,1),%ecx
c00092c6:	f7 f3                	div    %ebx
c00092c8:	29 d1                	sub    %edx,%ecx
c00092ca:	eb 11                	jmp    c00092dd <put_char+0x58>
c00092cc:	88 1c 42             	mov    %bl,(%edx,%eax,2)
c00092cf:	8b 15 10 7c 00 00    	mov    0x7c10,%edx
c00092d5:	8d 48 01             	lea    0x1(%eax),%ecx
c00092d8:	c6 44 42 01 07       	movb   $0x7,0x1(%edx,%eax,2)
c00092dd:	a1 1c 7c 00 00       	mov    0x7c1c,%eax
c00092e2:	0f af 05 18 7c 00 00 	imul   0x7c18,%eax
c00092e9:	39 c1                	cmp    %eax,%ecx
c00092eb:	72 13                	jb     c0009300 <put_char+0x7b>
c00092ed:	e8 0d ff ff ff       	call   c00091ff <roll_screen>
c00092f2:	8b 0d 1c 7c 00 00    	mov    0x7c1c,%ecx
c00092f8:	49                   	dec    %ecx
c00092f9:	0f af 0d 18 7c 00 00 	imul   0x7c18,%ecx
c0009300:	5b                   	pop    %ebx
c0009301:	89 4d 08             	mov    %ecx,0x8(%ebp)
c0009304:	5e                   	pop    %esi
c0009305:	5d                   	pop    %ebp
c0009306:	e9 53 ff ff ff       	jmp    c000925e <set_cursor>
c000930b:	5b                   	pop    %ebx
c000930c:	5e                   	pop    %esi
c000930d:	5d                   	pop    %ebp
c000930e:	c3                   	ret    

c000930f <put_str>:
c000930f:	55                   	push   %ebp
c0009310:	89 e5                	mov    %esp,%ebp
c0009312:	53                   	push   %ebx
c0009313:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0009316:	eb 0b                	jmp    c0009323 <put_str+0x14>
c0009318:	0f b6 c0             	movzbl %al,%eax
c000931b:	43                   	inc    %ebx
c000931c:	50                   	push   %eax
c000931d:	e8 63 ff ff ff       	call   c0009285 <put_char>
c0009322:	58                   	pop    %eax
c0009323:	8a 03                	mov    (%ebx),%al
c0009325:	84 c0                	test   %al,%al
c0009327:	75 ef                	jne    c0009318 <put_str+0x9>
c0009329:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000932c:	c9                   	leave  
c000932d:	c3                   	ret    

c000932e <put_int>:
c000932e:	55                   	push   %ebp
c000932f:	31 c0                	xor    %eax,%eax
c0009331:	89 e5                	mov    %esp,%ebp
c0009333:	b9 42 00 00 00       	mov    $0x42,%ecx
c0009338:	57                   	push   %edi
c0009339:	8d 7d ba             	lea    -0x46(%ebp),%edi
c000933c:	83 ec 50             	sub    $0x50,%esp
c000933f:	f3 aa                	rep stos %al,%es:(%edi)
c0009341:	8d 7d ba             	lea    -0x46(%ebp),%edi
c0009344:	6a 10                	push   $0x10
c0009346:	57                   	push   %edi
c0009347:	ff 75 08             	pushl  0x8(%ebp)
c000934a:	e8 51 fe ff ff       	call   c00091a0 <itoa>
c000934f:	57                   	push   %edi
c0009350:	e8 ba ff ff ff       	call   c000930f <put_str>
c0009355:	83 c4 10             	add    $0x10,%esp
c0009358:	8b 7d fc             	mov    -0x4(%ebp),%edi
c000935b:	c9                   	leave  
c000935c:	c3                   	ret    
c000935d:	00 00                	add    %al,(%eax)
	...

c0009360 <memset>:
c0009360:	55                   	push   %ebp
c0009361:	89 e5                	mov    %esp,%ebp
c0009363:	56                   	push   %esi
c0009364:	53                   	push   %ebx
c0009365:	83 ec 10             	sub    $0x10,%esp
c0009368:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000936b:	8b 75 10             	mov    0x10(%ebp),%esi
c000936e:	8a 55 0c             	mov    0xc(%ebp),%dl
c0009371:	85 db                	test   %ebx,%ebx
c0009373:	75 1f                	jne    c0009394 <memset+0x34>
c0009375:	68 74 bc 00 c0       	push   $0xc000bc74
c000937a:	68 cc bc 00 c0       	push   $0xc000bccc
c000937f:	6a 0f                	push   $0xf
c0009381:	68 82 bc 00 c0       	push   $0xc000bc82
c0009386:	88 55 f4             	mov    %dl,-0xc(%ebp)
c0009389:	e8 e2 f3 ff ff       	call   c0008770 <panic_spin>
c000938e:	8a 55 f4             	mov    -0xc(%ebp),%dl
c0009391:	83 c4 10             	add    $0x10,%esp
c0009394:	31 c0                	xor    %eax,%eax
c0009396:	eb 04                	jmp    c000939c <memset+0x3c>
c0009398:	88 14 03             	mov    %dl,(%ebx,%eax,1)
c000939b:	40                   	inc    %eax
c000939c:	39 f0                	cmp    %esi,%eax
c000939e:	75 f8                	jne    c0009398 <memset+0x38>
c00093a0:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00093a3:	5b                   	pop    %ebx
c00093a4:	5e                   	pop    %esi
c00093a5:	5d                   	pop    %ebp
c00093a6:	c3                   	ret    

c00093a7 <memcpy>:
c00093a7:	55                   	push   %ebp
c00093a8:	89 e5                	mov    %esp,%ebp
c00093aa:	57                   	push   %edi
c00093ab:	56                   	push   %esi
c00093ac:	53                   	push   %ebx
c00093ad:	83 ec 0c             	sub    $0xc,%esp
c00093b0:	8b 75 0c             	mov    0xc(%ebp),%esi
c00093b3:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00093b6:	8b 7d 10             	mov    0x10(%ebp),%edi
c00093b9:	85 f6                	test   %esi,%esi
c00093bb:	74 04                	je     c00093c1 <memcpy+0x1a>
c00093bd:	85 db                	test   %ebx,%ebx
c00093bf:	75 19                	jne    c00093da <memcpy+0x33>
c00093c1:	68 8f bc 00 c0       	push   $0xc000bc8f
c00093c6:	68 d4 bc 00 c0       	push   $0xc000bcd4
c00093cb:	6a 22                	push   $0x22
c00093cd:	68 82 bc 00 c0       	push   $0xc000bc82
c00093d2:	e8 99 f3 ff ff       	call   c0008770 <panic_spin>
c00093d7:	83 c4 10             	add    $0x10,%esp
c00093da:	31 c0                	xor    %eax,%eax
c00093dc:	eb 07                	jmp    c00093e5 <memcpy+0x3e>
c00093de:	8a 14 06             	mov    (%esi,%eax,1),%dl
c00093e1:	88 14 03             	mov    %dl,(%ebx,%eax,1)
c00093e4:	40                   	inc    %eax
c00093e5:	39 f8                	cmp    %edi,%eax
c00093e7:	75 f5                	jne    c00093de <memcpy+0x37>
c00093e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00093ec:	5b                   	pop    %ebx
c00093ed:	5e                   	pop    %esi
c00093ee:	5f                   	pop    %edi
c00093ef:	5d                   	pop    %ebp
c00093f0:	c3                   	ret    

c00093f1 <memcmp>:
c00093f1:	55                   	push   %ebp
c00093f2:	89 e5                	mov    %esp,%ebp
c00093f4:	56                   	push   %esi
c00093f5:	8b 75 08             	mov    0x8(%ebp),%esi
c00093f8:	53                   	push   %ebx
c00093f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00093fc:	85 db                	test   %ebx,%ebx
c00093fe:	74 04                	je     c0009404 <memcmp+0x13>
c0009400:	85 f6                	test   %esi,%esi
c0009402:	75 19                	jne    c000941d <memcmp+0x2c>
c0009404:	68 ae bc 00 c0       	push   $0xc000bcae
c0009409:	68 dc bc 00 c0       	push   $0xc000bcdc
c000940e:	6a 3b                	push   $0x3b
c0009410:	68 82 bc 00 c0       	push   $0xc000bc82
c0009415:	e8 56 f3 ff ff       	call   c0008770 <panic_spin>
c000941a:	83 c4 10             	add    $0x10,%esp
c000941d:	8a 13                	mov    (%ebx),%dl
c000941f:	83 c8 ff             	or     $0xffffffff,%eax
c0009422:	38 16                	cmp    %dl,(%esi)
c0009424:	72 06                	jb     c000942c <memcmp+0x3b>
c0009426:	0f 97 c0             	seta   %al
c0009429:	0f b6 c0             	movzbl %al,%eax
c000942c:	8d 65 f8             	lea    -0x8(%ebp),%esp
c000942f:	5b                   	pop    %ebx
c0009430:	5e                   	pop    %esi
c0009431:	5d                   	pop    %ebp
c0009432:	c3                   	ret    

c0009433 <strcpy>:
c0009433:	55                   	push   %ebp
c0009434:	31 d2                	xor    %edx,%edx
c0009436:	89 e5                	mov    %esp,%ebp
c0009438:	8b 45 08             	mov    0x8(%ebp),%eax
c000943b:	53                   	push   %ebx
c000943c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c000943f:	8a 0c 13             	mov    (%ebx,%edx,1),%cl
c0009442:	88 0c 10             	mov    %cl,(%eax,%edx,1)
c0009445:	42                   	inc    %edx
c0009446:	84 c9                	test   %cl,%cl
c0009448:	75 f5                	jne    c000943f <strcpy+0xc>
c000944a:	5b                   	pop    %ebx
c000944b:	5d                   	pop    %ebp
c000944c:	c3                   	ret    
c000944d:	00 00                	add    %al,(%eax)
	...

c0009450 <switch_to>:
c0009450:	56                   	push   %esi
c0009451:	57                   	push   %edi
c0009452:	53                   	push   %ebx
c0009453:	55                   	push   %ebp
c0009454:	8b 44 24 14          	mov    0x14(%esp),%eax
c0009458:	89 20                	mov    %esp,(%eax)
c000945a:	8b 44 24 18          	mov    0x18(%esp),%eax
c000945e:	8b 20                	mov    (%eax),%esp
c0009460:	5d                   	pop    %ebp
c0009461:	5b                   	pop    %ebx
c0009462:	5f                   	pop    %edi
c0009463:	5e                   	pop    %esi
c0009464:	c3                   	ret    
c0009465:	00 00                	add    %al,(%eax)
	...

c0009468 <kernel_thread>:
c0009468:	55                   	push   %ebp
c0009469:	89 e5                	mov    %esp,%ebp
c000946b:	56                   	push   %esi
c000946c:	8b 75 0c             	mov    0xc(%ebp),%esi
c000946f:	53                   	push   %ebx
c0009470:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0009473:	e8 89 f9 ff ff       	call   c0008e01 <intr_enable>
c0009478:	89 75 08             	mov    %esi,0x8(%ebp)
c000947b:	89 d8                	mov    %ebx,%eax
c000947d:	5b                   	pop    %ebx
c000947e:	5e                   	pop    %esi
c000947f:	5d                   	pop    %ebp
c0009480:	ff e0                	jmp    *%eax

c0009482 <thread_init>:
c0009482:	55                   	push   %ebp
c0009483:	89 e5                	mov    %esp,%ebp
c0009485:	56                   	push   %esi
c0009486:	8b 75 10             	mov    0x10(%ebp),%esi
c0009489:	53                   	push   %ebx
c000948a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000948d:	50                   	push   %eax
c000948e:	6a 28                	push   $0x28
c0009490:	6a 00                	push   $0x0
c0009492:	53                   	push   %ebx
c0009493:	e8 c8 fe ff ff       	call   c0009360 <memset>
c0009498:	8d 43 08             	lea    0x8(%ebx),%eax
c000949b:	5a                   	pop    %edx
c000949c:	59                   	pop    %ecx
c000949d:	ff 75 0c             	pushl  0xc(%ebp)
c00094a0:	50                   	push   %eax
c00094a1:	e8 8d ff ff ff       	call   c0009433 <strcpy>
c00094a6:	83 c4 10             	add    $0x10,%esp
c00094a9:	31 c0                	xor    %eax,%eax
c00094ab:	3b 1d e4 b3 02 c0    	cmp    0xc002b3e4,%ebx
c00094b1:	c7 43 24 78 56 34 12 	movl   $0x12345678,0x24(%ebx)
c00094b8:	0f 95 c0             	setne  %al
c00094bb:	89 43 04             	mov    %eax,0x4(%ebx)
c00094be:	89 f0                	mov    %esi,%eax
c00094c0:	88 43 18             	mov    %al,0x18(%ebx)
c00094c3:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c00094c9:	89 03                	mov    %eax,(%ebx)
c00094cb:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00094ce:	5b                   	pop    %ebx
c00094cf:	5e                   	pop    %esi
c00094d0:	5d                   	pop    %ebp
c00094d1:	c3                   	ret    

c00094d2 <running_thread>:
c00094d2:	55                   	push   %ebp
c00094d3:	89 e5                	mov    %esp,%ebp
c00094d5:	89 e0                	mov    %esp,%eax
c00094d7:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00094dc:	5d                   	pop    %ebp
c00094dd:	c3                   	ret    

c00094de <init_thread>:
c00094de:	55                   	push   %ebp
c00094df:	89 e5                	mov    %esp,%ebp
c00094e1:	83 ec 14             	sub    $0x14,%esp
c00094e4:	6a 01                	push   $0x1
c00094e6:	e8 80 fc ff ff       	call   c000916b <get_kernel_page>
c00094eb:	68 00 04 00 00       	push   $0x400
c00094f0:	6a 20                	push   $0x20
c00094f2:	50                   	push   %eax
c00094f3:	68 e8 b3 02 c0       	push   $0xc002b3e8
c00094f8:	e8 17 f3 ff ff       	call   c0008814 <init_fifo>
c00094fd:	83 c4 14             	add    $0x14,%esp
c0009500:	6a 01                	push   $0x1
c0009502:	e8 64 fc ff ff       	call   c000916b <get_kernel_page>
c0009507:	68 00 04 00 00       	push   $0x400
c000950c:	6a 20                	push   $0x20
c000950e:	50                   	push   %eax
c000950f:	68 c8 b3 02 c0       	push   $0xc002b3c8
c0009514:	e8 fb f2 ff ff       	call   c0008814 <init_fifo>
c0009519:	83 c4 20             	add    $0x20,%esp
c000951c:	e8 b1 ff ff ff       	call   c00094d2 <running_thread>
c0009521:	52                   	push   %edx
c0009522:	6a 1f                	push   $0x1f
c0009524:	68 e3 bc 00 c0       	push   $0xc000bce3
c0009529:	50                   	push   %eax
c000952a:	a3 e4 b3 02 c0       	mov    %eax,0xc002b3e4
c000952f:	e8 4e ff ff ff       	call   c0009482 <thread_init>
c0009534:	59                   	pop    %ecx
c0009535:	58                   	pop    %eax
c0009536:	68 e4 b3 02 c0       	push   $0xc002b3e4
c000953b:	68 c8 b3 02 c0       	push   $0xc002b3c8
c0009540:	e8 f4 f2 ff ff       	call   c0008839 <fifo_put>
c0009545:	83 c4 10             	add    $0x10,%esp
c0009548:	c9                   	leave  
c0009549:	c3                   	ret    

c000954a <thread_create>:
c000954a:	55                   	push   %ebp
c000954b:	89 e5                	mov    %esp,%ebp
c000954d:	8b 55 08             	mov    0x8(%ebp),%edx
c0009550:	8b 02                	mov    (%edx),%eax
c0009552:	8d 88 50 fe ff ff    	lea    -0x1b0(%eax),%ecx
c0009558:	89 0a                	mov    %ecx,(%edx)
c000955a:	8b 55 0c             	mov    0xc(%ebp),%edx
c000955d:	c7 80 60 fe ff ff 68 	movl   $0xc0009468,-0x1a0(%eax)
c0009564:	94 00 c0 
c0009567:	c7 80 50 fe ff ff 00 	movl   $0x0,-0x1b0(%eax)
c000956e:	00 00 00 
c0009571:	c7 80 54 fe ff ff 00 	movl   $0x0,-0x1ac(%eax)
c0009578:	00 00 00 
c000957b:	89 90 68 fe ff ff    	mov    %edx,-0x198(%eax)
c0009581:	8b 55 10             	mov    0x10(%ebp),%edx
c0009584:	c7 80 5c fe ff ff 00 	movl   $0x0,-0x1a4(%eax)
c000958b:	00 00 00 
c000958e:	c7 80 58 fe ff ff 00 	movl   $0x0,-0x1a8(%eax)
c0009595:	00 00 00 
c0009598:	89 90 6c fe ff ff    	mov    %edx,-0x194(%eax)
c000959e:	5d                   	pop    %ebp
c000959f:	c3                   	ret    

c00095a0 <thread_start>:
c00095a0:	55                   	push   %ebp
c00095a1:	89 e5                	mov    %esp,%ebp
c00095a3:	53                   	push   %ebx
c00095a4:	83 ec 20             	sub    $0x20,%esp
c00095a7:	8a 5d 0c             	mov    0xc(%ebp),%bl
c00095aa:	6a 01                	push   $0x1
c00095ac:	e8 ba fb ff ff       	call   c000916b <get_kernel_page>
c00095b1:	83 c4 0c             	add    $0xc,%esp
c00095b4:	0f b6 db             	movzbl %bl,%ebx
c00095b7:	53                   	push   %ebx
c00095b8:	ff 75 08             	pushl  0x8(%ebp)
c00095bb:	8d 5d f4             	lea    -0xc(%ebp),%ebx
c00095be:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00095c1:	50                   	push   %eax
c00095c2:	e8 bb fe ff ff       	call   c0009482 <thread_init>
c00095c7:	83 c4 0c             	add    $0xc,%esp
c00095ca:	ff 75 14             	pushl  0x14(%ebp)
c00095cd:	ff 75 10             	pushl  0x10(%ebp)
c00095d0:	ff 75 f4             	pushl  -0xc(%ebp)
c00095d3:	e8 72 ff ff ff       	call   c000954a <thread_create>
c00095d8:	58                   	pop    %eax
c00095d9:	5a                   	pop    %edx
c00095da:	53                   	push   %ebx
c00095db:	68 e8 b3 02 c0       	push   $0xc002b3e8
c00095e0:	e8 54 f2 ff ff       	call   c0008839 <fifo_put>
c00095e5:	59                   	pop    %ecx
c00095e6:	58                   	pop    %eax
c00095e7:	53                   	push   %ebx
c00095e8:	68 c8 b3 02 c0       	push   $0xc002b3c8
c00095ed:	e8 47 f2 ff ff       	call   c0008839 <fifo_put>
c00095f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00095f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00095f8:	c9                   	leave  
c00095f9:	c3                   	ret    

c00095fa <schedule>:
c00095fa:	55                   	push   %ebp
c00095fb:	89 e5                	mov    %esp,%ebp
c00095fd:	83 ec 18             	sub    $0x18,%esp
c0009600:	e8 cd fe ff ff       	call   c00094d2 <running_thread>
c0009605:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
c0009609:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000960c:	75 23                	jne    c0009631 <schedule+0x37>
c000960e:	50                   	push   %eax
c000960f:	50                   	push   %eax
c0009610:	8d 45 f0             	lea    -0x10(%ebp),%eax
c0009613:	50                   	push   %eax
c0009614:	68 e8 b3 02 c0       	push   $0xc002b3e8
c0009619:	e8 1b f2 ff ff       	call   c0008839 <fifo_put>
c000961e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0009621:	83 c4 10             	add    $0x10,%esp
c0009624:	8a 50 18             	mov    0x18(%eax),%dl
c0009627:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c000962e:	88 50 19             	mov    %dl,0x19(%eax)
c0009631:	50                   	push   %eax
c0009632:	50                   	push   %eax
c0009633:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0009636:	50                   	push   %eax
c0009637:	68 e8 b3 02 c0       	push   $0xc002b3e8
c000963c:	e8 8b f2 ff ff       	call   c00088cc <fifo_get>
c0009641:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0009644:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c000964b:	5a                   	pop    %edx
c000964c:	59                   	pop    %ecx
c000964d:	50                   	push   %eax
c000964e:	ff 75 f0             	pushl  -0x10(%ebp)
c0009651:	e8 fa fd ff ff       	call   c0009450 <switch_to>
c0009656:	83 c4 10             	add    $0x10,%esp
c0009659:	c9                   	leave  
c000965a:	c3                   	ret    

c000965b <thread_block>:
c000965b:	55                   	push   %ebp
c000965c:	89 e5                	mov    %esp,%ebp
c000965e:	56                   	push   %esi
c000965f:	8b 75 08             	mov    0x8(%ebp),%esi
c0009662:	53                   	push   %ebx
c0009663:	e8 85 f7 ff ff       	call   c0008ded <intr_disable>
c0009668:	89 c3                	mov    %eax,%ebx
c000966a:	e8 63 fe ff ff       	call   c00094d2 <running_thread>
c000966f:	89 70 04             	mov    %esi,0x4(%eax)
c0009672:	e8 83 ff ff ff       	call   c00095fa <schedule>
c0009677:	89 5d 08             	mov    %ebx,0x8(%ebp)
c000967a:	5b                   	pop    %ebx
c000967b:	5e                   	pop    %esi
c000967c:	5d                   	pop    %ebp
c000967d:	e9 96 f7 ff ff       	jmp    c0008e18 <intr_set_status>
	...

c0009684 <get_time>:
c0009684:	55                   	push   %ebp
c0009685:	89 e5                	mov    %esp,%ebp
c0009687:	57                   	push   %edi
c0009688:	56                   	push   %esi
c0009689:	be 70 00 00 00       	mov    $0x70,%esi
c000968e:	53                   	push   %ebx
c000968f:	83 ec 1c             	sub    $0x1c,%esp
c0009692:	8b 7d 08             	mov    0x8(%ebp),%edi
c0009695:	e8 43 f7 ff ff       	call   c0008ddd <intr_get_status>
c000969a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c000969d:	b8 89 00 00 00       	mov    $0x89,%eax
c00096a2:	89 f2                	mov    %esi,%edx
c00096a4:	ee                   	out    %al,(%dx)
c00096a5:	bb 71 00 00 00       	mov    $0x71,%ebx
c00096aa:	89 da                	mov    %ebx,%edx
c00096ac:	ec                   	in     (%dx),%al
c00096ad:	89 c1                	mov    %eax,%ecx
c00096af:	89 f2                	mov    %esi,%edx
c00096b1:	b8 b2 00 00 00       	mov    $0xb2,%eax
c00096b6:	ee                   	out    %al,(%dx)
c00096b7:	89 da                	mov    %ebx,%edx
c00096b9:	ec                   	in     (%dx),%al
c00096ba:	c1 e0 08             	shl    $0x8,%eax
c00096bd:	89 f2                	mov    %esi,%edx
c00096bf:	01 c1                	add    %eax,%ecx
c00096c1:	b8 88 00 00 00       	mov    $0x88,%eax
c00096c6:	89 4f 14             	mov    %ecx,0x14(%edi)
c00096c9:	ee                   	out    %al,(%dx)
c00096ca:	89 da                	mov    %ebx,%edx
c00096cc:	ec                   	in     (%dx),%al
c00096cd:	89 47 10             	mov    %eax,0x10(%edi)
c00096d0:	89 f2                	mov    %esi,%edx
c00096d2:	b8 87 00 00 00       	mov    $0x87,%eax
c00096d7:	ee                   	out    %al,(%dx)
c00096d8:	89 da                	mov    %ebx,%edx
c00096da:	ec                   	in     (%dx),%al
c00096db:	89 47 0c             	mov    %eax,0xc(%edi)
c00096de:	89 f2                	mov    %esi,%edx
c00096e0:	b8 84 00 00 00       	mov    $0x84,%eax
c00096e5:	ee                   	out    %al,(%dx)
c00096e6:	89 da                	mov    %ebx,%edx
c00096e8:	ec                   	in     (%dx),%al
c00096e9:	89 47 08             	mov    %eax,0x8(%edi)
c00096ec:	89 f2                	mov    %esi,%edx
c00096ee:	b8 82 00 00 00       	mov    $0x82,%eax
c00096f3:	ee                   	out    %al,(%dx)
c00096f4:	89 da                	mov    %ebx,%edx
c00096f6:	ec                   	in     (%dx),%al
c00096f7:	b9 80 00 00 00       	mov    $0x80,%ecx
c00096fc:	89 f2                	mov    %esi,%edx
c00096fe:	89 47 04             	mov    %eax,0x4(%edi)
c0009701:	89 c8                	mov    %ecx,%eax
c0009703:	ee                   	out    %al,(%dx)
c0009704:	89 da                	mov    %ebx,%edx
c0009706:	ec                   	in     (%dx),%al
c0009707:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c000970a:	89 f2                	mov    %esi,%edx
c000970c:	89 07                	mov    %eax,(%edi)
c000970e:	89 c8                	mov    %ecx,%eax
c0009710:	ee                   	out    %al,(%dx)
c0009711:	89 da                	mov    %ebx,%edx
c0009713:	ec                   	in     (%dx),%al
c0009714:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0009717:	75 84                	jne    c000969d <get_time+0x19>
c0009719:	b2 70                	mov    $0x70,%dl
c000971b:	31 c0                	xor    %eax,%eax
c000971d:	ee                   	out    %al,(%dx)
c000971e:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0009721:	89 45 08             	mov    %eax,0x8(%ebp)
c0009724:	83 c4 1c             	add    $0x1c,%esp
c0009727:	5b                   	pop    %ebx
c0009728:	5e                   	pop    %esi
c0009729:	5f                   	pop    %edi
c000972a:	5d                   	pop    %ebp
c000972b:	e9 e8 f6 ff ff       	jmp    c0008e18 <intr_set_status>

c0009730 <init_pit>:
c0009730:	55                   	push   %ebp
c0009731:	ba 43 00 00 00       	mov    $0x43,%edx
c0009736:	89 e5                	mov    %esp,%ebp
c0009738:	b8 34 00 00 00       	mov    $0x34,%eax
c000973d:	ee                   	out    %al,(%dx)
c000973e:	b2 40                	mov    $0x40,%dl
c0009740:	b0 9c                	mov    $0x9c,%al
c0009742:	ee                   	out    %al,(%dx)
c0009743:	b0 2e                	mov    $0x2e,%al
c0009745:	ee                   	out    %al,(%dx)
c0009746:	5d                   	pop    %ebp
c0009747:	c3                   	ret    

c0009748 <intr0x20_handler>:
c0009748:	55                   	push   %ebp
c0009749:	b8 20 00 00 00       	mov    $0x20,%eax
c000974e:	89 e5                	mov    %esp,%ebp
c0009750:	83 ec 08             	sub    $0x8,%esp
c0009753:	89 c2                	mov    %eax,%edx
c0009755:	ee                   	out    %al,(%dx)
c0009756:	e8 77 fd ff ff       	call   c00094d2 <running_thread>
c000975b:	ff 05 ec bc 00 c0    	incl   0xc000bcec
c0009761:	8a 50 19             	mov    0x19(%eax),%dl
c0009764:	ff 40 1c             	incl   0x1c(%eax)
c0009767:	84 d2                	test   %dl,%dl
c0009769:	75 06                	jne    c0009771 <intr0x20_handler+0x29>
c000976b:	c9                   	leave  
c000976c:	e9 89 fe ff ff       	jmp    c00095fa <schedule>
c0009771:	4a                   	dec    %edx
c0009772:	88 50 19             	mov    %dl,0x19(%eax)
c0009775:	c9                   	leave  
c0009776:	c3                   	ret    

Disassembly of section .data:

c0009778 <_data>:
	...

c0009780 <SectionCode32>:
c0009780:	ff                   	(bad)  
c0009781:	ff 00                	incl   (%eax)
c0009783:	00 00                	add    %al,(%eax)
c0009785:	98                   	cwtl   
c0009786:	cf                   	iret   
	...

c0009788 <SectionData32>:
c0009788:	ff                   	(bad)  
c0009789:	ff 00                	incl   (%eax)
c000978b:	00 00                	add    %al,(%eax)
c000978d:	92                   	xchg   %eax,%edx
c000978e:	cf                   	iret   
	...

c0009790 <SectionVideo>:
c0009790:	07                   	pop    %es
c0009791:	00 00                	add    %al,(%eax)
c0009793:	80 0b 92             	orb    $0x92,(%ebx)
c0009796:	c0 00 00             	rolb   $0x0,(%eax)
	...

c0009978 <gdt_ptr>:
c0009978:	1f                   	pop    %ds
c0009979:	00 78 97             	add    %bh,-0x69(%eax)
c000997c:	00 c0                	add    %al,%al
	...

c0009980 <PKnFont>:
	...
c0009b90:	00 10                	add    %dl,(%eax)
c0009b92:	10 10                	adc    %dl,(%eax)
c0009b94:	10 10                	adc    %dl,(%eax)
c0009b96:	10 10                	adc    %dl,(%eax)
c0009b98:	10 10                	adc    %dl,(%eax)
c0009b9a:	00 00                	add    %al,(%eax)
c0009b9c:	10 10                	adc    %dl,(%eax)
c0009b9e:	00 00                	add    %al,(%eax)
c0009ba0:	28 28                	sub    %ch,(%eax)
c0009ba2:	28 00                	sub    %al,(%eax)
	...
c0009bb0:	00 44 44 44          	add    %al,0x44(%esp,%eax,2)
c0009bb4:	fe 44 44 44          	incb   0x44(%esp,%eax,2)
c0009bb8:	44                   	inc    %esp
c0009bb9:	44                   	inc    %esp
c0009bba:	fe 44 44 44          	incb   0x44(%esp,%eax,2)
c0009bbe:	00 00                	add    %al,(%eax)
c0009bc0:	10 3a                	adc    %bh,(%edx)
c0009bc2:	56                   	push   %esi
c0009bc3:	92                   	xchg   %eax,%edx
c0009bc4:	92                   	xchg   %eax,%edx
c0009bc5:	90                   	nop
c0009bc6:	50                   	push   %eax
c0009bc7:	38 14 12             	cmp    %dl,(%edx,%edx,1)
c0009bca:	92                   	xchg   %eax,%edx
c0009bcb:	92                   	xchg   %eax,%edx
c0009bcc:	d4 b8                	aam    $0xb8
c0009bce:	10 10                	adc    %dl,(%eax)
c0009bd0:	62 92 94 94 68 08    	bound  %edx,0x8689494(%edx)
c0009bd6:	10 10                	adc    %dl,(%eax)
c0009bd8:	20 2c 52             	and    %ch,(%edx,%edx,2)
c0009bdb:	52                   	push   %edx
c0009bdc:	92                   	xchg   %eax,%edx
c0009bdd:	8c 00                	mov    %es,(%eax)
c0009bdf:	00 00                	add    %al,(%eax)
c0009be1:	70 88                	jo     c0009b6b <PKnFont+0x1eb>
c0009be3:	88 88 90 60 47 a2    	mov    %cl,-0x5db89f70(%eax)
c0009be9:	92                   	xchg   %eax,%edx
c0009bea:	8a 84 46 39 00 00 04 	mov    0x4000039(%esi,%eax,2),%al
c0009bf1:	08 10                	or     %dl,(%eax)
	...
c0009bff:	00 02                	add    %al,(%edx)
c0009c01:	04 08                	add    $0x8,%al
c0009c03:	08 10                	or     %dl,(%eax)
c0009c05:	10 10                	adc    %dl,(%eax)
c0009c07:	10 10                	adc    %dl,(%eax)
c0009c09:	10 10                	adc    %dl,(%eax)
c0009c0b:	08 08                	or     %cl,(%eax)
c0009c0d:	04 02                	add    $0x2,%al
c0009c0f:	00 80 40 20 20 10    	add    %al,0x10202040(%eax)
c0009c15:	10 10                	adc    %dl,(%eax)
c0009c17:	10 10                	adc    %dl,(%eax)
c0009c19:	10 10                	adc    %dl,(%eax)
c0009c1b:	20 20                	and    %ah,(%eax)
c0009c1d:	40                   	inc    %eax
c0009c1e:	80 00 00             	addb   $0x0,(%eax)
c0009c21:	00 00                	add    %al,(%eax)
c0009c23:	00 00                	add    %al,(%eax)
c0009c25:	10 92 54 38 54 92    	adc    %dl,-0x6dabc7ac(%edx)
c0009c2b:	10 00                	adc    %al,(%eax)
	...
c0009c35:	10 10                	adc    %dl,(%eax)
c0009c37:	10 fe                	adc    %bh,%dh
c0009c39:	10 10                	adc    %dl,(%eax)
c0009c3b:	10 00                	adc    %al,(%eax)
	...
c0009c49:	00 00                	add    %al,(%eax)
c0009c4b:	18 18                	sbb    %bl,(%eax)
c0009c4d:	08 08                	or     %cl,(%eax)
c0009c4f:	10 00                	adc    %al,(%eax)
c0009c51:	00 00                	add    %al,(%eax)
c0009c53:	00 00                	add    %al,(%eax)
c0009c55:	00 00                	add    %al,(%eax)
c0009c57:	00 fe                	add    %bh,%dh
	...
c0009c69:	00 00                	add    %al,(%eax)
c0009c6b:	00 18                	add    %bl,(%eax)
c0009c6d:	18 00                	sbb    %al,(%eax)
c0009c6f:	00 02                	add    %al,(%edx)
c0009c71:	02 04 04             	add    (%esp,%eax,1),%al
c0009c74:	08 08                	or     %cl,(%eax)
c0009c76:	08 10                	or     %dl,(%eax)
c0009c78:	10 20                	adc    %ah,(%eax)
c0009c7a:	20 40 40             	and    %al,0x40(%eax)
c0009c7d:	40                   	inc    %eax
c0009c7e:	80 80 00 18 24 24 42 	addb   $0x42,0x24241800(%eax)
c0009c85:	42                   	inc    %edx
c0009c86:	42                   	inc    %edx
c0009c87:	42                   	inc    %edx
c0009c88:	42                   	inc    %edx
c0009c89:	42                   	inc    %edx
c0009c8a:	42                   	inc    %edx
c0009c8b:	24 24                	and    $0x24,%al
c0009c8d:	18 00                	sbb    %al,(%eax)
c0009c8f:	00 00                	add    %al,(%eax)
c0009c91:	08 18                	or     %bl,(%eax)
c0009c93:	28 08                	sub    %cl,(%eax)
c0009c95:	08 08                	or     %cl,(%eax)
c0009c97:	08 08                	or     %cl,(%eax)
c0009c99:	08 08                	or     %cl,(%eax)
c0009c9b:	08 08                	or     %cl,(%eax)
c0009c9d:	3e 00 00             	add    %al,%ds:(%eax)
c0009ca0:	00 18                	add    %bl,(%eax)
c0009ca2:	24 42                	and    $0x42,%al
c0009ca4:	42                   	inc    %edx
c0009ca5:	02 04 08             	add    (%eax,%ecx,1),%al
c0009ca8:	10 20                	adc    %ah,(%eax)
c0009caa:	20 40 40             	and    %al,0x40(%eax)
c0009cad:	7e 00                	jle    c0009caf <PKnFont+0x32f>
c0009caf:	00 00                	add    %al,(%eax)
c0009cb1:	18 24 42             	sbb    %ah,(%edx,%eax,2)
c0009cb4:	02 02                	add    (%edx),%al
c0009cb6:	04 18                	add    $0x18,%al
c0009cb8:	04 02                	add    $0x2,%al
c0009cba:	02 42 24             	add    0x24(%edx),%al
c0009cbd:	18 00                	sbb    %al,(%eax)
c0009cbf:	00 00                	add    %al,(%eax)
c0009cc1:	0c 0c                	or     $0xc,%al
c0009cc3:	0c 14                	or     $0x14,%al
c0009cc5:	14 14                	adc    $0x14,%al
c0009cc7:	24 24                	and    $0x24,%al
c0009cc9:	44                   	inc    %esp
c0009cca:	7e 04                	jle    c0009cd0 <PKnFont+0x350>
c0009ccc:	04 1e                	add    $0x1e,%al
c0009cce:	00 00                	add    %al,(%eax)
c0009cd0:	00 7c 40 40          	add    %bh,0x40(%eax,%eax,2)
c0009cd4:	40                   	inc    %eax
c0009cd5:	58                   	pop    %eax
c0009cd6:	64 02 02             	add    %fs:(%edx),%al
c0009cd9:	02 02                	add    (%edx),%al
c0009cdb:	42                   	inc    %edx
c0009cdc:	24 18                	and    $0x18,%al
c0009cde:	00 00                	add    %al,(%eax)
c0009ce0:	00 18                	add    %bl,(%eax)
c0009ce2:	24 42                	and    $0x42,%al
c0009ce4:	40                   	inc    %eax
c0009ce5:	58                   	pop    %eax
c0009ce6:	64 42                	fs inc %edx
c0009ce8:	42                   	inc    %edx
c0009ce9:	42                   	inc    %edx
c0009cea:	42                   	inc    %edx
c0009ceb:	42                   	inc    %edx
c0009cec:	24 18                	and    $0x18,%al
c0009cee:	00 00                	add    %al,(%eax)
c0009cf0:	00 7e 42             	add    %bh,0x42(%esi)
c0009cf3:	42                   	inc    %edx
c0009cf4:	04 04                	add    $0x4,%al
c0009cf6:	08 08                	or     %cl,(%eax)
c0009cf8:	08 10                	or     %dl,(%eax)
c0009cfa:	10 10                	adc    %dl,(%eax)
c0009cfc:	10 38                	adc    %bh,(%eax)
c0009cfe:	00 00                	add    %al,(%eax)
c0009d00:	00 18                	add    %bl,(%eax)
c0009d02:	24 42                	and    $0x42,%al
c0009d04:	42                   	inc    %edx
c0009d05:	42                   	inc    %edx
c0009d06:	24 18                	and    $0x18,%al
c0009d08:	24 42                	and    $0x42,%al
c0009d0a:	42                   	inc    %edx
c0009d0b:	42                   	inc    %edx
c0009d0c:	24 18                	and    $0x18,%al
c0009d0e:	00 00                	add    %al,(%eax)
c0009d10:	00 18                	add    %bl,(%eax)
c0009d12:	24 42                	and    $0x42,%al
c0009d14:	42                   	inc    %edx
c0009d15:	42                   	inc    %edx
c0009d16:	42                   	inc    %edx
c0009d17:	42                   	inc    %edx
c0009d18:	26 1a 02             	sbb    %es:(%edx),%al
c0009d1b:	42                   	inc    %edx
c0009d1c:	24 18                	and    $0x18,%al
c0009d1e:	00 00                	add    %al,(%eax)
c0009d20:	00 00                	add    %al,(%eax)
c0009d22:	00 00                	add    %al,(%eax)
c0009d24:	00 18                	add    %bl,(%eax)
c0009d26:	18 00                	sbb    %al,(%eax)
c0009d28:	00 00                	add    %al,(%eax)
c0009d2a:	00 00                	add    %al,(%eax)
c0009d2c:	18 18                	sbb    %bl,(%eax)
c0009d2e:	00 00                	add    %al,(%eax)
c0009d30:	00 00                	add    %al,(%eax)
c0009d32:	00 00                	add    %al,(%eax)
c0009d34:	00 18                	add    %bl,(%eax)
c0009d36:	18 00                	sbb    %al,(%eax)
c0009d38:	00 00                	add    %al,(%eax)
c0009d3a:	00 18                	add    %bl,(%eax)
c0009d3c:	18 08                	sbb    %cl,(%eax)
c0009d3e:	08 10                	or     %dl,(%eax)
c0009d40:	00 02                	add    %al,(%edx)
c0009d42:	04 08                	add    $0x8,%al
c0009d44:	10 20                	adc    %ah,(%eax)
c0009d46:	40                   	inc    %eax
c0009d47:	80 80 40 20 10 08 04 	addb   $0x4,0x8102040(%eax)
c0009d4e:	02 00                	add    (%eax),%al
c0009d50:	00 00                	add    %al,(%eax)
c0009d52:	00 00                	add    %al,(%eax)
c0009d54:	00 00                	add    %al,(%eax)
c0009d56:	fe 00                	incb   (%eax)
c0009d58:	00 fe                	add    %bh,%dh
c0009d5a:	00 00                	add    %al,(%eax)
c0009d5c:	00 00                	add    %al,(%eax)
c0009d5e:	00 00                	add    %al,(%eax)
c0009d60:	00 80 40 20 10 08    	add    %al,0x8102040(%eax)
c0009d66:	04 02                	add    $0x2,%al
c0009d68:	02 04 08             	add    (%eax,%ecx,1),%al
c0009d6b:	10 20                	adc    %ah,(%eax)
c0009d6d:	40                   	inc    %eax
c0009d6e:	80 00 00             	addb   $0x0,(%eax)
c0009d71:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c0009d75:	82                   	(bad)  
c0009d76:	04 08                	add    $0x8,%al
c0009d78:	10 10                	adc    %dl,(%eax)
c0009d7a:	00 00                	add    %al,(%eax)
c0009d7c:	18 18                	sbb    %bl,(%eax)
c0009d7e:	00 00                	add    %al,(%eax)
c0009d80:	00 38                	add    %bh,(%eax)
c0009d82:	44                   	inc    %esp
c0009d83:	82                   	(bad)  
c0009d84:	9a aa aa aa aa aa 9c 	lcall  $0x9caa,$0xaaaaaaaa
c0009d8b:	80 46 38 00          	addb   $0x0,0x38(%esi)
c0009d8f:	00 00                	add    %al,(%eax)
c0009d91:	18 18                	sbb    %bl,(%eax)
c0009d93:	18 18                	sbb    %bl,(%eax)
c0009d95:	24 24                	and    $0x24,%al
c0009d97:	24 24                	and    $0x24,%al
c0009d99:	7e 42                	jle    c0009ddd <PKnFont+0x45d>
c0009d9b:	42                   	inc    %edx
c0009d9c:	42                   	inc    %edx
c0009d9d:	e7 00                	out    %eax,$0x0
c0009d9f:	00 00                	add    %al,(%eax)
c0009da1:	f0 48                	lock dec %eax
c0009da3:	44                   	inc    %esp
c0009da4:	44                   	inc    %esp
c0009da5:	44                   	inc    %esp
c0009da6:	48                   	dec    %eax
c0009da7:	78 44                	js     c0009ded <PKnFont+0x46d>
c0009da9:	42                   	inc    %edx
c0009daa:	42                   	inc    %edx
c0009dab:	42                   	inc    %edx
c0009dac:	44                   	inc    %esp
c0009dad:	f8                   	clc    
c0009dae:	00 00                	add    %al,(%eax)
c0009db0:	00 3a                	add    %bh,(%edx)
c0009db2:	46                   	inc    %esi
c0009db3:	42                   	inc    %edx
c0009db4:	82                   	(bad)  
c0009db5:	80 80 80 80 80 82 42 	addb   $0x42,-0x7d7f7f80(%eax)
c0009dbc:	44                   	inc    %esp
c0009dbd:	38 00                	cmp    %al,(%eax)
c0009dbf:	00 00                	add    %al,(%eax)
c0009dc1:	f8                   	clc    
c0009dc2:	44                   	inc    %esp
c0009dc3:	44                   	inc    %esp
c0009dc4:	42                   	inc    %edx
c0009dc5:	42                   	inc    %edx
c0009dc6:	42                   	inc    %edx
c0009dc7:	42                   	inc    %edx
c0009dc8:	42                   	inc    %edx
c0009dc9:	42                   	inc    %edx
c0009dca:	42                   	inc    %edx
c0009dcb:	44                   	inc    %esp
c0009dcc:	44                   	inc    %esp
c0009dcd:	f8                   	clc    
c0009dce:	00 00                	add    %al,(%eax)
c0009dd0:	00 fe                	add    %bh,%dh
c0009dd2:	42                   	inc    %edx
c0009dd3:	42                   	inc    %edx
c0009dd4:	40                   	inc    %eax
c0009dd5:	40                   	inc    %eax
c0009dd6:	44                   	inc    %esp
c0009dd7:	7c 44                	jl     c0009e1d <PKnFont+0x49d>
c0009dd9:	40                   	inc    %eax
c0009dda:	40                   	inc    %eax
c0009ddb:	42                   	inc    %edx
c0009ddc:	42                   	inc    %edx
c0009ddd:	fe 00                	incb   (%eax)
c0009ddf:	00 00                	add    %al,(%eax)
c0009de1:	fe 42 42             	incb   0x42(%edx)
c0009de4:	40                   	inc    %eax
c0009de5:	40                   	inc    %eax
c0009de6:	44                   	inc    %esp
c0009de7:	7c 44                	jl     c0009e2d <PKnFont+0x4ad>
c0009de9:	44                   	inc    %esp
c0009dea:	40                   	inc    %eax
c0009deb:	40                   	inc    %eax
c0009dec:	40                   	inc    %eax
c0009ded:	f0 00 00             	lock add %al,(%eax)
c0009df0:	00 3a                	add    %bh,(%edx)
c0009df2:	46                   	inc    %esi
c0009df3:	42                   	inc    %edx
c0009df4:	82                   	(bad)  
c0009df5:	80 80 9e 82 82 82 42 	addb   $0x42,-0x7d7d7d62(%eax)
c0009dfc:	46                   	inc    %esi
c0009dfd:	38 00                	cmp    %al,(%eax)
c0009dff:	00 00                	add    %al,(%eax)
c0009e01:	e7 42                	out    %eax,$0x42
c0009e03:	42                   	inc    %edx
c0009e04:	42                   	inc    %edx
c0009e05:	42                   	inc    %edx
c0009e06:	42                   	inc    %edx
c0009e07:	7e 42                	jle    c0009e4b <PKnFont+0x4cb>
c0009e09:	42                   	inc    %edx
c0009e0a:	42                   	inc    %edx
c0009e0b:	42                   	inc    %edx
c0009e0c:	42                   	inc    %edx
c0009e0d:	e7 00                	out    %eax,$0x0
c0009e0f:	00 00                	add    %al,(%eax)
c0009e11:	7c 10                	jl     c0009e23 <PKnFont+0x4a3>
c0009e13:	10 10                	adc    %dl,(%eax)
c0009e15:	10 10                	adc    %dl,(%eax)
c0009e17:	10 10                	adc    %dl,(%eax)
c0009e19:	10 10                	adc    %dl,(%eax)
c0009e1b:	10 10                	adc    %dl,(%eax)
c0009e1d:	7c 00                	jl     c0009e1f <PKnFont+0x49f>
c0009e1f:	00 00                	add    %al,(%eax)
c0009e21:	1f                   	pop    %ds
c0009e22:	04 04                	add    $0x4,%al
c0009e24:	04 04                	add    $0x4,%al
c0009e26:	04 04                	add    $0x4,%al
c0009e28:	04 04                	add    $0x4,%al
c0009e2a:	04 04                	add    $0x4,%al
c0009e2c:	84 48 30             	test   %cl,0x30(%eax)
c0009e2f:	00 00                	add    %al,(%eax)
c0009e31:	e7 42                	out    %eax,$0x42
c0009e33:	44                   	inc    %esp
c0009e34:	48                   	dec    %eax
c0009e35:	50                   	push   %eax
c0009e36:	50                   	push   %eax
c0009e37:	60                   	pusha  
c0009e38:	50                   	push   %eax
c0009e39:	50                   	push   %eax
c0009e3a:	48                   	dec    %eax
c0009e3b:	44                   	inc    %esp
c0009e3c:	42                   	inc    %edx
c0009e3d:	e7 00                	out    %eax,$0x0
c0009e3f:	00 00                	add    %al,(%eax)
c0009e41:	f0 40                	lock inc %eax
c0009e43:	40                   	inc    %eax
c0009e44:	40                   	inc    %eax
c0009e45:	40                   	inc    %eax
c0009e46:	40                   	inc    %eax
c0009e47:	40                   	inc    %eax
c0009e48:	40                   	inc    %eax
c0009e49:	40                   	inc    %eax
c0009e4a:	40                   	inc    %eax
c0009e4b:	42                   	inc    %edx
c0009e4c:	42                   	inc    %edx
c0009e4d:	fe 00                	incb   (%eax)
c0009e4f:	00 00                	add    %al,(%eax)
c0009e51:	c3                   	ret    
c0009e52:	42                   	inc    %edx
c0009e53:	66 66 66 5a          	data16 data16 pop %dx
c0009e57:	5a                   	pop    %edx
c0009e58:	5a                   	pop    %edx
c0009e59:	42                   	inc    %edx
c0009e5a:	42                   	inc    %edx
c0009e5b:	42                   	inc    %edx
c0009e5c:	42                   	inc    %edx
c0009e5d:	e7 00                	out    %eax,$0x0
c0009e5f:	00 00                	add    %al,(%eax)
c0009e61:	c7 42 62 62 52 52 52 	movl   $0x52525262,0x62(%edx)
c0009e68:	4a                   	dec    %edx
c0009e69:	4a                   	dec    %edx
c0009e6a:	4a                   	dec    %edx
c0009e6b:	46                   	inc    %esi
c0009e6c:	46                   	inc    %esi
c0009e6d:	e2 00                	loop   c0009e6f <PKnFont+0x4ef>
c0009e6f:	00 00                	add    %al,(%eax)
c0009e71:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c0009e75:	82                   	(bad)  
c0009e76:	82                   	(bad)  
c0009e77:	82                   	(bad)  
c0009e78:	82                   	(bad)  
c0009e79:	82                   	(bad)  
c0009e7a:	82                   	(bad)  
c0009e7b:	82                   	(bad)  
c0009e7c:	44                   	inc    %esp
c0009e7d:	38 00                	cmp    %al,(%eax)
c0009e7f:	00 00                	add    %al,(%eax)
c0009e81:	f8                   	clc    
c0009e82:	44                   	inc    %esp
c0009e83:	42                   	inc    %edx
c0009e84:	42                   	inc    %edx
c0009e85:	42                   	inc    %edx
c0009e86:	44                   	inc    %esp
c0009e87:	78 40                	js     c0009ec9 <PKnFont+0x549>
c0009e89:	40                   	inc    %eax
c0009e8a:	40                   	inc    %eax
c0009e8b:	40                   	inc    %eax
c0009e8c:	40                   	inc    %eax
c0009e8d:	f0 00 00             	lock add %al,(%eax)
c0009e90:	00 38                	add    %bh,(%eax)
c0009e92:	44                   	inc    %esp
c0009e93:	82                   	(bad)  
c0009e94:	82                   	(bad)  
c0009e95:	82                   	(bad)  
c0009e96:	82                   	(bad)  
c0009e97:	82                   	(bad)  
c0009e98:	82                   	(bad)  
c0009e99:	82                   	(bad)  
c0009e9a:	92                   	xchg   %eax,%edx
c0009e9b:	8a 44 3a 00          	mov    0x0(%edx,%edi,1),%al
c0009e9f:	00 00                	add    %al,(%eax)
c0009ea1:	fc                   	cld    
c0009ea2:	42                   	inc    %edx
c0009ea3:	42                   	inc    %edx
c0009ea4:	42                   	inc    %edx
c0009ea5:	42                   	inc    %edx
c0009ea6:	7c 44                	jl     c0009eec <PKnFont+0x56c>
c0009ea8:	42                   	inc    %edx
c0009ea9:	42                   	inc    %edx
c0009eaa:	42                   	inc    %edx
c0009eab:	42                   	inc    %edx
c0009eac:	42                   	inc    %edx
c0009ead:	e7 00                	out    %eax,$0x0
c0009eaf:	00 00                	add    %al,(%eax)
c0009eb1:	3a 46 82             	cmp    -0x7e(%esi),%al
c0009eb4:	82                   	(bad)  
c0009eb5:	80 40 38 04          	addb   $0x4,0x38(%eax)
c0009eb9:	02 82 82 c4 b8 00    	add    0xb8c482(%edx),%al
c0009ebf:	00 00                	add    %al,(%eax)
c0009ec1:	fe                   	(bad)  
c0009ec2:	92                   	xchg   %eax,%edx
c0009ec3:	92                   	xchg   %eax,%edx
c0009ec4:	10 10                	adc    %dl,(%eax)
c0009ec6:	10 10                	adc    %dl,(%eax)
c0009ec8:	10 10                	adc    %dl,(%eax)
c0009eca:	10 10                	adc    %dl,(%eax)
c0009ecc:	10 7c 00 00          	adc    %bh,0x0(%eax,%eax,1)
c0009ed0:	00 e7                	add    %ah,%bh
c0009ed2:	42                   	inc    %edx
c0009ed3:	42                   	inc    %edx
c0009ed4:	42                   	inc    %edx
c0009ed5:	42                   	inc    %edx
c0009ed6:	42                   	inc    %edx
c0009ed7:	42                   	inc    %edx
c0009ed8:	42                   	inc    %edx
c0009ed9:	42                   	inc    %edx
c0009eda:	42                   	inc    %edx
c0009edb:	42                   	inc    %edx
c0009edc:	24 3c                	and    $0x3c,%al
c0009ede:	00 00                	add    %al,(%eax)
c0009ee0:	00 e7                	add    %ah,%bh
c0009ee2:	42                   	inc    %edx
c0009ee3:	42                   	inc    %edx
c0009ee4:	42                   	inc    %edx
c0009ee5:	42                   	inc    %edx
c0009ee6:	24 24                	and    $0x24,%al
c0009ee8:	24 24                	and    $0x24,%al
c0009eea:	18 18                	sbb    %bl,(%eax)
c0009eec:	18 18                	sbb    %bl,(%eax)
c0009eee:	00 00                	add    %al,(%eax)
c0009ef0:	00 e7                	add    %ah,%bh
c0009ef2:	42                   	inc    %edx
c0009ef3:	42                   	inc    %edx
c0009ef4:	42                   	inc    %edx
c0009ef5:	5a                   	pop    %edx
c0009ef6:	5a                   	pop    %edx
c0009ef7:	5a                   	pop    %edx
c0009ef8:	5a                   	pop    %edx
c0009ef9:	24 24                	and    $0x24,%al
c0009efb:	24 24                	and    $0x24,%al
c0009efd:	24 00                	and    $0x0,%al
c0009eff:	00 00                	add    %al,(%eax)
c0009f01:	e7 42                	out    %eax,$0x42
c0009f03:	42                   	inc    %edx
c0009f04:	24 24                	and    $0x24,%al
c0009f06:	24 18                	and    $0x18,%al
c0009f08:	24 24                	and    $0x24,%al
c0009f0a:	24 42                	and    $0x42,%al
c0009f0c:	42                   	inc    %edx
c0009f0d:	e7 00                	out    %eax,$0x0
c0009f0f:	00 00                	add    %al,(%eax)
c0009f11:	ee                   	out    %al,(%dx)
c0009f12:	44                   	inc    %esp
c0009f13:	44                   	inc    %esp
c0009f14:	44                   	inc    %esp
c0009f15:	28 28                	sub    %ch,(%eax)
c0009f17:	28 10                	sub    %dl,(%eax)
c0009f19:	10 10                	adc    %dl,(%eax)
c0009f1b:	10 10                	adc    %dl,(%eax)
c0009f1d:	7c 00                	jl     c0009f1f <PKnFont+0x59f>
c0009f1f:	00 00                	add    %al,(%eax)
c0009f21:	fe 84 84 08 08 10 10 	incb   0x10100808(%esp,%eax,4)
c0009f28:	20 20                	and    %ah,(%eax)
c0009f2a:	40                   	inc    %eax
c0009f2b:	42                   	inc    %edx
c0009f2c:	82                   	(bad)  
c0009f2d:	fe 00                	incb   (%eax)
c0009f2f:	00 00                	add    %al,(%eax)
c0009f31:	3e 20 20             	and    %ah,%ds:(%eax)
c0009f34:	20 20                	and    %ah,(%eax)
c0009f36:	20 20                	and    %ah,(%eax)
c0009f38:	20 20                	and    %ah,(%eax)
c0009f3a:	20 20                	and    %ah,(%eax)
c0009f3c:	20 20                	and    %ah,(%eax)
c0009f3e:	3e 00 80 80 40 40 20 	add    %al,%ds:0x20404080(%eax)
c0009f45:	20 20                	and    %ah,(%eax)
c0009f47:	10 10                	adc    %dl,(%eax)
c0009f49:	08 08                	or     %cl,(%eax)
c0009f4b:	04 04                	add    $0x4,%al
c0009f4d:	04 02                	add    $0x2,%al
c0009f4f:	02 00                	add    (%eax),%al
c0009f51:	7c 04                	jl     c0009f57 <PKnFont+0x5d7>
c0009f53:	04 04                	add    $0x4,%al
c0009f55:	04 04                	add    $0x4,%al
c0009f57:	04 04                	add    $0x4,%al
c0009f59:	04 04                	add    $0x4,%al
c0009f5b:	04 04                	add    $0x4,%al
c0009f5d:	04 7c                	add    $0x7c,%al
c0009f5f:	00 00                	add    %al,(%eax)
c0009f61:	10 28                	adc    %ch,(%eax)
c0009f63:	44                   	inc    %esp
c0009f64:	82                   	(bad)  
	...
c0009f7d:	00 fe                	add    %bh,%dh
c0009f7f:	00 10                	add    %dl,(%eax)
c0009f81:	08 04 00             	or     %al,(%eax,%eax,1)
	...
c0009f94:	00 70 08             	add    %dh,0x8(%eax)
c0009f97:	04 3c                	add    $0x3c,%al
c0009f99:	44                   	inc    %esp
c0009f9a:	84 84 8c 76 00 00 c0 	test   %al,-0x3fffff8a(%esp,%ecx,4)
c0009fa1:	40                   	inc    %eax
c0009fa2:	40                   	inc    %eax
c0009fa3:	40                   	inc    %eax
c0009fa4:	40                   	inc    %eax
c0009fa5:	58                   	pop    %eax
c0009fa6:	64 42                	fs inc %edx
c0009fa8:	42                   	inc    %edx
c0009fa9:	42                   	inc    %edx
c0009faa:	42                   	inc    %edx
c0009fab:	42                   	inc    %edx
c0009fac:	64 58                	fs pop %eax
c0009fae:	00 00                	add    %al,(%eax)
c0009fb0:	00 00                	add    %al,(%eax)
c0009fb2:	00 00                	add    %al,(%eax)
c0009fb4:	00 30                	add    %dh,(%eax)
c0009fb6:	4c                   	dec    %esp
c0009fb7:	84 84 80 80 82 44 38 	test   %al,0x38448280(%eax,%eax,4)
c0009fbe:	00 00                	add    %al,(%eax)
c0009fc0:	0c 04                	or     $0x4,%al
c0009fc2:	04 04                	add    $0x4,%al
c0009fc4:	04 34                	add    $0x34,%al
c0009fc6:	4c                   	dec    %esp
c0009fc7:	84 84 84 84 84 4c 36 	test   %al,0x364c8484(%esp,%eax,4)
c0009fce:	00 00                	add    %al,(%eax)
c0009fd0:	00 00                	add    %al,(%eax)
c0009fd2:	00 00                	add    %al,(%eax)
c0009fd4:	00 38                	add    %bh,(%eax)
c0009fd6:	44                   	inc    %esp
c0009fd7:	82                   	(bad)  
c0009fd8:	82                   	(bad)  
c0009fd9:	fc                   	cld    
c0009fda:	80 82 42 3c 00 00 0e 	addb   $0xe,0x3c42(%edx)
c0009fe1:	10 10                	adc    %dl,(%eax)
c0009fe3:	10 10                	adc    %dl,(%eax)
c0009fe5:	7c 10                	jl     c0009ff7 <PKnFont+0x677>
c0009fe7:	10 10                	adc    %dl,(%eax)
c0009fe9:	10 10                	adc    %dl,(%eax)
c0009feb:	10 10                	adc    %dl,(%eax)
c0009fed:	7c 00                	jl     c0009fef <PKnFont+0x66f>
c0009fef:	00 00                	add    %al,(%eax)
c0009ff1:	00 00                	add    %al,(%eax)
c0009ff3:	00 00                	add    %al,(%eax)
c0009ff5:	36 4c                	ss dec %esp
c0009ff7:	84 84 84 84 4c 34 04 	test   %al,0x4344c84(%esp,%eax,4)
c0009ffe:	04 38                	add    $0x38,%al
c000a000:	c0 40 40 40          	rolb   $0x40,0x40(%eax)
c000a004:	40                   	inc    %eax
c000a005:	58                   	pop    %eax
c000a006:	64 42                	fs inc %edx
c000a008:	42                   	inc    %edx
c000a009:	42                   	inc    %edx
c000a00a:	42                   	inc    %edx
c000a00b:	42                   	inc    %edx
c000a00c:	42                   	inc    %edx
c000a00d:	e3 00                	jecxz  c000a00f <PKnFont+0x68f>
c000a00f:	00 00                	add    %al,(%eax)
c000a011:	10 10                	adc    %dl,(%eax)
c000a013:	00 00                	add    %al,(%eax)
c000a015:	30 10                	xor    %dl,(%eax)
c000a017:	10 10                	adc    %dl,(%eax)
c000a019:	10 10                	adc    %dl,(%eax)
c000a01b:	10 10                	adc    %dl,(%eax)
c000a01d:	38 00                	cmp    %al,(%eax)
c000a01f:	00 00                	add    %al,(%eax)
c000a021:	04 04                	add    $0x4,%al
c000a023:	00 00                	add    %al,(%eax)
c000a025:	0c 04                	or     $0x4,%al
c000a027:	04 04                	add    $0x4,%al
c000a029:	04 04                	add    $0x4,%al
c000a02b:	04 04                	add    $0x4,%al
c000a02d:	08 08                	or     %cl,(%eax)
c000a02f:	30 c0                	xor    %al,%al
c000a031:	40                   	inc    %eax
c000a032:	40                   	inc    %eax
c000a033:	40                   	inc    %eax
c000a034:	40                   	inc    %eax
c000a035:	4e                   	dec    %esi
c000a036:	44                   	inc    %esp
c000a037:	48                   	dec    %eax
c000a038:	50                   	push   %eax
c000a039:	60                   	pusha  
c000a03a:	50                   	push   %eax
c000a03b:	48                   	dec    %eax
c000a03c:	44                   	inc    %esp
c000a03d:	e6 00                	out    %al,$0x0
c000a03f:	00 30                	add    %dh,(%eax)
c000a041:	10 10                	adc    %dl,(%eax)
c000a043:	10 10                	adc    %dl,(%eax)
c000a045:	10 10                	adc    %dl,(%eax)
c000a047:	10 10                	adc    %dl,(%eax)
c000a049:	10 10                	adc    %dl,(%eax)
c000a04b:	10 10                	adc    %dl,(%eax)
c000a04d:	38 00                	cmp    %al,(%eax)
c000a04f:	00 00                	add    %al,(%eax)
c000a051:	00 00                	add    %al,(%eax)
c000a053:	00 00                	add    %al,(%eax)
c000a055:	f6                   	(bad)  
c000a056:	49                   	dec    %ecx
c000a057:	49                   	dec    %ecx
c000a058:	49                   	dec    %ecx
c000a059:	49                   	dec    %ecx
c000a05a:	49                   	dec    %ecx
c000a05b:	49                   	dec    %ecx
c000a05c:	49                   	dec    %ecx
c000a05d:	db 00                	fildl  (%eax)
c000a05f:	00 00                	add    %al,(%eax)
c000a061:	00 00                	add    %al,(%eax)
c000a063:	00 00                	add    %al,(%eax)
c000a065:	d8 64 42 42          	fsubs  0x42(%edx,%eax,2)
c000a069:	42                   	inc    %edx
c000a06a:	42                   	inc    %edx
c000a06b:	42                   	inc    %edx
c000a06c:	42                   	inc    %edx
c000a06d:	e3 00                	jecxz  c000a06f <PKnFont+0x6ef>
c000a06f:	00 00                	add    %al,(%eax)
c000a071:	00 00                	add    %al,(%eax)
c000a073:	00 00                	add    %al,(%eax)
c000a075:	38 44 82 82          	cmp    %al,-0x7e(%edx,%eax,4)
c000a079:	82                   	(bad)  
c000a07a:	82                   	(bad)  
c000a07b:	82                   	(bad)  
c000a07c:	44                   	inc    %esp
c000a07d:	38 00                	cmp    %al,(%eax)
c000a07f:	00 00                	add    %al,(%eax)
c000a081:	00 00                	add    %al,(%eax)
c000a083:	00 d8                	add    %bl,%al
c000a085:	64 42                	fs inc %edx
c000a087:	42                   	inc    %edx
c000a088:	42                   	inc    %edx
c000a089:	42                   	inc    %edx
c000a08a:	42                   	inc    %edx
c000a08b:	64 58                	fs pop %eax
c000a08d:	40                   	inc    %eax
c000a08e:	40                   	inc    %eax
c000a08f:	e0 00                	loopne c000a091 <PKnFont+0x711>
c000a091:	00 00                	add    %al,(%eax)
c000a093:	00 34 4c             	add    %dh,(%esp,%ecx,2)
c000a096:	84 84 84 84 84 4c 34 	test   %al,0x344c8484(%esp,%eax,4)
c000a09d:	04 04                	add    $0x4,%al
c000a09f:	0e                   	push   %cs
c000a0a0:	00 00                	add    %al,(%eax)
c000a0a2:	00 00                	add    %al,(%eax)
c000a0a4:	00 dc                	add    %bl,%ah
c000a0a6:	62 42 40             	bound  %eax,0x40(%edx)
c000a0a9:	40                   	inc    %eax
c000a0aa:	40                   	inc    %eax
c000a0ab:	40                   	inc    %eax
c000a0ac:	40                   	inc    %eax
c000a0ad:	e0 00                	loopne c000a0af <PKnFont+0x72f>
c000a0af:	00 00                	add    %al,(%eax)
c000a0b1:	00 00                	add    %al,(%eax)
c000a0b3:	00 00                	add    %al,(%eax)
c000a0b5:	7a 86                	jp     c000a03d <PKnFont+0x6bd>
c000a0b7:	82                   	(bad)  
c000a0b8:	c0 38 06             	sarb   $0x6,(%eax)
c000a0bb:	82                   	(bad)  
c000a0bc:	c2 bc 00             	ret    $0xbc
c000a0bf:	00 00                	add    %al,(%eax)
c000a0c1:	00 10                	add    %dl,(%eax)
c000a0c3:	10 10                	adc    %dl,(%eax)
c000a0c5:	7c 10                	jl     c000a0d7 <PKnFont+0x757>
c000a0c7:	10 10                	adc    %dl,(%eax)
c000a0c9:	10 10                	adc    %dl,(%eax)
c000a0cb:	10 10                	adc    %dl,(%eax)
c000a0cd:	0e                   	push   %cs
c000a0ce:	00 00                	add    %al,(%eax)
c000a0d0:	00 00                	add    %al,(%eax)
c000a0d2:	00 00                	add    %al,(%eax)
c000a0d4:	00 c6                	add    %al,%dh
c000a0d6:	42                   	inc    %edx
c000a0d7:	42                   	inc    %edx
c000a0d8:	42                   	inc    %edx
c000a0d9:	42                   	inc    %edx
c000a0da:	42                   	inc    %edx
c000a0db:	42                   	inc    %edx
c000a0dc:	46                   	inc    %esi
c000a0dd:	3b 00                	cmp    (%eax),%eax
c000a0df:	00 00                	add    %al,(%eax)
c000a0e1:	00 00                	add    %al,(%eax)
c000a0e3:	00 00                	add    %al,(%eax)
c000a0e5:	e7 42                	out    %eax,$0x42
c000a0e7:	42                   	inc    %edx
c000a0e8:	42                   	inc    %edx
c000a0e9:	24 24                	and    $0x24,%al
c000a0eb:	24 18                	and    $0x18,%al
c000a0ed:	18 00                	sbb    %al,(%eax)
c000a0ef:	00 00                	add    %al,(%eax)
c000a0f1:	00 00                	add    %al,(%eax)
c000a0f3:	00 00                	add    %al,(%eax)
c000a0f5:	e7 42                	out    %eax,$0x42
c000a0f7:	42                   	inc    %edx
c000a0f8:	5a                   	pop    %edx
c000a0f9:	5a                   	pop    %edx
c000a0fa:	5a                   	pop    %edx
c000a0fb:	24 24                	and    $0x24,%al
c000a0fd:	24 00                	and    $0x0,%al
c000a0ff:	00 00                	add    %al,(%eax)
c000a101:	00 00                	add    %al,(%eax)
c000a103:	00 00                	add    %al,(%eax)
c000a105:	c6 44 28 28 10       	movb   $0x10,0x28(%eax,%ebp,1)
c000a10a:	28 28                	sub    %ch,(%eax)
c000a10c:	44                   	inc    %esp
c000a10d:	c6 00 00             	movb   $0x0,(%eax)
c000a110:	00 00                	add    %al,(%eax)
c000a112:	00 00                	add    %al,(%eax)
c000a114:	00 e7                	add    %ah,%bh
c000a116:	42                   	inc    %edx
c000a117:	42                   	inc    %edx
c000a118:	24 24                	and    $0x24,%al
c000a11a:	24 18                	and    $0x18,%al
c000a11c:	18 10                	sbb    %dl,(%eax)
c000a11e:	10 60 00             	adc    %ah,0x0(%eax)
c000a121:	00 00                	add    %al,(%eax)
c000a123:	00 00                	add    %al,(%eax)
c000a125:	fe 82 84 08 10 20    	incb   0x20100884(%edx)
c000a12b:	42                   	inc    %edx
c000a12c:	82                   	(bad)  
c000a12d:	fe 00                	incb   (%eax)
c000a12f:	00 00                	add    %al,(%eax)
c000a131:	06                   	push   %es
c000a132:	08 10                	or     %dl,(%eax)
c000a134:	10 10                	adc    %dl,(%eax)
c000a136:	10 60 10             	adc    %ah,0x10(%eax)
c000a139:	10 10                	adc    %dl,(%eax)
c000a13b:	10 08                	adc    %cl,(%eax)
c000a13d:	06                   	push   %es
c000a13e:	00 00                	add    %al,(%eax)
c000a140:	10 10                	adc    %dl,(%eax)
c000a142:	10 10                	adc    %dl,(%eax)
c000a144:	10 10                	adc    %dl,(%eax)
c000a146:	10 10                	adc    %dl,(%eax)
c000a148:	10 10                	adc    %dl,(%eax)
c000a14a:	10 10                	adc    %dl,(%eax)
c000a14c:	10 10                	adc    %dl,(%eax)
c000a14e:	10 10                	adc    %dl,(%eax)
c000a150:	00 60 10             	add    %ah,0x10(%eax)
c000a153:	08 08                	or     %cl,(%eax)
c000a155:	08 08                	or     %cl,(%eax)
c000a157:	06                   	push   %es
c000a158:	08 08                	or     %cl,(%eax)
c000a15a:	08 08                	or     %cl,(%eax)
c000a15c:	10 60 00             	adc    %ah,0x0(%eax)
c000a15f:	00 00                	add    %al,(%eax)
c000a161:	72 8c                	jb     c000a0ef <PKnFont+0x76f>
	...

c000a980 <intr_entry_table>:
	...

Disassembly of section .eh_frame:

c000aa3c <.eh_frame>:
c000aa3c:	10 00                	adc    %al,(%eax)
c000aa3e:	00 00                	add    %al,(%eax)
c000aa40:	00 00                	add    %al,(%eax)
c000aa42:	00 00                	add    %al,(%eax)
c000aa44:	01 00                	add    %eax,(%eax)
c000aa46:	01 7c 08 0c          	add    %edi,0xc(%eax,%ecx,1)
c000aa4a:	04 04                	add    $0x4,%al
c000aa4c:	88 01                	mov    %al,(%ecx)
c000aa4e:	00 00                	add    %al,(%eax)
c000aa50:	3c 00                	cmp    $0x0,%al
c000aa52:	00 00                	add    %al,(%eax)
c000aa54:	18 00                	sbb    %al,(%eax)
c000aa56:	00 00                	add    %al,(%eax)
c000aa58:	58                   	pop    %eax
c000aa59:	7f 00                	jg     c000aa5b <_edata+0x1f>
c000aa5b:	c0 2c 00 00          	shrb   $0x0,(%eax,%eax,1)
c000aa5f:	00 41 0e             	add    %al,0xe(%ecx)
c000aa62:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000aa68:	41                   	inc    %ecx
c000aa69:	83 03 44             	addl   $0x44,(%ebx)
c000aa6c:	2e 04 04             	cs add $0x4,%al
c000aa6f:	01 00                	add    %eax,(%eax)
c000aa71:	00 00                	add    %al,(%eax)
c000aa73:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000aa77:	0c 42                	or     $0x42,%al
c000aa79:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000aa7d:	14 42                	adc    $0x42,%al
c000aa7f:	2e 18 41 2e          	sbb    %al,%cs:0x2e(%ecx)
c000aa83:	1c 46                	sbb    $0x46,%al
c000aa85:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000aa89:	0c 42                	or     $0x42,%al
c000aa8b:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000aa8f:	00 bc 01 00 00 58 00 	add    %bh,0x580000(%ecx,%eax,1)
c000aa96:	00 00                	add    %al,(%eax)
c000aa98:	84 7f 00             	test   %bh,0x0(%edi)
c000aa9b:	c0 7c 03 00 00       	sarb   $0x0,0x0(%ebx,%eax,1)
c000aaa0:	41                   	inc    %ecx
c000aaa1:	0e                   	push   %cs
c000aaa2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000aaa8:	46                   	inc    %esi
c000aaa9:	2e 0c 83             	cs or  $0x83,%al
c000aaac:	05 86 04 87 03       	add    $0x3870486,%eax
c000aab1:	4b                   	dec    %ebx
c000aab2:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000aab6:	00 5c 2e 04          	add    %bl,0x4(%esi,%ebp,1)
c000aaba:	04 01                	add    $0x1,%al
c000aabc:	00 00                	add    %al,(%eax)
c000aabe:	00 2e                	add    %ch,(%esi)
c000aac0:	08 47 2e             	or     %al,0x2e(%edi)
c000aac3:	0c 49                	or     $0x49,%al
c000aac5:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000aac9:	14 41                	adc    $0x41,%al
c000aacb:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000aacf:	1c 45                	sbb    $0x45,%al
c000aad1:	2e 20 4e 2e          	and    %cl,%cs:0x2e(%esi)
c000aad5:	08 4c 2e 0c          	or     %cl,0xc(%esi,%ebp,1)
c000aad9:	49                   	dec    %ecx
c000aada:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000aade:	14 41                	adc    $0x41,%al
c000aae0:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000aae4:	1c 45                	sbb    $0x45,%al
c000aae6:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000aaea:	0c 4c                	or     $0x4c,%al
c000aaec:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000aaf0:	14 41                	adc    $0x41,%al
c000aaf2:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000aaf6:	1c 45                	sbb    $0x45,%al
c000aaf8:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000aafc:	0c 4c                	or     $0x4c,%al
c000aafe:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab02:	14 41                	adc    $0x41,%al
c000ab04:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000ab08:	1c 45                	sbb    $0x45,%al
c000ab0a:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000ab0e:	0c 4c                	or     $0x4c,%al
c000ab10:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab14:	14 41                	adc    $0x41,%al
c000ab16:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000ab1a:	1c 45                	sbb    $0x45,%al
c000ab1c:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000ab20:	0c 47                	or     $0x47,%al
c000ab22:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab26:	14 41                	adc    $0x41,%al
c000ab28:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000ab2c:	1c 45                	sbb    $0x45,%al
c000ab2e:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ab32:	0c 42                	or     $0x42,%al
c000ab34:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab38:	14 41                	adc    $0x41,%al
c000ab3a:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000ab3e:	1c 45                	sbb    $0x45,%al
c000ab40:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000ab44:	0c 4c                	or     $0x4c,%al
c000ab46:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab4a:	14 41                	adc    $0x41,%al
c000ab4c:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000ab50:	1c 45                	sbb    $0x45,%al
c000ab52:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000ab56:	0c 47                	or     $0x47,%al
c000ab58:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab5c:	14 41                	adc    $0x41,%al
c000ab5e:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000ab62:	1c 45                	sbb    $0x45,%al
c000ab64:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ab68:	0c 42                	or     $0x42,%al
c000ab6a:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab6e:	14 41                	adc    $0x41,%al
c000ab70:	2e 18 4b 2e          	sbb    %cl,%cs:0x2e(%ebx)
c000ab74:	1c 45                	sbb    $0x45,%al
c000ab76:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000ab7a:	0c 4c                	or     $0x4c,%al
c000ab7c:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab80:	14 41                	adc    $0x41,%al
c000ab82:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000ab86:	1c 45                	sbb    $0x45,%al
c000ab88:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000ab8c:	0c 47                	or     $0x47,%al
c000ab8e:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ab92:	14 41                	adc    $0x41,%al
c000ab94:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000ab98:	1c 45                	sbb    $0x45,%al
c000ab9a:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ab9e:	0c 42                	or     $0x42,%al
c000aba0:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000aba4:	14 41                	adc    $0x41,%al
c000aba6:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000abaa:	1c 45                	sbb    $0x45,%al
c000abac:	2e 20 4e 2e          	and    %cl,%cs:0x2e(%esi)
c000abb0:	0c 4d                	or     $0x4d,%al
c000abb2:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000abb6:	14 41                	adc    $0x41,%al
c000abb8:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000abbc:	1c 45                	sbb    $0x45,%al
c000abbe:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000abc2:	0c 47                	or     $0x47,%al
c000abc4:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000abc8:	14 41                	adc    $0x41,%al
c000abca:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000abce:	1c 45                	sbb    $0x45,%al
c000abd0:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000abd4:	0c 42                	or     $0x42,%al
c000abd6:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000abda:	14 41                	adc    $0x41,%al
c000abdc:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000abe0:	1c 45                	sbb    $0x45,%al
c000abe2:	2e 20 4e 2e          	and    %cl,%cs:0x2e(%esi)
c000abe6:	0c 4d                	or     $0x4d,%al
c000abe8:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000abec:	14 41                	adc    $0x41,%al
c000abee:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000abf2:	1c 45                	sbb    $0x45,%al
c000abf4:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000abf8:	0c 47                	or     $0x47,%al
c000abfa:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000abfe:	14 41                	adc    $0x41,%al
c000ac00:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000ac04:	1c 45                	sbb    $0x45,%al
c000ac06:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ac0a:	0c 42                	or     $0x42,%al
c000ac0c:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ac10:	14 41                	adc    $0x41,%al
c000ac12:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000ac16:	1c 45                	sbb    $0x45,%al
c000ac18:	2e 20 4e 2e          	and    %cl,%cs:0x2e(%esi)
c000ac1c:	0c 4d                	or     $0x4d,%al
c000ac1e:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ac22:	14 41                	adc    $0x41,%al
c000ac24:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000ac28:	1c 45                	sbb    $0x45,%al
c000ac2a:	2e 20 4d 2e          	and    %cl,%cs:0x2e(%ebp)
c000ac2e:	0c 47                	or     $0x47,%al
c000ac30:	2e 10 42 2e          	adc    %al,%cs:0x2e(%edx)
c000ac34:	14 41                	adc    $0x41,%al
c000ac36:	2e 18 49 2e          	sbb    %cl,%cs:0x2e(%ecx)
c000ac3a:	1c 45                	sbb    $0x45,%al
c000ac3c:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ac40:	0c 41                	or     $0x41,%al
c000ac42:	2e 10 47 2e          	adc    %al,%cs:0x2e(%edi)
c000ac46:	00 43 2e             	add    %al,0x2e(%ebx)
c000ac49:	0c 45                	or     $0x45,%al
c000ac4b:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ac4f:	00 98 01 00 00 18    	add    %bl,0x18000001(%eax)
c000ac55:	02 00                	add    (%eax),%al
c000ac57:	00 00                	add    %al,(%eax)
c000ac59:	83 00 c0             	addl   $0xffffffc0,(%eax)
c000ac5c:	0c 03                	or     $0x3,%al
c000ac5e:	00 00                	add    %al,(%eax)
c000ac60:	41                   	inc    %ecx
c000ac61:	0e                   	push   %cs
c000ac62:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ac68:	4e                   	dec    %esi
c000ac69:	2e 04 04             	cs add $0x4,%al
c000ac6c:	01 00                	add    %eax,(%eax)
c000ac6e:	00 00                	add    %al,(%eax)
c000ac70:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000ac74:	0c 45                	or     $0x45,%al
c000ac76:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ac7a:	14 42                	adc    $0x42,%al
c000ac7c:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ac80:	1c 45                	sbb    $0x45,%al
c000ac82:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ac86:	0c 45                	or     $0x45,%al
c000ac88:	2e 10 02             	adc    %al,%cs:(%edx)
c000ac8b:	e9 2e 14 42 2e       	jmp    ee42c0be <_kernel_end+0x2e400cba>
c000ac90:	18 42 2e             	sbb    %al,0x2e(%edx)
c000ac93:	1c 45                	sbb    $0x45,%al
c000ac95:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ac99:	0c 42                	or     $0x42,%al
c000ac9b:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ac9f:	14 42                	adc    $0x42,%al
c000aca1:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000aca5:	1c 45                	sbb    $0x45,%al
c000aca7:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000acab:	0c 42                	or     $0x42,%al
c000acad:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000acb1:	14 42                	adc    $0x42,%al
c000acb3:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000acb7:	1c 45                	sbb    $0x45,%al
c000acb9:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000acbd:	0c 42                	or     $0x42,%al
c000acbf:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000acc3:	14 42                	adc    $0x42,%al
c000acc5:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000acc9:	1c 45                	sbb    $0x45,%al
c000accb:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000accf:	0c 42                	or     $0x42,%al
c000acd1:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000acd5:	14 42                	adc    $0x42,%al
c000acd7:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000acdb:	1c 45                	sbb    $0x45,%al
c000acdd:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ace1:	0c 42                	or     $0x42,%al
c000ace3:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ace7:	14 42                	adc    $0x42,%al
c000ace9:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000aced:	1c 45                	sbb    $0x45,%al
c000acef:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000acf3:	0c 42                	or     $0x42,%al
c000acf5:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000acf9:	14 42                	adc    $0x42,%al
c000acfb:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000acff:	1c 45                	sbb    $0x45,%al
c000ad01:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad05:	0c 42                	or     $0x42,%al
c000ad07:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad0b:	14 42                	adc    $0x42,%al
c000ad0d:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ad11:	1c 45                	sbb    $0x45,%al
c000ad13:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad17:	0c 42                	or     $0x42,%al
c000ad19:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad1d:	14 42                	adc    $0x42,%al
c000ad1f:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ad23:	1c 45                	sbb    $0x45,%al
c000ad25:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad29:	0c 42                	or     $0x42,%al
c000ad2b:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad2f:	14 42                	adc    $0x42,%al
c000ad31:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ad35:	1c 45                	sbb    $0x45,%al
c000ad37:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad3b:	0c 42                	or     $0x42,%al
c000ad3d:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad41:	14 42                	adc    $0x42,%al
c000ad43:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ad47:	1c 45                	sbb    $0x45,%al
c000ad49:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad4d:	0c 42                	or     $0x42,%al
c000ad4f:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad53:	14 42                	adc    $0x42,%al
c000ad55:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000ad59:	1c 45                	sbb    $0x45,%al
c000ad5b:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad5f:	0c 42                	or     $0x42,%al
c000ad61:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad65:	14 42                	adc    $0x42,%al
c000ad67:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000ad6b:	1c 45                	sbb    $0x45,%al
c000ad6d:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad71:	0c 42                	or     $0x42,%al
c000ad73:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad77:	14 42                	adc    $0x42,%al
c000ad79:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000ad7d:	1c 45                	sbb    $0x45,%al
c000ad7f:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad83:	0c 42                	or     $0x42,%al
c000ad85:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad89:	14 42                	adc    $0x42,%al
c000ad8b:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000ad8f:	1c 45                	sbb    $0x45,%al
c000ad91:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ad95:	0c 42                	or     $0x42,%al
c000ad97:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000ad9b:	14 42                	adc    $0x42,%al
c000ad9d:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000ada1:	1c 45                	sbb    $0x45,%al
c000ada3:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000ada7:	0c 42                	or     $0x42,%al
c000ada9:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000adad:	14 42                	adc    $0x42,%al
c000adaf:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000adb3:	1c 45                	sbb    $0x45,%al
c000adb5:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000adb9:	0c 42                	or     $0x42,%al
c000adbb:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000adbf:	14 42                	adc    $0x42,%al
c000adc1:	2e 18 45 2e          	sbb    %al,%cs:0x2e(%ebp)
c000adc5:	1c 45                	sbb    $0x45,%al
c000adc7:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000adcb:	00 42 2e             	add    %al,0x2e(%edx)
c000adce:	04 04                	add    $0x4,%al
c000add0:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000add5:	08 42 2e             	or     %al,0x2e(%edx)
c000add8:	0c 45                	or     $0x45,%al
c000adda:	2e 10 47 2e          	adc    %al,%cs:0x2e(%edi)
c000adde:	14 45                	adc    $0x45,%al
c000ade0:	2e 18 42 2e          	sbb    %al,%cs:0x2e(%edx)
c000ade4:	1c 45                	sbb    $0x45,%al
c000ade6:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000adea:	00 00                	add    %al,(%eax)
c000adec:	2c 00                	sub    $0x0,%al
c000adee:	00 00                	add    %al,(%eax)
c000adf0:	b4 03                	mov    $0x3,%ah
c000adf2:	00 00                	add    %al,(%eax)
c000adf4:	0c 86                	or     $0x86,%al
c000adf6:	00 c0                	add    %al,%al
c000adf8:	1a 00                	sbb    (%eax),%al
c000adfa:	00 00                	add    %al,(%eax)
c000adfc:	41                   	inc    %ecx
c000adfd:	0e                   	push   %cs
c000adfe:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ae04:	43                   	inc    %ebx
c000ae05:	2e 04 04             	cs add $0x4,%al
c000ae08:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ae0d:	08 42 2e             	or     %al,0x2e(%edx)
c000ae10:	0c 43                	or     $0x43,%al
c000ae12:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ae16:	00 41 c5             	add    %al,-0x3b(%ecx)
c000ae19:	0c 04                	or     $0x4,%al
c000ae1b:	04 1c                	add    $0x1c,%al
c000ae1d:	00 00                	add    %al,(%eax)
c000ae1f:	00 e4                	add    %ah,%ah
c000ae21:	03 00                	add    (%eax),%eax
c000ae23:	00 26                	add    %ah,(%esi)
c000ae25:	86 00                	xchg   %al,(%eax)
c000ae27:	c0 23 00             	shlb   $0x0,(%ebx)
c000ae2a:	00 00                	add    %al,(%eax)
c000ae2c:	41                   	inc    %ecx
c000ae2d:	0e                   	push   %cs
c000ae2e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ae34:	47                   	inc    %edi
c000ae35:	0c 04                	or     $0x4,%al
c000ae37:	04 c5                	add    $0xc5,%al
c000ae39:	00 00                	add    %al,(%eax)
c000ae3b:	00 50 00             	add    %dl,0x0(%eax)
c000ae3e:	00 00                	add    %al,(%eax)
c000ae40:	04 04                	add    $0x4,%al
c000ae42:	00 00                	add    %al,(%eax)
c000ae44:	49                   	dec    %ecx
c000ae45:	86 00                	xchg   %al,(%eax)
c000ae47:	c0 be 00 00 00 41 0e 	sarb   $0xe,0x41000000(%esi)
c000ae4e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000ae54:	42                   	inc    %edx
c000ae55:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000ae58:	03 46 83             	add    -0x7d(%esi),%eax
c000ae5b:	05 5c 2e 04 04       	add    $0x4042e5c,%eax
c000ae60:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000ae65:	08 42 2e             	or     %al,0x2e(%edx)
c000ae68:	0c 45                	or     $0x45,%al
c000ae6a:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000ae6e:	00 02                	add    %al,(%edx)
c000ae70:	4e                   	dec    %esi
c000ae71:	2e 04 04             	cs add $0x4,%al
c000ae74:	02 00                	add    (%eax),%al
c000ae76:	00 00                	add    %al,(%eax)
c000ae78:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000ae7c:	0c 41                	or     $0x41,%al
c000ae7e:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000ae82:	00 62 c3             	add    %ah,-0x3d(%edx)
c000ae85:	41                   	inc    %ecx
c000ae86:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000ae8a:	0c 04                	or     $0x4,%al
c000ae8c:	04 c5                	add    $0xc5,%al
c000ae8e:	00 00                	add    %al,(%eax)
c000ae90:	3c 00                	cmp    $0x0,%al
c000ae92:	00 00                	add    %al,(%eax)
c000ae94:	58                   	pop    %eax
c000ae95:	04 00                	add    $0x0,%al
c000ae97:	00 07                	add    %al,(%edi)
c000ae99:	87 00                	xchg   %eax,(%eax)
c000ae9b:	c0 68 00 00          	shrb   $0x0,0x0(%eax)
c000ae9f:	00 41 0e             	add    %al,0xe(%ecx)
c000aea2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000aea8:	46                   	inc    %esi
c000aea9:	83 05 86 04 87 03 53 	addl   $0x53,0x3870486
c000aeb0:	2e 04 04             	cs add $0x4,%al
c000aeb3:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000aeb8:	08 42 2e             	or     %al,0x2e(%edx)
c000aebb:	0c 45                	or     $0x45,%al
c000aebd:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000aec1:	00 74 c3 41          	add    %dh,0x41(%ebx,%eax,8)
c000aec5:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000aec9:	0c 04                	or     $0x4,%al
c000aecb:	04 c5                	add    $0xc5,%al
c000aecd:	00 00                	add    %al,(%eax)
c000aecf:	00 38                	add    %bh,(%eax)
c000aed1:	00 00                	add    %al,(%eax)
c000aed3:	00 98 04 00 00 70    	add    %bl,0x70000004(%eax)
c000aed9:	87 00                	xchg   %eax,(%eax)
c000aedb:	c0 a1 00 00 00 41 0e 	shlb   $0xe,0x41000000(%ecx)
c000aee2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000aee8:	4b                   	dec    %ebx
c000aee9:	2e 0c 45             	cs or  $0x45,%al
c000aeec:	2e 10 52 2e          	adc    %dl,%cs:0x2e(%edx)
c000aef0:	0c 43                	or     $0x43,%al
c000aef2:	2e 10 5e 2e          	adc    %bl,%cs:0x2e(%esi)
c000aef6:	0c 43                	or     $0x43,%al
c000aef8:	2e 10 5e 2e          	adc    %bl,%cs:0x2e(%esi)
c000aefc:	0c 43                	or     $0x43,%al
c000aefe:	2e 10 5e 2e          	adc    %bl,%cs:0x2e(%esi)
c000af02:	0c 43                	or     $0x43,%al
c000af04:	2e 10 54 2e 00       	adc    %dl,%cs:0x0(%esi,%ebp,1)
c000af09:	00 00                	add    %al,(%eax)
c000af0b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000af0e:	00 00                	add    %al,(%eax)
c000af10:	d4 04                	aam    $0x4
c000af12:	00 00                	add    %al,(%eax)
c000af14:	14 88                	adc    $0x88,%al
c000af16:	00 c0                	add    %al,%al
c000af18:	25 00 00 00 41       	and    $0x41000000,%eax
c000af1d:	0e                   	push   %cs
c000af1e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000af24:	61                   	popa   
c000af25:	0c 04                	or     $0x4,%al
c000af27:	04 c5                	add    $0xc5,%al
c000af29:	00 00                	add    %al,(%eax)
c000af2b:	00 28                	add    %ch,(%eax)
c000af2d:	00 00                	add    %al,(%eax)
c000af2f:	00 f4                	add    %dh,%ah
c000af31:	04 00                	add    $0x0,%al
c000af33:	00 39                	add    %bh,(%ecx)
c000af35:	88 00                	mov    %al,(%eax)
c000af37:	c0 93 00 00 00 41 0e 	rclb   $0xe,0x41000000(%ebx)
c000af3e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000af44:	49                   	dec    %ecx
c000af45:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000af4c:	83 c3 41             	add    $0x41,%ebx
c000af4f:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000af53:	0c 04                	or     $0x4,%al
c000af55:	04 c5                	add    $0xc5,%al
c000af57:	00 28                	add    %ch,(%eax)
c000af59:	00 00                	add    %al,(%eax)
c000af5b:	00 20                	add    %ah,(%eax)
c000af5d:	05 00 00 cc 88       	add    $0x88cc0000,%eax
c000af62:	00 c0                	add    %al,%al
c000af64:	80 00 00             	addb   $0x0,(%eax)
c000af67:	00 41 0e             	add    %al,0xe(%ecx)
c000af6a:	08 85 02 45 0d 05    	or     %al,0x50d4502(%ebp)
c000af70:	49                   	dec    %ecx
c000af71:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000af78:	6d                   	insl   (%dx),%es:(%edi)
c000af79:	c3                   	ret    
c000af7a:	41                   	inc    %ecx
c000af7b:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000af7f:	0c 04                	or     $0x4,%al
c000af81:	04 c5                	add    $0xc5,%al
c000af83:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000af86:	00 00                	add    %al,(%eax)
c000af88:	4c                   	dec    %esp
c000af89:	05 00 00 4c 89       	add    $0x894c0000,%eax
c000af8e:	00 c0                	add    %al,%al
c000af90:	14 00                	adc    $0x0,%al
c000af92:	00 00                	add    %al,(%eax)
c000af94:	41                   	inc    %ecx
c000af95:	0e                   	push   %cs
c000af96:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000af9c:	44                   	inc    %esp
c000af9d:	0c 04                	or     $0x4,%al
c000af9f:	04 c5                	add    $0xc5,%al
c000afa1:	00 00                	add    %al,(%eax)
c000afa3:	00 28                	add    %ch,(%eax)
c000afa5:	00 00                	add    %al,(%eax)
c000afa7:	00 6c 05 00          	add    %ch,0x0(%ebp,%eax,1)
c000afab:	00 60 89             	add    %ah,-0x77(%eax)
c000afae:	00 c0                	add    %al,%al
c000afb0:	4d                   	dec    %ebp
c000afb1:	00 00                	add    %al,(%eax)
c000afb3:	00 41 0e             	add    %al,0xe(%ecx)
c000afb6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000afbc:	49                   	dec    %ecx
c000afbd:	83 05 86 04 87 03 7d 	addl   $0x7d,0x3870486
c000afc4:	c3                   	ret    
c000afc5:	41                   	inc    %ecx
c000afc6:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000afca:	0c 04                	or     $0x4,%al
c000afcc:	04 c5                	add    $0xc5,%al
c000afce:	00 00                	add    %al,(%eax)
c000afd0:	1c 00                	sbb    $0x0,%al
c000afd2:	00 00                	add    %al,(%eax)
c000afd4:	98                   	cwtl   
c000afd5:	05 00 00 ad 89       	add    $0x89ad0000,%eax
c000afda:	00 c0                	add    %al,%al
c000afdc:	25 00 00 00 41       	and    $0x41000000,%eax
c000afe1:	0e                   	push   %cs
c000afe2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000afe8:	61                   	popa   
c000afe9:	0c 04                	or     $0x4,%al
c000afeb:	04 c5                	add    $0xc5,%al
c000afed:	00 00                	add    %al,(%eax)
c000afef:	00 a0 00 00 00 b8    	add    %ah,-0x48000000(%eax)
c000aff5:	05 00 00 d2 89       	add    $0x89d20000,%eax
c000affa:	00 c0                	add    %al,%al
c000affc:	f8                   	clc    
c000affd:	00 00                	add    %al,(%eax)
c000afff:	00 41 0e             	add    %al,0xe(%ecx)
c000b002:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b008:	41                   	inc    %ecx
c000b009:	83 03 7e             	addl   $0x7e,(%ebx)
c000b00c:	2e 04 04             	cs add $0x4,%al
c000b00f:	07                   	pop    %es
c000b010:	00 00                	add    %al,(%eax)
c000b012:	00 2e                	add    %ch,(%esi)
c000b014:	08 42 2e             	or     %al,0x2e(%edx)
c000b017:	0c 42                	or     $0x42,%al
c000b019:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000b01d:	14 41                	adc    $0x41,%al
c000b01f:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000b023:	1c 48                	sbb    $0x48,%al
c000b025:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000b029:	24 42                	and    $0x42,%al
c000b02b:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000b02f:	2c 41                	sub    $0x41,%al
c000b031:	2e 30 4d 2e          	xor    %cl,%cs:0x2e(%ebp)
c000b035:	00 47 2e             	add    %al,0x2e(%edi)
c000b038:	04 04                	add    $0x4,%al
c000b03a:	02 00                	add    (%eax),%al
c000b03c:	00 00                	add    %al,(%eax)
c000b03e:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b042:	0c 42                	or     $0x42,%al
c000b044:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000b048:	14 41                	adc    $0x41,%al
c000b04a:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000b04e:	1c 42                	sbb    $0x42,%al
c000b050:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000b054:	24 42                	and    $0x42,%al
c000b056:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000b05a:	2c 41                	sub    $0x41,%al
c000b05c:	2e 30 4d 2e          	xor    %cl,%cs:0x2e(%ebp)
c000b060:	00 47 2e             	add    %al,0x2e(%edi)
c000b063:	04 04                	add    $0x4,%al
c000b065:	02 00                	add    (%eax),%al
c000b067:	00 00                	add    %al,(%eax)
c000b069:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b06d:	0c 42                	or     $0x42,%al
c000b06f:	2e 10 45 2e          	adc    %al,%cs:0x2e(%ebp)
c000b073:	14 41                	adc    $0x41,%al
c000b075:	2e 18 51 2e          	sbb    %dl,%cs:0x2e(%ecx)
c000b079:	1c 42                	sbb    $0x42,%al
c000b07b:	2e 20 41 2e          	and    %al,%cs:0x2e(%ecx)
c000b07f:	24 42                	and    $0x42,%al
c000b081:	2e 28 45 2e          	sub    %al,%cs:0x2e(%ebp)
c000b085:	2c 41                	sub    $0x41,%al
c000b087:	2e 30 48 2e          	xor    %cl,%cs:0x2e(%eax)
c000b08b:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000b08f:	04 04                	add    $0x4,%al
c000b091:	c3                   	ret    
c000b092:	00 00                	add    %al,(%eax)
c000b094:	28 00                	sub    %al,(%eax)
c000b096:	00 00                	add    %al,(%eax)
c000b098:	5c                   	pop    %esp
c000b099:	06                   	push   %es
c000b09a:	00 00                	add    %al,(%eax)
c000b09c:	ca 8a 00             	lret   $0x8a
c000b09f:	c0 8b 00 00 00 41 0e 	rorb   $0xe,0x41000000(%ebx)
c000b0a6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b0ac:	43                   	inc    %ebx
c000b0ad:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000b0b4:	81 c3 41 c6 41 c7    	add    $0xc741c641,%ebx
c000b0ba:	41                   	inc    %ecx
c000b0bb:	0c 04                	or     $0x4,%al
c000b0bd:	04 c5                	add    $0xc5,%al
c000b0bf:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c000b0c3:	00 88 06 00 00 55    	add    %cl,0x55000006(%eax)
c000b0c9:	8b 00                	mov    (%eax),%eax
c000b0cb:	c0 39 00             	sarb   $0x0,(%ecx)
c000b0ce:	00 00                	add    %al,(%eax)
c000b0d0:	41                   	inc    %ecx
c000b0d1:	0e                   	push   %cs
c000b0d2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b0d8:	41                   	inc    %ecx
c000b0d9:	87 03                	xchg   %eax,(%ebx)
c000b0db:	44                   	inc    %esp
c000b0dc:	86 04 04             	xchg   %al,(%esp,%eax,1)
c000b0df:	04 00                	add    $0x0,%al
c000b0e1:	00 00                	add    %al,(%eax)
c000b0e3:	83 05 4d 2e 04 04 01 	addl   $0x1,0x4042e4d
c000b0ea:	00 00                	add    %al,(%eax)
c000b0ec:	00 2e                	add    %ch,(%esi)
c000b0ee:	08 43 2e             	or     %al,0x2e(%ebx)
c000b0f1:	0c 41                	or     $0x41,%al
c000b0f3:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b0f7:	14 48                	adc    $0x48,%al
c000b0f9:	2e 00 49 c3          	add    %cl,%cs:-0x3d(%ecx)
c000b0fd:	41                   	inc    %ecx
c000b0fe:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b102:	0c 04                	or     $0x4,%al
c000b104:	04 c5                	add    $0xc5,%al
c000b106:	00 00                	add    %al,(%eax)
c000b108:	24 00                	and    $0x0,%al
c000b10a:	00 00                	add    %al,(%eax)
c000b10c:	d0 06                	rolb   (%esi)
c000b10e:	00 00                	add    %al,(%eax)
c000b110:	90                   	nop
c000b111:	8b 00                	mov    (%eax),%eax
c000b113:	c0 2c 00 00          	shrb   $0x0,(%eax,%eax,1)
c000b117:	00 41 0e             	add    %al,0xe(%ecx)
c000b11a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b120:	5a                   	pop    %edx
c000b121:	2e 0c 45             	cs or  $0x45,%al
c000b124:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b128:	00 41 c5             	add    %al,-0x3b(%ecx)
c000b12b:	0c 04                	or     $0x4,%al
c000b12d:	04 00                	add    $0x0,%al
c000b12f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000b132:	00 00                	add    %al,(%eax)
c000b134:	f8                   	clc    
c000b135:	06                   	push   %es
c000b136:	00 00                	add    %al,(%eax)
c000b138:	d8 8b 00 c0 3d 00    	fmuls  0x3dc000(%ebx)
c000b13e:	00 00                	add    %al,(%eax)
c000b140:	41                   	inc    %ecx
c000b141:	0e                   	push   %cs
c000b142:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000b148:	74 0c                	je     c000b156 <_edata+0x71a>
c000b14a:	04 04                	add    $0x4,%al
c000b14c:	c5 00                	lds    (%eax),%eax
c000b14e:	00 00                	add    %al,(%eax)
c000b150:	1c 00                	sbb    $0x0,%al
c000b152:	00 00                	add    %al,(%eax)
c000b154:	18 07                	sbb    %al,(%edi)
c000b156:	00 00                	add    %al,(%eax)
c000b158:	15 8c 00 c0 42       	adc    $0x42c0008c,%eax
c000b15d:	00 00                	add    %al,(%eax)
c000b15f:	00 41 0e             	add    %al,0xe(%ecx)
c000b162:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000b168:	7c 0c                	jl     c000b176 <_edata+0x73a>
c000b16a:	04 04                	add    $0x4,%al
c000b16c:	c5 00                	lds    (%eax),%eax
c000b16e:	00 00                	add    %al,(%eax)
c000b170:	20 00                	and    %al,(%eax)
c000b172:	00 00                	add    %al,(%eax)
c000b174:	38 07                	cmp    %al,(%edi)
c000b176:	00 00                	add    %al,(%eax)
c000b178:	57                   	push   %edi
c000b179:	8c 00                	mov    %es,(%eax)
c000b17b:	c0 2c 00 00          	shrb   $0x0,(%eax,%eax,1)
c000b17f:	00 41 0e             	add    %al,0xe(%ecx)
c000b182:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b188:	44                   	inc    %esp
c000b189:	83 03 63             	addl   $0x63,(%ebx)
c000b18c:	c3                   	ret    
c000b18d:	41                   	inc    %ecx
c000b18e:	0c 04                	or     $0x4,%al
c000b190:	04 c5                	add    $0xc5,%al
c000b192:	00 00                	add    %al,(%eax)
c000b194:	38 00                	cmp    %al,(%eax)
c000b196:	00 00                	add    %al,(%eax)
c000b198:	5c                   	pop    %esp
c000b199:	07                   	pop    %es
c000b19a:	00 00                	add    %al,(%eax)
c000b19c:	83 8c 00 c0 5b 00 00 	orl    $0x0,0x5bc0(%eax,%eax,1)
c000b1a3:	00 
c000b1a4:	41                   	inc    %ecx
c000b1a5:	0e                   	push   %cs
c000b1a6:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000b1ac:	44                   	inc    %esp
c000b1ad:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000b1b1:	4a                   	dec    %edx
c000b1b2:	2e 0c 48             	cs or  $0x48,%al
c000b1b5:	2e 10 5c 2e 00       	adc    %bl,%cs:0x0(%esi,%ebp,1)
c000b1ba:	53                   	push   %ebx
c000b1bb:	0a c3                	or     %bl,%al
c000b1bd:	41                   	inc    %ecx
c000b1be:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b1c2:	04 c5                	add    $0xc5,%al
c000b1c4:	45                   	inc    %ebp
c000b1c5:	0b 44 c3 41          	or     0x41(%ebx,%eax,8),%eax
c000b1c9:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b1cd:	04 c5                	add    $0xc5,%al
c000b1cf:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000b1d2:	00 00                	add    %al,(%eax)
c000b1d4:	98                   	cwtl   
c000b1d5:	07                   	pop    %es
c000b1d6:	00 00                	add    %al,(%eax)
c000b1d8:	de 8c 00 c0 cd 00 00 	fimul  0xcdc0(%eax,%eax,1)
c000b1df:	00 41 0e             	add    %al,0xe(%ecx)
c000b1e2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b1e8:	02 c9                	add    %cl,%cl
c000b1ea:	0c 04                	or     $0x4,%al
c000b1ec:	04 c5                	add    $0xc5,%al
c000b1ee:	00 00                	add    %al,(%eax)
c000b1f0:	1c 00                	sbb    $0x0,%al
c000b1f2:	00 00                	add    %al,(%eax)
c000b1f4:	b8 07 00 00 ab       	mov    $0xab000007,%eax
c000b1f9:	8d 00                	lea    (%eax),%eax
c000b1fb:	c0                   	(bad)  
c000b1fc:	32 00                	xor    (%eax),%al
c000b1fe:	00 00                	add    %al,(%eax)
c000b200:	41                   	inc    %ecx
c000b201:	0e                   	push   %cs
c000b202:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b208:	6e                   	outsb  %ds:(%esi),(%dx)
c000b209:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c000b20c:	04 00                	add    $0x0,%al
c000b20e:	00 00                	add    %al,(%eax)
c000b210:	1c 00                	sbb    $0x0,%al
c000b212:	00 00                	add    %al,(%eax)
c000b214:	d8 07                	fadds  (%edi)
c000b216:	00 00                	add    %al,(%eax)
c000b218:	dd 8d 00 c0 10 00    	fisttpll 0x10c000(%ebp)
c000b21e:	00 00                	add    %al,(%eax)
c000b220:	41                   	inc    %ecx
c000b221:	0e                   	push   %cs
c000b222:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b228:	4c                   	dec    %esp
c000b229:	0c 04                	or     $0x4,%al
c000b22b:	04 c5                	add    $0xc5,%al
c000b22d:	00 00                	add    %al,(%eax)
c000b22f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000b232:	00 00                	add    %al,(%eax)
c000b234:	f8                   	clc    
c000b235:	07                   	pop    %es
c000b236:	00 00                	add    %al,(%eax)
c000b238:	ed                   	in     (%dx),%eax
c000b239:	8d 00                	lea    (%eax),%eax
c000b23b:	c0 14 00 00          	rclb   $0x0,(%eax,%eax,1)
c000b23f:	00 41 0e             	add    %al,0xe(%ecx)
c000b242:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b248:	50                   	push   %eax
c000b249:	0c 04                	or     $0x4,%al
c000b24b:	04 c5                	add    $0xc5,%al
c000b24d:	00 00                	add    %al,(%eax)
c000b24f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000b252:	00 00                	add    %al,(%eax)
c000b254:	18 08                	sbb    %cl,(%eax)
c000b256:	00 00                	add    %al,(%eax)
c000b258:	01 8e 00 c0 17 00    	add    %ecx,0x17c000(%esi)
c000b25e:	00 00                	add    %al,(%eax)
c000b260:	41                   	inc    %ecx
c000b261:	0e                   	push   %cs
c000b262:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b268:	53                   	push   %ebx
c000b269:	0c 04                	or     $0x4,%al
c000b26b:	04 c5                	add    $0xc5,%al
c000b26d:	00 00                	add    %al,(%eax)
c000b26f:	00 24 00             	add    %ah,(%eax,%eax,1)
c000b272:	00 00                	add    %al,(%eax)
c000b274:	38 08                	cmp    %cl,(%eax)
c000b276:	00 00                	add    %al,(%eax)
c000b278:	18 8e 00 c0 15 00    	sbb    %cl,0x15c000(%esi)
c000b27e:	00 00                	add    %al,(%eax)
c000b280:	41                   	inc    %ecx
c000b281:	0e                   	push   %cs
c000b282:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b288:	47                   	inc    %edi
c000b289:	0a 0c 04             	or     (%esp,%eax,1),%cl
c000b28c:	04 c5                	add    $0xc5,%al
c000b28e:	45                   	inc    %ebp
c000b28f:	0b 41 0c             	or     0xc(%ecx),%eax
c000b292:	04 04                	add    $0x4,%al
c000b294:	c5 00                	lds    (%eax),%eax
c000b296:	00 00                	add    %al,(%eax)
c000b298:	1c 00                	sbb    $0x0,%al
c000b29a:	00 00                	add    %al,(%eax)
c000b29c:	60                   	pusha  
c000b29d:	08 00                	or     %al,(%eax)
c000b29f:	00 30                	add    %dh,(%eax)
c000b2a1:	8e 00                	mov    (%eax),%es
c000b2a3:	c0 23 00             	shlb   $0x0,(%ebx)
c000b2a6:	00 00                	add    %al,(%eax)
c000b2a8:	41                   	inc    %ecx
c000b2a9:	0e                   	push   %cs
c000b2aa:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b2b0:	5f                   	pop    %edi
c000b2b1:	0c 04                	or     $0x4,%al
c000b2b3:	04 c5                	add    $0xc5,%al
c000b2b5:	00 00                	add    %al,(%eax)
c000b2b7:	00 20                	add    %ah,(%eax)
c000b2b9:	00 00                	add    %al,(%eax)
c000b2bb:	00 80 08 00 00 53    	add    %al,0x53000008(%eax)
c000b2c1:	8e 00                	mov    (%eax),%es
c000b2c3:	c0 1b 00             	rcrb   $0x0,(%ebx)
c000b2c6:	00 00                	add    %al,(%eax)
c000b2c8:	41                   	inc    %ecx
c000b2c9:	0e                   	push   %cs
c000b2ca:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000b2d0:	46                   	inc    %esi
c000b2d1:	83 03 4e             	addl   $0x4e,(%ebx)
c000b2d4:	c3                   	ret    
c000b2d5:	41                   	inc    %ecx
c000b2d6:	0c 04                	or     $0x4,%al
c000b2d8:	04 c5                	add    $0xc5,%al
c000b2da:	00 00                	add    %al,(%eax)
c000b2dc:	28 00                	sub    %al,(%eax)
c000b2de:	00 00                	add    %al,(%eax)
c000b2e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c000b2e1:	08 00                	or     %al,(%eax)
c000b2e3:	00 6e 8e             	add    %ch,-0x72(%esi)
c000b2e6:	00 c0                	add    %al,%al
c000b2e8:	62 00                	bound  %eax,(%eax)
c000b2ea:	00 00                	add    %al,(%eax)
c000b2ec:	41                   	inc    %ecx
c000b2ed:	0e                   	push   %cs
c000b2ee:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b2f4:	44                   	inc    %esp
c000b2f5:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000b2fc:	57                   	push   %edi
c000b2fd:	c3                   	ret    
c000b2fe:	41                   	inc    %ecx
c000b2ff:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b303:	0c 04                	or     $0x4,%al
c000b305:	04 c5                	add    $0xc5,%al
c000b307:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000b30a:	00 00                	add    %al,(%eax)
c000b30c:	d0 08                	rorb   (%eax)
c000b30e:	00 00                	add    %al,(%eax)
c000b310:	d0 8e 00 c0 0d 00    	rorb   0xdc000(%esi)
c000b316:	00 00                	add    %al,(%eax)
c000b318:	41                   	inc    %ecx
c000b319:	0e                   	push   %cs
c000b31a:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b320:	45                   	inc    %ebp
c000b321:	0c 04                	or     $0x4,%al
c000b323:	04 c5                	add    $0xc5,%al
c000b325:	00 00                	add    %al,(%eax)
c000b327:	00 28                	add    %ch,(%eax)
c000b329:	00 00                	add    %al,(%eax)
c000b32b:	00 f0                	add    %dh,%al
c000b32d:	08 00                	or     %al,(%eax)
c000b32f:	00 dd                	add    %bl,%ch
c000b331:	8e 00                	mov    (%eax),%es
c000b333:	c0 0a 01             	rorb   $0x1,(%edx)
c000b336:	00 00                	add    %al,(%eax)
c000b338:	41                   	inc    %ecx
c000b339:	0e                   	push   %cs
c000b33a:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000b340:	46                   	inc    %esi
c000b341:	83 05 86 04 87 03 02 	addl   $0x2,0x3870486
c000b348:	fb                   	sti    
c000b349:	c3                   	ret    
c000b34a:	41                   	inc    %ecx
c000b34b:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b34f:	0c 04                	or     $0x4,%al
c000b351:	04 c5                	add    $0xc5,%al
c000b353:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000b356:	00 00                	add    %al,(%eax)
c000b358:	1c 09                	sbb    $0x9,%al
c000b35a:	00 00                	add    %al,(%eax)
c000b35c:	e7 8f                	out    %eax,$0x8f
c000b35e:	00 c0                	add    %al,%al
c000b360:	0d 00 00 00 41       	or     $0x41000000,%eax
c000b365:	0e                   	push   %cs
c000b366:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b36c:	45                   	inc    %ebp
c000b36d:	0c 04                	or     $0x4,%al
c000b36f:	04 c5                	add    $0xc5,%al
c000b371:	00 00                	add    %al,(%eax)
c000b373:	00 54 00 00          	add    %dl,0x0(%eax,%eax,1)
c000b377:	00 3c 09             	add    %bh,(%ecx,%ecx,1)
c000b37a:	00 00                	add    %al,(%eax)
c000b37c:	f4                   	hlt    
c000b37d:	8f 00                	popl   (%eax)
c000b37f:	c0 69 00 00          	shrb   $0x0,0x0(%ecx)
c000b383:	00 41 0e             	add    %al,0xe(%ecx)
c000b386:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b38c:	42                   	inc    %edx
c000b38d:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000b391:	4f                   	dec    %edi
c000b392:	2e 04 04             	cs add $0x4,%al
c000b395:	07                   	pop    %es
c000b396:	00 00                	add    %al,(%eax)
c000b398:	00 2e                	add    %ch,(%esi)
c000b39a:	08 4b 2e             	or     %cl,0x2e(%ebx)
c000b39d:	0c 46                	or     $0x46,%al
c000b39f:	2e 10 41 2e          	adc    %al,%cs:0x2e(%ecx)
c000b3a3:	14 45                	adc    $0x45,%al
c000b3a5:	2e 18 4a 2e          	sbb    %cl,%cs:0x2e(%edx)
c000b3a9:	1c 42                	sbb    $0x42,%al
c000b3ab:	2e 20 45 2e          	and    %al,%cs:0x2e(%ebp)
c000b3af:	24 48                	and    $0x48,%al
c000b3b1:	2e 00 45 2e          	add    %al,%cs:0x2e(%ebp)
c000b3b5:	04 04                	add    $0x4,%al
c000b3b7:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000b3bc:	08 45 2e             	or     %al,0x2e(%ebp)
c000b3bf:	0c 48                	or     $0x48,%al
c000b3c1:	2e 00 44 c3 41       	add    %al,%cs:0x41(%ebx,%eax,8)
c000b3c6:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b3ca:	04 c5                	add    $0xc5,%al
c000b3cc:	1c 00                	sbb    $0x0,%al
c000b3ce:	00 00                	add    %al,(%eax)
c000b3d0:	94                   	xchg   %eax,%esp
c000b3d1:	09 00                	or     %eax,(%eax)
c000b3d3:	00 5d 90             	add    %bl,-0x70(%ebp)
c000b3d6:	00 c0                	add    %al,%al
c000b3d8:	12 00                	adc    (%eax),%al
c000b3da:	00 00                	add    %al,(%eax)
c000b3dc:	41                   	inc    %ecx
c000b3dd:	0e                   	push   %cs
c000b3de:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b3e4:	44                   	inc    %esp
c000b3e5:	0c 04                	or     $0x4,%al
c000b3e7:	04 c5                	add    $0xc5,%al
c000b3e9:	00 00                	add    %al,(%eax)
c000b3eb:	00 1c 00             	add    %bl,(%eax,%eax,1)
c000b3ee:	00 00                	add    %al,(%eax)
c000b3f0:	b4 09                	mov    $0x9,%ah
c000b3f2:	00 00                	add    %al,(%eax)
c000b3f4:	6f                   	outsl  %ds:(%esi),(%dx)
c000b3f5:	90                   	nop
c000b3f6:	00 c0                	add    %al,%al
c000b3f8:	22 00                	and    (%eax),%al
c000b3fa:	00 00                	add    %al,(%eax)
c000b3fc:	41                   	inc    %ecx
c000b3fd:	0e                   	push   %cs
c000b3fe:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b404:	44                   	inc    %esp
c000b405:	0c 04                	or     $0x4,%al
c000b407:	04 c5                	add    $0xc5,%al
c000b409:	00 00                	add    %al,(%eax)
c000b40b:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c000b40f:	00 d4                	add    %dl,%ah
c000b411:	09 00                	or     %eax,(%eax)
c000b413:	00 91 90 00 c0 70    	add    %dl,0x70c00090(%ecx)
c000b419:	00 00                	add    %al,(%eax)
c000b41b:	00 41 0e             	add    %al,0xe(%ecx)
c000b41e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b424:	46                   	inc    %esi
c000b425:	83 05 86 04 87 03 47 	addl   $0x47,0x3870486
c000b42c:	2e 04 04             	cs add $0x4,%al
c000b42f:	13 00                	adc    (%eax),%eax
c000b431:	00 00                	add    %al,(%eax)
c000b433:	2e 00 52 2e          	add    %dl,%cs:0x2e(%edx)
c000b437:	04 04                	add    $0x4,%al
c000b439:	08 00                	or     %al,(%eax)
c000b43b:	00 00                	add    %al,(%eax)
c000b43d:	2e 08 48 2e          	or     %cl,%cs:0x2e(%eax)
c000b441:	14 51                	adc    $0x51,%al
c000b443:	2e 18 47 2e          	sbb    %al,%cs:0x2e(%edi)
c000b447:	1c 41                	sbb    $0x41,%al
c000b449:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b44d:	00 46 c3             	add    %al,-0x3d(%esi)
c000b450:	41                   	inc    %ecx
c000b451:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b455:	0c 04                	or     $0x4,%al
c000b457:	04 c5                	add    $0xc5,%al
c000b459:	00 00                	add    %al,(%eax)
c000b45b:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c000b45f:	00 24 0a             	add    %ah,(%edx,%ecx,1)
c000b462:	00 00                	add    %al,(%eax)
c000b464:	01 91 00 c0 6a 00    	add    %edx,0x6ac000(%ecx)
c000b46a:	00 00                	add    %al,(%eax)
c000b46c:	41                   	inc    %ecx
c000b46d:	0e                   	push   %cs
c000b46e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b474:	46                   	inc    %esi
c000b475:	83 05 86 04 87 03 58 	addl   $0x58,0x3870486
c000b47c:	2e 04 04             	cs add $0x4,%al
c000b47f:	03 00                	add    (%eax),%eax
c000b481:	00 00                	add    %al,(%eax)
c000b483:	2e 08 46 2e          	or     %al,%cs:0x2e(%esi)
c000b487:	04 04                	add    $0x4,%al
c000b489:	01 00                	add    %eax,(%eax)
c000b48b:	00 00                	add    %al,(%eax)
c000b48d:	2e 00 4c 2e 04       	add    %cl,%cs:0x4(%esi,%ebp,1)
c000b492:	04 03                	add    $0x3,%al
c000b494:	00 00                	add    %al,(%eax)
c000b496:	00 2e                	add    %ch,(%esi)
c000b498:	08 46 2e             	or     %al,0x2e(%esi)
c000b49b:	04 04                	add    $0x4,%al
c000b49d:	01 00                	add    %eax,(%eax)
c000b49f:	00 00                	add    %al,(%eax)
c000b4a1:	2e 00 45 2e          	add    %al,%cs:0x2e(%ebp)
c000b4a5:	04 04                	add    $0x4,%al
c000b4a7:	02 00                	add    (%eax),%al
c000b4a9:	00 00                	add    %al,(%eax)
c000b4ab:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b4af:	0c 41                	or     $0x41,%al
c000b4b1:	2e 10 4e 2e          	adc    %cl,%cs:0x2e(%esi)
c000b4b5:	00 4e c3             	add    %cl,-0x3d(%esi)
c000b4b8:	41                   	inc    %ecx
c000b4b9:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b4bd:	0c 04                	or     $0x4,%al
c000b4bf:	04 c5                	add    $0xc5,%al
c000b4c1:	00 00                	add    %al,(%eax)
c000b4c3:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000b4c6:	00 00                	add    %al,(%eax)
c000b4c8:	8c 0a                	mov    %cs,(%edx)
c000b4ca:	00 00                	add    %al,(%eax)
c000b4cc:	6b 91 00 c0 34 00 00 	imul   $0x0,0x34c000(%ecx),%edx
c000b4d3:	00 41 0e             	add    %al,0xe(%ecx)
c000b4d6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b4dc:	44                   	inc    %esp
c000b4dd:	2e 08 83 03 44 2e 0c 	or     %al,%cs:0xc2e4403(%ebx)
c000b4e4:	42                   	inc    %edx
c000b4e5:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b4e9:	00 48 2e             	add    %cl,0x2e(%eax)
c000b4ec:	04 04                	add    $0x4,%al
c000b4ee:	01 00                	add    %eax,(%eax)
c000b4f0:	00 00                	add    %al,(%eax)
c000b4f2:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000b4f6:	0c 41                	or     $0x41,%al
c000b4f8:	2e 10 4e 2e          	adc    %cl,%cs:0x2e(%esi)
c000b4fc:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000b500:	04 04                	add    $0x4,%al
c000b502:	c3                   	ret    
c000b503:	00 28                	add    %ch,(%eax)
c000b505:	00 00                	add    %al,(%eax)
c000b507:	00 cc                	add    %cl,%ah
c000b509:	0a 00                	or     (%eax),%al
c000b50b:	00 a0 91 00 c0 5f    	add    %ah,0x5fc00091(%eax)
c000b511:	00 00                	add    %al,(%eax)
c000b513:	00 41 0e             	add    %al,0xe(%ecx)
c000b516:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b51c:	45                   	inc    %ebp
c000b51d:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000b520:	03 44 83 05          	add    0x5(%ebx,%eax,4),%eax
c000b524:	02 4f c3             	add    -0x3d(%edi),%cl
c000b527:	41                   	inc    %ecx
c000b528:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b52c:	0c 04                	or     $0x4,%al
c000b52e:	04 c5                	add    $0xc5,%al
c000b530:	24 00                	and    $0x0,%al
c000b532:	00 00                	add    %al,(%eax)
c000b534:	f8                   	clc    
c000b535:	0a 00                	or     (%eax),%al
c000b537:	00 ff                	add    %bh,%bh
c000b539:	91                   	xchg   %eax,%ecx
c000b53a:	00 c0                	add    %al,%al
c000b53c:	31 00                	xor    %eax,(%eax)
c000b53e:	00 00                	add    %al,(%eax)
c000b540:	41                   	inc    %ecx
c000b541:	0e                   	push   %cs
c000b542:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000b548:	42                   	inc    %edx
c000b549:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000b54d:	67 c3                	addr16 ret 
c000b54f:	41                   	inc    %ecx
c000b550:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b554:	04 c5                	add    $0xc5,%al
c000b556:	00 00                	add    %al,(%eax)
c000b558:	20 00                	and    %al,(%eax)
c000b55a:	00 00                	add    %al,(%eax)
c000b55c:	20 0b                	and    %cl,(%ebx)
c000b55e:	00 00                	add    %al,(%eax)
c000b560:	30 92 00 c0 2e 00    	xor    %dl,0x2ec000(%edx)
c000b566:	00 00                	add    %al,(%eax)
c000b568:	41                   	inc    %ecx
c000b569:	0e                   	push   %cs
c000b56a:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000b570:	46                   	inc    %esi
c000b571:	83 03 5e             	addl   $0x5e,(%ebx)
c000b574:	c3                   	ret    
c000b575:	41                   	inc    %ecx
c000b576:	0c 04                	or     $0x4,%al
c000b578:	04 c5                	add    $0xc5,%al
c000b57a:	00 00                	add    %al,(%eax)
c000b57c:	1c 00                	sbb    $0x0,%al
c000b57e:	00 00                	add    %al,(%eax)
c000b580:	44                   	inc    %esp
c000b581:	0b 00                	or     (%eax),%eax
c000b583:	00 5e 92             	add    %bl,-0x6e(%esi)
c000b586:	00 c0                	add    %al,%al
c000b588:	27                   	daa    
c000b589:	00 00                	add    %al,(%eax)
c000b58b:	00 41 0e             	add    %al,0xe(%ecx)
c000b58e:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000b594:	5e                   	pop    %esi
c000b595:	0c 04                	or     $0x4,%al
c000b597:	04 c5                	add    $0xc5,%al
c000b599:	00 00                	add    %al,(%eax)
c000b59b:	00 34 00             	add    %dh,(%eax,%eax,1)
c000b59e:	00 00                	add    %al,(%eax)
c000b5a0:	64 0b 00             	or     %fs:(%eax),%eax
c000b5a3:	00 85 92 00 c0 8a    	add    %al,-0x753fff6e(%ebp)
c000b5a9:	00 00                	add    %al,(%eax)
c000b5ab:	00 41 0e             	add    %al,0xe(%ecx)
c000b5ae:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b5b4:	41                   	inc    %ecx
c000b5b5:	86 03                	xchg   %al,(%ebx)
c000b5b7:	44                   	inc    %esp
c000b5b8:	83 04 04 74          	addl   $0x74,(%esp,%eax,1)
c000b5bc:	00 00                	add    %al,(%eax)
c000b5be:	00 0a                	add    %cl,(%edx)
c000b5c0:	c3                   	ret    
c000b5c1:	44                   	inc    %esp
c000b5c2:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b5c6:	04 c5                	add    $0xc5,%al
c000b5c8:	45                   	inc    %ebp
c000b5c9:	0b 41 c3             	or     -0x3d(%ecx),%eax
c000b5cc:	41                   	inc    %ecx
c000b5cd:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b5d1:	04 c5                	add    $0xc5,%al
c000b5d3:	00 28                	add    %ch,(%eax)
c000b5d5:	00 00                	add    %al,(%eax)
c000b5d7:	00 9c 0b 00 00 0f 93 	add    %bl,-0x6cf10000(%ebx,%ecx,1)
c000b5de:	00 c0                	add    %al,%al
c000b5e0:	1f                   	pop    %ds
c000b5e1:	00 00                	add    %al,(%eax)
c000b5e3:	00 41 0e             	add    %al,0xe(%ecx)
c000b5e6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b5ec:	41                   	inc    %ecx
c000b5ed:	83 03 4a             	addl   $0x4a,(%ebx)
c000b5f0:	2e 04 04             	cs add $0x4,%al
c000b5f3:	06                   	push   %es
c000b5f4:	00 00                	add    %al,(%eax)
c000b5f6:	00 2e                	add    %ch,(%esi)
c000b5f8:	00 4a c5             	add    %cl,-0x3b(%edx)
c000b5fb:	0c 04                	or     $0x4,%al
c000b5fd:	04 c3                	add    $0xc3,%al
c000b5ff:	00 30                	add    %dh,(%eax)
c000b601:	00 00                	add    %al,(%eax)
c000b603:	00 c8                	add    %cl,%al
c000b605:	0b 00                	or     (%eax),%eax
c000b607:	00 2e                	add    %ch,(%esi)
c000b609:	93                   	xchg   %eax,%ebx
c000b60a:	00 c0                	add    %al,%al
c000b60c:	2f                   	das    
c000b60d:	00 00                	add    %al,(%eax)
c000b60f:	00 41 0e             	add    %al,0xe(%ecx)
c000b612:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000b618:	46                   	inc    %esi
c000b619:	87 03                	xchg   %eax,(%ebx)
c000b61b:	4d                   	dec    %ebp
c000b61c:	2e 04 04             	cs add $0x4,%al
c000b61f:	01 00                	add    %eax,(%eax)
c000b621:	00 00                	add    %al,(%eax)
c000b623:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000b627:	0c 46                	or     $0x46,%al
c000b629:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b62d:	00 44 c5 0c          	add    %al,0xc(%ebp,%eax,8)
c000b631:	04 04                	add    $0x4,%al
c000b633:	c7                   	(bad)  
c000b634:	38 00                	cmp    %al,(%eax)
c000b636:	00 00                	add    %al,(%eax)
c000b638:	fc                   	cld    
c000b639:	0b 00                	or     (%eax),%eax
c000b63b:	00 60 93             	add    %ah,-0x6d(%eax)
c000b63e:	00 c0                	add    %al,%al
c000b640:	47                   	inc    %edi
c000b641:	00 00                	add    %al,(%eax)
c000b643:	00 41 0e             	add    %al,0xe(%ecx)
c000b646:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b64c:	45                   	inc    %ebp
c000b64d:	83 04 86 03          	addl   $0x3,(%esi,%eax,4)
c000b651:	52                   	push   %edx
c000b652:	2e 04 04             	cs add $0x4,%al
c000b655:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000b65a:	08 42 2e             	or     %al,0x2e(%edx)
c000b65d:	0c 45                	or     $0x45,%al
c000b65f:	2e 10 4e 2e          	adc    %cl,%cs:0x2e(%esi)
c000b663:	00 50 c3             	add    %dl,-0x3d(%eax)
c000b666:	41                   	inc    %ecx
c000b667:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b66b:	04 c5                	add    $0xc5,%al
c000b66d:	00 00                	add    %al,(%eax)
c000b66f:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000b672:	00 00                	add    %al,(%eax)
c000b674:	38 0c 00             	cmp    %cl,(%eax,%eax,1)
c000b677:	00 a7 93 00 c0 4a    	add    %ah,0x4ac00093(%edi)
c000b67d:	00 00                	add    %al,(%eax)
c000b67f:	00 41 0e             	add    %al,0xe(%ecx)
c000b682:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b688:	46                   	inc    %esi
c000b689:	83 05 86 04 87 03 56 	addl   $0x56,0x3870486
c000b690:	2e 04 04             	cs add $0x4,%al
c000b693:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000b698:	08 42 2e             	or     %al,0x2e(%edx)
c000b69b:	0c 45                	or     $0x45,%al
c000b69d:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b6a1:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000b6a4:	41                   	inc    %ecx
c000b6a5:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b6a9:	0c 04                	or     $0x4,%al
c000b6ab:	04 c5                	add    $0xc5,%al
c000b6ad:	00 00                	add    %al,(%eax)
c000b6af:	00 3c 00             	add    %bh,(%eax,%eax,1)
c000b6b2:	00 00                	add    %al,(%eax)
c000b6b4:	78 0c                	js     c000b6c2 <_edata+0xc86>
c000b6b6:	00 00                	add    %al,(%eax)
c000b6b8:	f1                   	icebp  
c000b6b9:	93                   	xchg   %eax,%ebx
c000b6ba:	00 c0                	add    %al,%al
c000b6bc:	42                   	inc    %edx
c000b6bd:	00 00                	add    %al,(%eax)
c000b6bf:	00 41 0e             	add    %al,0xe(%ecx)
c000b6c2:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b6c8:	41                   	inc    %ecx
c000b6c9:	86 03                	xchg   %al,(%ebx)
c000b6cb:	44                   	inc    %esp
c000b6cc:	83 04 04 10          	addl   $0x10,(%esp,%eax,1)
c000b6d0:	00 00                	add    %al,(%eax)
c000b6d2:	00 2e                	add    %ch,(%esi)
c000b6d4:	04 04                	add    $0x4,%al
c000b6d6:	05 00 00 00 2e       	add    $0x2e000000,%eax
c000b6db:	08 42 2e             	or     %al,0x2e(%edx)
c000b6de:	0c 45                	or     $0x45,%al
c000b6e0:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b6e4:	00 53 c3             	add    %dl,-0x3d(%ebx)
c000b6e7:	41                   	inc    %ecx
c000b6e8:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b6ec:	04 c5                	add    $0xc5,%al
c000b6ee:	00 00                	add    %al,(%eax)
c000b6f0:	20 00                	and    %al,(%eax)
c000b6f2:	00 00                	add    %al,(%eax)
c000b6f4:	b8 0c 00 00 33       	mov    $0x3300000c,%eax
c000b6f9:	94                   	xchg   %eax,%esp
c000b6fa:	00 c0                	add    %al,%al
c000b6fc:	1a 00                	sbb    (%eax),%al
c000b6fe:	00 00                	add    %al,(%eax)
c000b700:	41                   	inc    %ecx
c000b701:	0e                   	push   %cs
c000b702:	08 85 02 44 0d 05    	or     %al,0x50d4402(%ebp)
c000b708:	44                   	inc    %esp
c000b709:	83 03 4f             	addl   $0x4f,(%ebx)
c000b70c:	c3                   	ret    
c000b70d:	41                   	inc    %ecx
c000b70e:	0c 04                	or     $0x4,%al
c000b710:	04 c5                	add    $0xc5,%al
c000b712:	00 00                	add    %al,(%eax)
c000b714:	28 00                	sub    %al,(%eax)
c000b716:	00 00                	add    %al,(%eax)
c000b718:	dc 0c 00             	fmull  (%eax,%eax,1)
c000b71b:	00 68 94             	add    %ch,-0x6c(%eax)
c000b71e:	00 c0                	add    %al,%al
c000b720:	1a 00                	sbb    (%eax),%al
c000b722:	00 00                	add    %al,(%eax)
c000b724:	41                   	inc    %ecx
c000b725:	0e                   	push   %cs
c000b726:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b72c:	41                   	inc    %ecx
c000b72d:	86 03                	xchg   %al,(%ebx)
c000b72f:	44                   	inc    %esp
c000b730:	83 04 04 0e          	addl   $0xe,(%esp,%eax,1)
c000b734:	00 00                	add    %al,(%eax)
c000b736:	00 c3                	add    %al,%bl
c000b738:	41                   	inc    %ecx
c000b739:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b73d:	04 c5                	add    $0xc5,%al
c000b73f:	00 48 00             	add    %cl,0x0(%eax)
c000b742:	00 00                	add    %al,(%eax)
c000b744:	08 0d 00 00 82 94    	or     %cl,0x94820000
c000b74a:	00 c0                	add    %al,%al
c000b74c:	50                   	push   %eax
c000b74d:	00 00                	add    %al,(%eax)
c000b74f:	00 41 0e             	add    %al,0xe(%ecx)
c000b752:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b758:	41                   	inc    %ecx
c000b759:	86 03                	xchg   %al,(%ebx)
c000b75b:	44                   	inc    %esp
c000b75c:	83 04 04 04          	addl   $0x4,(%esp,%eax,1)
c000b760:	00 00                	add    %al,(%eax)
c000b762:	00 2e                	add    %ch,(%esi)
c000b764:	04 04                	add    $0x4,%al
c000b766:	02 00                	add    (%eax),%al
c000b768:	00 00                	add    %al,(%eax)
c000b76a:	2e 08 42 2e          	or     %al,%cs:0x2e(%edx)
c000b76e:	0c 41                	or     $0x41,%al
c000b770:	2e 10 49 2e          	adc    %cl,%cs:0x2e(%ecx)
c000b774:	0c 41                	or     $0x41,%al
c000b776:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000b77a:	0c 41                	or     $0x41,%al
c000b77c:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b780:	00 66 c3             	add    %ah,-0x3d(%esi)
c000b783:	41                   	inc    %ecx
c000b784:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b788:	04 c5                	add    $0xc5,%al
c000b78a:	00 00                	add    %al,(%eax)
c000b78c:	1c 00                	sbb    $0x0,%al
c000b78e:	00 00                	add    %al,(%eax)
c000b790:	54                   	push   %esp
c000b791:	0d 00 00 d2 94       	or     $0x94d20000,%eax
c000b796:	00 c0                	add    %al,%al
c000b798:	0c 00                	or     $0x0,%al
c000b79a:	00 00                	add    %al,(%eax)
c000b79c:	41                   	inc    %ecx
c000b79d:	0e                   	push   %cs
c000b79e:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b7a4:	48                   	dec    %eax
c000b7a5:	0c 04                	or     $0x4,%al
c000b7a7:	04 c5                	add    $0xc5,%al
c000b7a9:	00 00                	add    %al,(%eax)
c000b7ab:	00 60 00             	add    %ah,0x0(%eax)
c000b7ae:	00 00                	add    %al,(%eax)
c000b7b0:	74 0d                	je     c000b7bf <_edata+0xd83>
c000b7b2:	00 00                	add    %al,(%eax)
c000b7b4:	de 94 00 c0 6c 00 00 	ficom  0x6cc0(%eax,%eax,1)
c000b7bb:	00 41 0e             	add    %al,0xe(%ecx)
c000b7be:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b7c4:	43                   	inc    %ebx
c000b7c5:	2e 0c 42             	cs or  $0x42,%al
c000b7c8:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b7cc:	14 42                	adc    $0x42,%al
c000b7ce:	2e 18 41 2e          	sbb    %al,%cs:0x2e(%ecx)
c000b7d2:	1c 45                	sbb    $0x45,%al
c000b7d4:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b7d8:	0c 42                	or     $0x42,%al
c000b7da:	2e 10 4a 2e          	adc    %cl,%cs:0x2e(%edx)
c000b7de:	14 42                	adc    $0x42,%al
c000b7e0:	2e 18 41 2e          	sbb    %al,%cs:0x2e(%ecx)
c000b7e4:	1c 45                	sbb    $0x45,%al
c000b7e6:	2e 20 48 2e          	and    %cl,%cs:0x2e(%eax)
c000b7ea:	00 46 2e             	add    %al,0x2e(%esi)
c000b7ed:	04 04                	add    $0x4,%al
c000b7ef:	02 00                	add    (%eax),%al
c000b7f1:	00 00                	add    %al,(%eax)
c000b7f3:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b7f7:	0c 41                	or     $0x41,%al
c000b7f9:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000b7fd:	0c 41                	or     $0x41,%al
c000b7ff:	2e 08 45 2e          	or     %al,%cs:0x2e(%ebp)
c000b803:	0c 45                	or     $0x45,%al
c000b805:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b809:	00 41 c5             	add    %al,-0x3b(%ecx)
c000b80c:	0c 04                	or     $0x4,%al
c000b80e:	04 00                	add    $0x0,%al
c000b810:	1c 00                	sbb    $0x0,%al
c000b812:	00 00                	add    %al,(%eax)
c000b814:	d8 0d 00 00 4a 95    	fmuls  0x954a0000
c000b81a:	00 c0                	add    %al,%al
c000b81c:	56                   	push   %esi
c000b81d:	00 00                	add    %al,(%eax)
c000b81f:	00 41 0e             	add    %al,0xe(%ecx)
c000b822:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b828:	02 52 0c             	add    0xc(%edx),%dl
c000b82b:	04 04                	add    $0x4,%al
c000b82d:	c5 00                	lds    (%eax),%eax
c000b82f:	00 60 00             	add    %ah,0x0(%eax)
c000b832:	00 00                	add    %al,(%eax)
c000b834:	f8                   	clc    
c000b835:	0d 00 00 a0 95       	or     $0x95a00000,%eax
c000b83a:	00 c0                	add    %al,%al
c000b83c:	5a                   	pop    %edx
c000b83d:	00 00                	add    %al,(%eax)
c000b83f:	00 41 0e             	add    %al,0xe(%ecx)
c000b842:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b848:	44                   	inc    %esp
c000b849:	2e 0c 83             	cs or  $0x83,%al
c000b84c:	03 45 2e             	add    0x2e(%ebp),%eax
c000b84f:	10 48 2e             	adc    %cl,0x2e(%eax)
c000b852:	04 04                	add    $0x4,%al
c000b854:	04 00                	add    $0x0,%al
c000b856:	00 00                	add    %al,(%eax)
c000b858:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000b85c:	0c 47                	or     $0x47,%al
c000b85e:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b862:	04 04                	add    $0x4,%al
c000b864:	03 00                	add    (%eax),%eax
c000b866:	00 00                	add    %al,(%eax)
c000b868:	2e 08 43 2e          	or     %al,%cs:0x2e(%ebx)
c000b86c:	0c 43                	or     $0x43,%al
c000b86e:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b872:	0c 41                	or     $0x41,%al
c000b874:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b878:	0c 45                	or     $0x45,%al
c000b87a:	2e 10 46 2e          	adc    %al,%cs:0x2e(%esi)
c000b87e:	0c 41                	or     $0x41,%al
c000b880:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b884:	0c 45                	or     $0x45,%al
c000b886:	2e 10 4c c5 0c       	adc    %cl,%cs:0xc(%ebp,%eax,8)
c000b88b:	04 04                	add    $0x4,%al
c000b88d:	c3                   	ret    
c000b88e:	41                   	inc    %ecx
c000b88f:	13 03                	adc    (%ebx),%eax
c000b891:	2e 00 00             	add    %al,%cs:(%eax)
c000b894:	4c                   	dec    %esp
c000b895:	00 00                	add    %al,(%eax)
c000b897:	00 5c 0e 00          	add    %bl,0x0(%esi,%ecx,1)
c000b89b:	00 fa                	add    %bh,%dl
c000b89d:	95                   	xchg   %eax,%ebp
c000b89e:	00 c0                	add    %al,%al
c000b8a0:	61                   	popa   
c000b8a1:	00 00                	add    %al,(%eax)
c000b8a3:	00 41 0e             	add    %al,0xe(%ecx)
c000b8a6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b8ac:	52                   	push   %edx
c000b8ad:	2e 04 04             	cs add $0x4,%al
c000b8b0:	01 00                	add    %eax,(%eax)
c000b8b2:	00 00                	add    %al,(%eax)
c000b8b4:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000b8b9:	45                   	inc    %ebp
c000b8ba:	2e 10 4b 2e          	adc    %cl,%cs:0x2e(%ebx)
c000b8be:	00 4e 2e             	add    %cl,0x2e(%esi)
c000b8c1:	04 04                	add    $0x4,%al
c000b8c3:	01 00                	add    %eax,(%eax)
c000b8c5:	00 00                	add    %al,(%eax)
c000b8c7:	2e 08 44 2e 0c       	or     %al,%cs:0xc(%esi,%ebp,1)
c000b8cc:	45                   	inc    %ebp
c000b8cd:	2e 10 50 2e          	adc    %dl,%cs:0x2e(%eax)
c000b8d1:	0c 41                	or     $0x41,%al
c000b8d3:	2e 08 41 2e          	or     %al,%cs:0x2e(%ecx)
c000b8d7:	0c 43                	or     $0x43,%al
c000b8d9:	2e 10 48 2e          	adc    %cl,%cs:0x2e(%eax)
c000b8dd:	00 41 c5             	add    %al,-0x3b(%ecx)
c000b8e0:	0c 04                	or     $0x4,%al
c000b8e2:	04 00                	add    $0x0,%al
c000b8e4:	28 00                	sub    %al,(%eax)
c000b8e6:	00 00                	add    %al,(%eax)
c000b8e8:	ac                   	lods   %ds:(%esi),%al
c000b8e9:	0e                   	push   %cs
c000b8ea:	00 00                	add    %al,(%eax)
c000b8ec:	5b                   	pop    %ebx
c000b8ed:	96                   	xchg   %eax,%esi
c000b8ee:	00 c0                	add    %al,%al
c000b8f0:	27                   	daa    
c000b8f1:	00 00                	add    %al,(%eax)
c000b8f3:	00 41 0e             	add    %al,0xe(%ecx)
c000b8f6:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b8fc:	41                   	inc    %ecx
c000b8fd:	86 03                	xchg   %al,(%ebx)
c000b8ff:	44                   	inc    %esp
c000b900:	83 04 04 18          	addl   $0x18,(%esp,%eax,1)
c000b904:	00 00                	add    %al,(%eax)
c000b906:	00 c3                	add    %al,%bl
c000b908:	41                   	inc    %ecx
c000b909:	c6 41 0c 04          	movb   $0x4,0xc(%ecx)
c000b90d:	04 c5                	add    $0xc5,%al
c000b90f:	00 28                	add    %ch,(%eax)
c000b911:	00 00                	add    %al,(%eax)
c000b913:	00 d8                	add    %bl,%al
c000b915:	0e                   	push   %cs
c000b916:	00 00                	add    %al,(%eax)
c000b918:	84 96 00 c0 ac 00    	test   %dl,0xacc000(%esi)
c000b91e:	00 00                	add    %al,(%eax)
c000b920:	41                   	inc    %ecx
c000b921:	0e                   	push   %cs
c000b922:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c000b928:	42                   	inc    %edx
c000b929:	86 04 87             	xchg   %al,(%edi,%eax,4)
c000b92c:	03 49 83             	add    -0x7d(%ecx),%ecx
c000b92f:	05 02 96 c3 41       	add    $0x41c39602,%eax
c000b934:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
c000b938:	0c 04                	or     $0x4,%al
c000b93a:	04 c5                	add    $0xc5,%al
c000b93c:	1c 00                	sbb    $0x0,%al
c000b93e:	00 00                	add    %al,(%eax)
c000b940:	04 0f                	add    $0xf,%al
c000b942:	00 00                	add    %al,(%eax)
c000b944:	30 97 00 c0 18 00    	xor    %dl,0x18c000(%edi)
c000b94a:	00 00                	add    %al,(%eax)
c000b94c:	41                   	inc    %ecx
c000b94d:	0e                   	push   %cs
c000b94e:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000b954:	4f                   	dec    %edi
c000b955:	0c 04                	or     $0x4,%al
c000b957:	04 c5                	add    $0xc5,%al
c000b959:	00 00                	add    %al,(%eax)
c000b95b:	00 24 00             	add    %ah,(%eax,%eax,1)
c000b95e:	00 00                	add    %al,(%eax)
c000b960:	24 0f                	and    $0xf,%al
c000b962:	00 00                	add    %al,(%eax)
c000b964:	48                   	dec    %eax
c000b965:	97                   	xchg   %eax,%edi
c000b966:	00 c0                	add    %al,%al
c000b968:	2f                   	das    
c000b969:	00 00                	add    %al,(%eax)
c000b96b:	00 41 0e             	add    %al,0xe(%ecx)
c000b96e:	08 85 02 47 0d 05    	or     %al,0x50d4702(%ebp)
c000b974:	5c                   	pop    %esp
c000b975:	0a c5                	or     %ch,%al
c000b977:	0c 04                	or     $0x4,%al
c000b979:	04 45                	add    $0x45,%al
c000b97b:	0b 45 c5             	or     -0x3b(%ebp),%eax
c000b97e:	0c 04                	or     $0x4,%al
c000b980:	04 00                	add    $0x0,%al
	...

Disassembly of section .rodata:

c000b984 <_rodata>:
c000b984:	48                   	dec    %eax
c000b985:	65 6c                	gs insb (%dx),%es:(%edi)
c000b987:	6c                   	insb   (%dx),%es:(%edi)
c000b988:	6f                   	outsl  %ds:(%esi),(%dx)
c000b989:	20 57 6f             	and    %dl,0x6f(%edi)
c000b98c:	72 6c                	jb     c000b9fa <__func__.857+0x6>
c000b98e:	64 21 00             	and    %eax,%fs:(%eax)
c000b991:	48                   	dec    %eax
c000b992:	65 6c                	gs insb (%dx),%es:(%edi)
c000b994:	6c                   	insb   (%dx),%es:(%edi)
c000b995:	6f                   	outsl  %ds:(%esi),(%dx)
c000b996:	20 77 6f             	and    %dh,0x6f(%edi)
c000b999:	72 6c                	jb     c000ba07 <__func__.874+0x3>
c000b99b:	64 0a 00             	or     %fs:(%eax),%al
c000b99e:	6b 5f 61 00          	imul   $0x0,0x61(%edi),%ebx
c000b9a2:	6b 5f 62 00          	imul   $0x0,0x62(%edi),%ebx
c000b9a6:	00 00                	add    %al,(%eax)
c000b9a8:	62 79 74             	bound  %edi,0x74(%ecx)
c000b9ab:	65 5f                	gs pop %edi
c000b9ad:	69 6e 64 65 78 20 3c 	imul   $0x3c207865,0x64(%esi),%ebp
c000b9b4:	20 28                	and    %ch,(%eax)
c000b9b6:	62 74 6d 70          	bound  %esi,0x70(%ebp,%ebp,2)
c000b9ba:	2d 3e 62 74 6d       	sub    $0x6d74623e,%eax
c000b9bf:	70 5f                	jo     c000ba20 <__func__.874+0x1c>
c000b9c1:	62 79 74             	bound  %edi,0x74(%ecx)
c000b9c4:	65 73 5f             	gs jae c000ba26 <__func__.874+0x22>
c000b9c7:	6c                   	insb   (%dx),%es:(%edi)
c000b9c8:	65 6e                	outsb  %gs:(%esi),(%dx)
c000b9ca:	29 00                	sub    %eax,(%eax)
c000b9cc:	6c                   	insb   (%dx),%es:(%edi)
c000b9cd:	69 62 2f 62 69 74 6d 	imul   $0x6d746962,0x2f(%edx),%esp
c000b9d4:	61                   	popa   
c000b9d5:	70 2e                	jo     c000ba05 <__func__.874+0x1>
c000b9d7:	63 00                	arpl   %ax,(%eax)
c000b9d9:	76 61                	jbe    c000ba3c <__func__.874+0x38>
c000b9db:	6c                   	insb   (%dx),%es:(%edi)
c000b9dc:	75 65                	jne    c000ba43 <__func__.874+0x3f>
c000b9de:	20 3d 3d 20 30 20    	and    %bh,0x2030203d
c000b9e4:	7c 7c                	jl     c000ba62 <__func__.874+0x5e>
c000b9e6:	20 76 61             	and    %dh,0x61(%esi)
c000b9e9:	6c                   	insb   (%dx),%es:(%edi)
c000b9ea:	75 65                	jne    c000ba51 <__func__.874+0x4d>
c000b9ec:	20 3d 3d 20 31 00    	and    %bh,0x31203d
	...

c000b9f4 <__func__.857>:
c000b9f4:	62 69 74             	bound  %ebp,0x74(%ecx)
c000b9f7:	6d                   	insl   (%dx),%es:(%edi)
c000b9f8:	61                   	popa   
c000b9f9:	70 5f                	jo     c000ba5a <__func__.874+0x56>
c000b9fb:	61                   	popa   
c000b9fc:	6c                   	insb   (%dx),%es:(%edi)
c000b9fd:	6c                   	insb   (%dx),%es:(%edi)
c000b9fe:	6f                   	outsl  %ds:(%esi),(%dx)
c000b9ff:	63 00                	arpl   %ax,(%eax)
c000ba01:	00 00                	add    %al,(%eax)
	...

c000ba04 <__func__.874>:
c000ba04:	62 69 74             	bound  %ebp,0x74(%ecx)
c000ba07:	6d                   	insl   (%dx),%es:(%edi)
c000ba08:	61                   	popa   
c000ba09:	70 5f                	jo     c000ba6a <__func__.874+0x66>
c000ba0b:	73 65                	jae    c000ba72 <__func__.874+0x6e>
c000ba0d:	74 00                	je     c000ba0f <__func__.874+0xb>
c000ba0f:	45                   	inc    %ebp
c000ba10:	72 72                	jb     c000ba84 <__func__.874+0x80>
c000ba12:	6f                   	outsl  %ds:(%esi),(%dx)
c000ba13:	72 0a                	jb     c000ba1f <__func__.874+0x1b>
c000ba15:	00 46 69             	add    %al,0x69(%esi)
c000ba18:	6c                   	insb   (%dx),%es:(%edi)
c000ba19:	65 3a 00             	cmp    %gs:(%eax),%al
c000ba1c:	49                   	dec    %ecx
c000ba1d:	6e                   	outsb  %ds:(%esi),(%dx)
c000ba1e:	20 66 75             	and    %ah,0x75(%esi)
c000ba21:	6e                   	outsb  %ds:(%esi),(%dx)
c000ba22:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c000ba26:	6e                   	outsb  %ds:(%esi),(%dx)
c000ba27:	3a 20                	cmp    (%eax),%ah
c000ba29:	00 4c 69 6e          	add    %cl,0x6e(%ecx,%ebp,2)
c000ba2d:	65 3a 00             	cmp    %gs:(%eax),%al
c000ba30:	43                   	inc    %ebx
c000ba31:	6f                   	outsl  %ds:(%esi),(%dx)
c000ba32:	6e                   	outsb  %ds:(%esi),(%dx)
c000ba33:	64 69 74 69 6f 6e 3a 	imul   $0x203a6e,%fs:0x6f(%ecx,%ebp,2),%esi
c000ba3a:	20 00 
c000ba3c:	69 6e 74 72 3a 00 23 	imul   $0x23003a72,0x74(%esi),%ebp
c000ba43:	44                   	inc    %esp
c000ba44:	45                   	inc    %ebp
c000ba45:	20 44 69 76          	and    %al,0x76(%ecx,%ebp,2)
c000ba49:	69 64 65 20 45 72 72 	imul   $0x6f727245,0x20(%ebp,%eiz,2),%esp
c000ba50:	6f 
c000ba51:	72 00                	jb     c000ba53 <__func__.874+0x4f>
c000ba53:	23 44 42 20          	and    0x20(%edx,%eax,2),%eax
c000ba57:	44                   	inc    %esp
c000ba58:	65 62 75 67          	bound  %esi,%gs:0x67(%ebp)
c000ba5c:	20 45 78             	and    %al,0x78(%ebp)
c000ba5f:	63 65 70             	arpl   %sp,0x70(%ebp)
c000ba62:	74 69                	je     c000bacd <__func__.874+0xc9>
c000ba64:	6f                   	outsl  %ds:(%esi),(%dx)
c000ba65:	6e                   	outsb  %ds:(%esi),(%dx)
c000ba66:	00 4e 4d             	add    %cl,0x4d(%esi)
c000ba69:	49                   	dec    %ecx
c000ba6a:	20 49 6e             	and    %cl,0x6e(%ecx)
c000ba6d:	74 65                	je     c000bad4 <__func__.874+0xd0>
c000ba6f:	72 72                	jb     c000bae3 <__func__.874+0xdf>
c000ba71:	75 70                	jne    c000bae3 <__func__.874+0xdf>
c000ba73:	74 00                	je     c000ba75 <__func__.874+0x71>
c000ba75:	23 42 50             	and    0x50(%edx),%eax
c000ba78:	20 42 72             	and    %al,0x72(%edx)
c000ba7b:	65 61                	gs popa 
c000ba7d:	6b 70 6f 69          	imul   $0x69,0x6f(%eax),%esi
c000ba81:	6e                   	outsb  %ds:(%esi),(%dx)
c000ba82:	74 20                	je     c000baa4 <__func__.874+0xa0>
c000ba84:	45                   	inc    %ebp
c000ba85:	78 63                	js     c000baea <__func__.874+0xe6>
c000ba87:	65 70 74             	gs jo  c000bafe <__func__.874+0xfa>
c000ba8a:	69 6f 6e 00 23 4f 46 	imul   $0x464f2300,0x6e(%edi),%ebp
c000ba91:	20 4f 76             	and    %cl,0x76(%edi)
c000ba94:	65 72 66             	gs jb  c000bafd <__func__.874+0xf9>
c000ba97:	6c                   	insb   (%dx),%es:(%edi)
c000ba98:	6f                   	outsl  %ds:(%esi),(%dx)
c000ba99:	77 20                	ja     c000babb <__func__.874+0xb7>
c000ba9b:	45                   	inc    %ebp
c000ba9c:	78 63                	js     c000bb01 <__func__.874+0xfd>
c000ba9e:	65 70 74             	gs jo  c000bb15 <__func__.874+0x111>
c000baa1:	69 6f 6e 00 23 42 52 	imul   $0x52422300,0x6e(%edi),%ebp
c000baa8:	20 42 4f             	and    %al,0x4f(%edx)
c000baab:	55                   	push   %ebp
c000baac:	4e                   	dec    %esi
c000baad:	44                   	inc    %esp
c000baae:	20 52 61             	and    %dl,0x61(%edx)
c000bab1:	6e                   	outsb  %ds:(%esi),(%dx)
c000bab2:	67 65 20 45 78       	and    %al,%gs:0x78(%di)
c000bab7:	63 65 65             	arpl   %sp,0x65(%ebp)
c000baba:	64 65 64 20 45 78    	fs gs and %al,%fs:0x78(%ebp)
c000bac0:	63 65 70             	arpl   %sp,0x70(%ebp)
c000bac3:	74 69                	je     c000bb2e <__func__.874+0x12a>
c000bac5:	6f                   	outsl  %ds:(%esi),(%dx)
c000bac6:	6e                   	outsb  %ds:(%esi),(%dx)
c000bac7:	00 23                	add    %ah,(%ebx)
c000bac9:	55                   	push   %ebp
c000baca:	44                   	inc    %esp
c000bacb:	20 49 6e             	and    %cl,0x6e(%ecx)
c000bace:	76 61                	jbe    c000bb31 <__func__.874+0x12d>
c000bad0:	6c                   	insb   (%dx),%es:(%edi)
c000bad1:	69 64 20 4f 70 63 6f 	imul   $0x646f6370,0x4f(%eax,%eiz,1),%esp
c000bad8:	64 
c000bad9:	65 20 45 78          	and    %al,%gs:0x78(%ebp)
c000badd:	63 65 70             	arpl   %sp,0x70(%ebp)
c000bae0:	74 69                	je     c000bb4b <__func__.874+0x147>
c000bae2:	6f                   	outsl  %ds:(%esi),(%dx)
c000bae3:	6e                   	outsb  %ds:(%esi),(%dx)
c000bae4:	00 23                	add    %ah,(%ebx)
c000bae6:	4e                   	dec    %esi
c000bae7:	4d                   	dec    %ebp
c000bae8:	20 44 65 76          	and    %al,0x76(%ebp,%eiz,2)
c000baec:	69 63 65 20 4e 6f 74 	imul   $0x746f4e20,0x65(%ebx),%esp
c000baf3:	20 41 76             	and    %al,0x76(%ecx)
c000baf6:	61                   	popa   
c000baf7:	69 6c 61 62 6c 65 20 	imul   $0x4520656c,0x62(%ecx,%eiz,2),%ebp
c000bafe:	45 
c000baff:	78 63                	js     c000bb64 <__func__.874+0x160>
c000bb01:	65 70 74             	gs jo  c000bb78 <__func__.874+0x174>
c000bb04:	69 6f 6e 00 23 44 46 	imul   $0x46442300,0x6e(%edi),%ebp
c000bb0b:	20 44 6f 75          	and    %al,0x75(%edi,%ebp,2)
c000bb0f:	62 6c 65 20          	bound  %ebp,0x20(%ebp,%eiz,2)
c000bb13:	46                   	inc    %esi
c000bb14:	61                   	popa   
c000bb15:	75 6c                	jne    c000bb83 <__func__.874+0x17f>
c000bb17:	74 20                	je     c000bb39 <__func__.874+0x135>
c000bb19:	45                   	inc    %ebp
c000bb1a:	78 63                	js     c000bb7f <__func__.874+0x17b>
c000bb1c:	65 70 74             	gs jo  c000bb93 <__func__.874+0x18f>
c000bb1f:	69 6f 6e 00 43 6f 70 	imul   $0x706f4300,0x6e(%edi),%ebp
c000bb26:	72 6f                	jb     c000bb97 <__func__.874+0x193>
c000bb28:	63 65 73             	arpl   %sp,0x73(%ebp)
c000bb2b:	73 6f                	jae    c000bb9c <__func__.874+0x198>
c000bb2d:	72 20                	jb     c000bb4f <__func__.874+0x14b>
c000bb2f:	53                   	push   %ebx
c000bb30:	65 67 6d             	gs insl (%dx),%es:(%di)
c000bb33:	65 6e                	outsb  %gs:(%esi),(%dx)
c000bb35:	74 20                	je     c000bb57 <__func__.874+0x153>
c000bb37:	4f                   	dec    %edi
c000bb38:	76 65                	jbe    c000bb9f <__func__.874+0x19b>
c000bb3a:	72 72                	jb     c000bbae <__func__.874+0x1aa>
c000bb3c:	75 6e                	jne    c000bbac <__func__.874+0x1a8>
c000bb3e:	00 23                	add    %ah,(%ebx)
c000bb40:	54                   	push   %esp
c000bb41:	53                   	push   %ebx
c000bb42:	20 49 6e             	and    %cl,0x6e(%ecx)
c000bb45:	76 61                	jbe    c000bba8 <__func__.874+0x1a4>
c000bb47:	6c                   	insb   (%dx),%es:(%edi)
c000bb48:	69 64 20 54 53 53 20 	imul   $0x45205353,0x54(%eax,%eiz,1),%esp
c000bb4f:	45 
c000bb50:	78 63                	js     c000bbb5 <__func__.874+0x1b1>
c000bb52:	65 70 74             	gs jo  c000bbc9 <__func__.874+0x1c5>
c000bb55:	69 6f 6e 00 23 4e 50 	imul   $0x504e2300,0x6e(%edi),%ebp
c000bb5c:	20 53 65             	and    %dl,0x65(%ebx)
c000bb5f:	67 6d                	insl   (%dx),%es:(%di)
c000bb61:	65 6e                	outsb  %gs:(%esi),(%dx)
c000bb63:	74 20                	je     c000bb85 <__func__.874+0x181>
c000bb65:	4e                   	dec    %esi
c000bb66:	6f                   	outsl  %ds:(%esi),(%dx)
c000bb67:	74 20                	je     c000bb89 <__func__.874+0x185>
c000bb69:	50                   	push   %eax
c000bb6a:	72 65                	jb     c000bbd1 <__func__.874+0x1cd>
c000bb6c:	73 65                	jae    c000bbd3 <__func__.874+0x1cf>
c000bb6e:	6e                   	outsb  %ds:(%esi),(%dx)
c000bb6f:	74 00                	je     c000bb71 <__func__.874+0x16d>
c000bb71:	23 53 53             	and    0x53(%ebx),%edx
c000bb74:	20 53 74             	and    %dl,0x74(%ebx)
c000bb77:	61                   	popa   
c000bb78:	63 6b 20             	arpl   %bp,0x20(%ebx)
c000bb7b:	46                   	inc    %esi
c000bb7c:	61                   	popa   
c000bb7d:	75 6c                	jne    c000bbeb <__func__.874+0x1e7>
c000bb7f:	74 20                	je     c000bba1 <__func__.874+0x19d>
c000bb81:	45                   	inc    %ebp
c000bb82:	78 63                	js     c000bbe7 <__func__.874+0x1e3>
c000bb84:	65 70 74             	gs jo  c000bbfb <__func__.874+0x1f7>
c000bb87:	69 6f 6e 00 23 47 50 	imul   $0x50472300,0x6e(%edi),%ebp
c000bb8e:	20 47 65             	and    %al,0x65(%edi)
c000bb91:	6e                   	outsb  %ds:(%esi),(%dx)
c000bb92:	65 72 61             	gs jb  c000bbf6 <__func__.874+0x1f2>
c000bb95:	6c                   	insb   (%dx),%es:(%edi)
c000bb96:	20 50 72             	and    %dl,0x72(%eax)
c000bb99:	6f                   	outsl  %ds:(%esi),(%dx)
c000bb9a:	74 65                	je     c000bc01 <__func__.874+0x1fd>
c000bb9c:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
c000bba0:	6e                   	outsb  %ds:(%esi),(%dx)
c000bba1:	20 45 78             	and    %al,0x78(%ebp)
c000bba4:	63 65 70             	arpl   %sp,0x70(%ebp)
c000bba7:	74 69                	je     c000bc12 <__func__.874+0x20e>
c000bba9:	6f                   	outsl  %ds:(%esi),(%dx)
c000bbaa:	6e                   	outsb  %ds:(%esi),(%dx)
c000bbab:	00 23                	add    %ah,(%ebx)
c000bbad:	50                   	push   %eax
c000bbae:	46                   	inc    %esi
c000bbaf:	20 50 61             	and    %dl,0x61(%eax)
c000bbb2:	67 65 2d 46 61 75 6c 	addr16 gs sub $0x6c756146,%eax
c000bbb9:	74 20                	je     c000bbdb <__func__.874+0x1d7>
c000bbbb:	45                   	inc    %ebp
c000bbbc:	78 63                	js     c000bc21 <__func__.874+0x21d>
c000bbbe:	65 70 74             	gs jo  c000bc35 <__func__.874+0x231>
c000bbc1:	69 6f 6e 00 52 65 73 	imul   $0x73655200,0x6e(%edi),%ebp
c000bbc8:	65 72 76             	gs jb  c000bc41 <__func__.874+0x23d>
c000bbcb:	65 64 00 23          	gs add %ah,%fs:(%ebx)
c000bbcf:	4d                   	dec    %ebp
c000bbd0:	46                   	inc    %esi
c000bbd1:	20 78 38             	and    %bh,0x38(%eax)
c000bbd4:	37                   	aaa    
c000bbd5:	20 46 50             	and    %al,0x50(%esi)
c000bbd8:	55                   	push   %ebp
c000bbd9:	20 46 6c             	and    %al,0x6c(%esi)
c000bbdc:	6f                   	outsl  %ds:(%esi),(%dx)
c000bbdd:	61                   	popa   
c000bbde:	74 69                	je     c000bc49 <__func__.874+0x245>
c000bbe0:	6e                   	outsb  %ds:(%esi),(%dx)
c000bbe1:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000bbe7:	74 20                	je     c000bc09 <__func__.874+0x205>
c000bbe9:	45                   	inc    %ebp
c000bbea:	72 72                	jb     c000bc5e <digits.947+0x12>
c000bbec:	6f                   	outsl  %ds:(%esi),(%dx)
c000bbed:	72 00                	jb     c000bbef <__func__.874+0x1eb>
c000bbef:	23 41 43             	and    0x43(%ecx),%eax
c000bbf2:	20 41 6c             	and    %al,0x6c(%ecx)
c000bbf5:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%edi),%esp
c000bbfc:	20 43 68             	and    %al,0x68(%ebx)
c000bbff:	65 63 6b 20          	arpl   %bp,%gs:0x20(%ebx)
c000bc03:	45                   	inc    %ebp
c000bc04:	78 63                	js     c000bc69 <digits.947+0x1d>
c000bc06:	65 70 74             	gs jo  c000bc7d <digits.947+0x31>
c000bc09:	69 6f 6e 00 23 4d 43 	imul   $0x434d2300,0x6e(%edi),%ebp
c000bc10:	20 4d 61             	and    %cl,0x61(%ebp)
c000bc13:	63 68 69             	arpl   %bp,0x69(%eax)
c000bc16:	6e                   	outsb  %ds:(%esi),(%dx)
c000bc17:	65 2d 43 68 65 63    	gs sub $0x63656843,%eax
c000bc1d:	6b 20 45             	imul   $0x45,(%eax),%esp
c000bc20:	78 63                	js     c000bc85 <digits.947+0x39>
c000bc22:	65 70 74             	gs jo  c000bc99 <digits.947+0x4d>
c000bc25:	69 6f 6e 00 23 58 46 	imul   $0x46582300,0x6e(%edi),%ebp
c000bc2c:	20 53 49             	and    %dl,0x49(%ebx)
c000bc2f:	4d                   	dec    %ebp
c000bc30:	44                   	inc    %esp
c000bc31:	20 46 6c             	and    %al,0x6c(%esi)
c000bc34:	6f                   	outsl  %ds:(%esi),(%dx)
c000bc35:	61                   	popa   
c000bc36:	74 69                	je     c000bca1 <digits.947+0x55>
c000bc38:	6e                   	outsb  %ds:(%esi),(%dx)
c000bc39:	67 2d 50 6f 69 6e    	addr16 sub $0x6e696f50,%eax
c000bc3f:	74 20                	je     c000bc61 <digits.947+0x15>
c000bc41:	45                   	inc    %ebp
c000bc42:	78 63                	js     c000bca7 <digits.947+0x5b>
c000bc44:	65 70 74             	gs jo  c000bcbb <digits.947+0x6f>
c000bc47:	69 6f 6e 00 00 30 31 	imul   $0x31300000,0x6e(%edi),%ebp

c000bc4c <digits.947>:
c000bc4c:	30 31                	xor    %dh,(%ecx)
c000bc4e:	32 33                	xor    (%ebx),%dh
c000bc50:	34 35                	xor    $0x35,%al
c000bc52:	36 37                	ss aaa 
c000bc54:	38 39                	cmp    %bh,(%ecx)
c000bc56:	41                   	inc    %ecx
c000bc57:	42                   	inc    %edx
c000bc58:	43                   	inc    %ebx
c000bc59:	44                   	inc    %esp
c000bc5a:	45                   	inc    %ebp
c000bc5b:	46                   	inc    %esi
c000bc5c:	47                   	inc    %edi
c000bc5d:	48                   	dec    %eax
c000bc5e:	49                   	dec    %ecx
c000bc5f:	4a                   	dec    %edx
c000bc60:	4b                   	dec    %ebx
c000bc61:	4c                   	dec    %esp
c000bc62:	4d                   	dec    %ebp
c000bc63:	4e                   	dec    %esi
c000bc64:	4f                   	dec    %edi
c000bc65:	50                   	push   %eax
c000bc66:	51                   	push   %ecx
c000bc67:	52                   	push   %edx
c000bc68:	53                   	push   %ebx
c000bc69:	54                   	push   %esp
c000bc6a:	55                   	push   %ebp
c000bc6b:	56                   	push   %esi
c000bc6c:	57                   	push   %edi
c000bc6d:	58                   	pop    %eax
c000bc6e:	59                   	pop    %ecx
c000bc6f:	5a                   	pop    %edx
c000bc70:	00 00                	add    %al,(%eax)
c000bc72:	00 00                	add    %al,(%eax)
c000bc74:	64 73 74             	fs jae c000bceb <_erodata+0x3>
c000bc77:	5f                   	pop    %edi
c000bc78:	5f                   	pop    %edi
c000bc79:	20 21                	and    %ah,(%ecx)
c000bc7b:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000bc80:	4c                   	dec    %esp
c000bc81:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
c000bc85:	2f                   	das    
c000bc86:	73 74                	jae    c000bcfc <_ebss+0xc>
c000bc88:	72 69                	jb     c000bcf3 <_ebss+0x3>
c000bc8a:	6e                   	outsb  %ds:(%esi),(%dx)
c000bc8b:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
c000bc8f:	64 73 74             	fs jae c000bd06 <_ebss+0x16>
c000bc92:	5f                   	pop    %edi
c000bc93:	5f                   	pop    %edi
c000bc94:	20 21                	and    %ah,(%ecx)
c000bc96:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000bc9b:	4c                   	dec    %esp
c000bc9c:	20 26                	and    %ah,(%esi)
c000bc9e:	26 20 73 72          	and    %dh,%es:0x72(%ebx)
c000bca2:	63 5f 5f             	arpl   %bx,0x5f(%edi)
c000bca5:	20 21                	and    %ah,(%ecx)
c000bca7:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000bcac:	4c                   	dec    %esp
c000bcad:	00 70 31             	add    %dh,0x31(%eax)
c000bcb0:	5f                   	pop    %edi
c000bcb1:	5f                   	pop    %edi
c000bcb2:	20 21                	and    %ah,(%ecx)
c000bcb4:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000bcb9:	4c                   	dec    %esp
c000bcba:	20 26                	and    %ah,(%esi)
c000bcbc:	26 20 70 32          	and    %dh,%es:0x32(%eax)
c000bcc0:	5f                   	pop    %edi
c000bcc1:	5f                   	pop    %edi
c000bcc2:	20 21                	and    %ah,(%ecx)
c000bcc4:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
c000bcc9:	4c                   	dec    %esp
	...

c000bccc <__func__.830>:
c000bccc:	6d                   	insl   (%dx),%es:(%edi)
c000bccd:	65 6d                	gs insl (%dx),%es:(%edi)
c000bccf:	73 65                	jae    c000bd36 <Screen+0x2e>
c000bcd1:	74 00                	je     c000bcd3 <__func__.830+0x7>
	...

c000bcd4 <__func__.841>:
c000bcd4:	6d                   	insl   (%dx),%es:(%edi)
c000bcd5:	65 6d                	gs insl (%dx),%es:(%edi)
c000bcd7:	63 70 79             	arpl   %si,0x79(%eax)
	...

c000bcdc <__func__.853>:
c000bcdc:	6d                   	insl   (%dx),%es:(%edi)
c000bcdd:	65 6d                	gs insl (%dx),%es:(%edi)
c000bcdf:	63 6d 70             	arpl   %bp,0x70(%ebp)
c000bce2:	00 6d 61             	add    %ch,0x61(%ebp)
c000bce5:	69                   	.byte 0x69
c000bce6:	6e                   	outsb  %ds:(%esi),(%dx)
	...

Disassembly of section .bss:

c000bce8 <_bss>:
c000bce8:	00 00                	add    %al,(%eax)
	...

c000bcec <ticks>:
c000bcec:	00 00                	add    %al,(%eax)
	...

c000bcf0 <_ebss>:
	...

c000bd08 <Screen>:
	...

c000bd54 <intr_name>:
	...

c000be10 <idt>:
	...

c000bf88 <user_pool>:
	...

c0013c98 <user_vaddr>:
	...

c001b9a8 <kernel_vaddr>:
	...

c00236b8 <kernel_pool>:
	...

c002b3c8 <all_thread>:
	...

c002b3e4 <main_thread>:
c002b3e4:	00 00                	add    %al,(%eax)
	...

c002b3e8 <ready_thread>:
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
