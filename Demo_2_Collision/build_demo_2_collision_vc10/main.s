	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 2
	.file	"main.cpp"
	.section	.text._Z4Exitv,"ax",%progbits
	.align	2
	.global	_Z4Exitv
	.hidden	_Z4Exitv
	.type	_Z4Exitv, %function
_Z4Exitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L5
	stmfd	sp!, {r4, lr}
	ldr	r4, [r3, #0]
	cmp	r4, #0
	beq	.L2
	mov	r0, r4
	bl	_ZN5CGameD1Ev
	mov	r0, r4
	bl	_ZdlPv
.L2:
	bl	_Z21IwResManagerTerminatev
	bl	_Z13Iw2DTerminatev
	mov	r0, #0
	ldmfd	sp!, {r4, pc}
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.size	_Z4Exitv, .-_Z4Exitv
	.section	.text._Z14GetUpdateFramev,"ax",%progbits
	.align	2
	.global	_Z14GetUpdateFramev
	.hidden	_Z14GetUpdateFramev
	.type	_Z14GetUpdateFramev, %function
_Z14GetUpdateFramev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	bl	s3eTimerGetMs
	mov	r0, r0, lsr #4
	orr	r0, r0, r1, asl #28
	ldmfd	sp!, {r3, pc}
	.size	_Z14GetUpdateFramev, .-_Z14GetUpdateFramev
	.section	.text._Z4Loopv,"ax",%progbits
	.align	2
	.global	_Z4Loopv
	.hidden	_Z4Loopv
	.type	_Z4Loopv, %function
_Z4Loopv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r0, #0
	bl	s3eDeviceYield
	bl	s3eDeviceCheckQuitRequest
	subs	r5, r0, #0
	movne	r0, #0
	ldmnefd	sp!, {r3, r4, r5, pc}
	bl	s3eTimerGetMs
	ldr	r4, .L15
	ldr	r3, [r4, #4]
	subs	r3, r0, r3
	str	r0, [r4, #4]
	movmi	r1, r5
	bmi	.L13
	cmp	r3, #100
	movlt	r1, r3
	movge	r1, #100
.L13:
	ldr	r0, [r4, #0]
	bl	_ZN5CGame6UpdateEi
	ldr	r0, [r4, #0]
	bl	_ZN5CGame6RenderEv
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	_Z4Loopv, .-_Z4Loopv
	.section	.text._Z7Preparev,"ax",%progbits
	.align	2
	.global	_Z7Preparev
	.hidden	_Z7Preparev
	.type	_Z7Preparev, %function
_Z7Preparev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L19
	stmfd	sp!, {r3, lr}
	ldr	r1, .L19+4
	ldr	r0, [r2, #0]
	mov	r2, #0
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	ldr	r3, .L19+8
	ldr	r0, [r3, #0]
	bl	_ZN5CGame7LoadResEv
	mov	r0, #1
	ldmfd	sp!, {r3, pc}
.L20:
	.align	2
.L19:
	.word	g_IwResManager
	.word	.LC0
	.word	.LANCHOR0
	.size	_Z7Preparev, .-_Z7Preparev
	.section	.text._Z7Initialv,"ax",%progbits
	.align	2
	.global	_Z7Initialv
	.hidden	_Z7Initialv
	.type	_Z7Initialv, %function
_Z7Initialv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	_Z8Iw2DInitv
	bl	_Z16IwResManagerInitv
	mov	r0, #16
	bl	_Znwj
	ldr	r4, .L23
	mov	r5, r0
	bl	_ZN5CGameC1Ev
	str	r5, [r4, #0]
	bl	s3eTimerGetMs
	str	r0, [r4, #4]
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.size	_Z7Initialv, .-_Z7Initialv
	.section	.text.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	_Z8Iw2DInitv
	bl	_Z16IwResManagerInitv
	mov	r0, #16
	bl	_Znwj
	ldr	r4, .L33
	mov	r5, r0
	bl	_ZN5CGameC1Ev
	str	r5, [r4, #0]
	bl	s3eTimerGetMs
	ldr	r3, .L33+4
	ldr	r1, .L33+8
	mov	r2, #0
	str	r0, [r4, #4]
	ldr	r0, [r3, #0]
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	ldr	r0, [r4, #0]
	bl	_ZN5CGame7LoadResEv
.L29:
	mov	r0, #0
	bl	s3eDeviceYield
	bl	s3eDeviceCheckQuitRequest
	subs	r5, r0, #0
	beq	.L32
	ldr	r4, [r4, #0]
	cmp	r4, #0
	beq	.L30
	mov	r0, r4
	bl	_ZN5CGameD1Ev
	mov	r0, r4
	bl	_ZdlPv
.L30:
	bl	_Z21IwResManagerTerminatev
	bl	_Z13Iw2DTerminatev
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L32:
	bl	s3eTimerGetMs
	ldr	r2, [r4, #4]
	subs	r3, r0, r2
	str	r0, [r4, #4]
	movmi	r1, r5
	bmi	.L28
	cmp	r3, #100
	movlt	r1, r3
	movge	r1, #100
.L28:
	ldr	r0, [r4, #0]
	bl	_ZN5CGame6UpdateEi
	ldr	r0, [r4, #0]
	bl	_ZN5CGame6RenderEv
	b	.L29
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	g_IwResManager
	.word	.LC0
	.size	main, .-main
	.hidden	pGame
	.global	pGame
	.hidden	timer
	.global	timer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"imgs.group\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pGame, %object
	.size	pGame, 4
pGame:
	.space	4
	.type	timer, %object
	.size	timer, 4
timer:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
