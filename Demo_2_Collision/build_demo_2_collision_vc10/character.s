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
	.file	"character.cpp"
	.section	.text._ZN9CharacterD2Ev,"ax",%progbits
	.align	2
	.global	_ZN9CharacterD2Ev
	.hidden	_ZN9CharacterD2Ev
	.type	_ZN9CharacterD2Ev, %function
_ZN9CharacterD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #52]
	cmp	r0, #0
	beq	.L2
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L2:
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L3
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #16]
	blx	r2
.L3:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN9CharacterD2Ev, .-_ZN9CharacterD2Ev
	.section	.text._ZN9CharacterD1Ev,"ax",%progbits
	.align	2
	.global	_ZN9CharacterD1Ev
	.hidden	_ZN9CharacterD1Ev
	.type	_ZN9CharacterD1Ev, %function
_ZN9CharacterD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #52]
	cmp	r0, #0
	beq	.L7
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #16]
	blx	r3
.L7:
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L8
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #16]
	blx	r2
.L8:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN9CharacterD1Ev, .-_ZN9CharacterD1Ev
	.section	.text._ZN9Character6UpdateEi,"ax",%progbits
	.align	2
	.global	_ZN9Character6UpdateEi
	.hidden	_ZN9Character6UpdateEi
	.type	_ZN9Character6UpdateEi, %function
_ZN9Character6UpdateEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN9Character6UpdateEi, .-_ZN9Character6UpdateEi
	.section	.text._ZN9Character11CheckTargetER8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN9Character11CheckTargetER8CIwFVec2
	.hidden	_ZN9Character11CheckTargetER8CIwFVec2
	.type	_ZN9Character11CheckTargetER8CIwFVec2, %function
_ZN9Character11CheckTargetER8CIwFVec2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN9Character11CheckTargetER8CIwFVec2, .-_ZN9Character11CheckTargetER8CIwFVec2
	.section	.text._ZN9Character19GetDistanceToTargetEv,"ax",%progbits
	.align	2
	.global	_ZN9Character19GetDistanceToTargetEv
	.hidden	_ZN9Character19GetDistanceToTargetEv
	.type	_ZN9Character19GetDistanceToTargetEv, %function
