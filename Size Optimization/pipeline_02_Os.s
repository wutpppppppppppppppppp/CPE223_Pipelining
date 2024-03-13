	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"pipeline_02.c"
	.text
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC1:
	.ascii	"%d\000"
.LC2:
	.ascii	"Error\000"
.LC3:
	.ascii	"A\000"
.LC4:
	.ascii	"B\000"
.LC5:
	.ascii	"C\000"
.LC6:
	.ascii	"D\000"
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
	push	{r0, r1, r2, lr}
	ldr	r0, .L11
	add	r1, sp, #4
	bl	scanf
	ldr	r3, [sp, #4]
	cmp	r3, #100
	ble	.L2
.L8:
	ldr	r0, .L11+4
.L10:
	bl	puts
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L2:
	cmp	r3, #80
	ldrgt	r0, .L11+8
	bgt	.L10
	cmp	r3, #70
	ldrgt	r0, .L11+12
	bgt	.L10
	cmp	r3, #60
	ldrgt	r0, .L11+16
	bgt	.L10
	cmp	r3, #49
	ldrgt	r0, .L11+20
	bgt	.L10
	cmp	r3, #0
	blt	.L8
	ldr	r0, .L11+24
	b	.L10
.L12:
	.align	2
.L11:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 13.2.rel1 (Build arm-13.7)) 13.2.1 20231009"
