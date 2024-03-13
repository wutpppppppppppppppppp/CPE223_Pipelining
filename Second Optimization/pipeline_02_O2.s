	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"pipeline_02.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Error\000"
	.align	2
.LC3:
	.ascii	"A\000"
	.align	2
.LC4:
	.ascii	"B\000"
	.align	2
.LC5:
	.ascii	"C\000"
	.align	2
.LC6:
	.ascii	"D\000"
	.align	2
.LC7:
	.ascii	"F\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	ldr	r0, .L15
	add	r1, sp, #4
	bl	scanf
	ldr	r3, [sp, #4]
	cmp	r3, #100
	bgt	.L8
	cmp	r3, #80
	bgt	.L11
	cmp	r3, #70
	bgt	.L12
	cmp	r3, #60
	bgt	.L13
	cmp	r3, #49
	bgt	.L14
	cmp	r3, #0
	blt	.L8
	ldr	r0, .L15+4
	bl	puts
	b	.L3
.L11:
	ldr	r0, .L15+8
	bl	puts
.L3:
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L8:
	ldr	r0, .L15+12
	bl	puts
	b	.L3
.L14:
	ldr	r0, .L15+16
	bl	puts
	b	.L3
.L12:
	ldr	r0, .L15+20
	bl	puts
	b	.L3
.L13:
	ldr	r0, .L15+24
	bl	puts
	b	.L3
.L16:
	.align	2
.L15:
	.word	.LC1
	.word	.LC7
	.word	.LC3
	.word	.LC2
	.word	.LC6
	.word	.LC4
	.word	.LC5
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 13.2.rel1 (Build arm-13.7)) 13.2.1 20231009"
