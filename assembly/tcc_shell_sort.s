
tcc_shell_sort.out:     file format elf64-littleaarch64


Disassembly of section .text:

00000000004004a0 <.text>:
  4004a0:	d503245f 	bti	c
  4004a4:	d280001d 	mov	x29, #0x0                   	// #0
  4004a8:	d280001e 	mov	x30, #0x0                   	// #0
  4004ac:	aa0003e5 	mov	x5, x0
  4004b0:	f94003e1 	ldr	x1, [sp]
  4004b4:	910023e2 	add	x2, sp, #0x8
  4004b8:	910003e6 	mov	x6, sp
  4004bc:	90000000 	adrp	x0, 400000 <__libc_start_main@plt-0x998>
  4004c0:	91137000 	add	x0, x0, #0x4dc
  4004c4:	90000003 	adrp	x3, 400000 <__libc_start_main@plt-0x998>
  4004c8:	91210063 	add	x3, x3, #0x840
  4004cc:	90000004 	adrp	x4, 400000 <__libc_start_main@plt-0x998>
  4004d0:	91230084 	add	x4, x4, #0x8c0
  4004d4:	94000131 	bl	400998 <__libc_start_main@plt>
  4004d8:	94000134 	bl	4009a8 <abort@plt>
  4004dc:	14000080 	b	4006dc <__libc_start_main@plt-0x2bc>
  4004e0:	b0000080 	adrp	x0, 411000 <free@plt+0x105e8>
  4004e4:	f940ec00 	ldr	x0, [x0, #472]
  4004e8:	b4000040 	cbz	x0, 4004f0 <__libc_start_main@plt-0x4a8>
  4004ec:	14000133 	b	4009b8 <__gmon_start__@plt>
  4004f0:	d65f03c0 	ret
  4004f4:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  4004f8:	ad0087e0 	stp	q0, q1, [sp, #16]
  4004fc:	ad018fe2 	stp	q2, q3, [sp, #48]
  400500:	ad0297e4 	stp	q4, q5, [sp, #80]
  400504:	ad039fe6 	stp	q6, q7, [sp, #112]
  400508:	a90923e8 	stp	x8, x8, [sp, #144]
  40050c:	a90a07e0 	stp	x0, x1, [sp, #160]
  400510:	a90b0fe2 	stp	x2, x3, [sp, #176]
  400514:	a90c17e4 	stp	x4, x5, [sp, #192]
  400518:	a90d1fe6 	stp	x6, x7, [sp, #208]
  40051c:	910003fd 	mov	x29, sp
  400520:	d10043ff 	sub	sp, sp, #0x10
  400524:	d503201f 	nop
  400528:	b940b3a0 	ldr	w0, [x29, #176]
  40052c:	b81f43a0 	stur	w0, [x29, #-12]
  400530:	b85f43a0 	ldur	w0, [x29, #-12]
  400534:	b940aba1 	ldr	w1, [x29, #168]
  400538:	6b01001f 	cmp	w0, w1
  40053c:	1a9fa7e0 	cset	w0, lt  // lt = tstop
  400540:	35000040 	cbnz	w0, 400548 <__libc_start_main@plt-0x450>
  400544:	14000040 	b	400644 <__libc_start_main@plt-0x354>
  400548:	14000006 	b	400560 <__libc_start_main@plt-0x438>
  40054c:	b85f43a0 	ldur	w0, [x29, #-12]
  400550:	b940b3a1 	ldr	w1, [x29, #176]
  400554:	0b010000 	add	w0, w0, w1
  400558:	b81f43a0 	stur	w0, [x29, #-12]
  40055c:	17fffff5 	b	400530 <__libc_start_main@plt-0x468>
  400560:	b85f43a0 	ldur	w0, [x29, #-12]
  400564:	93407c00 	sxtw	x0, w0
  400568:	d37ef400 	lsl	x0, x0, #2
  40056c:	f94053a1 	ldr	x1, [x29, #160]
  400570:	8b000020 	add	x0, x1, x0
  400574:	b9400001 	ldr	w1, [x0]
  400578:	b81f83a1 	stur	w1, [x29, #-8]
  40057c:	b85f43a0 	ldur	w0, [x29, #-12]
  400580:	b940b3a1 	ldr	w1, [x29, #176]
  400584:	4b010000 	sub	w0, w0, w1
  400588:	b81fc3a0 	stur	w0, [x29, #-4]
  40058c:	b85fc3a0 	ldur	w0, [x29, #-4]
  400590:	52800001 	mov	w1, #0x0                   	// #0
  400594:	6b01001f 	cmp	w0, w1
  400598:	1a9fb7e0 	cset	w0, ge  // ge = tcont
  40059c:	35000040 	cbnz	w0, 4005a4 <__libc_start_main@plt-0x3f4>
  4005a0:	1400001f 	b	40061c <__libc_start_main@plt-0x37c>
  4005a4:	b85fc3a0 	ldur	w0, [x29, #-4]
  4005a8:	93407c00 	sxtw	x0, w0
  4005ac:	d37ef400 	lsl	x0, x0, #2
  4005b0:	f94053a1 	ldr	x1, [x29, #160]
  4005b4:	8b000020 	add	x0, x1, x0
  4005b8:	b9400001 	ldr	w1, [x0]
  4005bc:	b85f83a0 	ldur	w0, [x29, #-8]
  4005c0:	6b00003f 	cmp	w1, w0
  4005c4:	1a9fd7e0 	cset	w0, gt
  4005c8:	35000040 	cbnz	w0, 4005d0 <__libc_start_main@plt-0x3c8>
  4005cc:	14000014 	b	40061c <__libc_start_main@plt-0x37c>
  4005d0:	b85fc3a0 	ldur	w0, [x29, #-4]
  4005d4:	b940b3a1 	ldr	w1, [x29, #176]
  4005d8:	0b010000 	add	w0, w0, w1
  4005dc:	93407c00 	sxtw	x0, w0
  4005e0:	d37ef400 	lsl	x0, x0, #2
  4005e4:	f94053a1 	ldr	x1, [x29, #160]
  4005e8:	8b000020 	add	x0, x1, x0
  4005ec:	b85fc3a1 	ldur	w1, [x29, #-4]
  4005f0:	93407c21 	sxtw	x1, w1
  4005f4:	d37ef421 	lsl	x1, x1, #2
  4005f8:	f94053a2 	ldr	x2, [x29, #160]
  4005fc:	8b010041 	add	x1, x2, x1
  400600:	b9400022 	ldr	w2, [x1]
  400604:	b9000002 	str	w2, [x0]
  400608:	b85fc3a0 	ldur	w0, [x29, #-4]
  40060c:	b940b3a1 	ldr	w1, [x29, #176]
  400610:	4b010000 	sub	w0, w0, w1
  400614:	b81fc3a0 	stur	w0, [x29, #-4]
  400618:	17ffffdd 	b	40058c <__libc_start_main@plt-0x40c>
  40061c:	b85fc3a0 	ldur	w0, [x29, #-4]
  400620:	b940b3a1 	ldr	w1, [x29, #176]
  400624:	0b010000 	add	w0, w0, w1
  400628:	93407c00 	sxtw	x0, w0
  40062c:	d37ef400 	lsl	x0, x0, #2
  400630:	f94053a1 	ldr	x1, [x29, #160]
  400634:	8b000020 	add	x0, x1, x0
  400638:	b85f83a1 	ldur	w1, [x29, #-8]
  40063c:	b9000001 	str	w1, [x0]
  400640:	17ffffc3 	b	40054c <__libc_start_main@plt-0x44c>
  400644:	910003bf 	mov	sp, x29
  400648:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  40064c:	d65f03c0 	ret
  400650:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  400654:	ad0087e0 	stp	q0, q1, [sp, #16]
  400658:	ad018fe2 	stp	q2, q3, [sp, #48]
  40065c:	ad0297e4 	stp	q4, q5, [sp, #80]
  400660:	ad039fe6 	stp	q6, q7, [sp, #112]
  400664:	a90923e8 	stp	x8, x8, [sp, #144]
  400668:	a90a07e0 	stp	x0, x1, [sp, #160]
  40066c:	a90b0fe2 	stp	x2, x3, [sp, #176]
  400670:	a90c17e4 	stp	x4, x5, [sp, #192]
  400674:	a90d1fe6 	stp	x6, x7, [sp, #208]
  400678:	910003fd 	mov	x29, sp
  40067c:	d10043ff 	sub	sp, sp, #0x10
  400680:	d503201f 	nop
  400684:	b940aba0 	ldr	w0, [x29, #168]
  400688:	52800041 	mov	w1, #0x2                   	// #2
  40068c:	1ac10c00 	sdiv	w0, w0, w1
  400690:	b81fc3a0 	stur	w0, [x29, #-4]
  400694:	b85fc3a0 	ldur	w0, [x29, #-4]
  400698:	52800001 	mov	w1, #0x0                   	// #0
  40069c:	6b01001f 	cmp	w0, w1
  4006a0:	1a9fd7e0 	cset	w0, gt
  4006a4:	35000040 	cbnz	w0, 4006ac <__libc_start_main@plt-0x2ec>
  4006a8:	1400000a 	b	4006d0 <__libc_start_main@plt-0x2c8>
  4006ac:	b85fc3a2 	ldur	w2, [x29, #-4]
  4006b0:	b940aba1 	ldr	w1, [x29, #168]
  4006b4:	f94053a0 	ldr	x0, [x29, #160]
  4006b8:	97ffff8f 	bl	4004f4 <__libc_start_main@plt-0x4a4>
  4006bc:	b85fc3a0 	ldur	w0, [x29, #-4]
  4006c0:	52800041 	mov	w1, #0x2                   	// #2
  4006c4:	1ac10c00 	sdiv	w0, w0, w1
  4006c8:	b81fc3a0 	stur	w0, [x29, #-4]
  4006cc:	17fffff2 	b	400694 <__libc_start_main@plt-0x304>
  4006d0:	910003bf 	mov	sp, x29
  4006d4:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  4006d8:	d65f03c0 	ret
  4006dc:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  4006e0:	ad0087e0 	stp	q0, q1, [sp, #16]
  4006e4:	ad018fe2 	stp	q2, q3, [sp, #48]
  4006e8:	ad0297e4 	stp	q4, q5, [sp, #80]
  4006ec:	ad039fe6 	stp	q6, q7, [sp, #112]
  4006f0:	a90923e8 	stp	x8, x8, [sp, #144]
  4006f4:	a90a07e0 	stp	x0, x1, [sp, #160]
  4006f8:	a90b0fe2 	stp	x2, x3, [sp, #176]
  4006fc:	a90c17e4 	stp	x4, x5, [sp, #192]
  400700:	a90d1fe6 	stp	x6, x7, [sp, #208]
  400704:	910003fd 	mov	x29, sp
  400708:	d100c3ff 	sub	sp, sp, #0x30
  40070c:	d503201f 	nop
  400710:	52800000 	mov	w0, #0x0                   	// #0
  400714:	940000ad 	bl	4009c8 <time@plt>
  400718:	940000b0 	bl	4009d8 <srand@plt>
  40071c:	b85fc3a1 	ldur	w1, [x29, #-4]
  400720:	b0000080 	adrp	x0, 411000 <free@plt+0x105e8>
  400724:	f940f000 	ldr	x0, [x0, #480]
  400728:	940000b0 	bl	4009e8 <printf@plt>
  40072c:	b85fc3a0 	ldur	w0, [x29, #-4]
  400730:	93407c00 	sxtw	x0, w0
  400734:	d37ef400 	lsl	x0, x0, #2
  400738:	940000b0 	bl	4009f8 <malloc@plt>
  40073c:	f81f03a0 	stur	x0, [x29, #-16]
  400740:	b85fc3a1 	ldur	w1, [x29, #-4]
  400744:	b0000080 	adrp	x0, 411000 <free@plt+0x105e8>
  400748:	f940f400 	ldr	x0, [x0, #488]
  40074c:	940000a7 	bl	4009e8 <printf@plt>
  400750:	52800000 	mov	w0, #0x0                   	// #0
  400754:	b81ec3a0 	stur	w0, [x29, #-20]
  400758:	b85ec3a0 	ldur	w0, [x29, #-20]
  40075c:	b85fc3a1 	ldur	w1, [x29, #-4]
  400760:	6b01001f 	cmp	w0, w1
  400764:	1a9fa7e0 	cset	w0, lt  // lt = tstop
  400768:	35000040 	cbnz	w0, 400770 <__libc_start_main@plt-0x228>
  40076c:	14000011 	b	4007b0 <__libc_start_main@plt-0x1e8>
  400770:	14000006 	b	400788 <__libc_start_main@plt-0x210>
  400774:	b85ec3a0 	ldur	w0, [x29, #-20]
  400778:	aa0003e1 	mov	x1, x0
  40077c:	11000400 	add	w0, w0, #0x1
  400780:	b81ec3a0 	stur	w0, [x29, #-20]
  400784:	17fffff5 	b	400758 <__libc_start_main@plt-0x240>
  400788:	b85ec3a0 	ldur	w0, [x29, #-20]
  40078c:	93407c00 	sxtw	x0, w0
  400790:	d37ef400 	lsl	x0, x0, #2
  400794:	f85f03a1 	ldur	x1, [x29, #-16]
  400798:	8b000020 	add	x0, x1, x0
  40079c:	f81e03a0 	stur	x0, [x29, #-32]
  4007a0:	9400009a 	bl	400a08 <rand@plt>
  4007a4:	f85e03a1 	ldur	x1, [x29, #-32]
  4007a8:	b9000020 	str	w0, [x1]
  4007ac:	17fffff2 	b	400774 <__libc_start_main@plt-0x224>
  4007b0:	b85fc3a1 	ldur	w1, [x29, #-4]
  4007b4:	f85f03a0 	ldur	x0, [x29, #-16]
  4007b8:	97ffffa6 	bl	400650 <__libc_start_main@plt-0x348>
  4007bc:	52800000 	mov	w0, #0x0                   	// #0
  4007c0:	b81dc3a0 	stur	w0, [x29, #-36]
  4007c4:	b85dc3a0 	ldur	w0, [x29, #-36]
  4007c8:	b85fc3a1 	ldur	w1, [x29, #-4]
  4007cc:	6b01001f 	cmp	w0, w1
  4007d0:	1a9fa7e0 	cset	w0, lt  // lt = tstop
  4007d4:	35000040 	cbnz	w0, 4007dc <__libc_start_main@plt-0x1bc>
  4007d8:	14000011 	b	40081c <__libc_start_main@plt-0x17c>
  4007dc:	14000006 	b	4007f4 <__libc_start_main@plt-0x1a4>
  4007e0:	b85dc3a0 	ldur	w0, [x29, #-36]
  4007e4:	aa0003e1 	mov	x1, x0
  4007e8:	11000400 	add	w0, w0, #0x1
  4007ec:	b81dc3a0 	stur	w0, [x29, #-36]
  4007f0:	17fffff5 	b	4007c4 <__libc_start_main@plt-0x1d4>
  4007f4:	b85dc3a0 	ldur	w0, [x29, #-36]
  4007f8:	93407c00 	sxtw	x0, w0
  4007fc:	d37ef400 	lsl	x0, x0, #2
  400800:	f85f03a1 	ldur	x1, [x29, #-16]
  400804:	8b000020 	add	x0, x1, x0
  400808:	b9400001 	ldr	w1, [x0]
  40080c:	b0000080 	adrp	x0, 411000 <free@plt+0x105e8>
  400810:	f940f800 	ldr	x0, [x0, #496]
  400814:	94000075 	bl	4009e8 <printf@plt>
  400818:	17fffff2 	b	4007e0 <__libc_start_main@plt-0x1b8>
  40081c:	f85f03a0 	ldur	x0, [x29, #-16]
  400820:	9400007e 	bl	400a18 <free@plt>
  400824:	52800000 	mov	w0, #0x0                   	// #0
  400828:	910003bf 	mov	sp, x29
  40082c:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  400830:	d65f03c0 	ret
	...
  400840:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  400844:	910003fd 	mov	x29, sp
  400848:	a90153f3 	stp	x19, x20, [sp, #16]
  40084c:	90000014 	adrp	x20, 400000 <__libc_start_main@plt-0x998>
  400850:	9125e294 	add	x20, x20, #0x978
  400854:	a9025bf5 	stp	x21, x22, [sp, #32]
  400858:	90000015 	adrp	x21, 400000 <__libc_start_main@plt-0x998>
  40085c:	9125e2b5 	add	x21, x21, #0x978
  400860:	cb150294 	sub	x20, x20, x21
  400864:	2a0003f6 	mov	w22, w0
  400868:	a90363f7 	stp	x23, x24, [sp, #48]
  40086c:	aa0103f7 	mov	x23, x1
  400870:	aa0203f8 	mov	x24, x2
  400874:	9343fe94 	asr	x20, x20, #3
  400878:	9400001c 	bl	4008e8 <__libc_start_main@plt-0xb0>
  40087c:	b4000174 	cbz	x20, 4008a8 <__libc_start_main@plt-0xf0>
  400880:	d2800013 	mov	x19, #0x0                   	// #0
  400884:	d503201f 	nop
  400888:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
  40088c:	aa1803e2 	mov	x2, x24
  400890:	91000673 	add	x19, x19, #0x1
  400894:	aa1703e1 	mov	x1, x23
  400898:	2a1603e0 	mov	w0, w22
  40089c:	d63f0060 	blr	x3
  4008a0:	eb13029f 	cmp	x20, x19
  4008a4:	54ffff21 	b.ne	400888 <__libc_start_main@plt-0x110>  // b.any
  4008a8:	a94153f3 	ldp	x19, x20, [sp, #16]
  4008ac:	a9425bf5 	ldp	x21, x22, [sp, #32]
  4008b0:	a94363f7 	ldp	x23, x24, [sp, #48]
  4008b4:	a8c47bfd 	ldp	x29, x30, [sp], #64
  4008b8:	d65f03c0 	ret
  4008bc:	d503201f 	nop
  4008c0:	d65f03c0 	ret

Disassembly of section .init:

00000000004008e8 <.init>:
  4008e8:	d503245f 	bti	c
  4008ec:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4008f0:	910003fd 	mov	x29, sp
  4008f4:	97fffefb 	bl	4004e0 <__libc_start_main@plt-0x4b8>
  4008f8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4008fc:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400900 <.fini>:
  400900:	d503245f 	bti	c
  400904:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400908:	910003fd 	mov	x29, sp
  40090c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400910:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400978 <__libc_start_main@plt-0x20>:
  400978:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  40097c:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  400980:	f940c611 	ldr	x17, [x16, #392]
  400984:	91062210 	add	x16, x16, #0x188
  400988:	d61f0220 	br	x17
  40098c:	d503201f 	nop
  400990:	d503201f 	nop
  400994:	d503201f 	nop

0000000000400998 <__libc_start_main@plt>:
  400998:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  40099c:	f940ca11 	ldr	x17, [x16, #400]
  4009a0:	91064210 	add	x16, x16, #0x190
  4009a4:	d61f0220 	br	x17

00000000004009a8 <abort@plt>:
  4009a8:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  4009ac:	f940ce11 	ldr	x17, [x16, #408]
  4009b0:	91066210 	add	x16, x16, #0x198
  4009b4:	d61f0220 	br	x17

00000000004009b8 <__gmon_start__@plt>:
  4009b8:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  4009bc:	f940d211 	ldr	x17, [x16, #416]
  4009c0:	91068210 	add	x16, x16, #0x1a0
  4009c4:	d61f0220 	br	x17

00000000004009c8 <time@plt>:
  4009c8:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  4009cc:	f940d611 	ldr	x17, [x16, #424]
  4009d0:	9106a210 	add	x16, x16, #0x1a8
  4009d4:	d61f0220 	br	x17

00000000004009d8 <srand@plt>:
  4009d8:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  4009dc:	f940da11 	ldr	x17, [x16, #432]
  4009e0:	9106c210 	add	x16, x16, #0x1b0
  4009e4:	d61f0220 	br	x17

00000000004009e8 <printf@plt>:
  4009e8:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  4009ec:	f940de11 	ldr	x17, [x16, #440]
  4009f0:	9106e210 	add	x16, x16, #0x1b8
  4009f4:	d61f0220 	br	x17

00000000004009f8 <malloc@plt>:
  4009f8:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  4009fc:	f940e211 	ldr	x17, [x16, #448]
  400a00:	91070210 	add	x16, x16, #0x1c0
  400a04:	d61f0220 	br	x17

0000000000400a08 <rand@plt>:
  400a08:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  400a0c:	f940e611 	ldr	x17, [x16, #456]
  400a10:	91072210 	add	x16, x16, #0x1c8
  400a14:	d61f0220 	br	x17

0000000000400a18 <free@plt>:
  400a18:	b0000090 	adrp	x16, 411000 <free@plt+0x105e8>
  400a1c:	f940ea11 	ldr	x17, [x16, #464]
  400a20:	91074210 	add	x16, x16, #0x1d0
  400a24:	d61f0220 	br	x17
