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
	.file	"audio.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.data
	.align	2
	.type	_ZL8g_Status, %object
	.size	_ZL8g_Status, 4
_ZL8g_Status:
	.word	2
	.bss
_ZL14g_MP3Supported:
	.space	1
	.align	2
_ZL11g_AudioData:
	.space	4
	.align	2
_ZL11g_AudioSize:
	.space	4
	.section	.text._Z17AudioStopCallbackPvS_,"ax",%progbits
	.align	2
	.global	_Z17AudioStopCallbackPvS_
	.hidden	_Z17AudioStopCallbackPvS_
	.type	_Z17AudioStopCallbackPvS_, %function
_Z17AudioStopCallbackPvS_:
.LFB4:
	.file 1 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_4_tilecollision_advaudio_ui/src/audio.cpp"
	.loc 1 15 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI0:
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 16 0
	ldr	r3, .L3
	mov	r2, #2
	str	r2, [r3, #0]
	.loc 1 17 0
	mov	r3, #0
	.loc 1 18 0
	mov	r0, r3
	add	sp, sp, #8
	bx	lr
.L4:
	.align	2
.L3:
	.word	_ZL8g_Status
	.cfi_endproc
.LFE4:
	.size	_Z17AudioStopCallbackPvS_, .-_Z17AudioStopCallbackPvS_
	.section	.text._ZN5AudioD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5AudioD2Ev
	.hidden	_ZN5AudioD2Ev
	.type	_ZN5AudioD2Ev, %function
_ZN5AudioD2Ev:
.LFB6:
	.loc 1 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI1:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI2:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 22 0
	.cfi_offset 14, -4
	bl	s3eAudioStop
	.loc 1 24 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE6:
	.size	_ZN5AudioD2Ev, .-_ZN5AudioD2Ev
	.section	.text._ZN5AudioD1Ev,"ax",%progbits
	.align	2
	.global	_ZN5AudioD1Ev
	.hidden	_ZN5AudioD1Ev
	.type	_ZN5AudioD1Ev, %function
_ZN5AudioD1Ev:
.LFB7:
	.loc 1 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI3:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI4:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 22 0
	.cfi_offset 14, -4
	bl	s3eAudioStop
	.loc 1 24 0
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE7:
	.size	_ZN5AudioD1Ev, .-_ZN5AudioD1Ev
	.section	.rodata
	.align	2
.LC0:
	.ascii	"rb\000"
	.section	.text._ZN5Audio4InitEPc,"ax",%progbits
	.align	2
	.global	_ZN5Audio4InitEPc
	.hidden	_ZN5Audio4InitEPc
	.type	_ZN5Audio4InitEPc, %function
_ZN5Audio4InitEPc:
.LFB8:
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI5:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI6:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 29 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	.loc 1 30 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L13
	.cfi_offset 14, -4
	bl	s3eFileOpen
	mov	r2, r0
	ldr	r3, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 31 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	s3eFileGetSize
	mov	r2, r0
	ldr	r3, .L13+4
	str	r2, [r3, #0]
	.loc 1 32 0
	ldr	r3, .L13+4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	s3eMallocBase
	mov	r2, r0
	ldr	r3, .L13+8
	str	r2, [r3, #0]
	.loc 1 35 0
	ldr	r3, .L13+8
	ldr	r1, [r3, #0]
	ldr	r3, .L13+4
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #1
	bl	s3eFileRead
	.loc 1 37 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	s3eFileClose
	.loc 1 40 0
	mov	r0, #2
	bl	s3eAudioIsCodecSupported
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L13+12
	strb	r2, [r3, #0]
	.loc 1 42 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L14:
	.align	2
.L13:
	.word	.LC0
	.word	_ZL11g_AudioSize
	.word	_ZL11g_AudioData
	.word	_ZL14g_MP3Supported
	.cfi_endproc
.LFE8:
	.size	_ZN5Audio4InitEPc, .-_ZN5Audio4InitEPc
	.section	.text._ZN5Audio6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN5Audio6UpdateEv
	.hidden	_ZN5Audio6UpdateEv
	.type	_ZN5Audio6UpdateEv, %function
_ZN5Audio6UpdateEv:
.LFB9:
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI7:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI8:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 46 0
	ldr	r3, .L20
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L16
	.cfi_offset 14, -4
	.loc 1 47 0
	mov	r3, #0
	b	.L17
.L16:
	.loc 1 48 0
	ldr	r3, .L20+4
	ldr	r3, [r3, #0]
	cmp	r3, #2
	bne	.L18
	.loc 1 49 0
	ldr	r0, [sp, #4]
	bl	_ZN5Audio4PlayEv
.L18:
	.loc 1 57 0
	mov	r3, #1
.L17:
	.loc 1 58 0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L21:
	.align	2
.L20:
	.word	_ZL14g_MP3Supported
	.word	_ZL8g_Status
	.cfi_endproc
.LFE9:
	.size	_ZN5Audio6UpdateEv, .-_ZN5Audio6UpdateEv
	.section	.text._ZN5Audio6ResumeEv,"ax",%progbits
	.align	2
	.global	_ZN5Audio6ResumeEv
	.hidden	_ZN5Audio6ResumeEv
	.type	_ZN5Audio6ResumeEv, %function
_ZN5Audio6ResumeEv:
.LFB10:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI9:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI10:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 62 0
	.cfi_offset 14, -4
	bl	s3eAudioResume
	mov	r3, r0
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L24
	.loc 1 63 0
	ldr	r3, .L25
	mov	r2, #0
	str	r2, [r3, #0]
.L24:
	.loc 1 64 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L26:
	.align	2
.L25:
	.word	_ZL8g_Status
	.cfi_endproc
.LFE10:
	.size	_ZN5Audio6ResumeEv, .-_ZN5Audio6ResumeEv
	.section	.text._ZN5Audio4PlayEv,"ax",%progbits
	.align	2
	.global	_ZN5Audio4PlayEv
	.hidden	_ZN5Audio4PlayEv
	.type	_ZN5Audio4PlayEv, %function
_ZN5Audio4PlayEv:
.LFB11:
	.loc 1 67 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI11:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI12:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 68 0
	ldr	r3, .L30
	ldr	r2, [r3, #0]
	ldr	r3, .L30+4
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	.cfi_offset 14, -4
	bl	s3eAudioPlayFromBuffer
	mov	r3, r0
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L29
	.loc 1 69 0
	ldr	r3, .L30+8
	mov	r2, #0
	str	r2, [r3, #0]
.L29:
	.loc 1 70 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L31:
	.align	2
.L30:
	.word	_ZL11g_AudioData
	.word	_ZL11g_AudioSize
	.word	_ZL8g_Status
	.cfi_endproc
.LFE11:
	.size	_ZN5Audio4PlayEv, .-_ZN5Audio4PlayEv
	.section	.text._ZN5Audio4StopEv,"ax",%progbits
	.align	2
	.global	_ZN5Audio4StopEv
	.hidden	_ZN5Audio4StopEv
	.type	_ZN5Audio4StopEv, %function
_ZN5Audio4StopEv:
.LFB12:
	.loc 1 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI13:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI14:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 74 0
	.cfi_offset 14, -4
	bl	s3eAudioStop
	.loc 1 75 0
	ldr	r3, .L34
	mov	r2, #2
	str	r2, [r3, #0]
	.loc 1 76 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L35:
	.align	2
.L34:
	.word	_ZL8g_Status
	.cfi_endproc
.LFE12:
	.size	_ZN5Audio4StopEv, .-_ZN5Audio4StopEv
	.section	.text._ZN5Audio5PauseEv,"ax",%progbits
	.align	2
	.global	_ZN5Audio5PauseEv
	.hidden	_ZN5Audio5PauseEv
	.type	_ZN5Audio5PauseEv, %function
_ZN5Audio5PauseEv:
.LFB13:
	.loc 1 79 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI15:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI16:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 80 0
	.cfi_offset 14, -4
	bl	s3eAudioPause
	mov	r3, r0
	cmp	r3, #0
	movne	r3, #0
	moveq	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L38
	.loc 1 81 0
	ldr	r3, .L39
	mov	r2, #1
	str	r2, [r3, #0]
.L38:
	.loc 1 82 0
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L40:
	.align	2
.L39:
	.word	_ZL8g_Status
	.cfi_endproc
.LFE13:
	.size	_ZN5Audio5PauseEv, .-_ZN5Audio5PauseEv
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB4
	.4byte	.LCFI0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB6
	.4byte	.LCFI1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI2
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB7
	.4byte	.LCFI3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB8
	.4byte	.LCFI5
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB9
	.4byte	.LCFI7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB10
	.4byte	.LCFI9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB11
	.4byte	.LCFI11
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB12
	.4byte	.LCFI13
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB13
	.4byte	.LCFI15
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI16
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/marmalade/6.2/s3e/h/s3eTypes.h"
	.file 3 "c:/marmalade/6.2/s3e/h/s3eAudio.h"
	.file 4 "c:/marmalade/6.2/s3e/h/s3eFile.h"
	.file 5 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_4_tilecollision_advaudio_ui/h/audio.h"
	.section	.debug_info
	.4byte	0x404
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.4byte	.LASF54
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x6d
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x84
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2
	.byte	0xe0
	.4byte	0x93
	.uleb128 0x6
	.4byte	.LASF10
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF11
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe9
	.4byte	0x64
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3
	.byte	0x3e
	.4byte	0xea
	.uleb128 0x6
	.4byte	.LASF16
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF17
	.sleb128 2
	.uleb128 0x6
	.4byte	.LASF18
	.sleb128 3
	.uleb128 0x6
	.4byte	.LASF19
	.sleb128 4
	.uleb128 0x6
	.4byte	.LASF20
	.sleb128 5
	.uleb128 0x6
	.4byte	.LASF21
	.sleb128 6
	.uleb128 0x6
	.4byte	.LASF22
	.sleb128 7
	.uleb128 0x6
	.4byte	.LASF23
	.sleb128 8
	.uleb128 0x6
	.4byte	.LASF24
	.sleb128 9
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x21
	.4byte	0xf5
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x9
	.byte	0x4
	.4byte	0xfb
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x5
	.byte	0x8
	.4byte	0x201
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0x13
	.4byte	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x14
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF29
	.byte	0x5
	.byte	0xa
	.4byte	0x207
	.byte	0x1
	.4byte	0x14d
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF30
	.byte	0x5
	.byte	0xb
	.4byte	0xa5
	.byte	0x1
	.4byte	0x16b
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.uleb128 0xe
	.4byte	0x48
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0xc
	.4byte	.LASF33
	.byte	0x1
	.4byte	0x183
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.4byte	0x19b
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0xe
	.4byte	.LASF36
	.byte	0x1
	.4byte	0x1b3
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0xf
	.4byte	.LASF38
	.byte	0x1
	.4byte	0x1cb
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF55
	.byte	0x5
	.byte	0x10
	.4byte	.LASF56
	.4byte	0x20d
	.byte	0x1
	.4byte	0x1e7
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF57
	.byte	0x5
	.byte	0x11
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1
	.uleb128 0x12
	.4byte	0x102
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xea
	.uleb128 0x9
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF39
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.4byte	0x233
	.uleb128 0x6
	.4byte	.LASF41
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF42
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF43
	.sleb128 2
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0xe
	.4byte	.LASF60
	.4byte	0x6f
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.4byte	0x270
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe
	.4byte	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe
	.4byte	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0x0
	.uleb128 0x15
	.4byte	0x14d
	.byte	0x1
	.byte	0x14
	.byte	0x0
	.4byte	0x291
	.uleb128 0x16
	.4byte	.LASF46
	.4byte	0x291
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF47
	.4byte	0x296
	.byte	0x1
	.byte	0x0
	.uleb128 0x17
	.4byte	0x207
	.uleb128 0x17
	.4byte	0x48
	.uleb128 0x18
	.4byte	0x270
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST1
	.4byte	0x2b9
	.uleb128 0x19
	.4byte	0x27c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x18
	.4byte	0x270
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST2
	.4byte	0x2d7
	.uleb128 0x19
	.4byte	0x27c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1e7
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST3
	.4byte	0x30a
	.uleb128 0x1b
	.4byte	.LASF46
	.4byte	0x291
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1b
	.4byte	0x102
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1cb
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST4
	.4byte	0x32f
	.uleb128 0x1b
	.4byte	.LASF46
	.4byte	0x291
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1b3
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST5
	.4byte	0x354
	.uleb128 0x1b
	.4byte	.LASF46
	.4byte	0x291
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x16b
	.byte	0x1
	.byte	0x42
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST6
	.4byte	0x379
	.uleb128 0x1b
	.4byte	.LASF46
	.4byte	0x291
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x183
	.byte	0x1
	.byte	0x48
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST7
	.4byte	0x39e
	.uleb128 0x1b
	.4byte	.LASF46
	.4byte	0x291
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x19b
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST8
	.4byte	0x3c3
	.uleb128 0x1b
	.4byte	.LASF46
	.4byte	0x291
	.byte	0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9
	.4byte	0x214
	.byte	0x5
	.byte	0x3
	.4byte	_ZL8g_Status
	.uleb128 0x1c
	.4byte	.LASF50
	.byte	0x1
	.byte	0xa
	.4byte	0x93
	.byte	0x5
	.byte	0x3
	.4byte	_ZL14g_MP3Supported
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x1
	.byte	0xb
	.4byte	0xa5
	.byte	0x5
	.byte	0x3
	.4byte	_ZL11g_AudioData
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0xc
	.4byte	0x48
	.byte	0x5
	.byte	0x3
	.4byte	_ZL11g_AudioSize
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x4
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x49
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xad
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x408
	.4byte	0x233
	.ascii	"AudioStopCallback\000"
	.4byte	0x29b
	.ascii	"Audio::~Audio\000"
	.4byte	0x2b9
	.ascii	"Audio::~Audio\000"
	.4byte	0x2d7
	.ascii	"Audio::Init\000"
	.4byte	0x30a
	.ascii	"Audio::Update\000"
	.4byte	0x32f
	.ascii	"Audio::Resume\000"
	.4byte	0x354
	.ascii	"Audio::Play\000"
	.4byte	0x379
	.ascii	"Audio::Stop\000"
	.4byte	0x39e
	.ascii	"Audio::Pause\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF31:
	.ascii	"Play\000"
.LASF60:
	.ascii	"_Z17AudioStopCallbackPvS_\000"
.LASF39:
	.ascii	"bool\000"
.LASF12:
	.ascii	"s3eBool\000"
.LASF41:
	.ascii	"PLAYING\000"
.LASF43:
	.ascii	"STOPPED\000"
.LASF19:
	.ascii	"S3E_AUDIO_CODEC_AACPLUS\000"
.LASF21:
	.ascii	"S3E_AUDIO_CODEC_PCM\000"
.LASF16:
	.ascii	"S3E_AUDIO_CODEC_MIDI\000"
.LASF33:
	.ascii	"_ZN5Audio4PlayEv\000"
.LASF55:
	.ascii	"Update\000"
.LASF25:
	.ascii	"s3eFile\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF42:
	.ascii	"PAUSED\000"
.LASF24:
	.ascii	"S3E_AUDIO_CODEC_MP4\000"
.LASF23:
	.ascii	"S3E_AUDIO_CODEC_AMR\000"
.LASF10:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF46:
	.ascii	"this\000"
.LASF38:
	.ascii	"_ZN5Audio6ResumeEv\000"
.LASF45:
	.ascii	"userData\000"
.LASF44:
	.ascii	"systemData\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"uint8\000"
.LASF36:
	.ascii	"_ZN5Audio5PauseEv\000"
.LASF57:
	.ascii	"Init\000"
.LASF28:
	.ascii	"_FileHandle\000"
.LASF18:
	.ascii	"S3E_AUDIO_CODEC_AAC\000"
.LASF49:
	.ascii	"g_Status\000"
.LASF14:
	.ascii	"s3eResult\000"
.LASF15:
	.ascii	"s3eAudioCodec\000"
.LASF20:
	.ascii	"S3E_AUDIO_CODEC_QCP\000"
.LASF13:
	.ascii	"wchar_t\000"
.LASF29:
	.ascii	"Audio\000"
.LASF59:
	.ascii	"AudioStopCallback\000"
.LASF35:
	.ascii	"Pause\000"
.LASF48:
	.ascii	"filename\000"
.LASF53:
	.ascii	"GNU C++ 4.4.1\000"
.LASF51:
	.ascii	"g_AudioData\000"
.LASF26:
	.ascii	"char\000"
.LASF30:
	.ascii	"~Audio\000"
.LASF56:
	.ascii	"_ZN5Audio6UpdateEv\000"
.LASF40:
	.ascii	"AudioState\000"
.LASF11:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF27:
	.ascii	"_Filename\000"
.LASF9:
	.ascii	"int32\000"
.LASF5:
	.ascii	"long long int\000"
.LASF32:
	.ascii	"Stop\000"
.LASF17:
	.ascii	"S3E_AUDIO_CODEC_MP3\000"
.LASF52:
	.ascii	"g_AudioSize\000"
.LASF54:
	.ascii	"c:/users/1106786/dropbox/dropbox/pg life/project im"
	.ascii	"pact/code/demos/demo_4_tilecollision_advaudio_ui/sr"
	.ascii	"c/audio.cpp\000"
.LASF50:
	.ascii	"g_MP3Supported\000"
.LASF3:
	.ascii	"short int\000"
.LASF47:
	.ascii	"__in_chrg\000"
.LASF58:
	.ascii	"_ZN5Audio4InitEPc\000"
.LASF34:
	.ascii	"_ZN5Audio4StopEv\000"
.LASF1:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"Resume\000"
.LASF22:
	.ascii	"S3E_AUDIO_CODEC_SPF\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
