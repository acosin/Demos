	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 2
	.file	"IwSoundParams.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN12CIwCallStackC1EPKc,"axG",%progbits,_ZN12CIwCallStackC1EPKc,comdat
	.align	2
	.weak	_ZN12CIwCallStackC1EPKc
	.hidden	_ZN12CIwCallStackC1EPKc
	.type	_ZN12CIwCallStackC1EPKc, %function
_ZN12CIwCallStackC1EPKc:
.LFB136:
	.file 1 "c:/marmalade/6.2/modules/iwutil/h/IwRuntime.h"
	.loc 1 97 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI0:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI1:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 99 0
	ldr	r0, [sp, #0]
	ldr	r1, [sp, #4]
	.cfi_offset 14, -4
	bl	IwCallStackEnter
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #0]
	.loc 1 100 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE136:
	.size	_ZN12CIwCallStackC1EPKc, .-_ZN12CIwCallStackC1EPKc
	.section	.text._ZN12CIwCallStackD1Ev,"axG",%progbits,_ZN12CIwCallStackD1Ev,comdat
	.align	2
	.weak	_ZN12CIwCallStackD1Ev
	.hidden	_ZN12CIwCallStackD1Ev
	.type	_ZN12CIwCallStackD1Ev, %function
_ZN12CIwCallStackD1Ev:
.LFB139:
	.loc 1 101 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI2:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI3:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 103 0
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	.cfi_offset 14, -4
	.loc 1 104 0
	ldr	r0, [sp, #4]
	bl	IwCallStackLeave
.L5:
	.loc 1 105 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE139:
	.size	_ZN12CIwCallStackD1Ev, .-_ZN12CIwCallStackD1Ev
	.section	.rodata
	.align	2
.LC0:
	.ascii	"CIwSoundParams::CIwSoundParams\000"
	.section	.text._ZN14CIwSoundParamsC2Ev,"ax",%progbits
	.align	2
	.global	_ZN14CIwSoundParamsC2Ev
	.hidden	_ZN14CIwSoundParamsC2Ev
	.type	_ZN14CIwSoundParamsC2Ev, %function
_ZN14CIwSoundParamsC2Ev:
.LFB360:
	.file 2 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_5_puzzle_gameplayflow/libs/soundengine/source/IwSoundParams.cpp"
	.loc 2 23 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI4:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI5:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
.LBB2:
	.loc 2 25 0
	add	r3, sp, #12
	mov	r0, r3
	ldr	r1, .L10
	.cfi_offset 14, -4
	bl	_ZN12CIwCallStackC1EPKc
	.loc 2 27 0
	ldr	r3, [sp, #4]
	mov	r2, #4096
	strh	r2, [r3, #0]	@ movhi
	.loc 2 28 0
	ldr	r3, [sp, #4]
	mov	r2, #0
	strh	r2, [r3, #2]	@ movhi
	.loc 2 29 0
	ldr	r3, [sp, #4]
	mov	r2, #4096
	strh	r2, [r3, #4]	@ movhi
	add	r3, sp, #12
	mov	r0, r3
	bl	_ZN12CIwCallStackD1Ev
.LBE2:
	.loc 2 30 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L11:
	.align	2
.L10:
	.word	.LC0
	.cfi_endproc
.LFE360:
	.size	_ZN14CIwSoundParamsC2Ev, .-_ZN14CIwSoundParamsC2Ev
	.section	.text._ZN14CIwSoundParamsC1Ev,"ax",%progbits
	.align	2
	.global	_ZN14CIwSoundParamsC1Ev
	.hidden	_ZN14CIwSoundParamsC1Ev
	.type	_ZN14CIwSoundParamsC1Ev, %function
_ZN14CIwSoundParamsC1Ev:
.LFB361:
	.loc 2 23 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI6:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI7:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
.LBB3:
	.loc 2 25 0
	add	r3, sp, #12
	mov	r0, r3
	ldr	r1, .L15
	.cfi_offset 14, -4
	bl	_ZN12CIwCallStackC1EPKc
	.loc 2 27 0
	ldr	r3, [sp, #4]
	mov	r2, #4096
	strh	r2, [r3, #0]	@ movhi
	.loc 2 28 0
	ldr	r3, [sp, #4]
	mov	r2, #0
	strh	r2, [r3, #2]	@ movhi
	.loc 2 29 0
	ldr	r3, [sp, #4]
	mov	r2, #4096
	strh	r2, [r3, #4]	@ movhi
	add	r3, sp, #12
	mov	r0, r3
	bl	_ZN12CIwCallStackD1Ev
.LBE3:
	.loc 2 30 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L16:
	.align	2
.L15:
	.word	.LC0
	.cfi_endproc
.LFE361:
	.size	_ZN14CIwSoundParamsC1Ev, .-_ZN14CIwSoundParamsC1Ev
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB136
	.4byte	.LCFI0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1
	.4byte	.LFE136
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB139
	.4byte	.LCFI2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LFE139
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB360
	.4byte	.LCFI4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5
	.4byte	.LFE360
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB361
	.4byte	.LCFI6
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7
	.4byte	.LFE361
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/marmalade/6.2/s3e/h/std/c++/typeinfo.h"
	.file 4 "c:/marmalade/6.2/s3e/h/std/c++/cstddef"
	.file 5 "c:/marmalade/6.2/s3e/h/std/c++/exception"
	.file 6 "c:/marmalade/6.2/s3e/h/std/c++/typeinfo"
	.file 7 "c:/marmalade/6.2/s3e/h/std/c++/stl/_config.h"
	.file 8 "c:/marmalade/6.2/s3e/h/s3eTypes.h"
	.file 9 "c:/marmalade/6.2/s3e/h/s3eFile.h"
	.file 10 "c:/marmalade/6.2/modules/iwutil/h/IwSerialise.h"
	.file 11 "c:/marmalade/6.2/modules/iwgeom/h/IwGeomCore.h"
	.file 12 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_5_puzzle_gameplayflow/libs/soundengine/h/IwSoundParams.h"
	.file 13 "c:/marmalade/6.2/modules/iwutil/h/IwMenu.h"
	.file 14 "c:/marmalade/6.2/modules/iwgeom/h/IwGeomSqrt.h"
	.file 15 "<built-in>"
	.section	.debug_info
	.4byte	0x4f1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x4
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.ascii	"std\000"
	.byte	0xf
	.byte	0x0
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x1
	.uleb128 0x5
	.byte	0x3
	.byte	0x17
	.4byte	0x3b
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x7
	.2byte	0x1e9
	.4byte	0x30
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x7
	.2byte	0x222
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x4
	.byte	0x2a
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x4
	.byte	0x2b
	.4byte	0xeb
	.uleb128 0x5
	.byte	0x5
	.byte	0x4e
	.4byte	0x3b
	.uleb128 0x5
	.byte	0x5
	.byte	0x4f
	.4byte	0x41
	.uleb128 0x5
	.byte	0x5
	.byte	0x4e
	.4byte	0x3b
	.uleb128 0x5
	.byte	0x5
	.byte	0x4f
	.4byte	0x41
	.uleb128 0x5
	.byte	0x5
	.byte	0x4e
	.4byte	0x3b
	.uleb128 0x5
	.byte	0x5
	.byte	0x4f
	.4byte	0x41
	.uleb128 0x5
	.byte	0x6
	.byte	0x2f
	.4byte	0x4e
	.uleb128 0x5
	.byte	0x6
	.byte	0x33
	.4byte	0x54
	.uleb128 0x5
	.byte	0x6
	.byte	0x3d
	.4byte	0x5a
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x7
	.2byte	0x224
	.4byte	0x6d
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x8
	.byte	0x25
	.4byte	0x107
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x8
	.byte	0x26
	.4byte	0x119
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x8
	.byte	0x4c
	.4byte	0xfc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x8
	.byte	0x4d
	.4byte	0x10e
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x6d
	.4byte	0xee
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x8
	.byte	0x7d
	.4byte	0xda
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x84
	.4byte	0xd3
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x8b
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0x90
	.4byte	0x139
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0xe9
	.4byte	0x144
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.byte	0x4
	.4byte	0x19f
	.uleb128 0xd
	.4byte	0x29
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x9
	.byte	0x21
	.4byte	0x1af
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xa
	.byte	0x27
	.4byte	0x1c0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0xf
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0xcc
	.byte	0xa
	.byte	0x2e
	.4byte	0x284
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0xa
	.byte	0x2f
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0xa
	.byte	0x30
	.4byte	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0xa
	.byte	0x31
	.4byte	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0xa
	.byte	0x32
	.4byte	0x291
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0xa
	.byte	0x33
	.4byte	0x14f
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0xa
	.byte	0x34
	.4byte	0x14f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0xa
	.byte	0x35
	.4byte	0x2a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xa
	.byte	0x36
	.4byte	0x15a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xa
	.byte	0x37
	.4byte	0x14f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xa
	.byte	0x38
	.4byte	0x165
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x12
	.ascii	"pad\000"
	.byte	0xa
	.byte	0x39
	.4byte	0x165
	.byte	0x3
	.byte	0x23
	.uleb128 0xc6
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xa
	.byte	0x3a
	.4byte	0x1b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF42
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0x13
	.4byte	0x29
	.4byte	0x2a1
	.uleb128 0x14
	.4byte	0x196
	.byte	0x9f
	.byte	0x0
	.uleb128 0x13
	.4byte	0x144
	.4byte	0x2b1
	.uleb128 0x14
	.4byte	0x196
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1
	.byte	0x5e
	.4byte	0x303
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6a
	.4byte	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.byte	0x61
	.4byte	0x303
	.byte	0x1
	.4byte	0x2e8
	.uleb128 0x17
	.4byte	0x303
	.byte	0x1
	.uleb128 0x18
	.4byte	0x199
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x65
	.4byte	0x18d
	.byte	0x1
	.uleb128 0x17
	.4byte	0x303
	.byte	0x1
	.uleb128 0x17
	.4byte	0xd3
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2b1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF44
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xb
	.byte	0xa1
	.4byte	0x15a
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xb
	.byte	0xab
	.4byte	0x170
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x8
	.byte	0xc
	.byte	0x1e
	.4byte	0x385
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xc
	.byte	0x23
	.4byte	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0xc
	.byte	0x24
	.4byte	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0xc
	.byte	0x25
	.4byte	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0xc
	.byte	0x26
	.4byte	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF49
	.byte	0xc
	.byte	0x20
	.4byte	0x385
	.byte	0x1
	.uleb128 0x17
	.4byte	0x385
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x32c
	.uleb128 0x1a
	.4byte	0x2cb
	.byte	0x2
	.4byte	0x3ab
	.uleb128 0x1b
	.4byte	.LASF55
	.4byte	0x3ab
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x1
	.byte	0x61
	.4byte	0x199
	.byte	0x0
	.uleb128 0xd
	.4byte	0x303
	.uleb128 0x1d
	.4byte	0x38b
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LLST0
	.4byte	0x3d6
	.uleb128 0x1e
	.4byte	0x395
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	0x39f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x2e8
	.byte	0x2
	.4byte	0x3f5
	.uleb128 0x1b
	.4byte	.LASF55
	.4byte	0x3ab
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF56
	.4byte	0x3f5
	.byte	0x1
	.byte	0x0
	.uleb128 0xd
	.4byte	0xd3
	.uleb128 0x1d
	.4byte	0x3d6
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LLST1
	.4byte	0x418
	.uleb128 0x1e
	.4byte	0x3e0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x370
	.byte	0x2
	.byte	0x17
	.byte	0x0
	.4byte	0x43c
	.uleb128 0x1b
	.4byte	.LASF55
	.4byte	0x43c
	.byte	0x1
	.uleb128 0x20
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x2
	.byte	0x19
	.4byte	0x2b1
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	0x385
	.uleb128 0x1d
	.4byte	0x418
	.4byte	.LFB360
	.4byte	.LFE360
	.4byte	.LLST2
	.4byte	0x471
	.uleb128 0x1e
	.4byte	0x424
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x23
	.4byte	0x42f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x418
	.4byte	.LFB361
	.4byte	.LFE361
	.4byte	.LLST3
	.4byte	0x4a1
	.uleb128 0x1e
	.4byte	0x424
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x23
	.4byte	0x42f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF57
	.byte	0xa
	.byte	0x3c
	.4byte	0x1c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF58
	.byte	0xa
	.byte	0x3d
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF59
	.byte	0xd
	.2byte	0x1d4
	.4byte	0x4c9
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x4
	.4byte	0x310
	.uleb128 0x13
	.4byte	0x316
	.4byte	0x4da
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF60
	.byte	0xe
	.byte	0x4f
	.4byte	0x4cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF61
	.byte	0xe
	.byte	0xc5
	.4byte	0x4cf
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x93
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x4f5
	.4byte	0x3b0
	.ascii	"CIwCallStack::CIwCallStack\000"
	.4byte	0x3fa
	.ascii	"CIwCallStack::~CIwCallStack\000"
	.4byte	0x441
	.ascii	"CIwSoundParams::CIwSoundParams\000"
	.4byte	0x471
	.ascii	"CIwSoundParams::CIwSoundParams\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB360
	.4byte	.LFE360-.LFB360
	.4byte	.LFB361
	.4byte	.LFE361-.LFB361
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB360
	.4byte	.LFE360
	.4byte	.LFB361
	.4byte	.LFE361
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF38:
	.ascii	"headBit\000"
.LASF36:
	.ascii	"callbackPeriod\000"
.LASF39:
	.ascii	"version\000"
.LASF49:
	.ascii	"CIwSoundParams\000"
.LASF16:
	.ascii	"short int\000"
.LASF46:
	.ascii	"iwfixed\000"
.LASF34:
	.ascii	"filename\000"
.LASF60:
	.ascii	"g_SqrtTable\000"
.LASF57:
	.ascii	"g_IwSerialiseContext\000"
.LASF25:
	.ascii	"int16\000"
.LASF1:
	.ascii	"bad_exception\000"
.LASF0:
	.ascii	"exception\000"
.LASF42:
	.ascii	"bool\000"
.LASF58:
	.ascii	"g_IwSerialiseContextValid\000"
.LASF44:
	.ascii	"float\000"
.LASF31:
	.ascii	"read\000"
.LASF17:
	.ascii	"long long int\000"
.LASF62:
	.ascii	"GNU C++ 4.4.1\000"
.LASF28:
	.ascii	"long int\000"
.LASF59:
	.ascii	"g_IwMenuManager\000"
.LASF5:
	.ascii	"_STL\000"
.LASF30:
	.ascii	"IwSerialiseUserCallback\000"
.LASF35:
	.ascii	"bytesRead\000"
.LASF11:
	.ascii	"unsigned char\000"
.LASF45:
	.ascii	"CIwMenuManager\000"
.LASF12:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"long long unsigned int\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"uint16_t\000"
.LASF7:
	.ascii	"stlport\000"
.LASF2:
	.ascii	"type_info\000"
.LASF13:
	.ascii	"short unsigned int\000"
.LASF27:
	.ascii	"wchar_t\000"
.LASF8:
	.ascii	"char\000"
.LASF14:
	.ascii	"s3e_uint16_t\000"
.LASF67:
	.ascii	"_callstack\000"
.LASF64:
	.ascii	"c:\\\\Users\\\\1106786\\\\Dropbox\\\\Dropbox\\\\PG "
	.ascii	"life\\\\Project Impact\\\\Code\\\\Demos\\\\Demo_5_P"
	.ascii	"uzzle_GamePlayFlow\\\\build_demo_5_puzzle_gameplayf"
	.ascii	"low_vc10\000"
.LASF56:
	.ascii	"__in_chrg\000"
.LASF20:
	.ascii	"int16_t\000"
.LASF52:
	.ascii	"m_Pitch\000"
.LASF55:
	.ascii	"this\000"
.LASF54:
	.ascii	"~CIwCallStack\000"
.LASF37:
	.ascii	"buffer\000"
.LASF29:
	.ascii	"s3eFile\000"
.LASF4:
	.ascii	"bad_cast\000"
.LASF24:
	.ascii	"uint16\000"
.LASF48:
	.ascii	"CIwCallStack\000"
.LASF22:
	.ascii	"uint32\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF23:
	.ascii	"int32\000"
.LASF33:
	.ascii	"handle\000"
.LASF26:
	.ascii	"s3eBool\000"
.LASF66:
	.ascii	"pName\000"
.LASF63:
	.ascii	"c:/users/1106786/dropbox/dropbox/pg life/project im"
	.ascii	"pact/code/demos/demo_5_puzzle_gameplayflow/libs/sou"
	.ascii	"ndengine/source/IwSoundParams.cpp\000"
.LASF40:
	.ascii	"versionUser\000"
.LASF3:
	.ascii	"bad_typeid\000"
.LASF43:
	.ascii	"m_Entered\000"
.LASF21:
	.ascii	"uint8\000"
.LASF53:
	.ascii	"m_Pad\000"
.LASF61:
	.ascii	"g_InverseSqrtTable\000"
.LASF6:
	.ascii	"__std_alias\000"
.LASF32:
	.ascii	"base\000"
.LASF51:
	.ascii	"m_Pan\000"
.LASF65:
	.ascii	"IwSerialiseContext\000"
.LASF15:
	.ascii	"s3e_int16_t\000"
.LASF41:
	.ascii	"callback\000"
.LASF47:
	.ascii	"iwsfixed\000"
.LASF50:
	.ascii	"m_Vol\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
