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
	.file	"pipeline_03.c"
	.text
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"%ld\012\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
.L2:
	add	r2, r3, r3, lsl #3
	add	r1, r3, r1
	add	r3, r3, #1
	add	r2, r2, #45
	cmp	r3, #10
	add	r1, r2, r1
	bne	.L2
	ldr	r0, .L5
	bl	printf
	mov	r0, #0
	pop	{r4, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 13.2.rel1 (Build arm-13.7)) 13.2.1 20231009"
