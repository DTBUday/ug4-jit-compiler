
a.out:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000400490 <.text>:
  400490:	d503245f 	bti	c
  400494:	d280001d 	mov	x29, #0x0                   	// #0
  400498:	d280001e 	mov	x30, #0x0                   	// #0
  40049c:	aa0003e5 	mov	x5, x0
  4004a0:	f94003e1 	ldr	x1, [sp]
  4004a4:	910023e2 	add	x2, sp, #0x8
  4004a8:	910003e6 	mov	x6, sp
  4004ac:	90000000 	adrp	x0, 400000 <__libc_start_main@plt-0x9b8>
  4004b0:	91133000 	add	x0, x0, #0x4cc
  4004b4:	90000003 	adrp	x3, 400000 <__libc_start_main@plt-0x9b8>
  4004b8:	91218063 	add	x3, x3, #0x860
  4004bc:	90000004 	adrp	x4, 400000 <__libc_start_main@plt-0x9b8>
  4004c0:	91238084 	add	x4, x4, #0x8e0
  4004c4:	9400013d 	bl	4009b8 <__libc_start_main@plt>
  4004c8:	94000140 	bl	4009c8 <abort@plt>
  4004cc:	14000078 	b	4006ac <__libc_start_main@plt-0x30c>
  4004d0:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x10618>
  4004d4:	f941a400 	ldr	x0, [x0, #840]
  4004d8:	b4000040 	cbz	x0, 4004e0 <__libc_start_main@plt-0x4d8>
  4004dc:	1400013f 	b	4009d8 <__gmon_start__@plt>
  4004e0:	d65f03c0 	ret
  4004e4:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  4004e8:	ad0087e0 	stp	q0, q1, [sp, #16]
  4004ec:	ad018fe2 	stp	q2, q3, [sp, #48]
  4004f0:	ad0297e4 	stp	q4, q5, [sp, #80]
  4004f4:	ad039fe6 	stp	q6, q7, [sp, #112]
  4004f8:	a90923e8 	stp	x8, x8, [sp, #144]
  4004fc:	a90a07e0 	stp	x0, x1, [sp, #160]
  400500:	a90b0fe2 	stp	x2, x3, [sp, #176]
  400504:	a90c17e4 	stp	x4, x5, [sp, #192]
  400508:	a90d1fe6 	stp	x6, x7, [sp, #208]
  40050c:	910003fd 	mov	x29, sp
  400510:	d503201f 	nop
  400514:	d503201f 	nop
  400518:	f94053a0 	ldr	x0, [x29, #160]
  40051c:	52800041 	mov	w1, #0x2                   	// #2
  400520:	9ac1081e 	udiv	x30, x0, x1
  400524:	9b0183c0 	msub	x0, x30, x1, x0
  400528:	52800001 	mov	w1, #0x0                   	// #0
  40052c:	eb01001f 	cmp	x0, x1
  400530:	1a9f17e0 	cset	w0, eq  // eq = none
  400534:	35000040 	cbnz	w0, 40053c <__libc_start_main@plt-0x47c>
  400538:	14000004 	b	400548 <__libc_start_main@plt-0x470>
  40053c:	f94053a0 	ldr	x0, [x29, #160]
  400540:	d341fc00 	lsr	x0, x0, #1
  400544:	14000005 	b	400558 <__libc_start_main@plt-0x460>
  400548:	f94053a0 	ldr	x0, [x29, #160]
  40054c:	52800061 	mov	w1, #0x3                   	// #3
  400550:	9b017c00 	mul	x0, x0, x1
  400554:	91000400 	add	x0, x0, #0x1
  400558:	910003bf 	mov	sp, x29
  40055c:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  400560:	d65f03c0 	ret
  400564:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  400568:	ad0087e0 	stp	q0, q1, [sp, #16]
  40056c:	ad018fe2 	stp	q2, q3, [sp, #48]
  400570:	ad0297e4 	stp	q4, q5, [sp, #80]
  400574:	ad039fe6 	stp	q6, q7, [sp, #112]
  400578:	a90923e8 	stp	x8, x8, [sp, #144]
  40057c:	a90a07e0 	stp	x0, x1, [sp, #160]
  400580:	a90b0fe2 	stp	x2, x3, [sp, #176]
  400584:	a90c17e4 	stp	x4, x5, [sp, #192]
  400588:	a90d1fe6 	stp	x6, x7, [sp, #208]
  40058c:	910003fd 	mov	x29, sp
  400590:	d10043ff 	sub	sp, sp, #0x10
  400594:	d503201f 	nop
  400598:	52800020 	mov	w0, #0x1                   	// #1
  40059c:	b81fc3a0 	stur	w0, [x29, #-4]
  4005a0:	f94053a0 	ldr	x0, [x29, #160]
  4005a4:	52800021 	mov	w1, #0x1                   	// #1
  4005a8:	eb01001f 	cmp	x0, x1
  4005ac:	1a9f97e0 	cset	w0, hi  // hi = pmore
  4005b0:	35000040 	cbnz	w0, 4005b8 <__libc_start_main@plt-0x400>
  4005b4:	14000008 	b	4005d4 <__libc_start_main@plt-0x3e4>
  4005b8:	b85fc3a0 	ldur	w0, [x29, #-4]
  4005bc:	11000400 	add	w0, w0, #0x1
  4005c0:	b81fc3a0 	stur	w0, [x29, #-4]
  4005c4:	f94053a0 	ldr	x0, [x29, #160]
  4005c8:	97ffffc7 	bl	4004e4 <__libc_start_main@plt-0x4d4>
  4005cc:	f90053a0 	str	x0, [x29, #160]
  4005d0:	17fffff4 	b	4005a0 <__libc_start_main@plt-0x418>
  4005d4:	b85fc3a0 	ldur	w0, [x29, #-4]
  4005d8:	910003bf 	mov	sp, x29
  4005dc:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  4005e0:	d65f03c0 	ret
  4005e4:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  4005e8:	ad0087e0 	stp	q0, q1, [sp, #16]
  4005ec:	ad018fe2 	stp	q2, q3, [sp, #48]
  4005f0:	ad0297e4 	stp	q4, q5, [sp, #80]
  4005f4:	ad039fe6 	stp	q6, q7, [sp, #112]
  4005f8:	a90923e8 	stp	x8, x8, [sp, #144]
  4005fc:	a90a07e0 	stp	x0, x1, [sp, #160]
  400600:	a90b0fe2 	stp	x2, x3, [sp, #176]
  400604:	a90c17e4 	stp	x4, x5, [sp, #192]
  400608:	a90d1fe6 	stp	x6, x7, [sp, #208]
  40060c:	910003fd 	mov	x29, sp
  400610:	d10083ff 	sub	sp, sp, #0x20
  400614:	d503201f 	nop
  400618:	52800000 	mov	w0, #0x0                   	// #0
  40061c:	b81f83a0 	stur	w0, [x29, #-8]
  400620:	f94053a0 	ldr	x0, [x29, #160]
  400624:	f81f03a0 	stur	x0, [x29, #-16]
  400628:	f94053a0 	ldr	x0, [x29, #160]
  40062c:	d341fc00 	lsr	x0, x0, #1
  400630:	f81e83a0 	stur	x0, [x29, #-24]
  400634:	f85e83a0 	ldur	x0, [x29, #-24]
  400638:	f94053a1 	ldr	x1, [x29, #160]
  40063c:	eb01001f 	cmp	x0, x1
  400640:	1a9f87e0 	cset	w0, ls  // ls = plast
  400644:	35000040 	cbnz	w0, 40064c <__libc_start_main@plt-0x36c>
  400648:	14000015 	b	40069c <__libc_start_main@plt-0x31c>
  40064c:	14000006 	b	400664 <__libc_start_main@plt-0x354>
  400650:	f85e83a0 	ldur	x0, [x29, #-24]
  400654:	aa0003e1 	mov	x1, x0
  400658:	91000400 	add	x0, x0, #0x1
  40065c:	f81e83a0 	stur	x0, [x29, #-24]
  400660:	17fffff5 	b	400634 <__libc_start_main@plt-0x384>
  400664:	f85e83a0 	ldur	x0, [x29, #-24]
  400668:	97ffffbf 	bl	400564 <__libc_start_main@plt-0x454>
  40066c:	b81fc3a0 	stur	w0, [x29, #-4]
  400670:	b85fc3a0 	ldur	w0, [x29, #-4]
  400674:	b85f83a1 	ldur	w1, [x29, #-8]
  400678:	6b01001f 	cmp	w0, w1
  40067c:	1a9fd7e0 	cset	w0, gt
  400680:	35000040 	cbnz	w0, 400688 <__libc_start_main@plt-0x330>
  400684:	14000005 	b	400698 <__libc_start_main@plt-0x320>
  400688:	f85e83a0 	ldur	x0, [x29, #-24]
  40068c:	f81f03a0 	stur	x0, [x29, #-16]
  400690:	b85fc3a0 	ldur	w0, [x29, #-4]
  400694:	b81f83a0 	stur	w0, [x29, #-8]
  400698:	17ffffee 	b	400650 <__libc_start_main@plt-0x368>
  40069c:	f85f03a0 	ldur	x0, [x29, #-16]
  4006a0:	910003bf 	mov	sp, x29
  4006a4:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  4006a8:	d65f03c0 	ret
  4006ac:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  4006b0:	ad0087e0 	stp	q0, q1, [sp, #16]
  4006b4:	ad018fe2 	stp	q2, q3, [sp, #48]
  4006b8:	ad0297e4 	stp	q4, q5, [sp, #80]
  4006bc:	ad039fe6 	stp	q6, q7, [sp, #112]
  4006c0:	a90923e8 	stp	x8, x8, [sp, #144]
  4006c4:	a90a07e0 	stp	x0, x1, [sp, #160]
  4006c8:	a90b0fe2 	stp	x2, x3, [sp, #176]
  4006cc:	a90c17e4 	stp	x4, x5, [sp, #192]
  4006d0:	a90d1fe6 	stp	x6, x7, [sp, #208]
  4006d4:	910003fd 	mov	x29, sp
  4006d8:	d503201f 	nop
  4006dc:	d503201f 	nop
  4006e0:	528001a0 	mov	w0, #0xd                   	// #13
  4006e4:	97ffffc0 	bl	4005e4 <__libc_start_main@plt-0x3d4>
  4006e8:	52800121 	mov	w1, #0x9                   	// #9
  4006ec:	eb01001f 	cmp	x0, x1
  4006f0:	1a9f17e0 	cset	w0, eq  // eq = none
  4006f4:	35000040 	cbnz	w0, 4006fc <__libc_start_main@plt-0x2bc>
  4006f8:	14000002 	b	400700 <__libc_start_main@plt-0x2b8>
  4006fc:	1400000a 	b	400724 <__libc_start_main@plt-0x294>
  400700:	b0000083 	adrp	x3, 411000 <__assert_fail@plt+0x10618>
  400704:	f941a863 	ldr	x3, [x3, #848]
  400708:	52800622 	mov	w2, #0x31                  	// #49
  40070c:	b0000081 	adrp	x1, 411000 <__assert_fail@plt+0x10618>
  400710:	f941ac21 	ldr	x1, [x1, #856]
  400714:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x10618>
  400718:	f941b000 	ldr	x0, [x0, #864]
  40071c:	940000b3 	bl	4009e8 <__assert_fail@plt>
  400720:	d503201f 	nop
  400724:	52807d00 	mov	w0, #0x3e8                 	// #1000
  400728:	97ffffaf 	bl	4005e4 <__libc_start_main@plt-0x3d4>
  40072c:	52806ce1 	mov	w1, #0x367                 	// #871
  400730:	eb01001f 	cmp	x0, x1
  400734:	1a9f17e0 	cset	w0, eq  // eq = none
  400738:	35000040 	cbnz	w0, 400740 <__libc_start_main@plt-0x278>
  40073c:	14000002 	b	400744 <__libc_start_main@plt-0x274>
  400740:	1400000a 	b	400768 <__libc_start_main@plt-0x250>
  400744:	b0000083 	adrp	x3, 411000 <__assert_fail@plt+0x10618>
  400748:	f941b463 	ldr	x3, [x3, #872]
  40074c:	52800642 	mov	w2, #0x32                  	// #50
  400750:	b0000081 	adrp	x1, 411000 <__assert_fail@plt+0x10618>
  400754:	f941b821 	ldr	x1, [x1, #880]
  400758:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x10618>
  40075c:	f941bc00 	ldr	x0, [x0, #888]
  400760:	940000a2 	bl	4009e8 <__assert_fail@plt>
  400764:	d503201f 	nop
  400768:	5284e200 	mov	w0, #0x2710                	// #10000
  40076c:	97ffff9e 	bl	4005e4 <__libc_start_main@plt-0x3d4>
  400770:	52830361 	mov	w1, #0x181b                	// #6171
  400774:	eb01001f 	cmp	x0, x1
  400778:	1a9f17e0 	cset	w0, eq  // eq = none
  40077c:	35000040 	cbnz	w0, 400784 <__libc_start_main@plt-0x234>
  400780:	14000002 	b	400788 <__libc_start_main@plt-0x230>
  400784:	1400000a 	b	4007ac <__libc_start_main@plt-0x20c>
  400788:	b0000083 	adrp	x3, 411000 <__assert_fail@plt+0x10618>
  40078c:	f941c063 	ldr	x3, [x3, #896]
  400790:	52800662 	mov	w2, #0x33                  	// #51
  400794:	b0000081 	adrp	x1, 411000 <__assert_fail@plt+0x10618>
  400798:	f941c421 	ldr	x1, [x1, #904]
  40079c:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x10618>
  4007a0:	f941c800 	ldr	x0, [x0, #912]
  4007a4:	94000091 	bl	4009e8 <__assert_fail@plt>
  4007a8:	d503201f 	nop
  4007ac:	d290d400 	mov	x0, #0x86a0                	// #34464
  4007b0:	f2a00020 	movk	x0, #0x1, lsl #16
  4007b4:	97ffff8c 	bl	4005e4 <__libc_start_main@plt-0x3d4>
  4007b8:	d2859ce1 	mov	x1, #0x2ce7                	// #11495
  4007bc:	f2a00021 	movk	x1, #0x1, lsl #16
  4007c0:	eb01001f 	cmp	x0, x1
  4007c4:	1a9f17e0 	cset	w0, eq  // eq = none
  4007c8:	35000040 	cbnz	w0, 4007d0 <__libc_start_main@plt-0x1e8>
  4007cc:	14000002 	b	4007d4 <__libc_start_main@plt-0x1e4>
  4007d0:	1400000a 	b	4007f8 <__libc_start_main@plt-0x1c0>
  4007d4:	b0000083 	adrp	x3, 411000 <__assert_fail@plt+0x10618>
  4007d8:	f941cc63 	ldr	x3, [x3, #920]
  4007dc:	52800682 	mov	w2, #0x34                  	// #52
  4007e0:	b0000081 	adrp	x1, 411000 <__assert_fail@plt+0x10618>
  4007e4:	f941d021 	ldr	x1, [x1, #928]
  4007e8:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x10618>
  4007ec:	f941d400 	ldr	x0, [x0, #936]
  4007f0:	9400007e 	bl	4009e8 <__assert_fail@plt>
  4007f4:	d503201f 	nop
  4007f8:	d2884800 	mov	x0, #0x4240                	// #16960
  4007fc:	f2a001e0 	movk	x0, #0xf, lsl #16
  400800:	97ffff79 	bl	4005e4 <__libc_start_main@plt-0x3d4>
  400804:	d29914e1 	mov	x1, #0xc8a7                	// #51367
  400808:	f2a00181 	movk	x1, #0xc, lsl #16
  40080c:	eb01001f 	cmp	x0, x1
  400810:	1a9f17e0 	cset	w0, eq  // eq = none
  400814:	35000040 	cbnz	w0, 40081c <__libc_start_main@plt-0x19c>
  400818:	14000002 	b	400820 <__libc_start_main@plt-0x198>
  40081c:	1400000a 	b	400844 <__libc_start_main@plt-0x174>
  400820:	b0000083 	adrp	x3, 411000 <__assert_fail@plt+0x10618>
  400824:	f941d863 	ldr	x3, [x3, #944]
  400828:	528006a2 	mov	w2, #0x35                  	// #53
  40082c:	b0000081 	adrp	x1, 411000 <__assert_fail@plt+0x10618>
  400830:	f941dc21 	ldr	x1, [x1, #952]
  400834:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x10618>
  400838:	f941e000 	ldr	x0, [x0, #960]
  40083c:	9400006b 	bl	4009e8 <__assert_fail@plt>
  400840:	d503201f 	nop
  400844:	52800000 	mov	w0, #0x0                   	// #0
  400848:	910003bf 	mov	sp, x29
  40084c:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  400850:	d65f03c0 	ret
	...
  400860:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  400864:	910003fd 	mov	x29, sp
  400868:	a90153f3 	stp	x19, x20, [sp, #16]
  40086c:	90000014 	adrp	x20, 400000 <__libc_start_main@plt-0x9b8>
  400870:	91266294 	add	x20, x20, #0x998
  400874:	a9025bf5 	stp	x21, x22, [sp, #32]
  400878:	90000015 	adrp	x21, 400000 <__libc_start_main@plt-0x9b8>
  40087c:	912662b5 	add	x21, x21, #0x998
  400880:	cb150294 	sub	x20, x20, x21
  400884:	2a0003f6 	mov	w22, w0
  400888:	a90363f7 	stp	x23, x24, [sp, #48]
  40088c:	aa0103f7 	mov	x23, x1
  400890:	aa0203f8 	mov	x24, x2
  400894:	9343fe94 	asr	x20, x20, #3
  400898:	9400001c 	bl	400908 <__libc_start_main@plt-0xb0>
  40089c:	b4000174 	cbz	x20, 4008c8 <__libc_start_main@plt-0xf0>
  4008a0:	d2800013 	mov	x19, #0x0                   	// #0
  4008a4:	d503201f 	nop
  4008a8:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
  4008ac:	aa1803e2 	mov	x2, x24
  4008b0:	91000673 	add	x19, x19, #0x1
  4008b4:	aa1703e1 	mov	x1, x23
  4008b8:	2a1603e0 	mov	w0, w22
  4008bc:	d63f0060 	blr	x3
  4008c0:	eb13029f 	cmp	x20, x19
  4008c4:	54ffff21 	b.ne	4008a8 <__libc_start_main@plt-0x110>  // b.any
  4008c8:	a94153f3 	ldp	x19, x20, [sp, #16]
  4008cc:	a9425bf5 	ldp	x21, x22, [sp, #32]
  4008d0:	a94363f7 	ldp	x23, x24, [sp, #48]
  4008d4:	a8c47bfd 	ldp	x29, x30, [sp], #64
  4008d8:	d65f03c0 	ret
  4008dc:	d503201f 	nop
  4008e0:	d65f03c0 	ret

Disassembly of section .init:

0000000000400908 <.init>:
  400908:	d503245f 	bti	c
  40090c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400910:	910003fd 	mov	x29, sp
  400914:	97fffeef 	bl	4004d0 <__libc_start_main@plt-0x4e8>
  400918:	a8c17bfd 	ldp	x29, x30, [sp], #16
  40091c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400920 <.fini>:
  400920:	d503245f 	bti	c
  400924:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400928:	910003fd 	mov	x29, sp
  40092c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400930:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400998 <__libc_start_main@plt-0x20>:
  400998:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  40099c:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x10618>
  4009a0:	f9419211 	ldr	x17, [x16, #800]
  4009a4:	910c8210 	add	x16, x16, #0x320
  4009a8:	d61f0220 	br	x17
  4009ac:	d503201f 	nop
  4009b0:	d503201f 	nop
  4009b4:	d503201f 	nop

00000000004009b8 <__libc_start_main@plt>:
  4009b8:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x10618>
  4009bc:	f9419611 	ldr	x17, [x16, #808]
  4009c0:	910ca210 	add	x16, x16, #0x328
  4009c4:	d61f0220 	br	x17

00000000004009c8 <abort@plt>:
  4009c8:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x10618>
  4009cc:	f9419a11 	ldr	x17, [x16, #816]
  4009d0:	910cc210 	add	x16, x16, #0x330
  4009d4:	d61f0220 	br	x17

00000000004009d8 <__gmon_start__@plt>:
  4009d8:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x10618>
  4009dc:	f9419e11 	ldr	x17, [x16, #824]
  4009e0:	910ce210 	add	x16, x16, #0x338
  4009e4:	d61f0220 	br	x17

00000000004009e8 <__assert_fail@plt>:
  4009e8:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x10618>
  4009ec:	f941a211 	ldr	x17, [x16, #832]
  4009f0:	910d0210 	add	x16, x16, #0x340
  4009f4:	d61f0220 	br	x17
