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
	.file	"pipeline_01.c"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	mov	r3, #10
	str	r3, [sp, #20]
	ldr	r3, [sp, #20]
	add	r3, r3, #30
	str	r3, [sp, #16]
	mov	r3, #20
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	add	r3, r3, #20
	str	r3, [sp, #8]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #12]
	add	r2, r2, r3
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	bx	lr
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 13.2.rel1 (Build arm-13.7)) 13.2.1 20231009"
