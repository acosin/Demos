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
	.file	"map.cpp"
	.section	.text._ZN3MapC2Ev,"ax",%progbits
	.align	2
	.global	_ZN3MapC2Ev
	.hidden	_ZN3MapC2Ev
	.type	_ZN3MapC2Ev, %function
_ZN3MapC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s15, .L5
	fsts	s15, [r0, #4]
	fsts	s15, [r0, #0]
	bx	lr
.L6:
	.align	2
.L5:
	.word	0
	.size	_ZN3MapC2Ev, .-_ZN3MapC2Ev
	.section	.text._ZN3MapC1Ev,"ax",%progbits
	.align	2
	.global	_ZN3MapC1Ev
	.hidden	_ZN3MapC1Ev
	.type	_ZN3MapC1Ev, %function
_ZN3MapC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s15, .L11
	fsts	s15, [r0, #4]
	fsts	s15, [r0, #0]
	bx	lr
.L12:
	.align	2
.L11:
	.word	0
	.size	_ZN3MapC1Ev, .-_ZN3MapC1Ev
	.section	.text._ZN3MapD2Ev,"ax",%progbits
	.align	2
	.global	_ZN3MapD2Ev
	.hidden	_ZN3MapD2Ev
	.type	_ZN3MapD2Ev, %function
_ZN3MapD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #16]
	cmp	r0, #0
	beq	.L14
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L14:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN3MapD2Ev, .-_ZN3MapD2Ev
	.section	.text._ZN3MapD1Ev,"ax",%progbits
	.align	2
	.global	_ZN3MapD1Ev
	.hidden	_ZN3MapD1Ev
	.type	_ZN3MapD1Ev, %function
_ZN3MapD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #16]
	cmp	r0, #0
	beq	.L18
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L18:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN3MapD1Ev, .-_ZN3MapD1Ev
	.section	.text._ZN3Map6UpdateEi,"ax",%progbits
	.align	2
	.global	_ZN3Map6UpdateEi
	.hidden	_ZN3Map6UpdateEi
	.type	_ZN3Map6UpdateEi, %function
_ZN3Map6UpdateEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN3Map6UpdateEi, .-_ZN3Map6UpdateEi
	.section	.text._ZN3Map6ChangeEv,"ax",%progbits
	.align	2
	.global	_ZN3Map6ChangeEv
	.hidden	_ZN3Map6ChangeEv
	.type	_ZN3Map6ChangeEv, %function
_ZN3Map6ChangeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN3Map6ChangeEv, .-_ZN3Map6ChangeEv
	.section	.text._ZN3Map10GetMapSizeEv,"ax",%progbits
	.align	2
	.global	_ZN3Map10GetMapSizeEv
	.hidden	_ZN3Map10GetMapSizeEv
	.type	_ZN3Map10GetMapSizeEv, %function
_ZN3Map10GetMapSizeEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	ldr	r1, [r0, #20]
	str	r1, [sp, #4]
	ldrh	r0, [sp, #6]
	ldrh	r3, [sp, #4]
	orr	r0, r3, r0, asl #16
	add	sp, sp, #8
	bx	lr
	.size	_ZN3Map10GetMapSizeEv, .-_ZN3Map10GetMapSizeEv
	.section	.text._ZN3Map12CheckMapEdgeEv,"ax",%progbits
	.align	2
	.global	_ZN3Map12CheckMapEdgeEv
	.hidden	_ZN3Map12CheckMapEdgeEv
	.type	_ZN3Map12CheckMapEdgeEv, %function
_ZN3Map12CheckMapEdgeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	fstmfdd	sp!, {d8}
	flds	s15, .L44
	mov	r4, r0
	flds	s16, [r0, #0]
	fcmpes	s16, s15
	fmstat
	fstsmi	s15, [r0, #0]
	movmi	r3, #0
	bmi	.L29
	flds	s14, [r0, #4]
	fcmpezs	s14
	fmstat
	fstsmi	s15, [r0, #4]
	movmi	r3, #0
	bpl	.L42
.L29:
	mov	r0, r3
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, pc}
.L42:
	bl	_Z19Iw2DGetSurfaceWidthv
	ldrsh	r3, [r4, #20]
	fmsr	s17, r3	@ int
	fsitos	s17, s17
	fmsr	s0, r0	@ int
	fsitos	s15, s0
	fadds	s16, s16, s15
	fcmpes	s16, s17
	fmstat
	bgt	.L43
	flds	s17, [r4, #4]
	bl	_Z20Iw2DGetSurfaceHeightv
	ldrsh	r3, [r4, #22]
	fmsr	s16, r3	@ int
	fsitos	s16, s16
	fmsr	s4, r0	@ int
	fsitos	s3, s4
	fadds	s17, s17, s3
	fcmpes	s17, s16
	fmstat
	movle	r3, #1
	ble	.L29
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r3, #0
	fmsr	s6, r0	@ int
	fsitos	s5, s6
	fsubs	s16, s16, s5
	fsts	s16, [r4, #4]
	b	.L29
.L43:
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r3, #0
	fmsr	s2, r0	@ int
	fsitos	s1, s2
	fsubs	s17, s17, s1
	fsts	s17, [r4, #0]
	b	.L29
.L45:
	.align	2
.L44:
	.word	0
	.size	_ZN3Map12CheckMapEdgeEv, .-_ZN3Map12CheckMapEdgeEv
	.section	.text._ZN3Map12CheckMapEdgeER8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN3Map12CheckMapEdgeER8CIwFVec2
	.hidden	_ZN3Map12CheckMapEdgeER8CIwFVec2
	.type	_ZN3Map12CheckMapEdgeER8CIwFVec2, %function
_ZN3Map12CheckMapEdgeER8CIwFVec2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	flds	s15, .L64
	fstmfdd	sp!, {d8}
	flds	s16, [r1, #0]
	mov	r4, r1
	mov	r5, r0
	fcmpes	s16, s15
	fmstat
	fstsmi	s15, [r1, #0]
	movmi	r3, #0
	bmi	.L49
	flds	s14, [r1, #4]
	fcmpezs	s14
	fmstat
	fstsmi	s15, [r1, #4]
	movmi	r3, #0
	bpl	.L62
.L49:
	mov	r0, r3
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r3, r4, r5, pc}
.L62:
	bl	_Z19Iw2DGetSurfaceWidthv
	ldrsh	r3, [r5, #20]
	fmsr	s17, r3	@ int
	fsitos	s17, s17
	fmsr	s0, r0	@ int
	fsitos	s15, s0
	fadds	s16, s16, s15
	fcmpes	s16, s17
	fmstat
	bgt	.L63
	flds	s17, [r4, #4]
	bl	_Z20Iw2DGetSurfaceHeightv
	ldrsh	r5, [r5, #22]
	fmsr	s16, r5	@ int
	fsitos	s16, s16
	fmsr	s4, r0	@ int
	fsitos	s3, s4
	fadds	s17, s17, s3
	fcmpes	s17, s16
	fmstat
	movle	r3, #1
	ble	.L49
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r3, #0
	fmsr	s6, r0	@ int
	fsitos	s5, s6
	fsubs	s16, s16, s5
	fsts	s16, [r4, #4]
	b	.L49
.L63:
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r3, #0
	fmsr	s2, r0	@ int
	fsitos	s1, s2
	fsubs	s17, s17, s1
	fsts	s17, [r4, #0]
	b	.L49
.L65:
	.align	2
.L64:
	.word	0
	.size	_ZN3Map12CheckMapEdgeER8CIwFVec2, .-_ZN3Map12CheckMapEdgeER8CIwFVec2
	.section	.text._ZN3Map6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN3Map6RenderEv
	.hidden	_ZN3Map6RenderEv
	.type	_ZN3Map6RenderEv, %function
_ZN3Map6RenderEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s1, [r0, #0]
	flds	s0, [r0, #4]
	sub	sp, sp, #8
	ldr	r0, [r0, #16]
	ftosizs	s14, s1
	ftosizs	s15, s0
	fmrs	ip, s14	@ int
	fmrs	r1, s15	@ int
	rsb	r2, ip, #0
	rsb	r3, r1, #0
	strh	r2, [sp, #4]	@ movhi
	strh	r3, [sp, #6]	@ movhi
	ldr	r1, [sp, #4]
	add	sp, sp, #8
	b	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2
	.size	_ZN3Map6RenderEv, .-_ZN3Map6RenderEv
	.section	.text._ZN3Map4LoadEv,"ax",%progbits
	.align	2
	.global	_ZN3Map4LoadEv
	.hidden	_ZN3Map4LoadEv
	.type	_ZN3Map4LoadEv, %function
_ZN3Map4LoadEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L72
	bl	_Z23Iw2DCreateImageResourcePKc
	str	r0, [r4, #16]
	ldr	r3, [r0, #0]
	ldr	ip, [r3, #0]
	blx	ip
	ldr	r2, [r4, #16]
	ldr	r1, [r2, #0]
	ldr	r3, [r1, #4]
	mov	r5, r0, asl #16
	mov	r0, r2
	blx	r3
	mov	r5, r5, lsr #16
	strh	r5, [r4, #20]	@ movhi
	strh	r0, [r4, #22]	@ movhi
	ldmfd	sp!, {r3, r4, r5, pc}
.L73:
	.align	2
.L72:
	.word	.LC0
	.size	_ZN3Map4LoadEv, .-_ZN3Map4LoadEv
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"map_edit\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
