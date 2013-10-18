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
	.file	"game.cpp"
	.section	.text._ZN5CGame6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN5CGame6RenderEv
	.hidden	_ZN5CGame6RenderEv
	.type	_ZN5CGame6RenderEv, %function
_ZN5CGame6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #0
	bl	_Z16Iw2DSurfaceClearj
	mov	r1, #10
	ldr	r2, .L3
	mov	r3, #1
	mov	r0, #230
	bl	_Z15IwGxPrintStringiiPKcb
	ldr	r0, [r4, #0]
	bl	_ZN3Map6RenderEv
	ldr	ip, [r4, #0]
	ldr	r3, [r4, #4]
	ldmia	ip, {r1, r2}
	ldr	r0, [r4, #12]
	ldr	r3, [r3, #40]
	bl	_ZN8Obstacle6RenderE8CIwFVec28CIwSVec2
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #0]
	ldr	r0, [r4, #8]
	ldr	r3, [r1, #40]
	ldmia	r2, {r1, r2}
	bl	_ZN5Tiles6RenderE8CIwFVec28CIwSVec2
	ldr	r3, [r4, #0]
	ldr	r0, [r4, #4]
	ldmia	r3, {r1, r2}
	bl	_ZN9Character6RenderE8CIwFVec2
	ldmfd	sp!, {r4, lr}
	b	_Z15Iw2DSurfaceShowv
.L4:
	.align	2
.L3:
	.word	.LC0
	.size	_ZN5CGame6RenderEv, .-_ZN5CGame6RenderEv
	.section	.text._ZN5CGame7LoadResEv,"ax",%progbits
	.align	2
	.global	_ZN5CGame7LoadResEv
	.hidden	_ZN5CGame7LoadResEv
	.type	_ZN5CGame7LoadResEv, %function
_ZN5CGame7LoadResEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #0]
	bl	_ZN3Map4LoadEv
	ldr	r0, [r4, #4]
	bl	_ZN9Character4LoadEv
	ldr	r0, [r4, #8]
	bl	_ZN5Tiles4LoadEv
	ldr	ip, [r4, #12]
	flds	s15, .L9
	mov	r1, #1
	strb	r1, [ip, #13]
	ldr	r0, [r4, #12]
	mov	r2, #50
	fsts	s15, [r0, #4]
	fsts	s15, [r0, #0]
	ldr	r3, [r4, #12]
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r4, pc}
.L10:
	.align	2
.L9:
	.word	1131413504
	.size	_ZN5CGame7LoadResEv, .-_ZN5CGame7LoadResEv
	.section	.text._ZN5CGame6UpdateEi,"ax",%progbits
	.align	2
	.global	_ZN5CGame6UpdateEi
	.hidden	_ZN5CGame6UpdateEi
	.type	_ZN5CGame6UpdateEi, %function
_ZN5CGame6UpdateEi:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	fstmfdd	sp!, {d8}
	mov	r4, r0
	mov	r0, r1
	sub	sp, sp, #52
	bl	_Z11UpdateInputi
	ldr	r0, .L37+8
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L32
.L12:
	ldr	r0, [r4, #4]
	bl	_ZN9Character19GetDistanceToTargetEv
	flds	s5, .L37
	fmsr	s4, r0
	fcmps	s4, s5
	fmstat
	bgt	.L33
.L13:
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #0]
	flds	s6, [r0, #4]
	flds	s4, [r3, #0]
	flds	s14, [r3, #4]
	flds	s5, [r0, #0]
	fsubs	s3, s6, s14
	fsubs	s2, s5, s4
	fsts	s3, [r0, #36]
	fsts	s2, [r0, #32]
	ldr	r1, [r4, #4]
	flds	s13, [r1, #8]
	flds	s12, [r1, #12]
	fsts	s13, [r1, #16]
	fsts	s12, [r1, #20]
	ldr	lr, [r4, #0]
	flds	s1, [lr, #0]
	flds	s15, [lr, #4]
	fsts	s1, [lr, #8]
	fsts	s15, [lr, #12]
	add	sp, sp, #52
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, pc}
.L33:
	ldr	r0, [r4, #0]
	bl	_ZN3Map12CheckMapEdgeEv
	ldr	r3, [r4, #4]
	cmp	r0, #0
	beq	.L34
	ldr	r0, [r4, #0]
	flds	s5, [r3, #8]
	flds	s4, [r0, #0]
	flds	s3, [r3, #0]
	fsubs	s2, s5, s4
	fcmpes	s3, s2
	fmstat
	fstsmi	s2, [r3, #0]
	ldrmi	r3, [r4, #4]
	ldrmi	r0, [r4, #0]
	flds	s13, [r3, #12]
	flds	s12, [r0, #4]
	flds	s1, [r3, #4]
	fsubs	s0, s13, s12
	fcmpes	s1, s0
	fmstat
	fstsmi	s0, [r3, #4]
	ldrmi	r3, [r4, #4]
	ldrmi	r0, [r4, #0]
	flds	s16, [r3, #8]
	flds	s17, [r3, #0]
	bl	_ZN3Map10GetMapSizeEv
	mov	r1, r0, lsr #16
	strh	r1, [sp, #18]	@ movhi
	strh	r0, [sp, #16]	@ movhi
	ldr	r3, [sp, #16]
	str	r3, [sp, #44]
	ldrsh	ip, [sp, #44]
	fmsr	s14, ip	@ int
	fsitos	s15, s14
	fadds	s16, s16, s15
	bl	_Z19Iw2DGetSurfaceWidthv
	ldr	r3, [r4, #0]
	flds	s9, [r3, #0]
	fmsr	s11, r0	@ int
	fsitos	s10, s11
	fsubs	s8, s16, s10
	fsubs	s16, s8, s9
	fcmpes	s17, s16
	fmstat
	bgt	.L35
.L20:
	ldr	lr, [r4, #4]
	mov	r0, r3
	flds	s16, [lr, #12]
	flds	s17, [lr, #4]
	bl	_ZN3Map10GetMapSizeEv
	mov	ip, r0, lsr #16
	strh	ip, [sp, #18]	@ movhi
	strh	r0, [sp, #16]	@ movhi
	ldr	r2, [sp, #16]
	str	r2, [sp, #36]
	ldrsh	r1, [sp, #38]
	fmsr	s13, r1	@ int
	fsitos	s12, s13
	fadds	s16, s16, s12
	bl	_Z20Iw2DGetSurfaceHeightv
	ldr	r3, [r4, #0]
	flds	s15, [r3, #4]
	fmsr	s1, r0	@ int
	fsitos	s14, s1
	fsubs	s0, s16, s14
	fsubs	s16, s0, s15
	fcmpes	s17, s16
	fmstat
	bgt	.L36
.L22:
	ldr	r3, [r4, #4]
	flds	s10, .L37+4
	flds	s2, [r3, #8]
	flds	s13, [r3, #12]
	flds	s14, [r3, #0]
	flds	s4, [r3, #4]
	fsubs	s0, s14, s2
	fsubs	s3, s4, s13
	fmuls	s0, s0, s10
	fmuls	s10, s3, s10
	fadds	s12, s2, s0
	fadds	s1, s13, s10
	fsts	s12, [r3, #8]
	fsts	s1, [r3, #12]
	ldr	r0, [r4, #0]
	flds	s15, [r0, #0]
	flds	s11, [r0, #4]
	fadds	s9, s15, s0
	fadds	s8, s11, s10
	fsts	s9, [r0, #0]
	fsts	s8, [r0, #4]
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	add	lr, r1, #8
	ldr	r3, [r1, #40]
	ldmia	lr, {r1, r2}
	bl	_ZN5Tiles14CheckCurrTilesE8CIwFVec28CIwSVec2
	ldr	r3, [r4, #4]
	mov	ip, sp
	add	r2, r3, #16
	str	r3, [ip], #4
	ldmia	r2, {r0, r1}
	ldr	lr, [r4, #8]
	add	r2, r3, #8
	stmia	ip, {r0, r1}
	mov	r0, lr
	ldr	r3, [r3, #40]
	ldmia	r2, {r1, r2}
	bl	_ZN5Tiles14CheckCollisionE8CIwFVec28CIwSVec2RS0_S0_
	cmp	r0, #0
	beq	.L24
	ldr	r2, [r4, #4]
	flds	s8, [r2, #16]
	flds	s7, [r2, #20]
	fsts	s8, [r2, #8]
	fsts	s7, [r2, #12]
	ldr	ip, [r4, #0]
	flds	s6, [ip, #8]
	flds	s5, [ip, #12]
	fsts	s6, [ip, #0]
	fsts	s5, [ip, #4]
.L24:
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #12]
	add	lr, r1, #8
	ldr	r3, [r1, #40]
	ldmia	lr, {r1, r2}
	bl	_ZN8Obstacle15CollisionDetectE8CIwFVec28CIwSVec2
	cmp	r0, #0
	beq	.L13
	ldr	r2, [r4, #4]
	ldr	r0, [r4, #12]
	add	ip, r2, #16
	str	r2, [sp, #0]
	ldr	r3, [r2, #40]
	ldmia	ip, {r1, r2}
	bl	_ZN8Obstacle13CollisionSideE8CIwFVec28CIwSVec2RS0_
	ldr	r3, [r4, #4]
	flds	s0, [r3, #16]
	flds	s11, [r3, #20]
	fsts	s0, [r3, #8]
	fsts	s11, [r3, #12]
	ldr	r0, [r4, #0]
	flds	s10, [r0, #8]
	flds	s9, [r0, #12]
	fsts	s10, [r0, #0]
	fsts	s9, [r0, #4]
	b	.L13
.L32:
	add	r0, sp, #24
	ldr	r5, [r4, #4]
	bl	_Z10GetTouchesv
	flds	s3, [sp, #24]
	flds	s2, [sp, #28]
	fsts	s3, [r5, #32]
	fsts	s2, [r5, #36]
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #0]
	flds	s12, [r1, #36]
	flds	s0, [r2, #0]
	flds	s1, [r2, #4]
	flds	s13, [r1, #32]
	fadds	s14, s12, s1
	fadds	s15, s13, s0
	fsts	s14, [r1, #4]
	fsts	s15, [r1, #0]
	b	.L12
.L36:
	ldr	r5, [r4, #4]
	mov	r0, r3
	flds	s16, [r5, #12]
	bl	_ZN3Map10GetMapSizeEv
	mov	r2, r0, lsr #16
	strh	r0, [sp, #16]	@ movhi
	strh	r2, [sp, #18]	@ movhi
	ldr	r1, [sp, #16]
	str	r1, [sp, #32]
	ldrsh	r0, [sp, #34]
	fmsr	s7, r0	@ int
	fsitos	s6, s7
	fadds	s16, s16, s6
	bl	_Z20Iw2DGetSurfaceHeightv
	ldr	r3, [r4, #0]
	flds	s3, [r3, #4]
	fmsr	s5, r0	@ int
	fsitos	s4, s5
	fsubs	s2, s16, s4
	fsubs	s16, s2, s3
	fsts	s16, [r5, #4]
	b	.L22
.L35:
	ldr	r5, [r4, #4]
	mov	r0, r3
	flds	s17, [r5, #8]
	bl	_ZN3Map10GetMapSizeEv
	mov	r3, r0, lsr #16
	strh	r3, [sp, #18]	@ movhi
	strh	r0, [sp, #16]	@ movhi
	ldr	ip, [sp, #16]
	str	ip, [sp, #40]
	ldrsh	r0, [sp, #40]
	fmsr	s11, r0	@ int
	fsitos	s10, s11
	fadds	s16, s17, s10
	bl	_Z19Iw2DGetSurfaceWidthv
	ldr	r2, [r4, #0]
	flds	s17, [r2, #0]
	fmsr	s9, r0	@ int
	fsitos	s8, s9
	fsubs	s7, s16, s8
	fsubs	s6, s7, s17
	fsts	s6, [r5, #0]
	ldr	r3, [r4, #0]
	b	.L20
.L34:
	flds	s7, [r3, #8]
	flds	s6, [r3, #12]
	fsts	s7, [r3, #0]
	fsts	s6, [r3, #4]
	b	.L13
.L38:
	.align	2
.L37:
	.word	981668463
	.word	1028443341
	.word	m_StartTouch
	.size	_ZN5CGame6UpdateEi, .-_ZN5CGame6UpdateEi
	.section	.text._ZN5CGameD1Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameD1Ev
	.hidden	_ZN5CGameD1Ev
	.type	_ZN5CGameD1Ev, %function
_ZN5CGameD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, [r0, #0]
	mov	r4, r0
	cmp	r5, #0
	beq	.L40
	mov	r0, r5
	bl	_ZN3MapD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L40:
	ldr	r5, [r4, #4]
	cmp	r5, #0
	beq	.L41
	mov	r0, r5
	bl	_ZN9CharacterD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L41:
	ldr	r5, [r4, #8]
	cmp	r5, #0
	beq	.L42
	mov	r0, r5
	bl	_ZN5TilesD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L42:
	ldr	r5, [r4, #12]
	cmp	r5, #0
	beq	.L43
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L43:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN5CGameD1Ev, .-_ZN5CGameD1Ev
	.section	.text._ZN5CGameD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameD2Ev
	.hidden	_ZN5CGameD2Ev
	.type	_ZN5CGameD2Ev, %function
_ZN5CGameD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, [r0, #0]
	mov	r4, r0
	cmp	r5, #0
	beq	.L46
	mov	r0, r5
	bl	_ZN3MapD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L46:
	ldr	r5, [r4, #4]
	cmp	r5, #0
	beq	.L47
	mov	r0, r5
	bl	_ZN9CharacterD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L47:
	ldr	r5, [r4, #8]
	cmp	r5, #0
	beq	.L48
	mov	r0, r5
	bl	_ZN5TilesD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L48:
	ldr	r5, [r4, #12]
	cmp	r5, #0
	beq	.L49
	mov	r0, r5
	bl	_ZN8ObstacleD1Ev
	mov	r0, r5
	bl	_ZdlPv
.L49:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN5CGameD2Ev, .-_ZN5CGameD2Ev
	.section	.text._ZN5CGameC1Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameC1Ev
	.hidden	_ZN5CGameC1Ev
	.type	_ZN5CGameC1Ev, %function
_ZN5CGameC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	mov	r0, #24
	bl	_Znwj
	mov	r5, r0
	bl	_ZN3MapC1Ev
	str	r5, [r4, #0]
	mov	r0, #64
	bl	_Znwj
	mov	r5, r0
	bl	_ZN9CharacterC1Ev
	str	r5, [r4, #4]
	mov	r0, #104
	bl	_Znwj
	mov	r5, r0
	bl	_ZN5TilesC1Ev
	str	r5, [r4, #8]
	mov	r0, #16
	bl	_Znwj
	mov	r5, r0
	bl	_ZN8ObstacleC1Ev
	str	r5, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN5CGameC1Ev, .-_ZN5CGameC1Ev
	.section	.text._ZN5CGameC2Ev,"ax",%progbits
	.align	2
	.global	_ZN5CGameC2Ev
	.hidden	_ZN5CGameC2Ev
	.type	_ZN5CGameC2Ev, %function
_ZN5CGameC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	mov	r0, #24
	bl	_Znwj
	mov	r5, r0
	bl	_ZN3MapC1Ev
	str	r5, [r4, #0]
	mov	r0, #64
	bl	_Znwj
	mov	r5, r0
	bl	_ZN9CharacterC1Ev
	str	r5, [r4, #4]
	mov	r0, #104
	bl	_Znwj
	mov	r5, r0
	bl	_ZN5TilesC1Ev
	str	r5, [r4, #8]
	mov	r0, #16
	bl	_Znwj
	mov	r5, r0
	bl	_ZN8ObstacleC1Ev
	str	r5, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN5CGameC2Ev, .-_ZN5CGameC2Ev
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"MI\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
