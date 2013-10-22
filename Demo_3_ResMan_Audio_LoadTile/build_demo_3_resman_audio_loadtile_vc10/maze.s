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
	.file	"maze.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN4MazeC2Ev,"ax",%progbits
	.align	2
	.global	_ZN4MazeC2Ev
	.hidden	_ZN4MazeC2Ev
	.type	_ZN4MazeC2Ev, %function
_ZN4MazeC2Ev:
.LFB1:
	.file 1 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_3_resman_audio_loadtile/src/maze.cpp"
	.loc 1 2 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI0:
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 1 4 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #8
	bx	lr
	.cfi_endproc
.LFE1:
	.size	_ZN4MazeC2Ev, .-_ZN4MazeC2Ev
	.section	.text._ZN4MazeC1Ev,"ax",%progbits
	.align	2
	.global	_ZN4MazeC1Ev
	.hidden	_ZN4MazeC1Ev
	.type	_ZN4MazeC1Ev, %function
_ZN4MazeC1Ev:
.LFB2:
	.loc 1 2 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 1 4 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #8
	bx	lr
	.cfi_endproc
.LFE2:
	.size	_ZN4MazeC1Ev, .-_ZN4MazeC1Ev
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB1
	.4byte	.LCFI0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB2
	.4byte	.LCFI1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_3_resman_audio_loadtile/h/maze.h"
	.section	.debug_info
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF3
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2
	.byte	0x4
	.4byte	0x7c
	.uleb128 0x3
	.byte	0x1
	.4byte	.LASF0
	.byte	0x2
	.byte	0x6
	.4byte	0x7c
	.byte	0x1
	.4byte	0x49
	.uleb128 0x4
	.4byte	0x7c
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.byte	0x1
	.4byte	.LASF1
	.byte	0x2
	.byte	0x7
	.4byte	0x82
	.byte	0x1
	.4byte	0x67
	.uleb128 0x4
	.4byte	0x7c
	.byte	0x1
	.uleb128 0x4
	.4byte	0x84
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.4byte	.LASF5
	.byte	0x1
	.uleb128 0x4
	.4byte	0x7c
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x9
	.4byte	0x31
	.byte	0x1
	.byte	0x2
	.byte	0x0
	.4byte	0xa2
	.uleb128 0xa
	.4byte	.LASF6
	.4byte	0xa2
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.4byte	0x7c
	.uleb128 0xc
	.4byte	0x8b
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST0
	.4byte	0xc5
	.uleb128 0xd
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0xe
	.4byte	0x8b
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xe0
	.4byte	0xa7
	.ascii	"Maze::Maze\000"
	.4byte	0xc5
	.ascii	"Maze::Maze\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"Maze\000"
.LASF3:
	.ascii	"c:/users/1106786/dropbox/dropbox/pg life/project im"
	.ascii	"pact/code/demos/demo_3_resman_audio_loadtile/src/ma"
	.ascii	"ze.cpp\000"
.LASF1:
	.ascii	"~Maze\000"
.LASF2:
	.ascii	"GNU C++ 4.4.1\000"
.LASF4:
	.ascii	"Initial\000"
.LASF5:
	.ascii	"_ZN4Maze7InitialEv\000"
.LASF6:
	.ascii	"this\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