_ZN9Character19GetDistanceToTargetEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	flds	s0, [r0, #8]
	flds	s12, [r0, #4]
	flds	s1, [r0, #12]
	flds	s13, [r0, #0]
	sub	sp, sp, #12
	mov	r0, sp
	fsubs	s14, s12, s1
	fsubs	s15, s13, s0
	fsts	s14, [sp, #4]
	fsts	s15, [sp, #0]
	bl	_ZNK8CIwFVec29GetLengthEv
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.size	_ZN9Character19GetDistanceToTargetEv, .-_ZN9Character19GetDistanceToTargetEv
	.section	.text._ZN9Character19GetDistanceToCenterEv,"ax",%progbits
	.align	2
	.global	_ZN9Character19GetDistanceToCenterEv
	.hidden	_ZN9Character19GetDistanceToCenterEv
	.type	_ZN9Character19GetDistanceToCenterEv, %function
_ZN9Character19GetDistanceToCenterEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	flds	s0, [r0, #24]
	flds	s12, [r0, #12]
	flds	s1, [r0, #28]
	flds	s13, [r0, #8]
	sub	sp, sp, #12
	mov	r0, sp
	fsubs	s14, s12, s1
	fsubs	s15, s13, s0
	fsts	s14, [sp, #4]
	fsts	s15, [sp, #0]
	bl	_ZNK8CIwFVec29GetLengthEv
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.size	_ZN9Character19GetDistanceToCenterEv, .-_ZN9Character19GetDistanceToCenterEv
	.section	.text._ZN9Character4LoadEv,"ax",%progbits
	.align	2
	.global	_ZN9Character4LoadEv
	.hidden	_ZN9Character4LoadEv
	.type	_ZN9Character4LoadEv, %function
_ZN9Character4LoadEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L22
	bl	_Z23Iw2DCreateImageResourcePKc
	str	r0, [r4, #52]
	ldr	r0, .L22+4
	bl	_Z23Iw2DCreateImageResourcePKc
	ldr	r3, [r4, #52]
	str	r0, [r4, #56]
	ldr	r5, [r3, #0]
	mov	r0, r3
	ldr	ip, [r5, #0]
	blx	ip
	ldr	r1, [r4, #52]
	ldr	r2, [r1, #0]
	ldr	r3, [r2, #4]
	mov	r5, r0, asl #16
	mov	r0, r1
	blx	r3
	mov	r5, r5, lsr #16
	strh	r5, [r4, #40]	@ movhi
	strh	r5, [r4, #60]	@ movhi
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	mov	ip, r0, asl #16
	mov	r2, ip, asr #16
	add	r1, r2, r2, lsr #31
	mov	r3, r1, asr #1
	strh	r3, [r4, #42]	@ movhi
	strh	r0, [r4, #62]	@ movhi
	ldmfd	sp!, {r3, r4, r5, pc}
.L23:
	.align	2
.L22:
	.word	.LC0
	.word	.LC1
	.size	_ZN9Character4LoadEv, .-_ZN9Character4LoadEv
	.section	.text._ZN9CharacterC1Ev,"ax",%progbits
	.align	2
	.global	_ZN9CharacterC1Ev
	.hidden	_ZN9CharacterC1Ev
	.type	_ZN9CharacterC1Ev, %function
_ZN9CharacterC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	fstmfdd	sp!, {d8}
	flds	s17, .L29
	mov	r4, r0
	bl	_Z19Iw2DGetSurfaceWidthv
	fmsr	s2, r0	@ int
	fsitos	s1, s2
	fmuls	s16, s1, s17
	bl	_Z20Iw2DGetSurfaceHeightv
	flds	s0, .L29+4
	mov	r3, #0
	strb	r3, [r4, #48]
	fsts	s0, [r4, #44]
	fsts	s16, [r4, #0]
	fsts	s16, [r4, #24]
	fsts	s16, [r4, #8]
	fmsr	s14, r0	@ int
	mov	r0, r4
	fsitos	s15, s14
	fmuls	s15, s15, s17
	fsts	s15, [r4, #4]
	fsts	s15, [r4, #28]
	fsts	s15, [r4, #12]
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, pc}
.L30:
	.align	2
.L29:
	.word	1056964608
	.word	1112014848
	.size	_ZN9CharacterC1Ev, .-_ZN9CharacterC1Ev
	.section	.text._ZN9CharacterC2Ev,"ax",%progbits
	.align	2
	.global	_ZN9CharacterC2Ev
	.hidden	_ZN9CharacterC2Ev
	.type	_ZN9CharacterC2Ev, %function
_ZN9CharacterC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	fstmfdd	sp!, {d8}
	flds	s17, .L36
	mov	r4, r0
	bl	_Z19Iw2DGetSurfaceWidthv
	fmsr	s2, r0	@ int
	fsitos	s1, s2
	fmuls	s16, s1, s17
	bl	_Z20Iw2DGetSurfaceHeightv
	flds	s0, .L36+4
	mov	r3, #0
	strb	r3, [r4, #48]
	fsts	s0, [r4, #44]
	fsts	s16, [r4, #0]
	fsts	s16, [r4, #24]
	fsts	s16, [r4, #8]
	fmsr	s14, r0	@ int
	mov	r0, r4
	fsitos	s15, s14
	fmuls	s15, s15, s17
	fsts	s15, [r4, #4]
	fsts	s15, [r4, #28]
	fsts	s15, [r4, #12]
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, pc}
.L37:
	.align	2
.L36:
	.word	1056964608
	.word	1112014848
	.size	_ZN9CharacterC2Ev, .-_ZN9CharacterC2Ev
	.section	.text._ZN9Character6RenderE8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN9Character6RenderE8CIwFVec2
	.hidden	_ZN9Character6RenderE8CIwFVec2
	.type	_ZN9Character6RenderE8CIwFVec2, %function
_ZN9Character6RenderE8CIwFVec2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	fstmfdd	sp!, {d8}
	mov	r4, r0
	flds	s0, [r0, #28]
	flds	s15, [r0, #24]
	ldrh	ip, [r0, #62]
	ldrsh	r0, [r0, #60]
	ftosizs	s14, s0
	ftosizs	s12, s15
	mov	r3, ip, asl #16
	mov	r5, r3, asr #16
	add	ip, r5, r5, lsr #31
	add	lr, r0, r0, lsr #31
	sub	sp, sp, #32
	ldr	r0, [r4, #52]
	fmrs	r6, s14	@ int
	mov	r3, sp
	sub	r5, r6, #16
	fmrs	r6, s12	@ int
	sub	ip, r5, ip, asr #1
	strh	ip, [sp, #30]	@ movhi
	sub	lr, r6, lr, asr #1
	strh	lr, [sp, #28]	@ movhi
	stmia	r3, {r1, r2}
	ldr	r1, [sp, #28]
	flds	s16, [sp, #0]
	flds	s17, [sp, #4]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2
	flds	s13, [r4, #32]
	flds	s11, [r4, #36]
	flds	s10, .L46
	ldr	r0, [r4, #56]
	fsubs	s9, s11, s10
	fsubs	s7, s13, s10
	ftosizs	s8, s9
	ftosizs	s6, s7
	fmrs	r3, s8	@ int
	fmrs	r1, s6	@ int
	strh	r3, [sp, #26]	@ movhi
	strh	r1, [sp, #24]	@ movhi
	ldr	r1, [sp, #24]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2
	mov	r0, #-16777216
	bl	_Z13Iw2DSetColourj
	flds	s5, [r4, #8]
	flds	s4, [r4, #12]
	mov	r0, #4
	strh	r0, [sp, #18]	@ movhi
	fsubs	s3, s5, s16
	fsubs	s2, s4, s17
	strh	r0, [sp, #16]	@ movhi
	ldr	r1, [sp, #16]
	ftosizs	s1, s3
	ftosizs	s0, s2
	fmrs	r6, s1	@ int
	fmrs	ip, s0	@ int
	sub	r2, r6, #2
	sub	r3, ip, #2
	strh	r2, [sp, #20]	@ movhi
	strh	r3, [sp, #22]	@ movhi
	ldr	r0, [sp, #20]
	bl	_Z12Iw2DFillRect8CIwSVec2S_
	ldr	r0, .L46+4
	bl	_Z13Iw2DSetColourj
	flds	s14, [r4, #8]
	flds	s15, [r4, #12]
	ldrh	r0, [r4, #42]
	ldrh	r1, [r4, #40]
	fsubs	s16, s14, s16
	fsubs	s17, s15, s17
	mov	ip, r0, asl #16
	mov	r6, r1, asl #16
	mov	r2, r6, asr #16
	add	r6, r2, r2, lsr #31
	mov	r3, ip, asr #16
	add	ip, r3, r3, lsr #31
	ftosizs	s16, s16
	ftosizs	s17, s17
	mov	r1, #32
	strh	r1, [sp, #10]	@ movhi
	strh	r1, [sp, #8]	@ movhi
	ldr	r1, [sp, #8]
	fmrs	r0, s16	@ int
	sub	r2, r0, r6, asr #1
	fmrs	r6, s17	@ int
	strh	r2, [sp, #12]	@ movhi
	sub	r3, r6, ip, asr #1
	strh	r3, [sp, #14]	@ movhi
	ldr	r0, [sp, #12]
	bl	_Z12Iw2DDrawRect8CIwSVec2S_
	mvn	r0, #0
	add	sp, sp, #32
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_Z13Iw2DSetColourj
.L47:
	.align	2
.L46:
	.word	1090519040
	.word	-16776961
	.size	_ZN9Character6RenderE8CIwFVec2, .-_ZN9Character6RenderE8CIwFVec2
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"character\000"
	.space	2
.LC1:
	.ascii	"star\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
