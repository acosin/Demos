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
	.file	"tiles.cpp"
	.section	.text._ZN5TilesC2Ev,"ax",%progbits
	.align	2
	.global	_ZN5TilesC2Ev
	.hidden	_ZN5TilesC2Ev
	.type	_ZN5TilesC2Ev, %function
_ZN5TilesC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s15, .L6
	mov	ip, #12
	mov	r1, #4
	mov	r2, #3
	fsts	s15, [r0, #88]
	str	ip, [r0, #100]
	str	r1, [r0, #92]
	str	r2, [r0, #96]
	fsts	s15, [r0, #84]
	bx	lr
.L7:
	.align	2
.L6:
	.word	1134559232
	.size	_ZN5TilesC2Ev, .-_ZN5TilesC2Ev
	.section	.text._ZN5TilesC1Ev,"ax",%progbits
	.align	2
	.global	_ZN5TilesC1Ev
	.hidden	_ZN5TilesC1Ev
	.type	_ZN5TilesC1Ev, %function
_ZN5TilesC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s15, .L13
	mov	ip, #12
	mov	r1, #4
	mov	r2, #3
	fsts	s15, [r0, #88]
	str	ip, [r0, #100]
	str	r1, [r0, #92]
	str	r2, [r0, #96]
	fsts	s15, [r0, #84]
	bx	lr
.L14:
	.align	2
.L13:
	.word	1134559232
	.size	_ZN5TilesC1Ev, .-_ZN5TilesC1Ev
	.section	.text._ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2,"ax",%progbits
	.align	2
	.global	_ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2
	.hidden	_ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2
	.type	_ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2, %function
_ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	flds	s15, .L63
	sub	sp, sp, #56
	ldr	r7, .L63+4
	add	r6, sp, #8
	stmia	r6, {r1, r2}
	mov	r6, r0
	ldmia	r7!, {r0, r1, r2, r3}
	add	r4, sp, #20
	mov	ip, r4
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r7!, {r0, r1, r2, r3}
	mov	r5, ip
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	add	r5, r6, #48
	mov	r4, r5
	stmia	r4!, {r0, r1, r2, r3}
	flds	s14, [sp, #8]
	flds	s11, [sp, #12]
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	ip, [r7, #0]
	stmia	r4!, {r0, r1, r2, r3}
	str	ip, [r4, #0]
	flds	s13, [r6, #84]
	fsubs	s12, s13, s15
	fcmpes	s12, s14
	fmstat
	bgt	.L42
	ldr	r3, [r6, #92]
	mov	r1, r3, asl #6
	fmsr	s1, r1	@ int
	fsitos	s0, s1
	fadds	s12, s13, s0
	fadds	s10, s12, s15
	fcmpes	s10, s14
	fmstat
	bmi	.L42
	flds	s10, [r6, #88]
	fsubs	s9, s10, s15
	fcmpes	s9, s11
	fmstat
	bgt	.L42
	ldr	r2, [r6, #96]
	mov	r5, r2, asl #6
	fmsr	s3, r5	@ int
	fsitos	s2, s3
	fadds	s9, s10, s2
	fadds	s15, s9, s15
	fcmpes	s15, s11
	fmstat
	bmi	.L42
	fcmpes	s13, s14
	fmstat
	ble	.L51
	fcmpes	s10, s11
	fmstat
	movgt	r3, #0
	strgt	r3, [r6, #48]
	bgt	.L42
	fcmpes	s9, s11
	fmstat
	bmi	.L61
	fsubs	s4, s11, s10
	ftosizs	s11, s4
	fmrs	r1, s11	@ int
	add	ip, r1, #63
	cmp	r1, #0
	movlt	r1, ip
	mov	ip, r1, asr #6
	mul	r0, r3, ip
	cmp	ip, #0
	str	r0, [r6, #48]
	subne	r0, ip, #1
	mulne	r0, r3, r0
	strne	r0, [r6, #52]
	sub	r0, r2, #1
	cmp	r0, ip
	mlane	r3, ip, r3, r3
	strne	r3, [r6, #56]
.L42:
	add	sp, sp, #56
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L51:
	fcmpes	s12, s14
	fmstat
	fcmpes	s10, s11
	bpl	.L54
	fmstat
	bgt	.L59
	fcmpes	s9, s11
	fmstat
	bmi	.L62
	fsubs	s6, s11, s10
	sub	r2, r2, #1
	ftosizs	s5, s6
	fmrs	r1, s5	@ int
	add	r0, r1, #63
	cmp	r1, #0
	movlt	r1, r0
	mov	r1, r1, asr #6
	mla	ip, r1, r3, r3
	cmp	r1, #0
	sub	r0, ip, #1
	str	r0, [r6, #48]
	mulne	r0, r3, r1
	subne	r0, r0, #1
	strne	r0, [r6, #52]
	cmp	r2, r1
	addne	r2, r1, #2
	mulne	r3, r2, r3
	subne	r3, r3, #1
	strne	r3, [r6, #56]
	b	.L42
.L54:
	fmstat
	ble	.L57
	fsubs	s7, s14, s13
	sub	r1, r3, #1
	ftosizs	s14, s7
	fmrs	r2, s14	@ int
	add	r0, r2, #63
	cmp	r2, #0
	movlt	r2, r0
	mov	ip, r2, asr #6
	cmp	ip, #0
	subne	r0, ip, #1
	strne	r0, [r6, #52]
	cmp	r1, ip
	str	ip, [r6, #48]
	addne	ip, ip, #1
	strne	ip, [r6, #56]
	b	.L42
.L62:
	ldr	r3, [r6, #100]
.L59:
	sub	r3, r3, #1
	str	r3, [r6, #48]
	b	.L42
.L57:
	fcmpes	s9, s11
	fmstat
	bpl	.L58
	fsubs	s12, s14, s13
	ldr	r1, [r6, #100]
	rsb	r0, r3, r1
	ftosizs	s8, s12
	fmrs	r2, s8	@ int
	add	ip, r2, #63
	cmp	r2, #0
	movlt	r2, ip
	mov	r2, r2, asr #6
	add	r0, r0, r2
	cmp	r2, #0
	str	r0, [r6, #48]
	subne	r0, r1, #1
	rsbne	r0, r3, r0
	addne	r0, r0, r2
	sub	ip, r3, #1
	strne	r0, [r6, #52]
	cmp	ip, r2
	addne	r0, r1, #1
	rsbne	r3, r3, r0
	addne	r1, r3, r2
	strne	r1, [r6, #56]
	b	.L42
.L61:
	sub	r2, r2, #1
	mul	r3, r2, r3
	str	r3, [r6, #48]
	b	.L42
.L58:
	fsubs	s1, s11, s10
	fsubs	s10, s14, s13
	ftosizs	s0, s1
	ftosizs	s13, s10
	fmrs	r0, s0	@ int
	fmrs	r1, s13	@ int
	add	ip, r0, #63
	cmp	r0, #0
	movlt	r0, ip
	mov	r0, r0, asr #6
	add	r4, r1, #63
	mul	ip, r3, r0
	cmp	r1, #0
	movlt	r1, r4
	mov	r1, r1, asr #6
	add	r4, ip, r1
	cmp	r1, #0
	str	r4, [r6, #48]
	subne	r4, r4, #1
	strne	r4, [r6, #64]
	sub	r4, r3, #1
	cmp	r4, r1
	addne	r4, r1, #1
	addne	ip, ip, r4
	strne	ip, [r6, #68]
	cmp	r0, #0
	beq	.L39
	sub	ip, r0, #1
	mul	r4, r3, ip
	cmp	r1, #0
	add	r5, r4, r1
	str	r5, [r6, #56]
	subne	r5, r1, #1
	addne	r4, r5, r4
	strne	r4, [r6, #52]
	sub	r4, r3, #1
	cmp	r4, r1
	addne	r4, r1, #1
	mlane	ip, r3, ip, r4
	strne	ip, [r6, #60]
.L39:
	sub	r2, r2, #1
	cmp	r2, r0
	beq	.L42
	add	r0, r0, #1
	mul	r2, r3, r0
	cmp	r1, #0
	add	ip, r2, r1
	str	ip, [r6, #76]
	subne	ip, r1, #1
	addne	r2, ip, r2
	sub	ip, r3, #1
	strne	r2, [r6, #72]
	cmp	ip, r1
	addne	r1, r1, #1
	mlane	r3, r0, r3, r1
	strne	r3, [r6, #80]
	b	.L42
.L64:
	.align	2
.L63:
	.word	1115684864
	.word	.LANCHOR0
	.size	_ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2, .-_ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2
	.section	.text._ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_,"ax",%progbits
	.align	2
	.global	_ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	.hidden	_ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	.type	_ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_, %function
_ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, [r0, #48]
	sub	sp, sp, #36
	add	r5, sp, #24
	cmn	r0, #1
	stmia	r5, {r1, r2}
	ldr	r7, [sp, #56]
	str	r3, [sp, #20]
	beq	.L66
	add	lr, sp, #60
	ldr	ip, [r4, r0, asl #2]
	ldmia	lr, {r0, r1}
	mov	r2, sp
	str	r7, [r2], #4
	stmia	r2, {r0, r1}
	mov	r0, ip
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
	beq	.L66
.L67:
	ldr	r3, [r4, #52]
	cmn	r3, #1
	beq	.L68
	add	r1, sp, #60
	ldr	ip, [r4, r3, asl #2]
	ldmia	r1, {r0, r1}
	mov	r3, sp
	str	r7, [r3], #4
	stmia	r3, {r0, r1}
	mov	r0, ip
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L68:
	ldr	r3, [r4, #56]
	cmn	r3, #1
	beq	.L69
	add	ip, sp, #60
	ldr	r2, [r4, r3, asl #2]
	ldmia	ip, {r0, r1}
	mov	lr, sp
	str	r7, [lr], #4
	stmia	lr, {r0, r1}
	mov	r0, r2
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L69:
	ldr	r3, [r4, #60]
	cmn	r3, #1
	beq	.L70
	add	r1, sp, #60
	ldr	r2, [r4, r3, asl #2]
	ldmia	r1, {r0, r1}
	mov	r3, sp
	str	r7, [r3], #4
	stmia	r3, {r0, r1}
	mov	r0, r2
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L70:
	ldr	r3, [r4, #64]
	cmn	r3, #1
	beq	.L71
	add	r2, sp, #60
	ldr	lr, [r4, r3, asl #2]
	ldmia	r2, {r0, r1}
	mov	ip, sp
	str	r7, [ip], #4
	stmia	ip, {r0, r1}
	mov	r0, lr
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L71:
	ldr	r3, [r4, #68]
	cmn	r3, #1
	beq	.L72
	add	r1, sp, #60
	ldr	lr, [r4, r3, asl #2]
	ldmia	r1, {r0, r1}
	mov	r3, sp
	str	r7, [r3], #4
	stmia	r3, {r0, r1}
	mov	r0, lr
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L72:
	ldr	r3, [r4, #72]
	cmn	r3, #1
	beq	.L73
	add	lr, sp, #60
	ldr	ip, [r4, r3, asl #2]
	ldmia	lr, {r0, r1}
	mov	r2, sp
	str	r7, [r2], #4
	stmia	r2, {r0, r1}
	mov	r0, ip
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L73:
	ldr	r3, [r4, #76]
	cmn	r3, #1
	beq	.L74
	add	r1, sp, #60
	ldr	ip, [r4, r3, asl #2]
	ldmia	r1, {r0, r1}
	mov	r3, sp
	str	r7, [r3], #4
	stmia	r3, {r0, r1}
	mov	r0, ip
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L74:
	ldr	r3, [r4, #80]
	cmn	r3, #1
	beq	.L75
	add	ip, sp, #60
	ldr	r2, [r4, r3, asl #2]
	ldmia	ip, {r0, r1}
	mov	lr, sp
	str	r7, [lr], #4
	stmia	lr, {r0, r1}
	mov	r0, r2
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	bl	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	movne	r6, #1
.L75:
	mov	r0, r6
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L66:
	mov	r6, #0
	b	.L67
	.size	_ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_, .-_ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	.section	.text._ZN5Tiles6RenderE8CIwFVec28CIwSVec2,"ax",%progbits
	.align	2
	.global	_ZN5Tiles6RenderE8CIwFVec28CIwSVec2
	.hidden	_ZN5Tiles6RenderE8CIwFVec28CIwSVec2
	.type	_ZN5Tiles6RenderE8CIwFVec28CIwSVec2, %function
_ZN5Tiles6RenderE8CIwFVec28CIwSVec2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	ldr	r0, [r0, #100]
	sub	sp, sp, #24
	add	r6, sp, #16
	cmp	r0, #0
	stmia	r6, {r1, r2}
	str	r3, [sp, #12]
	beq	.L78
	mov	r4, #0
.L79:
	ldr	r0, [r5, r4, asl #2]
	mov	r3, #0
	ldmia	r6, {r1, r2}
	ldr	ip, [sp, #12]
	str	ip, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
	ldr	r3, [r5, #100]
	add	r4, r4, #1
	cmp	r3, r4
	bne	.L79
.L78:
	ldr	r3, [r5, #48]
	cmn	r3, #1
	beq	.L80
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	lr, [sp, #12]
	mov	r3, #1
	str	lr, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L80:
	ldr	r3, [r5, #52]
	cmn	r3, #1
	beq	.L81
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	ip, [sp, #12]
	mov	r3, #1
	str	ip, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L81:
	ldr	r3, [r5, #56]
	cmn	r3, #1
	beq	.L82
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	lr, [sp, #12]
	mov	r3, #1
	str	lr, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L82:
	ldr	r3, [r5, #60]
	cmn	r3, #1
	beq	.L83
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	ip, [sp, #12]
	mov	r3, #1
	str	ip, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L83:
	ldr	r3, [r5, #64]
	cmn	r3, #1
	beq	.L84
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	lr, [sp, #12]
	mov	r3, #1
	str	lr, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L84:
	ldr	r3, [r5, #68]
	cmn	r3, #1
	beq	.L85
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	ip, [sp, #12]
	mov	r3, #1
	str	ip, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L85:
	ldr	r3, [r5, #72]
	cmn	r3, #1
	beq	.L86
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	lr, [sp, #12]
	mov	r3, #1
	str	lr, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L86:
	ldr	r3, [r5, #76]
	cmn	r3, #1
	beq	.L87
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	ip, [sp, #12]
	mov	r3, #1
	str	ip, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L87:
	ldr	r3, [r5, #80]
	cmn	r3, #1
	beq	.L89
	ldr	r0, [r5, r3, asl #2]
	ldmia	r6, {r1, r2}
	ldr	lr, [sp, #12]
	mov	r3, #1
	str	lr, [sp, #0]
	bl	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
.L89:
	add	sp, sp, #24
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN5Tiles6RenderE8CIwFVec28CIwSVec2, .-_ZN5Tiles6RenderE8CIwFVec28CIwSVec2
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text._ZN5Tiles4LoadEv,"ax",%progbits
	.align	2
	.global	_ZN5Tiles4LoadEv
	.hidden	_ZN5Tiles4LoadEv
	.type	_ZN5Tiles4LoadEv, %function
_ZN5Tiles4LoadEv:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	fstmfdd	sp!, {d8}
	ldr	r8, .L97+4
	mov	r5, r0
	sub	sp, sp, #64
	ldmia	r8, {r0, r1}
	add	r2, sp, #56
	add	r8, r8, #8
	stmia	r2, {r0, r1}
	ldmia	r8!, {r0, r1, r2, r3}
	add	r4, sp, #12
	mov	ip, r4
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r8!, {r0, r1, r2, r3}
	mov	r6, ip
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	add	r4, r5, #48
	mov	r7, r4
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	ip, [r8, #0]
	str	ip, [r6, #0]
	stmia	r7!, {r0, r1, r2, r3}
	str	ip, [r7, #0]
	ldr	r3, [r5, #100]
	cmp	r3, #0
	beq	.L95
	flds	s17, .L97
	mov	r4, #0
	add	r7, sp, #48
	mov	r8, #1
.L94:
	ldr	r6, [r5, #92]
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_idiv
	flds	s16, [r5, #88]
	mov	r1, r6
	fmsr	s1, r0	@ int
	mov	r0, r4
	fsitos	s0, s1
	fmacs	s16, s0, s17
	bl	__aeabi_idivmod
	flds	s15, [r5, #84]
	mov	r0, #52
	fsts	s16, [sp, #52]
	fmsr	s13, r1	@ int
	fsitos	s14, s13
	fmacs	s15, s14, s17
	fsts	s15, [sp, #48]
	bl	_Znwj
	and	ip, r4, #1
	add	r2, sp, #64
	add	r3, r2, ip, asl #2
	ldr	r3, [r3, #-8]
	ldmia	r7, {r1, r2}
	str	r8, [sp, #0]
	mov	r6, r0
	bl	_ZN4TileC1E8CIwFVec2Pci
	str	r6, [r5, r4, asl #2]
	mov	r0, r6
	bl	_ZN4Tile4LoadEv
	ldr	r1, [r5, #100]
	add	r4, r4, #1
	cmp	r1, r4
	bne	.L94
.L95:
	add	sp, sp, #64
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L98:
	.align	2
.L97:
	.word	1115684864
	.word	.LANCHOR0+36
	.size	_ZN5Tiles4LoadEv, .-_ZN5Tiles4LoadEv
	.section	.text._ZN5TilesD1Ev,"ax",%progbits
	.align	2
	.global	_ZN5TilesD1Ev
	.hidden	_ZN5TilesD1Ev
	.type	_ZN5TilesD1Ev, %function
_ZN5TilesD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #100]
	mov	r6, r0
	cmp	r3, #0
	beq	.L100
	mov	r4, #0
.L102:
	ldr	r5, [r6, r4, asl #2]
	add	r4, r4, #1
	subs	r0, r5, #0
	beq	.L101
	bl	_ZN4TileD1Ev
	mov	r0, r5
	bl	_ZdlPv
	ldr	r3, [r6, #100]
.L101:
	cmp	r4, r3
	bne	.L102
.L100:
	mov	r0, r6
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN5TilesD1Ev, .-_ZN5TilesD1Ev
	.section	.text._ZN5TilesD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5TilesD2Ev
	.hidden	_ZN5TilesD2Ev
	.type	_ZN5TilesD2Ev, %function
_ZN5TilesD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #100]
	mov	r6, r0
	cmp	r3, #0
	beq	.L106
	mov	r4, #0
.L108:
	ldr	r5, [r6, r4, asl #2]
	add	r4, r4, #1
	subs	r0, r5, #0
	beq	.L107
	bl	_ZN4TileD1Ev
	mov	r0, r5
	bl	_ZdlPv
	ldr	r3, [r6, #100]
.L107:
	cmp	r4, r3
	bne	.L108
.L106:
	mov	r0, r6
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN5TilesD2Ev, .-_ZN5TilesD2Ev
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2E5C.292, %object
	.size	_ZZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2E5C.292, 36
_ZZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2E5C.292:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.type	_ZZN5Tiles4LoadEvE5C.287, %object
	.size	_ZZN5Tiles4LoadEvE5C.287, 8
_ZZN5Tiles4LoadEvE5C.287:
	.word	.LC0
	.word	.LC1
	.type	_ZZN5Tiles4LoadEvE5C.288, %object
	.size	_ZZN5Tiles4LoadEvE5C.288, 36
_ZZN5Tiles4LoadEvE5C.288:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"MiM_DownRight\000"
	.space	2
.LC1:
	.ascii	"MiM_LeftRight\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
