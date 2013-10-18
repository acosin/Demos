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
	.file	"input.cpp"
	.section	.text._Z10GetTouchesv,"ax",%progbits
	.align	2
	.global	_Z10GetTouchesv
	.hidden	_Z10GetTouchesv
	.type	_Z10GetTouchesv, %function
_Z10GetTouchesv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L3
	mov	r3, r0
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	mov	r0, r3
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	_Z10GetTouchesv, .-_Z10GetTouchesv
	.section	.text._GLOBAL__I_m_TouchPos,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_m_TouchPos, %function
_GLOBAL__I_m_TouchPos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_GLOBAL__I_m_TouchPos, .-_GLOBAL__I_m_TouchPos
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_m_TouchPos(target1)
	.section	.text._Z11UpdateInputi,"ax",%progbits
	.align	2
	.global	_Z11UpdateInputi
	.hidden	_Z11UpdateInputi
	.type	_Z11UpdateInputi, %function
_Z11UpdateInputi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	fstmfdd	sp!, {d8}
	bl	s3ePointerUpdate
	bl	s3eKeyboardUpdate
	mov	r0, #0
	bl	s3ePointerGetState
	tst	r0, #1
	bne	.L13
.L8:
	mov	r0, #0
	bl	s3ePointerGetState
	mov	r0, #0
	bl	s3ePointerGetState
	tst	r0, #4
	ldrne	r3, .L14
	movne	r2, #0
	strneb	r2, [r3, #8]
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r3, pc}
.L13:
	bl	s3ePointerGetX
	fmsr	s16, r0	@ int
	bl	s3ePointerGetY
	ldr	r3, .L14
	mov	r2, #1
	fsitos	s16, s16
	strb	r2, [r3, #8]
	fsts	s16, [r3, #0]
	fmsr	s14, r0	@ int
	fsitos	s15, s14
	fsts	s15, [r3, #4]
	b	.L8
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.size	_Z11UpdateInputi, .-_Z11UpdateInputi
	.hidden	m_TouchPos
	.global	m_TouchPos
	.hidden	m_StartTouch
	.global	m_StartTouch
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	m_TouchPos, %object
	.size	m_TouchPos, 8
m_TouchPos:
	.space	8
	.type	m_StartTouch, %object
	.size	m_StartTouch, 1
m_StartTouch:
	.space	1
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
