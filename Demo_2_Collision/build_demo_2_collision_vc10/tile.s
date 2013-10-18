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
	.file	"tile.cpp"
	.section	.text._ZN4TileC2Ev,"ax",%progbits
	.align	2
	.global	_ZN4TileC2Ev
	.hidden	_ZN4TileC2Ev
	.type	_ZN4TileC2Ev, %function
_ZN4TileC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s15, .L7
	mov	r2, #0
	str	r2, [r0, #36]
	str	r2, [r0, #28]
	fsts	s15, [r0, #4]
	str	r2, [r0, #32]
	fsts	s15, [r0, #0]
	bx	lr
.L8:
	.align	2
.L7:
	.word	1134559232
	.size	_ZN4TileC2Ev, .-_ZN4TileC2Ev
	.section	.text._ZN4TileC1Ev,"ax",%progbits
	.align	2
	.global	_ZN4TileC1Ev
	.hidden	_ZN4TileC1Ev
	.type	_ZN4TileC1Ev, %function
_ZN4TileC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s15, .L15
	mov	r2, #0
	str	r2, [r0, #36]
	str	r2, [r0, #28]
	fsts	s15, [r0, #4]
	str	r2, [r0, #32]
	fsts	s15, [r0, #0]
	bx	lr
.L16:
	.align	2
.L15:
	.word	1134559232
	.size	_ZN4TileC1Ev, .-_ZN4TileC1Ev
	.section	.text._ZN4TileC2E8CIwFVec2Pci,"ax",%progbits
	.align	2
	.global	_ZN4TileC2E8CIwFVec2Pci
	.hidden	_ZN4TileC2E8CIwFVec2Pci
	.type	_ZN4TileC2E8CIwFVec2Pci, %function
_ZN4TileC2E8CIwFVec2Pci:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	ip, sp
	stmia	ip, {r1, r2}
	flds	s14, [sp, #0]
	flds	s15, [sp, #4]
	mov	r1, #0
	ldr	ip, [sp, #8]
	str	ip, [r0, #8]
	str	r1, [r0, #36]
	fsts	s14, [r0, #0]
	fsts	s15, [r0, #4]
	str	r3, [r0, #48]
	str	r1, [r0, #28]
	str	r1, [r0, #32]
	add	sp, sp, #8
	bx	lr
	.size	_ZN4TileC2E8CIwFVec2Pci, .-_ZN4TileC2E8CIwFVec2Pci
	.section	.text._ZN4TileC1E8CIwFVec2Pci,"ax",%progbits
	.align	2
	.global	_ZN4TileC1E8CIwFVec2Pci
	.hidden	_ZN4TileC1E8CIwFVec2Pci
	.type	_ZN4TileC1E8CIwFVec2Pci, %function
_ZN4TileC1E8CIwFVec2Pci:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	ip, sp
	stmia	ip, {r1, r2}
	flds	s14, [sp, #0]
	flds	s15, [sp, #4]
	mov	r1, #0
	ldr	ip, [sp, #8]
	str	ip, [r0, #8]
	str	r1, [r0, #36]
	fsts	s14, [r0, #0]
	fsts	s15, [r0, #4]
	str	r3, [r0, #48]
	str	r1, [r0, #28]
	str	r1, [r0, #32]
	add	sp, sp, #8
	bx	lr
	.size	_ZN4TileC1E8CIwFVec2Pci, .-_ZN4TileC1E8CIwFVec2Pci
	.section	.text._ZN4Tile14UpdateObstacleEv,"ax",%progbits
	.align	2
	.global	_ZN4Tile14UpdateObstacleEv
	.hidden	_ZN4Tile14UpdateObstacleEv
	.type	_ZN4Tile14UpdateObstacleEv, %function
_ZN4Tile14UpdateObstacleEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	mov	r1, #0
	strb	r1, [r3, #12]
	ldr	ip, [r0, #28]
	strb	r1, [ip, #28]
	ldr	r2, [r0, #28]
	strb	r1, [r2, #44]
	ldr	r2, [r0, #28]
	strb	r1, [r2, #60]
	ldr	r3, [r0, #12]
	cmp	r3, #0
	ldreq	r3, [r0, #28]
	moveq	r2, #1
	streqb	r2, [r3, #12]
	ldr	ip, [r0, #16]
	cmp	ip, #0
	ldreq	ip, [r0, #28]
	moveq	r2, #1
	streqb	r2, [ip, #28]
	ldr	r1, [r0, #20]
	cmp	r1, #0
	ldreq	r1, [r0, #28]
	moveq	r2, #1
	streqb	r2, [r1, #44]
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldreq	r3, [r0, #28]
	moveq	r2, #1
	streqb	r2, [r3, #60]
	bx	lr
	.size	_ZN4Tile14UpdateObstacleEv, .-_ZN4Tile14UpdateObstacleEv
	.section	.text._ZN4Tile6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN4Tile6UpdateEv
	.hidden	_ZN4Tile6UpdateEv
	.type	_ZN4Tile6UpdateEv, %function
_ZN4Tile6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN4Tile6UpdateEv, .-_ZN4Tile6UpdateEv
	.section	.text._ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_,"ax",%progbits
	.align	2
	.global	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	.hidden	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	.type	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_, %function
_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0
	ldr	fp, [r5, #32]
	ldr	r0, [r0, #28]
	sub	sp, sp, #28
	rsb	r7, r0, fp
	add	r4, sp, #16
	movs	r7, r7, asr #4
	stmia	r4, {r1, r2}
	ldr	fp, [sp, #64]
	str	r3, [sp, #12]
	moveq	r8, r7
	beq	.L40
	sub	r7, r7, #1
	ands	sl, r7, #3
	mov	r6, r7, asl #4
	mov	r8, #0
	add	r9, sp, #68
	beq	.L41
	add	r0, r0, r6
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	cmp	r0, #0
	bne	.L63
.L44:
	cmp	sl, #1
	sub	r6, r6, #16
	sub	r7, r7, #1
	ldr	r0, [r5, #28]
	beq	.L41
	cmp	sl, #2
	beq	.L59
	add	r0, r0, r6
	ldr	r3, [sp, #12]
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	cmp	r0, #0
	bne	.L64
.L45:
	ldr	r0, [r5, #28]
	sub	r6, r6, #16
	sub	r7, r7, #1
.L59:
	add	r0, r0, r6
	ldr	r3, [sp, #12]
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	cmp	r0, #0
	bne	.L65
.L47:
	sub	r6, r6, #16
	sub	r7, r7, #1
	ldr	r0, [r5, #28]
	b	.L41
.L39:
	cmp	r7, #0
	sub	r6, r6, #16
	beq	.L40
.L69:
	ldr	r1, [r5, #28]
	ldr	r3, [sp, #12]
	add	r0, r1, r6
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	sub	sl, r7, #1
	cmp	r0, #0
	bne	.L66
.L50:
	ldr	r3, [r5, #28]
	sub	r7, r6, #16
	add	r0, r3, r7
	ldmia	r4, {r1, r2}
	ldr	r3, [sp, #12]
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	cmp	r0, #0
	bne	.L67
.L51:
	ldr	r1, [r5, #28]
	sub	r7, r6, #32
	add	r0, r1, r7
	ldr	r3, [sp, #12]
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	cmp	r0, #0
	bne	.L68
.L52:
	ldr	r0, [r5, #28]
	sub	r6, r6, #48
	sub	r7, sl, #3
.L41:
	add	r0, r0, r6
	ldr	r3, [sp, #12]
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	cmp	r0, #0
	beq	.L39
	ldr	r0, [r5, #28]
	ldmia	r9, {r1, r2}
	add	r0, r6, r0
	ldr	r3, [sp, #12]
	str	fp, [sp, #0]
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	cmp	r7, #0
	mov	r8, #1
	sub	r6, r6, #16
	bne	.L69
.L40:
	mov	r0, r8
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L68:
	ldr	r2, [r5, #28]
	ldr	r3, [sp, #12]
	add	r0, r7, r2
	ldmia	r9, {r1, r2}
	mov	r8, #1
	str	fp, [sp, #0]
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	b	.L52
.L67:
	ldr	r0, [r5, #28]
	ldmia	r9, {r1, r2}
	ldr	r3, [sp, #12]
	add	r0, r7, r0
	str	fp, [sp, #0]
	mov	r8, #1
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	b	.L51
.L66:
	ldr	lr, [r5, #28]
	ldmia	r9, {r1, r2}
	ldr	r3, [sp, #12]
	add	r0, r6, lr
	str	fp, [sp, #0]
	mov	r8, #1
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	b	.L50
.L63:
	ldr	r2, [r5, #28]
	ldr	r3, [sp, #12]
	add	r0, r6, r2
	ldmia	r9, {r1, r2}
	mov	r8, #1
	str	fp, [sp, #0]
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	b	.L44
.L65:
	ldr	ip, [r5, #28]
	ldmia	r9, {r1, r2}
	ldr	r3, [sp, #12]
	add	r0, r6, ip
	str	fp, [sp, #0]
	mov	r8, #1
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	b	.L47
.L64:
	ldr	r8, [r5, #28]
	ldmia	r9, {r1, r2}
	add	r0, r6, r8
	ldr	r3, [sp, #12]
	str	fp, [sp, #0]
	mov	r8, #1
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	b	.L45
	.size	_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_, .-_ZN4Tile14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	.section	.text._ZN4Tile6RenderE8CIwFVec2b8CIwSVec2,"ax",%progbits
	.align	2
	.global	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
	.hidden	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
	.type	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2, %function
_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	fstmfdd	sp!, {d8, d9, d10, d11}
	flds	s6, .L93
	mov	r5, r0
	flds	s15, .L93+4
	flds	s7, [r0, #8]	@ int
	sub	sp, sp, #64
	mov	r4, sp
	flds	s3, [r0, #0]
	fsitos	s5, s7
	flds	s1, [r0, #4]
	stmia	r4, {r1, r2}
	ldrsh	r2, [r5, #46]
	ldrsh	r0, [r0, #44]
	fmsr	s2, r2	@ int
	fmsr	s4, r0	@ int
	flds	s16, [sp, #0]
	fnmuls	s22, s5, s6
	flds	s17, [sp, #4]
	fsitos	s14, s2
	fsitos	s0, s4
	fsubs	s19, s3, s16
	fsubs	s18, s1, s17
	mov	r6, r3
	fcvtds	d11, s22
	fmacs	s19, s0, s15
	fmacs	s18, s14, s15
	fmrrd	r0, r1, d11
	bl	cos
	fmdrr	d5, r0, r1
	fmrrd	r0, r1, d11
	fcvtsd	s20, d5
	fsts	s20, [sp, #44]
	fsts	s20, [sp, #32]
	bl	sin
	fmuls	s14, s18, s20
	cmp	r6, #0
	fmdrr	d5, r0, r1
	fcvtsd	s13, d5
	fmuls	s15, s18, s13
	fnegs	s12, s13
	fsts	s13, [sp, #40]
	fmacs	s14, s19, s12
	fsts	s12, [sp, #36]
	fmacs	s15, s19, s20
	fsubs	s18, s18, s14
	fsubs	s19, s19, s15
	fsts	s18, [sp, #52]
	fsts	s19, [sp, #48]
	bne	.L91
.L73:
	add	r6, sp, #8
	add	r1, sp, #32
	mov	r0, r6
	bl	_ZN8CIwMat2DC1ERK9CIwFMat2D
	mov	r0, r6
	bl	_Z22Iw2DSetTransformMatrixRK8CIwMat2D
	flds	s3, [r5, #0]
	flds	s2, [r5, #4]
	ldr	r0, [r5, #40]
	fsubs	s1, s3, s16
	fsubs	s15, s2, s17
	ftosizs	s0, s1
	ftosizs	s14, s15
	fmrs	r2, s0	@ int
	fmrs	r3, s14	@ int
	strh	r2, [sp, #56]	@ movhi
	strh	r3, [sp, #58]	@ movhi
	ldr	r1, [sp, #56]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2
	ldr	r0, .L93+8
	bl	_Z22Iw2DSetTransformMatrixRK8CIwMat2D
	ldr	r0, [r5, #28]
	ldr	ip, [r5, #32]
	rsb	r1, r0, ip
	movs	r7, r1, asr #4
	beq	.L78
	sub	r7, r7, #1
	ands	r8, r7, #3
	mov	r6, r7, asl #4
	beq	.L77
	fsts	s16, [sp, #0]
	fsts	s17, [sp, #4]
	add	r0, r0, r6
	ldr	r3, [sp, #120]
	sub	r6, r6, #16
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	cmp	r8, #1
	sub	r7, r7, #1
	ldr	r0, [r5, #28]
	beq	.L77
	cmp	r8, #2
	beq	.L89
	fsts	s16, [sp, #0]
	fsts	s17, [sp, #4]
	add	r0, r0, r6
	ldr	r3, [sp, #120]
	sub	r6, r6, #16
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	ldr	r0, [r5, #28]
	sub	r7, r7, #1
.L89:
	fsts	s16, [sp, #0]
	fsts	s17, [sp, #4]
	add	r0, r0, r6
	ldr	r3, [sp, #120]
	sub	r6, r6, #16
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	sub	r7, r7, #1
	ldr	r0, [r5, #28]
	b	.L77
.L92:
	ldr	lr, [r5, #28]
	fsts	s16, [sp, #0]
	fsts	s17, [sp, #4]
	add	r0, lr, r8
	ldr	r3, [sp, #120]
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	ldr	r0, [r5, #28]
	fsts	s16, [sp, #0]
	fsts	s17, [sp, #4]
	sub	ip, r8, #16
	add	r0, r0, ip
	ldr	r3, [sp, #120]
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	ldr	r8, [r5, #28]
	fsts	s16, [sp, #0]
	fsts	s17, [sp, #4]
	sub	r1, r6, #48
	add	r0, r8, r1
	ldr	r3, [sp, #120]
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	ldr	r0, [r5, #28]
	sub	r6, r6, #64
.L77:
	fsts	s16, [sp, #0]
	fsts	s17, [sp, #4]
	add	r0, r0, r6
	ldr	r3, [sp, #120]
	sub	r8, r6, #16
	ldmia	r4, {r1, r2}
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	cmp	r7, #0
	sub	r7, r7, #4
	bne	.L92
.L78:
	add	sp, sp, #64
	fldmfdd	sp!, {d8, d9, d10, d11}
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L91:
	ldr	r0, .L93+12
	bl	_Z13Iw2DSetColourj
	flds	s10, [r5, #0]
	flds	s13, [r5, #4]
	ldr	r1, [r5, #44]
	fsubs	s12, s10, s16
	fsubs	s9, s13, s17
	ftosizs	s11, s12
	ftosizs	s8, s9
	fmrs	r7, s11	@ int
	fmrs	r3, s8	@ int
	strh	r7, [sp, #60]	@ movhi
	strh	r3, [sp, #62]	@ movhi
	ldr	r0, [sp, #60]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	b	.L73
.L94:
	.align	2
.L93:
	.word	1070141403
	.word	1056964608
	.word	_ZN8CIwMat2D10g_IdentityE
	.word	-65536
	.size	_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2, .-_ZN4Tile6RenderE8CIwFVec2b8CIwSVec2
	.section	.text._ZN4TileD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4TileD2Ev
	.hidden	_ZN4TileD2Ev
	.type	_ZN4TileD2Ev, %function
_ZN4TileD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r7, r0
	ldr	r0, [r0, #40]
	cmp	r0, #0
	beq	.L96
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L96:
	ldr	r0, [r7, #28]
	ldr	r5, [r7, #32]
	cmp	r0, r5
	beq	.L97
	rsb	r4, r0, r5
	sub	r2, r4, #16
	add	r4, r0, #16
	mov	r6, r2, lsr #4
	bl	_ZN8ObstacleD1Ev
	cmp	r5, r4
	and	r6, r6, #3
	beq	.L116
	cmp	r6, #0
	beq	.L101
	cmp	r6, #1
	beq	.L114
	cmp	r6, #2
	beq	.L115
	mov	r0, r4
	bl	_ZN8ObstacleD1Ev
	add	r4, r4, #16
.L115:
	mov	r0, r4
	bl	_ZN8ObstacleD1Ev
	add	r4, r4, #16
.L114:
	mov	r0, r4
	add	r4, r4, #16
	bl	_ZN8ObstacleD1Ev
	cmp	r5, r4
	beq	.L116
.L101:
	add	r6, r4, #16
	mov	r0, r4
	bl	_ZN8ObstacleD1Ev
	mov	r0, r6
	bl	_ZN8ObstacleD1Ev
	add	r0, r6, #16
	bl	_ZN8ObstacleD1Ev
	add	r0, r4, #48
	add	r4, r4, #64
	bl	_ZN8ObstacleD1Ev
	cmp	r5, r4
	bne	.L101
.L116:
	ldr	r5, [r7, #28]
.L97:
	cmp	r5, #0
	beq	.L99
	mov	r0, r5
	bl	free
.L99:
	mov	r0, r7
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.size	_ZN4TileD2Ev, .-_ZN4TileD2Ev
	.section	.text._ZN4Tile14CreateObstacleE8CIwFVec28CIwSVec2b,"ax",%progbits
	.align	2
	.global	_ZN4Tile14CreateObstacleE8CIwFVec28CIwSVec2b
	.hidden	_ZN4Tile14CreateObstacleE8CIwFVec28CIwSVec2b
	.type	_ZN4Tile14CreateObstacleE8CIwFVec28CIwSVec2b, %function
_ZN4Tile14CreateObstacleE8CIwFVec28CIwSVec2b:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	fstmfdd	sp!, {d8}
	mov	r4, r0
	sub	sp, sp, #12
	mov	r1, sp
	stmia	r1, {r2, r3}
	flds	s16, [sp, #0]
	flds	s17, [sp, #4]
	ldrb	r5, [sp, #44]	@ zero_extendqisi2
	ldrh	r7, [sp, #40]
	ldrh	r6, [sp, #42]
	bl	_ZN8ObstacleC1Ev
	fsts	s16, [r4, #0]
	fsts	s17, [r4, #4]
	strh	r7, [r4, #8]	@ movhi
	strh	r6, [r4, #10]	@ movhi
	strb	r5, [r4, #13]
	mov	r0, r4
	add	sp, sp, #12
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.size	_ZN4Tile14CreateObstacleE8CIwFVec28CIwSVec2b, .-_ZN4Tile14CreateObstacleE8CIwFVec28CIwSVec2b
	.section	.text._ZN4Tile6RotateEv,"ax",%progbits
	.align	2
	.global	_ZN4Tile6RotateEv
	.hidden	_ZN4Tile6RotateEv
	.type	_ZN4Tile6RotateEv, %function
_ZN4Tile6RotateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #28]
	add	r3, r1, #1
	cmp	r3, #3
	str	r3, [r0, #8]
	movgt	r3, #0
	strgt	r3, [r0, #8]
	ldrb	ip, [r2, #60]	@ zero_extendqisi2
	ldrb	r1, [r2, #12]	@ zero_extendqisi2
	strb	ip, [r2, #12]
	ldr	r2, [r0, #28]
	mov	r3, #0
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	strb	ip, [r2, #60]
	ldr	r2, [r0, #28]
	ldrb	ip, [r2, #28]	@ zero_extendqisi2
	strb	ip, [r2, #44]
	ldr	r2, [r0, #28]
	strb	r1, [r2, #28]
	ldr	ip, [r0, #28]
	strb	r3, [ip, #12]
	ldr	r1, [r0, #28]
	strb	r3, [r1, #28]
	ldr	r2, [r0, #28]
	strb	r3, [r2, #44]
	ldr	r2, [r0, #28]
	strb	r3, [r2, #60]
	ldr	r3, [r0, #12]
	cmp	r3, #0
	ldreq	r3, [r0, #28]
	moveq	r2, #1
	streqb	r2, [r3, #12]
	ldr	ip, [r0, #16]
	cmp	ip, #0
	ldreq	ip, [r0, #28]
	moveq	r2, #1
	streqb	r2, [ip, #28]
	ldr	r1, [r0, #20]
	cmp	r1, #0
	ldreq	r1, [r0, #28]
	moveq	r2, #1
	streqb	r2, [r1, #44]
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldreq	r3, [r0, #28]
	moveq	r2, #1
	streqb	r2, [r3, #60]
	bx	lr
	.size	_ZN4Tile6RotateEv, .-_ZN4Tile6RotateEv
	.section	.text._ZN4TileD1Ev,"ax",%progbits
	.align	2
	.global	_ZN4TileD1Ev
	.hidden	_ZN4TileD1Ev
	.type	_ZN4TileD1Ev, %function
_ZN4TileD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r7, r0
	ldr	r0, [r0, #40]
	cmp	r0, #0
	beq	.L127
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L127:
	ldr	r0, [r7, #28]
	ldr	r5, [r7, #32]
	cmp	r0, r5
	beq	.L128
	rsb	r4, r0, r5
	sub	r2, r4, #16
	add	r4, r0, #16
	mov	r6, r2, lsr #4
	bl	_ZN8ObstacleD1Ev
	cmp	r5, r4
	and	r6, r6, #3
	beq	.L147
	cmp	r6, #0
	beq	.L132
	cmp	r6, #1
	beq	.L145
	cmp	r6, #2
	beq	.L146
	mov	r0, r4
	bl	_ZN8ObstacleD1Ev
	add	r4, r4, #16
.L146:
	mov	r0, r4
	bl	_ZN8ObstacleD1Ev
	add	r4, r4, #16
.L145:
	mov	r0, r4
	add	r4, r4, #16
	bl	_ZN8ObstacleD1Ev
	cmp	r5, r4
	beq	.L147
.L132:
	add	r6, r4, #16
	mov	r0, r4
	bl	_ZN8ObstacleD1Ev
	mov	r0, r6
	bl	_ZN8ObstacleD1Ev
	add	r0, r6, #16
	bl	_ZN8ObstacleD1Ev
	add	r0, r4, #48
	add	r4, r4, #64
	bl	_ZN8ObstacleD1Ev
	cmp	r5, r4
	bne	.L132
.L147:
	ldr	r5, [r7, #28]
.L128:
	cmp	r5, #0
	beq	.L130
	mov	r0, r5
	bl	free
.L130:
	mov	r0, r7
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.size	_ZN4TileD1Ev, .-_ZN4TileD1Ev
	.section	.text._ZN4Tile15InitialObstacleEv,"ax",%progbits
	.align	2
	.global	_ZN4Tile15InitialObstacleEv
	.hidden	_ZN4Tile15InitialObstacleEv
	.type	_ZN4Tile15InitialObstacleEv, %function
_ZN4Tile15InitialObstacleEv:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	fstmfdd	sp!, {d8}
	mov	r4, r0
	mov	r7, #1
	sub	sp, sp, #84
	add	r6, sp, #64
	flds	s16, [r0, #0]
	flds	s17, [r0, #4]
	mov	r0, r6
	ldrh	r8, [r4, #44]
	bl	_ZN8ObstacleC1Ev
	ldr	r5, [r4, #32]
	ldr	sl, [r4, #36]
	mov	r2, #4	@ movhi
	cmp	r5, sl
	fsts	s16, [sp, #64]
	fsts	s17, [sp, #68]
	strh	r8, [sp, #72]	@ movhi
	strh	r2, [sp, #74]	@ movhi
	strb	r7, [sp, #77]
	beq	.L152
	ldmia	r6, {r0, r1, r2, r3}
	mov	r9, r5
	mov	ip, r3, lsr #16
	stmia	r9!, {r0, r1, r2}
	strh	r3, [r9, #0]	@ movhi
	strb	ip, [r5, #14]
	ldr	r0, [r4, #32]
	add	r3, r0, #16
	str	r3, [r4, #32]
.L153:
	mov	r0, r6
	bl	_ZN8ObstacleD1Ev
	add	r6, sp, #48
	ldrh	r8, [r4, #46]
	mov	r0, r6
	flds	s17, [r4, #0]
	flds	s16, [r4, #4]
	bl	_ZN8ObstacleC1Ev
	mov	r1, r8, asl #16
	mov	r7, r1, asr #16
	fmsr	s3, r7	@ int
	flds	s15, .L354
	ldr	r5, [r4, #32]
	ldr	sl, [r4, #36]
	fsitos	s2, s3
	mov	r7, #1
	mov	ip, #4	@ movhi
	cmp	r5, sl
	fsts	s16, [sp, #52]
	strh	r8, [sp, #58]	@ movhi
	strh	ip, [sp, #56]	@ movhi
	strb	r7, [sp, #61]
	fadds	s1, s17, s2
	fsubs	s0, s1, s15
	fsts	s0, [sp, #48]
	beq	.L165
	ldmia	r6, {r0, r1, r2, r3}
	mov	r9, r5
	mov	lr, r3, lsr #16
	stmia	r9!, {r0, r1, r2}
	strh	r3, [r9, #0]	@ movhi
	strb	lr, [r5, #14]
	ldr	r5, [r4, #32]
	add	r8, r5, #16
	str	r8, [r4, #32]
.L166:
	mov	r0, r6
	bl	_ZN8ObstacleD1Ev
	add	r6, sp, #32
	ldrh	r5, [r4, #46]
	mov	r0, r6
	flds	s16, [r4, #0]
	flds	s17, [r4, #4]
	ldrh	r8, [r4, #44]
	bl	_ZN8ObstacleC1Ev
	mov	r2, r5, asl #16
	mov	r7, r2, asr #16
	fmsr	s8, r7	@ int
	flds	s6, .L354
	ldr	r5, [r4, #32]
	ldr	sl, [r4, #36]
	fsitos	s7, s8
	mov	r7, #1
	mov	ip, #4	@ movhi
	cmp	r5, sl
	fsts	s16, [sp, #32]
	strh	r8, [sp, #40]	@ movhi
	strh	ip, [sp, #42]	@ movhi
	strb	r7, [sp, #45]
	fadds	s5, s17, s7
	fsubs	s4, s5, s6
	fsts	s4, [sp, #36]
	beq	.L179
	ldmia	r6, {r0, r1, r2, r3}
	mov	r9, r5
	mov	lr, r3, lsr #16
	stmia	r9!, {r0, r1, r2}
	strh	r3, [r9, #0]	@ movhi
	strb	lr, [r5, #14]
	ldr	r0, [r4, #32]
	add	r8, r0, #16
	str	r8, [r4, #32]
.L180:
	mov	r0, r6
	add	r6, sp, #16
	bl	_ZN8ObstacleD1Ev
	flds	s16, [r4, #0]
	flds	s17, [r4, #4]
	mov	r0, r6
	ldrh	r8, [r4, #46]
	bl	_ZN8ObstacleC1Ev
	ldr	r5, [r4, #32]
	ldr	sl, [r4, #36]
	mov	r7, #1
	mov	ip, #4	@ movhi
	cmp	r5, sl
	fsts	s16, [sp, #16]
	fsts	s17, [sp, #20]
	strh	r8, [sp, #26]	@ movhi
	strh	ip, [sp, #24]	@ movhi
	strb	r7, [sp, #29]
	beq	.L193
	ldmia	r6, {r0, r1, r2, r3}
	mov	r9, r5
	mov	lr, r3, lsr #16
	stmia	r9!, {r0, r1, r2}
	strh	r3, [r9, #0]	@ movhi
	strb	lr, [r5, #14]
	ldr	r2, [r4, #32]
	add	r1, r2, #16
	str	r1, [r4, #32]
.L194:
	mov	r0, r6
	bl	_ZN8ObstacleD1Ev
	ldr	r3, [r4, #12]
	cmp	r3, #1
	ldreq	r3, [r4, #28]
	moveq	r2, #0
	streqb	r2, [r3, #12]
	ldr	r1, [r4, #16]
	cmp	r1, #1
	ldreq	r1, [r4, #28]
	moveq	r2, #0
	streqb	r2, [r1, #28]
	ldr	r0, [r4, #20]
	cmp	r0, #1
	ldreq	r0, [r4, #28]
	moveq	r2, #0
	streqb	r2, [r0, #44]
	ldr	ip, [r4, #24]
	cmp	ip, #1
	ldreq	ip, [r4, #28]
	moveq	r2, #0
	streqb	r2, [ip, #60]
	add	sp, sp, #84
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L355:
	.align	2
.L354:
	.word	1082130432
.L152:
	ldr	lr, [r4, #28]
	rsb	fp, lr, r5
	movs	r3, fp, asr #4
	beq	.L155
	movs	r7, r3, asl #1
	moveq	r8, #16
	streq	r7, [sp, #12]
	bne	.L155
.L156:
	cmp	sl, lr
	moveq	ip, r7
	beq	.L159
	ldmia	lr, {r0, r1, r2, r3}
	rsb	r8, lr, r5
	sub	ip, r8, #16
	add	r8, lr, #16
	mov	sl, ip, lsr #4
	mov	fp, r7
	mov	ip, r3, lsr #16
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	and	sl, sl, #3
	strh	r3, [fp, #0]	@ movhi
	strb	ip, [r7, #14]
	mov	ip, #16
	beq	.L326
	cmp	sl, #0
	beq	.L349
	cmp	sl, #1
	beq	.L324
	cmp	sl, #2
	beq	.L325
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, #16
	mov	ip, #32
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L325:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L324:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	add	r8, ip, lr
	mov	r9, r3, lsr #16
	mov	fp, sl
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
	beq	.L326
.L349:
	mov	r9, r5
	str	r4, [sp, #4]
.L160:
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #16
	add	r4, r7, ip
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	r4, r5, #16
	add	r5, r7, r5
	mov	sl, r3, lsr #16
	add	r8, r4, lr
	mov	fp, r5
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	sl, [r5, #14]
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #48
	add	r4, r7, r4
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	ip, ip, #64
	add	r5, r7, r5
	add	r8, ip, lr
	mov	r4, r3, lsr #16
	mov	sl, r5
	cmp	r9, r8
	stmia	sl!, {r0, r1, r2}
	strh	r3, [sl, #0]	@ movhi
	strb	r4, [r5, #14]
	bne	.L160
	ldr	r4, [sp, #4]
	mov	r5, r9
.L326:
	add	r1, lr, #16
	rsb	ip, r1, r5
	bic	r3, ip, #15
	add	lr, r3, #16
	add	ip, r7, lr
	add	r8, ip, #16
.L159:
	ldmia	r6, {r0, r1, r2, r3}
	mov	fp, ip
	mov	r5, r3, lsr #16
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r5, [ip, #14]
	ldr	r0, [r4, #28]
	ldr	sl, [r4, #32]
	cmp	r0, sl
	beq	.L161
	rsb	r3, r0, sl
	sub	lr, r3, #16
	add	r5, r0, #16
	mov	r9, lr, lsr #4
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	and	r9, r9, #3
	beq	.L327
	cmp	r9, #0
	beq	.L213
	cmp	r9, #1
	beq	.L322
	cmp	r9, #2
	beq	.L323
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L323:
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L322:
	mov	r0, r5
	add	r5, r5, #16
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	beq	.L327
.L213:
	add	r9, r5, #16
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	mov	r0, r9
	bl	_ZN8ObstacleD1Ev
	add	r0, r9, #16
	bl	_ZN8ObstacleD1Ev
	add	r0, r5, #48
	add	r5, r5, #64
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	bne	.L213
.L327:
	ldr	sl, [r4, #28]
.L161:
	cmp	sl, #0
	beq	.L163
	mov	r0, sl
	bl	free
.L163:
	ldr	r0, [sp, #12]
	str	r8, [r4, #32]
	add	sl, r7, r0
	str	sl, [r4, #36]
	str	r7, [r4, #28]
	b	.L153
.L193:
	ldr	lr, [r4, #28]
	rsb	fp, lr, r5
	movs	r3, fp, asr #4
	beq	.L196
	movs	r7, r3, asl #1
	moveq	r8, #16
	streq	r7, [sp, #12]
	bne	.L196
.L197:
	cmp	lr, sl
	moveq	ip, r7
	beq	.L200
	ldmia	lr, {r0, r1, r2, r3}
	rsb	r8, lr, r5
	sub	ip, r8, #16
	add	r8, lr, #16
	mov	sl, ip, lsr #4
	mov	fp, r7
	mov	ip, r3, lsr #16
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	and	sl, sl, #3
	strh	r3, [fp, #0]	@ movhi
	strb	ip, [r7, #14]
	mov	ip, #16
	beq	.L332
	cmp	sl, #0
	beq	.L337
	cmp	sl, #1
	beq	.L312
	cmp	sl, #2
	beq	.L313
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, #16
	mov	ip, #32
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L313:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L312:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	add	r8, ip, lr
	mov	r9, r3, lsr #16
	mov	fp, sl
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
	beq	.L332
.L337:
	mov	r9, r5
	str	r4, [sp, #4]
.L201:
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #16
	add	r4, r7, ip
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	r4, r5, #16
	add	r5, r7, r5
	mov	sl, r3, lsr #16
	add	r8, r4, lr
	mov	fp, r5
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	sl, [r5, #14]
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #48
	add	r4, r7, r4
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	ip, ip, #64
	add	r5, r7, r5
	add	r8, ip, lr
	mov	r4, r3, lsr #16
	mov	sl, r5
	cmp	r9, r8
	stmia	sl!, {r0, r1, r2}
	strh	r3, [sl, #0]	@ movhi
	strb	r4, [r5, #14]
	bne	.L201
	ldr	r4, [sp, #4]
	mov	r5, r9
.L332:
	add	r0, lr, #16
	rsb	ip, r0, r5
	bic	lr, ip, #15
	add	r3, lr, #16
	add	ip, r7, r3
	add	r8, ip, #16
.L200:
	ldmia	r6, {r0, r1, r2, r3}
	mov	fp, ip
	mov	sl, r3, lsr #16
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	sl, [ip, #14]
	ldr	r0, [r4, #28]
	ldr	sl, [r4, #32]
	cmp	r0, sl
	beq	.L202
	rsb	r2, r0, sl
	sub	r5, r2, #16
	mov	r9, r5, lsr #4
	add	r5, r0, #16
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	and	r9, r9, #3
	beq	.L333
	cmp	r9, #0
	beq	.L210
	cmp	r9, #1
	beq	.L310
	cmp	r9, #2
	beq	.L311
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L311:
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L310:
	mov	r0, r5
	add	r5, r5, #16
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	beq	.L333
.L210:
	add	r9, r5, #16
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	mov	r0, r9
	bl	_ZN8ObstacleD1Ev
	add	r0, r9, #16
	bl	_ZN8ObstacleD1Ev
	add	r0, r5, #48
	add	r5, r5, #64
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	bne	.L210
.L333:
	ldr	sl, [r4, #28]
.L202:
	cmp	sl, #0
	beq	.L204
	mov	r0, sl
	bl	free
.L204:
	ldr	lr, [sp, #12]
	str	r8, [r4, #32]
	add	r3, r7, lr
	str	r3, [r4, #36]
	str	r7, [r4, #28]
	b	.L194
.L179:
	ldr	lr, [r4, #28]
	rsb	fp, lr, r5
	movs	r3, fp, asr #4
	beq	.L182
	movs	r7, r3, asl #1
	moveq	r8, #16
	streq	r7, [sp, #12]
	bne	.L182
.L183:
	cmp	lr, sl
	moveq	ip, r7
	beq	.L186
	ldmia	lr, {r0, r1, r2, r3}
	rsb	r8, lr, r5
	sub	ip, r8, #16
	add	r8, lr, #16
	mov	sl, ip, lsr #4
	mov	fp, r7
	mov	ip, r3, lsr #16
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	and	sl, sl, #3
	strh	r3, [fp, #0]	@ movhi
	strb	ip, [r7, #14]
	mov	ip, #16
	beq	.L330
	cmp	sl, #0
	beq	.L341
	cmp	sl, #1
	beq	.L316
	cmp	sl, #2
	beq	.L317
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, #16
	mov	ip, #32
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L317:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L316:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	add	r8, ip, lr
	mov	r9, r3, lsr #16
	mov	fp, sl
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
	beq	.L330
.L341:
	mov	r9, r5
	str	r4, [sp, #4]
.L187:
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #16
	add	r4, r7, ip
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	r4, r5, #16
	add	r5, r7, r5
	mov	sl, r3, lsr #16
	add	r8, r4, lr
	mov	fp, r5
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	sl, [r5, #14]
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #48
	add	r4, r7, r4
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	ip, ip, #64
	add	r5, r7, r5
	add	r8, ip, lr
	mov	r4, r3, lsr #16
	mov	sl, r5
	cmp	r9, r8
	stmia	sl!, {r0, r1, r2}
	strh	r3, [sl, #0]	@ movhi
	strb	r4, [r5, #14]
	bne	.L187
	ldr	r4, [sp, #4]
	mov	r5, r9
.L330:
	add	r1, lr, #16
	rsb	ip, r1, r5
	bic	r3, ip, #15
	add	lr, r3, #16
	add	ip, r7, lr
	add	r8, ip, #16
.L186:
	ldmia	r6, {r0, r1, r2, r3}
	mov	fp, ip
	mov	r5, r3, lsr #16
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r5, [ip, #14]
	ldr	r0, [r4, #28]
	ldr	sl, [r4, #32]
	cmp	r0, sl
	beq	.L188
	rsb	r3, r0, sl
	sub	lr, r3, #16
	add	r5, r0, #16
	mov	r9, lr, lsr #4
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	and	r9, r9, #3
	beq	.L331
	cmp	r9, #0
	beq	.L211
	cmp	r9, #1
	beq	.L314
	cmp	r9, #2
	beq	.L315
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L315:
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L314:
	mov	r0, r5
	add	r5, r5, #16
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	beq	.L331
.L211:
	add	r9, r5, #16
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	mov	r0, r9
	bl	_ZN8ObstacleD1Ev
	add	r0, r9, #16
	bl	_ZN8ObstacleD1Ev
	add	r0, r5, #48
	add	r5, r5, #64
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	bne	.L211
.L331:
	ldr	sl, [r4, #28]
.L188:
	cmp	sl, #0
	beq	.L190
	mov	r0, sl
	bl	free
.L190:
	ldr	r0, [sp, #12]
	str	r8, [r4, #32]
	add	sl, r7, r0
	str	sl, [r4, #36]
	str	r7, [r4, #28]
	b	.L180
.L165:
	ldr	lr, [r4, #28]
	rsb	fp, lr, r5
	movs	r3, fp, asr #4
	beq	.L168
	movs	r7, r3, asl #1
	moveq	r8, #16
	streq	r7, [sp, #12]
	bne	.L168
.L169:
	cmp	sl, lr
	moveq	ip, r7
	beq	.L172
	ldmia	lr, {r0, r1, r2, r3}
	rsb	r8, lr, r5
	sub	ip, r8, #16
	add	r8, lr, #16
	mov	sl, ip, lsr #4
	mov	fp, r7
	mov	ip, r3, lsr #16
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	and	sl, sl, #3
	strh	r3, [fp, #0]	@ movhi
	strb	ip, [r7, #14]
	mov	ip, #16
	beq	.L328
	cmp	sl, #0
	beq	.L345
	cmp	sl, #1
	beq	.L320
	cmp	sl, #2
	beq	.L321
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, #16
	mov	ip, #32
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L321:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	mov	r9, r3, lsr #16
	mov	fp, sl
	add	r8, ip, lr
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
.L320:
	ldmia	r8, {r0, r1, r2, r3}
	add	sl, r7, ip
	add	ip, ip, #16
	add	r8, ip, lr
	mov	r9, r3, lsr #16
	mov	fp, sl
	cmp	r5, r8
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r9, [sl, #14]
	beq	.L328
.L345:
	mov	r9, r5
	str	r4, [sp, #4]
.L173:
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #16
	add	r4, r7, ip
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	r4, r5, #16
	add	r5, r7, r5
	mov	sl, r3, lsr #16
	add	r8, r4, lr
	mov	fp, r5
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	sl, [r5, #14]
	ldmia	r8, {r0, r1, r2, r3}
	add	r5, ip, #48
	add	r4, r7, r4
	mov	r8, r3, lsr #16
	add	sl, r5, lr
	mov	fp, r4
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r8, [r4, #14]
	ldmia	sl, {r0, r1, r2, r3}
	add	ip, ip, #64
	add	r5, r7, r5
	add	r8, ip, lr
	mov	r4, r3, lsr #16
	mov	sl, r5
	cmp	r9, r8
	stmia	sl!, {r0, r1, r2}
	strh	r3, [sl, #0]	@ movhi
	strb	r4, [r5, #14]
	bne	.L173
	ldr	r4, [sp, #4]
	mov	r5, r9
.L328:
	add	r2, lr, #16
	rsb	ip, r2, r5
	bic	r3, ip, #15
	add	lr, r3, #16
	add	ip, r7, lr
	add	r8, ip, #16
.L172:
	ldmia	r6, {r0, r1, r2, r3}
	mov	fp, ip
	mov	r5, r3, lsr #16
	stmia	fp!, {r0, r1, r2}
	strh	r3, [fp, #0]	@ movhi
	strb	r5, [ip, #14]
	ldr	r0, [r4, #28]
	ldr	sl, [r4, #32]
	cmp	r0, sl
	beq	.L174
	rsb	lr, r0, sl
	sub	r1, lr, #16
	add	r5, r0, #16
	mov	r9, r1, lsr #4
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	and	r9, r9, #3
	beq	.L329
	cmp	r9, #0
	beq	.L212
	cmp	r9, #1
	beq	.L318
	cmp	r9, #2
	beq	.L319
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L319:
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	add	r5, r5, #16
.L318:
	mov	r0, r5
	add	r5, r5, #16
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	beq	.L329
.L212:
	add	r9, r5, #16
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	mov	r0, r9
	bl	_ZN8ObstacleD1Ev
	add	r0, r9, #16
	bl	_ZN8ObstacleD1Ev
	add	r0, r5, #48
	add	r5, r5, #64
	bl	_ZN8ObstacleD1Ev
	cmp	sl, r5
	bne	.L212
.L329:
	ldr	sl, [r4, #28]
.L174:
	cmp	sl, #0
	beq	.L176
	mov	r0, sl
	bl	free
.L176:
	ldr	r3, [sp, #12]
	str	r8, [r4, #32]
	add	sl, r7, r3
	str	sl, [r4, #36]
	str	r7, [r4, #28]
	b	.L166
.L155:
	mov	r7, r7, asl #4
	mov	r0, r7
	str	r7, [sp, #12]
	bl	malloc
	subs	r7, r0, #0
	beq	.L350
.L157:
	ldr	lr, [r4, #28]
	add	r8, r7, #16
	b	.L156
.L196:
	mov	r7, r7, asl #4
	mov	r0, r7
	str	r7, [sp, #12]
	bl	malloc
	subs	r7, r0, #0
	beq	.L351
.L198:
	ldr	lr, [r4, #28]
	add	r8, r7, #16
	b	.L197
.L182:
	mov	r3, r7, asl #4
	mov	r0, r3
	str	r3, [sp, #12]
	bl	malloc
	subs	r7, r0, #0
	beq	.L352
.L184:
	ldr	lr, [r4, #28]
	add	r8, r7, #16
	b	.L183
.L168:
	mov	r3, r7, asl #4
	mov	r0, r3
	str	r3, [sp, #12]
	bl	malloc
	subs	r7, r0, #0
	beq	.L353
.L170:
	ldr	lr, [r4, #28]
	add	r8, r7, #16
	b	.L169
.L353:
	ldr	r0, [sp, #12]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj
	mov	r7, r0
	b	.L170
.L352:
	ldr	r0, [sp, #12]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj
	mov	r7, r0
	b	.L184
.L351:
	ldr	r0, [sp, #12]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj
	mov	r7, r0
	b	.L198
.L350:
	ldr	r0, [sp, #12]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj
	mov	r7, r0
	b	.L157
	.size	_ZN4Tile15InitialObstacleEv, .-_ZN4Tile15InitialObstacleEv
	.section	.text._ZN4Tile4LoadEv,"ax",%progbits
	.align	2
	.global	_ZN4Tile4LoadEv
	.hidden	_ZN4Tile4LoadEv
	.type	_ZN4Tile4LoadEv, %function
_ZN4Tile4LoadEv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #48]
	bl	_Z23Iw2DCreateImageResourcePKc
	str	r0, [r4, #40]
	ldr	r3, [r0, #0]
	ldr	r2, [r3, #0]
	blx	r2
	ldr	r1, [r4, #40]
	ldr	ip, [r1, #0]
	ldr	r3, [ip, #4]
	mov	r5, r0, asl #16
	mov	r0, r1
	blx	r3
	ldr	r3, [r4, #48]
	ldr	r2, .L363
	mov	r5, r5, lsr #16
	cmp	r3, r2
	strh	r5, [r4, #44]	@ movhi
	strh	r0, [r4, #46]	@ movhi
	beq	.L361
.L358:
	ldr	r0, .L363+4
	cmp	r3, r0
	beq	.L362
.L359:
	mov	r0, r4
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, lr}
	b	_ZN4Tile15InitialObstacleEv
.L362:
	ldr	r3, .L363+8
	mov	ip, sp
	ldmia	r3, {r0, r1, r2, r3}
	add	lr, r4, #12
	stmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	b	.L359
.L361:
	ldr	r3, .L363+12
	mov	ip, sp
	ldmia	r3, {r0, r1, r2, r3}
	add	lr, r4, #12
	stmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	ldr	r3, [r4, #48]
	b	.L358
.L364:
	.align	2
.L363:
	.word	.LC0
	.word	.LC1
	.word	.LANCHOR0+16
	.word	.LANCHOR0
	.size	_ZN4Tile4LoadEv, .-_ZN4Tile4LoadEv
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZZN4Tile4LoadEvE5C.291, %object
	.size	_ZZN4Tile4LoadEvE5C.291, 16
_ZZN4Tile4LoadEvE5C.291:
	.word	0
	.word	1
	.word	1
	.word	0
	.type	_ZZN4Tile4LoadEvE5C.292, %object
	.size	_ZZN4Tile4LoadEvE5C.292, 16
_ZZN4Tile4LoadEvE5C.292:
	.word	0
	.word	1
	.word	0
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"MiM_DownRight\000"
	.space	2
.LC1:
	.ascii	"MiM_LeftRight\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
