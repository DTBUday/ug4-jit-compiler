
a.out:     file format elf64-littleaarch64


Disassembly of section .text:

00000000004003b0 <.text>:
  4003b0:	d503245f 	bti	c
  4003b4:	d280001d 	mov	x29, #0x0                   	// #0
  4003b8:	d280001e 	mov	x30, #0x0                   	// #0
  4003bc:	aa0003e5 	mov	x5, x0
  4003c0:	f94003e1 	ldr	x1, [sp]
  4003c4:	910023e2 	add	x2, sp, #0x8
  4003c8:	910003e6 	mov	x6, sp
  4003cc:	90000000 	adrp	x0, 400000 <__libc_start_main@plt-0x7e8>
  4003d0:	910fb000 	add	x0, x0, #0x3ec
  4003d4:	90000003 	adrp	x3, 400000 <__libc_start_main@plt-0x7e8>
  4003d8:	911a4063 	add	x3, x3, #0x690
  4003dc:	90000004 	adrp	x4, 400000 <__libc_start_main@plt-0x7e8>
  4003e0:	911c4084 	add	x4, x4, #0x710
  4003e4:	94000101 	bl	4007e8 <__libc_start_main@plt>
  4003e8:	94000104 	bl	4007f8 <abort@plt>
  4003ec:	14000030 	b	4004ac <__libc_start_main@plt-0x33c>
  4003f0:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x107d8>
  4003f4:	f9410400 	ldr	x0, [x0, #520]
  4003f8:	b4000040 	cbz	x0, 400400 <__libc_start_main@plt-0x3e8>
  4003fc:	14000103 	b	400808 <__gmon_start__@plt>
  400400:	d65f03c0 	ret
  400404:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  400408:	ad0087e0 	stp	q0, q1, [sp, #16]
  40040c:	ad018fe2 	stp	q2, q3, [sp, #48]
  400410:	ad0297e4 	stp	q4, q5, [sp, #80]
  400414:	ad039fe6 	stp	q6, q7, [sp, #112]
  400418:	a90923e8 	stp	x8, x8, [sp, #144]
  40041c:	a90a07e0 	stp	x0, x1, [sp, #160]
  400420:	a90b0fe2 	stp	x2, x3, [sp, #176]
  400424:	a90c17e4 	stp	x4, x5, [sp, #192]
  400428:	a90d1fe6 	stp	x6, x7, [sp, #208]
  40042c:	910003fd 	mov	x29, sp
  400430:	d10043ff 	sub	sp, sp, #0x10
  400434:	d503201f 	nop
  400438:	b940a3a0 	ldr	w0, [x29, #160]
  40043c:	52800001 	mov	w1, #0x0                   	// #0
  400440:	6b01001f 	cmp	w0, w1
  400444:	1a9f17e0 	cset	w0, eq  // eq = none
  400448:	35000040 	cbnz	w0, 400450 <__libc_start_main@plt-0x398>
  40044c:	14000003 	b	400458 <__libc_start_main@plt-0x390>
  400450:	52800000 	mov	w0, #0x0                   	// #0
  400454:	14000013 	b	4004a0 <__libc_start_main@plt-0x348>
  400458:	b940a3a0 	ldr	w0, [x29, #160]
  40045c:	52800041 	mov	w1, #0x2                   	// #2
  400460:	6b01001f 	cmp	w0, w1
  400464:	1a9f87e0 	cset	w0, ls  // ls = plast
  400468:	35000040 	cbnz	w0, 400470 <__libc_start_main@plt-0x378>
  40046c:	14000003 	b	400478 <__libc_start_main@plt-0x370>
  400470:	52800020 	mov	w0, #0x1                   	// #1
  400474:	1400000b 	b	4004a0 <__libc_start_main@plt-0x348>
  400478:	b940a3a0 	ldr	w0, [x29, #160]
  40047c:	51000400 	sub	w0, w0, #0x1
  400480:	97ffffe1 	bl	400404 <__libc_start_main@plt-0x3e4>
  400484:	b940a3a1 	ldr	w1, [x29, #160]
  400488:	51000821 	sub	w1, w1, #0x2
  40048c:	f81f83a0 	stur	x0, [x29, #-8]
  400490:	aa0103e0 	mov	x0, x1
  400494:	97ffffdc 	bl	400404 <__libc_start_main@plt-0x3e4>
  400498:	f85f83a1 	ldur	x1, [x29, #-8]
  40049c:	8b000020 	add	x0, x1, x0
  4004a0:	910003bf 	mov	sp, x29
  4004a4:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  4004a8:	d65f03c0 	ret
  4004ac:	a9b27bfd 	stp	x29, x30, [sp, #-224]!
  4004b0:	ad0087e0 	stp	q0, q1, [sp, #16]
  4004b4:	ad018fe2 	stp	q2, q3, [sp, #48]
  4004b8:	ad0297e4 	stp	q4, q5, [sp, #80]
  4004bc:	ad039fe6 	stp	q6, q7, [sp, #112]
  4004c0:	a90923e8 	stp	x8, x8, [sp, #144]
  4004c4:	a90a07e0 	stp	x0, x1, [sp, #160]
  4004c8:	a90b0fe2 	stp	x2, x3, [sp, #176]
  4004cc:	a90c17e4 	stp	x4, x5, [sp, #192]
  4004d0:	a90d1fe6 	stp	x6, x7, [sp, #208]
  4004d4:	910003fd 	mov	x29, sp
  4004d8:	d10203ff 	sub	sp, sp, #0x80
  4004dc:	d503201f 	nop
  4004e0:	52800682 	mov	w2, #0x34                  	// #52
  4004e4:	52800001 	mov	w1, #0x0                   	// #0
  4004e8:	d100d3a0 	sub	x0, x29, #0x34
  4004ec:	940000cb 	bl	400818 <memset@plt>
  4004f0:	52800020 	mov	w0, #0x1                   	// #1
  4004f4:	b81d03a0 	stur	w0, [x29, #-48]
  4004f8:	52800020 	mov	w0, #0x1                   	// #1
  4004fc:	b81d43a0 	stur	w0, [x29, #-44]
  400500:	52800040 	mov	w0, #0x2                   	// #2
  400504:	b81d83a0 	stur	w0, [x29, #-40]
  400508:	52800060 	mov	w0, #0x3                   	// #3
  40050c:	b81dc3a0 	stur	w0, [x29, #-36]
  400510:	528000a0 	mov	w0, #0x5                   	// #5
  400514:	b81e03a0 	stur	w0, [x29, #-32]
  400518:	52800100 	mov	w0, #0x8                   	// #8
  40051c:	b81e43a0 	stur	w0, [x29, #-28]
  400520:	528001a0 	mov	w0, #0xd                   	// #13
  400524:	b81e83a0 	stur	w0, [x29, #-24]
  400528:	528002a0 	mov	w0, #0x15                  	// #21
  40052c:	b81ec3a0 	stur	w0, [x29, #-20]
  400530:	52800440 	mov	w0, #0x22                  	// #34
  400534:	b81f03a0 	stur	w0, [x29, #-16]
  400538:	52801d20 	mov	w0, #0xe9                  	// #233
  40053c:	b81f43a0 	stur	w0, [x29, #-12]
  400540:	d284a220 	mov	x0, #0x2511                	// #9489
  400544:	f2a00020 	movk	x0, #0x1, lsl #16
  400548:	b81f83a0 	stur	w0, [x29, #-8]
  40054c:	d28fd960 	mov	x0, #0x7ecb                	// #32459
  400550:	f2a0c320 	movk	x0, #0x619, lsl #16
  400554:	b81fc3a0 	stur	w0, [x29, #-4]
  400558:	52800682 	mov	w2, #0x34                  	// #52
  40055c:	52800001 	mov	w1, #0x0                   	// #0
  400560:	d101a3a0 	sub	x0, x29, #0x68
  400564:	940000ad 	bl	400818 <memset@plt>
  400568:	52800020 	mov	w0, #0x1                   	// #1
  40056c:	b819c3a0 	stur	w0, [x29, #-100]
  400570:	52800040 	mov	w0, #0x2                   	// #2
  400574:	b81a03a0 	stur	w0, [x29, #-96]
  400578:	52800060 	mov	w0, #0x3                   	// #3
  40057c:	b81a43a0 	stur	w0, [x29, #-92]
  400580:	52800080 	mov	w0, #0x4                   	// #4
  400584:	b81a83a0 	stur	w0, [x29, #-88]
  400588:	528000a0 	mov	w0, #0x5                   	// #5
  40058c:	b81ac3a0 	stur	w0, [x29, #-84]
  400590:	528000c0 	mov	w0, #0x6                   	// #6
  400594:	b81b03a0 	stur	w0, [x29, #-80]
  400598:	528000e0 	mov	w0, #0x7                   	// #7
  40059c:	b81b43a0 	stur	w0, [x29, #-76]
  4005a0:	52800100 	mov	w0, #0x8                   	// #8
  4005a4:	b81b83a0 	stur	w0, [x29, #-72]
  4005a8:	52800120 	mov	w0, #0x9                   	// #9
  4005ac:	b81bc3a0 	stur	w0, [x29, #-68]
  4005b0:	528001a0 	mov	w0, #0xd                   	// #13
  4005b4:	b81c03a0 	stur	w0, [x29, #-64]
  4005b8:	52800320 	mov	w0, #0x19                  	// #25
  4005bc:	b81c43a0 	stur	w0, [x29, #-60]
  4005c0:	52800500 	mov	w0, #0x28                  	// #40
  4005c4:	b81c83a0 	stur	w0, [x29, #-56]
  4005c8:	52800000 	mov	w0, #0x0                   	// #0
  4005cc:	b81943a0 	stur	w0, [x29, #-108]
  4005d0:	b85943a0 	ldur	w0, [x29, #-108]
  4005d4:	528001a1 	mov	w1, #0xd                   	// #13
  4005d8:	6b01001f 	cmp	w0, w1
  4005dc:	1a9fa7e0 	cset	w0, lt  // lt = tstop
  4005e0:	35000040 	cbnz	w0, 4005e8 <__libc_start_main@plt-0x200>
  4005e4:	14000026 	b	40067c <__libc_start_main@plt-0x16c>
  4005e8:	14000006 	b	400600 <__libc_start_main@plt-0x1e8>
  4005ec:	b85943a0 	ldur	w0, [x29, #-108]
  4005f0:	aa0003e1 	mov	x1, x0
  4005f4:	11000400 	add	w0, w0, #0x1
  4005f8:	b81943a0 	stur	w0, [x29, #-108]
  4005fc:	17fffff5 	b	4005d0 <__libc_start_main@plt-0x218>
  400600:	b85943a0 	ldur	w0, [x29, #-108]
  400604:	93407c00 	sxtw	x0, w0
  400608:	d37ef400 	lsl	x0, x0, #2
  40060c:	d100d3a1 	sub	x1, x29, #0x34
  400610:	8b000020 	add	x0, x1, x0
  400614:	b85943a1 	ldur	w1, [x29, #-108]
  400618:	93407c21 	sxtw	x1, w1
  40061c:	d37ef421 	lsl	x1, x1, #2
  400620:	d101a3a2 	sub	x2, x29, #0x68
  400624:	8b010041 	add	x1, x2, x1
  400628:	f81883a0 	stur	x0, [x29, #-120]
  40062c:	b9400020 	ldr	w0, [x1]
  400630:	97ffff75 	bl	400404 <__libc_start_main@plt-0x3e4>
  400634:	f85883be 	ldur	x30, [x29, #-120]
  400638:	b94003c1 	ldr	w1, [x30]
  40063c:	93407c21 	sxtw	x1, w1
  400640:	eb00003f 	cmp	x1, x0
  400644:	1a9f17e0 	cset	w0, eq  // eq = none
  400648:	35000040 	cbnz	w0, 400650 <__libc_start_main@plt-0x198>
  40064c:	14000002 	b	400654 <__libc_start_main@plt-0x194>
  400650:	1400000a 	b	400678 <__libc_start_main@plt-0x170>
  400654:	b0000083 	adrp	x3, 411000 <__assert_fail@plt+0x107d8>
  400658:	f9410863 	ldr	x3, [x3, #528]
  40065c:	52800362 	mov	w2, #0x1b                  	// #27
  400660:	b0000081 	adrp	x1, 411000 <__assert_fail@plt+0x107d8>
  400664:	f9410c21 	ldr	x1, [x1, #536]
  400668:	b0000080 	adrp	x0, 411000 <__assert_fail@plt+0x107d8>
  40066c:	f9411000 	ldr	x0, [x0, #544]
  400670:	9400006e 	bl	400828 <__assert_fail@plt>
  400674:	d503201f 	nop
  400678:	17ffffdd 	b	4005ec <__libc_start_main@plt-0x1fc>
  40067c:	52800000 	mov	w0, #0x0                   	// #0
  400680:	910003bf 	mov	sp, x29
  400684:	a8ce7bfd 	ldp	x29, x30, [sp], #224
  400688:	d65f03c0 	ret
  40068c:	00000000 	udf	#0
  400690:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  400694:	910003fd 	mov	x29, sp
  400698:	a90153f3 	stp	x19, x20, [sp, #16]
  40069c:	90000014 	adrp	x20, 400000 <__libc_start_main@plt-0x7e8>
  4006a0:	911f2294 	add	x20, x20, #0x7c8
  4006a4:	a9025bf5 	stp	x21, x22, [sp, #32]
  4006a8:	90000015 	adrp	x21, 400000 <__libc_start_main@plt-0x7e8>
  4006ac:	911f22b5 	add	x21, x21, #0x7c8
  4006b0:	cb150294 	sub	x20, x20, x21
  4006b4:	2a0003f6 	mov	w22, w0
  4006b8:	a90363f7 	stp	x23, x24, [sp, #48]
  4006bc:	aa0103f7 	mov	x23, x1
  4006c0:	aa0203f8 	mov	x24, x2
  4006c4:	9343fe94 	asr	x20, x20, #3
  4006c8:	9400001c 	bl	400738 <__libc_start_main@plt-0xb0>
  4006cc:	b4000174 	cbz	x20, 4006f8 <__libc_start_main@plt-0xf0>
  4006d0:	d2800013 	mov	x19, #0x0                   	// #0
  4006d4:	d503201f 	nop
  4006d8:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
  4006dc:	aa1803e2 	mov	x2, x24
  4006e0:	91000673 	add	x19, x19, #0x1
  4006e4:	aa1703e1 	mov	x1, x23
  4006e8:	2a1603e0 	mov	w0, w22
  4006ec:	d63f0060 	blr	x3
  4006f0:	eb13029f 	cmp	x20, x19
  4006f4:	54ffff21 	b.ne	4006d8 <__libc_start_main@plt-0x110>  // b.any
  4006f8:	a94153f3 	ldp	x19, x20, [sp, #16]
  4006fc:	a9425bf5 	ldp	x21, x22, [sp, #32]
  400700:	a94363f7 	ldp	x23, x24, [sp, #48]
  400704:	a8c47bfd 	ldp	x29, x30, [sp], #64
  400708:	d65f03c0 	ret
  40070c:	d503201f 	nop
  400710:	d65f03c0 	ret

Disassembly of section .init:

0000000000400738 <.init>:
  400738:	d503245f 	bti	c
  40073c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400740:	910003fd 	mov	x29, sp
  400744:	97ffff2b 	bl	4003f0 <__libc_start_main@plt-0x3f8>
  400748:	a8c17bfd 	ldp	x29, x30, [sp], #16
  40074c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400750 <.fini>:
  400750:	d503245f 	bti	c
  400754:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400758:	910003fd 	mov	x29, sp
  40075c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400760:	d65f03c0 	ret

Disassembly of section .plt:

00000000004007c8 <__libc_start_main@plt-0x20>:
  4007c8:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  4007cc:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x107d8>
  4007d0:	f940ee11 	ldr	x17, [x16, #472]
  4007d4:	91076210 	add	x16, x16, #0x1d8
  4007d8:	d61f0220 	br	x17
  4007dc:	d503201f 	nop
  4007e0:	d503201f 	nop
  4007e4:	d503201f 	nop

00000000004007e8 <__libc_start_main@plt>:
  4007e8:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x107d8>
  4007ec:	f940f211 	ldr	x17, [x16, #480]
  4007f0:	91078210 	add	x16, x16, #0x1e0
  4007f4:	d61f0220 	br	x17

00000000004007f8 <abort@plt>:
  4007f8:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x107d8>
  4007fc:	f940f611 	ldr	x17, [x16, #488]
  400800:	9107a210 	add	x16, x16, #0x1e8
  400804:	d61f0220 	br	x17

0000000000400808 <__gmon_start__@plt>:
  400808:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x107d8>
  40080c:	f940fa11 	ldr	x17, [x16, #496]
  400810:	9107c210 	add	x16, x16, #0x1f0
  400814:	d61f0220 	br	x17

0000000000400818 <memset@plt>:
  400818:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x107d8>
  40081c:	f940fe11 	ldr	x17, [x16, #504]
  400820:	9107e210 	add	x16, x16, #0x1f8
  400824:	d61f0220 	br	x17

0000000000400828 <__assert_fail@plt>:
  400828:	b0000090 	adrp	x16, 411000 <__assert_fail@plt+0x107d8>
  40082c:	f9410211 	ldr	x17, [x16, #512]
  400830:	91080210 	add	x16, x16, #0x200
  400834:	d61f0220 	br	x17
