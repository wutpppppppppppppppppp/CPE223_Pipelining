	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"pipeline_03.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%ld\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L2
.L5:
	mov	r3, #0
	str	r3, [sp, #8]
	b	.L3
.L4:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	add	r3, r2, r3
	str	r3, [sp]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	add	r3, r2, r3
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L3:
	ldr	r3, [sp, #8]
	cmp	r3, #9
	ble	.L4
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L2:
	ldr	r3, [sp, #12]
	cmp	r3, #9
	ble	.L5
	ldr	r1, [sp, #4]
	ldr	r0, .L7
	bl	printf
	mov	r3, #0
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 13.2.rel1 (Build arm-13.7)) 13.2.1 20231009"
