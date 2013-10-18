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
	.file	"obstacle.cpp"
	.section	.text._ZN8ObstacleC2Ev,"ax",%progbits
	.align	2
	.global	_ZN8ObstacleC2Ev
	.hidden	_ZN8ObstacleC2Ev
	.type	_ZN8ObstacleC2Ev, %function
_ZN8ObstacleC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #1
	strb	r1, [r0, #12]
	strb	r2, [r0, #14]
	strb	r2, [r0, #13]
	bx	lr
	.size	_ZN8ObstacleC2Ev, .-_ZN8ObstacleC2Ev
	.section	.text._ZN8ObstacleC1Ev,"ax",%progbits
	.align	2
	.global	_ZN8ObstacleC1Ev
	.hidden	_ZN8ObstacleC1Ev
	.type	_ZN8ObstacleC1Ev, %function
_ZN8ObstacleC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #1
	strb	r1, [r0, #12]
	strb	r2, [r0, #14]
	strb	r2, [r0, #13]
	bx	lr
	.size	_ZN8ObstacleC1Ev, .-_ZN8ObstacleC1Ev
	.section	.text._ZN8ObstacleD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8ObstacleD2Ev
	.hidden	_ZN8ObstacleD2Ev
	.type	_ZN8ObstacleD2Ev, %function
_ZN8ObstacleD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN8ObstacleD2Ev, .-_ZN8ObstacleD2Ev
	.section	.text._ZN8ObstacleD1Ev,"ax",%progbits
	.align	2
	.global	_ZN8ObstacleD1Ev
	.hidden	_ZN8ObstacleD1Ev
	.type	_ZN8ObstacleD1Ev, %function
_ZN8ObstacleD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN8ObstacleD1Ev, .-_ZN8ObstacleD1Ev
	.section	.text._ZN8Obstacle6RotateEi,"ax",%progbits
	.align	2
	.global	_ZN8Obstacle6RotateEi
	.hidden	_ZN8Obstacle6RotateEi
	.type	_ZN8Obstacle6RotateEi, %function
_ZN8Obstacle6RotateEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN8Obstacle6RotateEi, .-_ZN8Obstacle6RotateEi
	.section	.text._ZN8Obstacle15RotateWithOtherEi8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN8Obstacle15RotateWithOtherEi8CIwFVec2
	.hidden	_ZN8Obstacle15RotateWithOtherEi8CIwFVec2
	.type	_ZN8Obstacle15RotateWithOtherEi8CIwFVec2, %function
_ZN8Obstacle15RotateWithOtherEi8CIwFVec2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	r1, sp
	stmia	r1, {r2, r3}
	add	sp, sp, #8
	bx	lr
	.size	_ZN8Obstacle15RotateWithOtherEi8CIwFVec2, .-_ZN8Obstacle15RotateWithOtherEi8CIwFVec2
	.section	.text._ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2,"ax",%progbits
	.align	2
	.global	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	.hidden	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	.type	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2, %function
_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	mov	ip, r0
	ldrb	r0, [r0, #12]	@ zero_extendqisi2
	sub	sp, sp, #20
	add	r4, sp, #8
	cmp	r0, #0
	stmia	r4, {r1, r2}
	str	r3, [sp, #4]
	flds	s15, [sp, #8]
	flds	s11, [sp, #12]
	ldrh	r3, [sp, #4]
	ldrh	r2, [sp, #6]
	beq	.L21
	mov	r1, r3, asl #16
	mov	r3, r1, asr #16
	fmsr	s14, r3	@ int
	flds	s13, [ip, #0]
	flds	s12, .L34
	ldrh	r3, [ip, #8]
	fsitos	s14, s14
	fcpys	s10, s13
	flds	s9, [ip, #4]
	ldrh	r1, [ip, #10]
	fmacs	s10, s14, s12
	fcmpes	s10, s15
	fmstat
	bmi	.L33
.L22:
	mov	r3, #0
	mov	r0, r3
	strb	r3, [ip, #14]
.L21:
	add	sp, sp, #20
	ldmfd	sp!, {r4}
	bx	lr
.L33:
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	fmsr	s0, r3	@ int
	flds	s10, .L34+4
	fsitos	s8, s0
	fadds	s13, s13, s8
	fmacs	s13, s14, s10
	fcmpes	s13, s15
	fmstat
	ble	.L22
	mov	r3, r2, asl #16
	mov	r2, r3, asr #16
	fmsr	s15, r2	@ int
	fcpys	s1, s9
	fsitos	s15, s15
	fmacs	s1, s15, s12
	fcmpes	s1, s11
	fmstat
	bpl	.L22
	mov	r2, r1, asl #16
	mov	r1, r2, asr #16
	fmsr	s3, r1	@ int
	fsitos	s2, s3
	fadds	s9, s9, s2
	fmacs	s9, s15, s10
	fcmpes	s9, s11
	fmstat
	movgt	r0, #1
	strgtb	r0, [ip, #14]
	ble	.L22
	b	.L21
.L35:
	.align	2
.L34:
	.word	-1090519040
	.word	1056964608
	.size	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2, .-_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	.section	.text._ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_,"ax",%progbits
	.align	2
	.global	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	.hidden	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	.type	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_, %function
_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	str	r3, [sp, #4]
	ldrsh	ip, [sp, #4]
	flds	s6, [r0, #0]
	fmsr	s7, ip	@ int
	ldrsh	r3, [r0, #10]
	flds	s11, .L75
	fmsr	s0, r3	@ int
	fsitos	s7, s7
	fcpys	s9, s6
	ldrsh	r3, [sp, #6]
	fsitos	s15, s0
	add	ip, sp, #8
	flds	s12, [r0, #4]
	fmsr	s10, r3	@ int
	stmia	ip, {r1, r2}
	fmacs	s9, s7, s11
	flds	s13, [sp, #8]
	fsitos	s10, s10
	fadds	s15, s12, s15
	flds	s8, .L75+4
	ldr	r3, [sp, #16]
	flds	s14, [sp, #12]
	ldrh	r2, [r0, #8]
	fcmpes	s9, s13
	fmacs	s12, s10, s11
	fmacs	s15, s10, s8
	fmstat
	ble	.L67
	fcmpes	s12, s14
	fmstat
	ble	.L68
	flds	s11, [r3, #0]
	flds	s15, [r3, #4]
	fsubs	s8, s9, s13
	fsubs	s1, s12, s14
	fsubs	s13, s11, s13
	fsubs	s14, s15, s14
	fdivs	s1, s8, s1
	fdivs	s14, s13, s14
	fcmpes	s1, s14
	fmstat
	bgt	.L41
.L42:
	fsubs	s9, s15, s12
	flds	s5, .L75+8
	mov	r0, #1
	fmacs	s12, s9, s5
	fsts	s12, [r3, #4]
.L52:
	add	sp, sp, #16
	bx	lr
.L67:
	mov	r1, r2, asl #16
	mov	r2, r1, asr #16
	fmsr	s9, r2	@ int
	fsitos	s5, s9
	fadds	s6, s6, s5
	fmacs	s6, s7, s8
	fcmpes	s6, s13
	fmstat
	fcmpes	s12, s14
	ble	.L70
	fmstat
	fldsgt	s15, [r3, #4]
	bgt	.L42
	fcmpes	s14, s15
	fmstat
	movmi	r0, #0
	fldspl	s10, [r3, #4]
	bpl	.L45
	b	.L52
.L70:
	fmstat
	ble	.L73
	flds	s11, [r3, #0]
	flds	s15, [r3, #4]
	fsubs	s1, s13, s6
	fsubs	s10, s12, s14
	fsubs	s7, s13, s11
	fsubs	s0, s15, s14
	fdivs	s10, s1, s10
	fdivs	s0, s7, s0
	fcmpes	s10, s0
	fmstat
	ble	.L42
.L55:
	fsubs	s11, s11, s6
	flds	s12, .L75+8
	mov	r0, #2
	fmacs	s6, s11, s12
	fsts	s6, [r3, #0]
	b	.L52
.L68:
	fcmpes	s14, s15
	flds	s11, [r3, #0]
	fmstat
	bmi	.L41
	flds	s10, [r3, #4]
	fsubs	s4, s9, s13
	fsubs	s12, s14, s15
	fsubs	s3, s11, s13
	fsubs	s2, s14, s10
	fdivs	s12, s4, s12
	fdivs	s2, s3, s2
	fcmpes	s12, s2
	fmstat
	bgt	.L41
.L45:
	fsubs	s3, s10, s15
	flds	s4, .L75+8
	mov	r0, #3
	fmacs	s15, s3, s4
	fsts	s15, [r3, #4]
	b	.L52
.L73:
	fcmpes	s14, s15
	flds	s11, [r3, #0]
	fmstat
	bmi	.L55
	flds	s10, [r3, #4]
	fsubs	s8, s14, s12
	fsubs	s2, s6, s13
	fsubs	s13, s11, s13
	fsubs	s14, s14, s10
	fdivs	s8, s2, s8
	fdivs	s14, s13, s14
	fcmpes	s8, s14
	fmstat
	ble	.L45
	b	.L55
.L41:
	fadds	s6, s9, s11
	flds	s15, .L75+8
	mov	r0, #4
	fmacs	s9, s6, s15
	fsts	s9, [r3, #0]
	b	.L52
.L76:
	.align	2
.L75:
	.word	-1090519040
	.word	1056964608
	.word	-1110651699
	.size	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_, .-_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	.section	.text._ZN8Obstacle6RenderE8CIwFVec28CIwSVec2,"ax",%progbits
	.align	2
	.global	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	.hidden	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	.type	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2, %function
_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	fstmfdd	sp!, {d8}
	mov	r4, r0
	ldrb	ip, [r0, #13]	@ zero_extendqisi2
	sub	sp, sp, #32
	add	r0, sp, #8
	cmp	ip, #0
	stmia	r0, {r1, r2}
	str	r3, [sp, #4]
	flds	s16, [sp, #8]
	flds	s17, [sp, #12]
	ldrh	r6, [sp, #4]
	ldrh	r5, [sp, #6]
	beq	.L84
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L84
	ldrb	r1, [r4, #14]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L85
	mov	r0, #-16777216
	bl	_Z13Iw2DSetColourj
.L82:
	flds	s5, [r4, #0]
	flds	s4, [r4, #4]
	ldr	r1, [r4, #8]
	fsubs	s16, s5, s16
	fsubs	s17, s4, s17
	ftosizs	s16, s16
	ftosizs	s17, s17
	fmrs	r0, s16	@ int
	fmrs	lr, s17	@ int
	strh	r0, [sp, #20]	@ movhi
	strh	lr, [sp, #22]	@ movhi
	ldr	r0, [sp, #20]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	mvn	r0, #0
	add	sp, sp, #32
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_Z13Iw2DSetColourj
.L84:
	add	sp, sp, #32
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, r6, pc}
.L85:
	ldr	r0, .L86
	bl	_Z13Iw2DSetColourj
	flds	s3, [r4, #0]
	flds	s2, [r4, #4]
	ldrh	r0, [r4, #8]
	mov	r1, r6, asl #16
	fsubs	s1, s3, s16
	fsubs	s0, s2, s17
	add	r6, r6, r0
	mov	ip, r5, asl #16
	mov	r2, r1, asr #16
	mov	r3, ip, asr #16
	add	ip, r2, r2, lsr #31
	ldrh	r1, [r4, #10]
	ftosizs	s14, s1
	ftosizs	s15, s0
	add	r3, r3, r3, lsr #31
	add	r5, r5, r1
	strh	r6, [sp, #24]	@ movhi
	strh	r5, [sp, #26]	@ movhi
	ldr	r1, [sp, #24]
	fmrs	r0, s14	@ int
	sub	r2, r0, ip, asr #1
	fmrs	r0, s15	@ int
	strh	r2, [sp, #28]	@ movhi
	sub	ip, r0, r3, asr #1
	strh	ip, [sp, #30]	@ movhi
	ldr	r0, [sp, #28]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	b	.L82
.L87:
	.align	2
.L86:
	.word	-16776961
	.size	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2, .-_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
