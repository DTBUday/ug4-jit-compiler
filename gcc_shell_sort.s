
gcc_shell_sort.out:     file format elf64-littleaarch64


Disassembly of section .init:

00000000000006a0 <_init>:
 6a0:	d503245f 	bti	c
 6a4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 6a8:	910003fd 	mov	x29, sp
 6ac:	94000054 	bl	7fc <call_weak_fn>
 6b0:	a8c17bfd 	ldp	x29, x30, [sp], #16
 6b4:	d65f03c0 	ret

Disassembly of section .plt:

00000000000006c0 <.plt>:
 6c0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 6c4:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf388>
 6c8:	f947fe11 	ldr	x17, [x16, #4088]
 6cc:	913fe210 	add	x16, x16, #0xff8
 6d0:	d61f0220 	br	x17
 6d4:	d503201f 	nop
 6d8:	d503201f 	nop
 6dc:	d503201f 	nop

00000000000006e0 <time@plt>:
 6e0:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 6e4:	f9400211 	ldr	x17, [x16]
 6e8:	91000210 	add	x16, x16, #0x0
 6ec:	d61f0220 	br	x17

00000000000006f0 <malloc@plt>:
 6f0:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 6f4:	f9400611 	ldr	x17, [x16, #8]
 6f8:	91002210 	add	x16, x16, #0x8
 6fc:	d61f0220 	br	x17

0000000000000700 <__libc_start_main@plt>:
 700:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 704:	f9400a11 	ldr	x17, [x16, #16]
 708:	91004210 	add	x16, x16, #0x10
 70c:	d61f0220 	br	x17

0000000000000710 <__gmon_start__@plt>:
 710:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 714:	f9400e11 	ldr	x17, [x16, #24]
 718:	91006210 	add	x16, x16, #0x18
 71c:	d61f0220 	br	x17

0000000000000720 <abort@plt>:
 720:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 724:	f9401211 	ldr	x17, [x16, #32]
 728:	91008210 	add	x16, x16, #0x20
 72c:	d61f0220 	br	x17

0000000000000730 <free@plt>:
 730:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 734:	f9401611 	ldr	x17, [x16, #40]
 738:	9100a210 	add	x16, x16, #0x28
 73c:	d61f0220 	br	x17

0000000000000740 <srand@plt>:
 740:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 744:	f9401a11 	ldr	x17, [x16, #48]
 748:	9100c210 	add	x16, x16, #0x30
 74c:	d61f0220 	br	x17

0000000000000750 <printf@plt>:
 750:	b0000090 	adrp	x16, 11000 <time@GLIBC_2.17>
 754:	f9401e11 	ldr	x17, [x16, #56]
 758:	9100e210 	add	x16, x16, #0x38
 75c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000760 <main>:
 760:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 764:	d2800000 	mov	x0, #0x0                   	// #0
 768:	910003fd 	mov	x29, sp
 76c:	f9000bf3 	str	x19, [sp, #16]
 770:	97ffffdc 	bl	6e0 <time@plt>
 774:	97fffff3 	bl	740 <srand@plt>
 778:	52800013 	mov	w19, #0x0                   	// #0
 77c:	2a1303e1 	mov	w1, w19
 780:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 784:	912b8000 	add	x0, x0, #0xae0
 788:	97fffff2 	bl	750 <printf@plt>
 78c:	d2800000 	mov	x0, #0x0                   	// #0
 790:	97ffffd8 	bl	6f0 <malloc@plt>
 794:	2a1303e1 	mov	w1, w19
 798:	aa0003f3 	mov	x19, x0
 79c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 7a0:	912be000 	add	x0, x0, #0xaf8
 7a4:	97ffffeb 	bl	750 <printf@plt>
 7a8:	aa1303e0 	mov	x0, x19
 7ac:	97ffffe1 	bl	730 <free@plt>
 7b0:	52800000 	mov	w0, #0x0                   	// #0
 7b4:	f9400bf3 	ldr	x19, [sp, #16]
 7b8:	a8c27bfd 	ldp	x29, x30, [sp], #32
 7bc:	d65f03c0 	ret

00000000000007c0 <_start>:
 7c0:	d503245f 	bti	c
 7c4:	d280001d 	mov	x29, #0x0                   	// #0
 7c8:	d280001e 	mov	x30, #0x0                   	// #0
 7cc:	aa0003e5 	mov	x5, x0
 7d0:	f94003e1 	ldr	x1, [sp]
 7d4:	910023e2 	add	x2, sp, #0x8
 7d8:	910003e6 	mov	x6, sp
 7dc:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf388>
 7e0:	f947ec00 	ldr	x0, [x0, #4056]
 7e4:	90000083 	adrp	x3, 10000 <__FRAME_END__+0xf388>
 7e8:	f947e863 	ldr	x3, [x3, #4048]
 7ec:	90000084 	adrp	x4, 10000 <__FRAME_END__+0xf388>
 7f0:	f947d884 	ldr	x4, [x4, #4016]
 7f4:	97ffffc3 	bl	700 <__libc_start_main@plt>
 7f8:	97ffffca 	bl	720 <abort@plt>

00000000000007fc <call_weak_fn>:
 7fc:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf388>
 800:	f947e400 	ldr	x0, [x0, #4040]
 804:	b4000040 	cbz	x0, 80c <call_weak_fn+0x10>
 808:	17ffffc2 	b	710 <__gmon_start__@plt>
 80c:	d65f03c0 	ret

0000000000000810 <deregister_tm_clones>:
 810:	b0000080 	adrp	x0, 11000 <time@GLIBC_2.17>
 814:	91014000 	add	x0, x0, #0x50
 818:	b0000081 	adrp	x1, 11000 <time@GLIBC_2.17>
 81c:	91014021 	add	x1, x1, #0x50
 820:	eb00003f 	cmp	x1, x0
 824:	540000c0 	b.eq	83c <deregister_tm_clones+0x2c>  // b.none
 828:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf388>
 82c:	f947dc21 	ldr	x1, [x1, #4024]
 830:	b4000061 	cbz	x1, 83c <deregister_tm_clones+0x2c>
 834:	aa0103f0 	mov	x16, x1
 838:	d61f0200 	br	x16
 83c:	d65f03c0 	ret

0000000000000840 <register_tm_clones>:
 840:	b0000080 	adrp	x0, 11000 <time@GLIBC_2.17>
 844:	91014000 	add	x0, x0, #0x50
 848:	b0000081 	adrp	x1, 11000 <time@GLIBC_2.17>
 84c:	91014021 	add	x1, x1, #0x50
 850:	cb000021 	sub	x1, x1, x0
 854:	d37ffc22 	lsr	x2, x1, #63
 858:	8b810c41 	add	x1, x2, x1, asr #3
 85c:	9341fc21 	asr	x1, x1, #1
 860:	b40000c1 	cbz	x1, 878 <register_tm_clones+0x38>
 864:	90000082 	adrp	x2, 10000 <__FRAME_END__+0xf388>
 868:	f947f042 	ldr	x2, [x2, #4064]
 86c:	b4000062 	cbz	x2, 878 <register_tm_clones+0x38>
 870:	aa0203f0 	mov	x16, x2
 874:	d61f0200 	br	x16
 878:	d65f03c0 	ret
 87c:	d503201f 	nop

0000000000000880 <__do_global_dtors_aux>:
 880:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 884:	910003fd 	mov	x29, sp
 888:	f9000bf3 	str	x19, [sp, #16]
 88c:	b0000093 	adrp	x19, 11000 <time@GLIBC_2.17>
 890:	39414260 	ldrb	w0, [x19, #80]
 894:	35000140 	cbnz	w0, 8bc <__do_global_dtors_aux+0x3c>
 898:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf388>
 89c:	f947e021 	ldr	x1, [x1, #4032]
 8a0:	b4000081 	cbz	x1, 8b0 <__do_global_dtors_aux+0x30>
 8a4:	b0000080 	adrp	x0, 11000 <time@GLIBC_2.17>
 8a8:	f9402400 	ldr	x0, [x0, #72]
 8ac:	d63f0020 	blr	x1
 8b0:	97ffffd8 	bl	810 <deregister_tm_clones>
 8b4:	52800020 	mov	w0, #0x1                   	// #1
 8b8:	39014260 	strb	w0, [x19, #80]
 8bc:	f9400bf3 	ldr	x19, [sp, #16]
 8c0:	a8c27bfd 	ldp	x29, x30, [sp], #32
 8c4:	d65f03c0 	ret
 8c8:	d503201f 	nop
 8cc:	d503201f 	nop

00000000000008d0 <frame_dummy>:
 8d0:	17ffffdc 	b	840 <register_tm_clones>
 8d4:	d503201f 	nop
 8d8:	d503201f 	nop
 8dc:	d503201f 	nop

00000000000008e0 <insertion_sort>:
 8e0:	6b01005f 	cmp	w2, w1
 8e4:	540003aa 	b.ge	958 <insertion_sort+0x78>  // b.tcont
 8e8:	4b0203ea 	neg	w10, w2
 8ec:	aa0003eb 	mov	x11, x0
 8f0:	93407c48 	sxtw	x8, w2
 8f4:	937e7c47 	sbfiz	x7, x2, #2, #32
 8f8:	937e7d4a 	sbfiz	x10, x10, #2, #32
 8fc:	2a0203ec 	mov	w12, w2
 900:	52800003 	mov	w3, #0x0                   	// #0
 904:	d503201f 	nop
 908:	aa0b03e0 	mov	x0, x11
 90c:	8b07016b 	add	x11, x11, x7
 910:	aa0b03e5 	mov	x5, x11
 914:	b8687806 	ldr	w6, [x0, x8, lsl #2]
 918:	36f800c3 	tbz	w3, #31, 930 <insertion_sort+0x50>
 91c:	1400000a 	b	944 <insertion_sort+0x64>
 920:	b8287804 	str	w4, [x0, x8, lsl #2]
 924:	6b020063 	subs	w3, w3, w2
 928:	8b0a0000 	add	x0, x0, x10
 92c:	54000184 	b.mi	95c <insertion_sort+0x7c>  // b.first
 930:	b9400004 	ldr	w4, [x0]
 934:	aa0003e9 	mov	x9, x0
 938:	8b0000e5 	add	x5, x7, x0
 93c:	6b06009f 	cmp	w4, w6
 940:	54ffff0c 	b.gt	920 <insertion_sort+0x40>
 944:	2a0c03e3 	mov	w3, w12
 948:	0b0c004c 	add	w12, w2, w12
 94c:	b90000a6 	str	w6, [x5]
 950:	6b0c003f 	cmp	w1, w12
 954:	54fffdac 	b.gt	908 <insertion_sort+0x28>
 958:	d65f03c0 	ret
 95c:	aa0903e5 	mov	x5, x9
 960:	2a0c03e3 	mov	w3, w12
 964:	0b0c004c 	add	w12, w2, w12
 968:	b90000a6 	str	w6, [x5]
 96c:	6b0c003f 	cmp	w1, w12
 970:	54fffccc 	b.gt	908 <insertion_sort+0x28>
 974:	17fffff9 	b	958 <insertion_sort+0x78>
 978:	d503201f 	nop
 97c:	d503201f 	nop

0000000000000980 <shell_sort>:
 980:	0b417c23 	add	w3, w1, w1, lsr #31
 984:	2a0103ec 	mov	w12, w1
 988:	aa0003ed 	mov	x13, x0
 98c:	13017c63 	asr	w3, w3, #1
 990:	7100043f 	cmp	w1, #0x1
 994:	5400042d 	b.le	a18 <shell_sort+0x98>
 998:	6b03019f 	cmp	w12, w3
 99c:	540003ad 	b.le	a10 <shell_sort+0x90>
 9a0:	4b0303e9 	neg	w9, w3
 9a4:	93407c67 	sxtw	x7, w3
 9a8:	937e7c66 	sbfiz	x6, x3, #2, #32
 9ac:	aa0d03eb 	mov	x11, x13
 9b0:	937e7d29 	sbfiz	x9, x9, #2, #32
 9b4:	2a0303ea 	mov	w10, w3
 9b8:	52800001 	mov	w1, #0x0                   	// #0
 9bc:	d503201f 	nop
 9c0:	aa0b03e0 	mov	x0, x11
 9c4:	8b06016b 	add	x11, x11, x6
 9c8:	aa0b03e4 	mov	x4, x11
 9cc:	b8677805 	ldr	w5, [x0, x7, lsl #2]
 9d0:	36f800c1 	tbz	w1, #31, 9e8 <shell_sort+0x68>
 9d4:	1400000a 	b	9fc <shell_sort+0x7c>
 9d8:	b8277802 	str	w2, [x0, x7, lsl #2]
 9dc:	6b030021 	subs	w1, w1, w3
 9e0:	8b090000 	add	x0, x0, x9
 9e4:	540001c4 	b.mi	a1c <shell_sort+0x9c>  // b.first
 9e8:	b9400002 	ldr	w2, [x0]
 9ec:	aa0003e8 	mov	x8, x0
 9f0:	8b0000c4 	add	x4, x6, x0
 9f4:	6b0200bf 	cmp	w5, w2
 9f8:	54ffff0b 	b.lt	9d8 <shell_sort+0x58>  // b.tstop
 9fc:	2a0a03e1 	mov	w1, w10
 a00:	0b0a006a 	add	w10, w3, w10
 a04:	b9000085 	str	w5, [x4]
 a08:	6b0c015f 	cmp	w10, w12
 a0c:	54fffdab 	b.lt	9c0 <shell_sort+0x40>  // b.tstop
 a10:	13017c63 	asr	w3, w3, #1
 a14:	35fffc23 	cbnz	w3, 998 <shell_sort+0x18>
 a18:	d65f03c0 	ret
 a1c:	aa0803e4 	mov	x4, x8
 a20:	2a0a03e1 	mov	w1, w10
 a24:	0b0a006a 	add	w10, w3, w10
 a28:	b9000085 	str	w5, [x4]
 a2c:	6b0c015f 	cmp	w10, w12
 a30:	54fffc8b 	b.lt	9c0 <shell_sort+0x40>  // b.tstop
 a34:	17fffff7 	b	a10 <shell_sort+0x90>
 a38:	d503201f 	nop
 a3c:	d503201f 	nop

0000000000000a40 <__libc_csu_init>:
 a40:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 a44:	910003fd 	mov	x29, sp
 a48:	a90153f3 	stp	x19, x20, [sp, #16]
 a4c:	90000094 	adrp	x20, 10000 <__FRAME_END__+0xf388>
 a50:	9136c294 	add	x20, x20, #0xdb0
 a54:	a9025bf5 	stp	x21, x22, [sp, #32]
 a58:	90000095 	adrp	x21, 10000 <__FRAME_END__+0xf388>
 a5c:	9136a2b5 	add	x21, x21, #0xda8
 a60:	cb150294 	sub	x20, x20, x21
 a64:	2a0003f6 	mov	w22, w0
 a68:	a90363f7 	stp	x23, x24, [sp, #48]
 a6c:	aa0103f7 	mov	x23, x1
 a70:	aa0203f8 	mov	x24, x2
 a74:	9343fe94 	asr	x20, x20, #3
 a78:	97ffff0a 	bl	6a0 <_init>
 a7c:	b4000174 	cbz	x20, aa8 <__libc_csu_init+0x68>
 a80:	d2800013 	mov	x19, #0x0                   	// #0
 a84:	d503201f 	nop
 a88:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
 a8c:	aa1803e2 	mov	x2, x24
 a90:	91000673 	add	x19, x19, #0x1
 a94:	aa1703e1 	mov	x1, x23
 a98:	2a1603e0 	mov	w0, w22
 a9c:	d63f0060 	blr	x3
 aa0:	eb13029f 	cmp	x20, x19
 aa4:	54ffff21 	b.ne	a88 <__libc_csu_init+0x48>  // b.any
 aa8:	a94153f3 	ldp	x19, x20, [sp, #16]
 aac:	a9425bf5 	ldp	x21, x22, [sp, #32]
 ab0:	a94363f7 	ldp	x23, x24, [sp, #48]
 ab4:	a8c47bfd 	ldp	x29, x30, [sp], #64
 ab8:	d65f03c0 	ret
 abc:	d503201f 	nop

0000000000000ac0 <__libc_csu_fini>:
 ac0:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000ac4 <_fini>:
 ac4:	d503245f 	bti	c
 ac8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 acc:	910003fd 	mov	x29, sp
 ad0:	a8c17bfd 	ldp	x29, x30, [sp], #16
 ad4:	d65f03c0 	ret
