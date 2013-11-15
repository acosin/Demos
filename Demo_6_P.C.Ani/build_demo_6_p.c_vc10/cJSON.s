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
	.file	"cJSON.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.bss
	.align	2
ep:
	.space	4
	.section	.text.cJSON_GetErrorPtr,"ax",%progbits
	.align	2
	.global	cJSON_GetErrorPtr
	.hidden	cJSON_GetErrorPtr
	.type	cJSON_GetErrorPtr, %function
cJSON_GetErrorPtr:
.LFB0:
	.file 1 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_6_p.c.ani/libs/cjson-for-marmalade/cJSON.c"
	.loc 1 37 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 37 0
	ldr	r3, .L3
	ldr	r3, [r3, #0]
	mov	r0, r3
	bx	lr
.L4:
	.align	2
.L3:
	.word	ep
	.cfi_endproc
.LFE0:
	.size	cJSON_GetErrorPtr, .-cJSON_GetErrorPtr
	.section	.text.cJSON_strcasecmp,"ax",%progbits
	.align	2
	.type	cJSON_strcasecmp, %function
cJSON_strcasecmp:
.LFB1:
	.loc 1 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 41 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L6
	.cfi_offset 14, -4
	.cfi_offset 4, -8
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #0]
	cmp	r2, r3
	moveq	r3, #0
	movne	r3, #1
	b	.L7
.L6:
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L13
	mov	r3, #1
	b	.L7
.L11:
	.loc 1 42 0
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	mov	r3, #0
	b	.L7
.L10:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
	b	.L9
.L13:
	mov	r0, r0	@ nop
.L9:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower
	mov	r4, r0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower
	mov	r3, r0
	cmp	r4, r3
	beq	.L11
	.loc 1 43 0
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower
	mov	r4, r0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower
	mov	r3, r0
	rsb	r3, r3, r4
.L7:
	.loc 1 44 0
	mov	r0, r3
	add	sp, sp, #8
	ldmfd	sp!, {r4, pc}
	.cfi_endproc
.LFE1:
	.size	cJSON_strcasecmp, .-cJSON_strcasecmp
	.data
	.align	2
	.type	cJSON_malloc, %object
	.size	cJSON_malloc, 4
cJSON_malloc:
	.word	malloc
	.align	2
	.type	cJSON_free, %object
	.size	cJSON_free, 4
cJSON_free:
	.word	free
	.section	.text.cJSON_strdup,"ax",%progbits
	.align	2
	.type	cJSON_strdup, %function
cJSON_strdup:
.LFB2:
	.loc 1 50 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI2:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI3:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 54 0
	ldr	r0, [sp, #4]
	.cfi_offset 14, -4
	bl	strlen
	mov	r3, r0
	add	r3, r3, #1
	str	r3, [sp, #8]
	.loc 1 55 0
	ldr	r3, .L18
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #8]
	blx	r3
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L15
	mov	r3, #0
	b	.L16
.L15:
	.loc 1 56 0
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #8]
	bl	memcpy
	.loc 1 57 0
	ldr	r3, [sp, #12]
.L16:
	.loc 1 58 0
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L19:
	.align	2
.L18:
	.word	cJSON_malloc
	.cfi_endproc
.LFE2:
	.size	cJSON_strdup, .-cJSON_strdup
	.section	.text.cJSON_InitHooks,"ax",%progbits
	.align	2
	.global	cJSON_InitHooks
	.hidden	cJSON_InitHooks
	.type	cJSON_InitHooks, %function
cJSON_InitHooks:
.LFB3:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI4:
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 1 62 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L21
	.loc 1 63 0
	ldr	r3, .L28
	ldr	r2, .L28+4
	str	r2, [r3, #0]
	.loc 1 64 0
	ldr	r3, .L28+8
	ldr	r2, .L28+12
	str	r2, [r3, #0]
	.loc 1 65 0
	b	.L27
.L21:
	.loc 1 68 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L23
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0]
	b	.L24
.L23:
	ldr	r3, .L28+4
.L24:
	ldr	r2, .L28
	str	r3, [r2, #0]
	.loc 1 69 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	b	.L26
.L25:
	ldr	r3, .L28+12
.L26:
	ldr	r2, .L28+8
	str	r3, [r2, #0]
.L27:
	.loc 1 70 0
	add	sp, sp, #8
	bx	lr
.L29:
	.align	2
.L28:
	.word	cJSON_malloc
	.word	malloc
	.word	cJSON_free
	.word	free
	.cfi_endproc
.LFE3:
	.size	cJSON_InitHooks, .-cJSON_InitHooks
	.section	.text.cJSON_New_Item,"ax",%progbits
	.align	2
	.type	cJSON_New_Item, %function
cJSON_New_Item:
.LFB4:
	.loc 1 74 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI5:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI6:
	.cfi_def_cfa_offset 16
	.loc 1 75 0
	ldr	r3, .L33
	ldr	r3, [r3, #0]
	mov	r0, #40
	.cfi_offset 14, -4
	blx	r3
	mov	r3, r0
	str	r3, [sp, #4]
	.loc 1 76 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L31
	ldr	r0, [sp, #4]
	mov	r1, #0
	mov	r2, #40
	bl	memset
.L31:
	.loc 1 77 0
	ldr	r3, [sp, #4]
	.loc 1 78 0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L34:
	.align	2
.L33:
	.word	cJSON_malloc
	.cfi_endproc
.LFE4:
	.size	cJSON_New_Item, .-cJSON_New_Item
	.section	.text.cJSON_Delete,"ax",%progbits
	.align	2
	.global	cJSON_Delete
	.hidden	cJSON_Delete
	.type	cJSON_Delete, %function
cJSON_Delete:
.LFB5:
	.loc 1 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI7:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI8:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 84 0
	b	.L36
	.cfi_offset 14, -4
.L40:
	.loc 1 86 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0]
	str	r3, [sp, #12]
	.loc 1 87 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L37
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L37
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	cJSON_Delete
.L37:
	.loc 1 88 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L38
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L38
	ldr	r3, .L42
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #4]
	ldr	r2, [r2, #16]
	mov	r0, r2
	blx	r3
.L38:
	.loc 1 89 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L39
	ldr	r3, .L42
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #4]
	ldr	r2, [r2, #32]
	mov	r0, r2
	blx	r3
.L39:
	.loc 1 90 0
	ldr	r3, .L42
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #4]
	blx	r3
	.loc 1 91 0
	ldr	r3, [sp, #12]
	str	r3, [sp, #4]
.L36:
	.loc 1 84 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L40
	.loc 1 93 0
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L43:
	.align	2
.L42:
	.word	cJSON_free
	.cfi_endproc
.LFE5:
	.size	cJSON_Delete, .-cJSON_Delete
	.section	.text.parse_number,"ax",%progbits
	.align	2
	.type	parse_number, %function
parse_number:
.LFB6:
	.loc 1 97 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI9:
	.cfi_def_cfa_offset 4
	fstmfdd	sp!, {d8}
.LCFI10:
	.cfi_def_cfa_offset 12
	sub	sp, sp, #44
.LCFI11:
	.cfi_def_cfa_offset 56
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 98 0
	fldd	d7, .L59
	fstd	d7, [sp, #8]
	fldd	d7, .L59+8
	fstd	d7, [sp, #16]
	fldd	d7, .L59
	fstd	d7, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #32]
	mov	r3, #1
	str	r3, [sp, #36]
	.loc 1 101 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L45
	.cfi_offset 80, -12
	.cfi_offset 14, -4
	fldd	d7, .L59+16
	fstd	d7, [sp, #16]
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
.L45:
	.loc 1 102 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L46
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
.L46:
	.loc 1 103 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L47
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L47
.L48:
	fldd	d6, [sp, #8]
	fldd	d7, .L59+24
	fmuld	d7, d6, d7
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	fmsr	s13, r3	@ int
	fsitod	d6, s13
	faddd	d7, d7, d6
	fstd	d7, [sp, #8]
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L47
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L48
.L47:
	.loc 1 104 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L49
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L49
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L49
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
.L50:
	fldd	d6, [sp, #8]
	fldd	d7, .L59+24
	fmuld	d7, d6, d7
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	fmsr	s13, r3	@ int
	fsitod	d6, s13
	faddd	d7, d7, d6
	fstd	d7, [sp, #8]
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
	fldd	d6, [sp, #24]
	fldd	d7, .L59+8
	fsubd	d7, d6, d7
	fstd	d7, [sp, #24]
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L49
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L50
.L49:
	.loc 1 105 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #101
	beq	.L51
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #69
	bne	.L52
.L51:
	.loc 1 106 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L53
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
	.loc 1 107 0
	b	.L55
.L53:
	.loc 1 106 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L58
	mvn	r3, #0
	str	r3, [sp, #36]
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
	.loc 1 107 0
	b	.L55
.L56:
	ldr	r2, [sp, #32]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	mov	r2, r3
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	add	r3, r2, r3
	str	r3, [sp, #32]
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #0]
	b	.L55
.L58:
	mov	r0, r0	@ nop
.L55:
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L52
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L56
.L52:
	.loc 1 110 0
	fldd	d6, [sp, #16]
	fldd	d7, [sp, #8]
	fmuld	d8, d6, d7
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #36]
	mul	r1, r2, r3
	fmsr	s15, r1	@ int
	fsitod	d6, s15
	fldd	d7, [sp, #24]
	faddd	d7, d6, d7
	adr	r1, .L59+24
	ldrd	r0, [r1]
	fmrrd	r2, r3, d7
	bl	pow
	mov	r2, r0
	mov	r3, r1
	fmdrr	d7, r2, r3
	fmuld	d7, d8, d7
	fstd	d7, [sp, #8]
	.loc 1 112 0
	ldr	r3, [sp, #4]
	fldd	d7, [sp, #8]
	fstd	d7, [r3, #24]
	.loc 1 113 0
	fldd	d7, [sp, #8]
	ftosizd	s15, d7
	ldr	r3, [sp, #4]
	fsts	s15, [r3, #20]	@ int
	.loc 1 114 0
	ldr	r3, [sp, #4]
	mov	r2, #3
	str	r2, [r3, #12]
	.loc 1 115 0
	ldr	r3, [sp, #0]
	.loc 1 116 0
	mov	r0, r3
	add	sp, sp, #44
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {pc}
.L60:
	.align	3
.L59:
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	0
	.word	-1074790400
	.word	0
	.word	1076101120
	.cfi_endproc
.LFE6:
	.size	parse_number, .-parse_number
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\000"
	.align	2
.LC1:
	.ascii	"%.0f\000"
	.align	2
.LC2:
	.ascii	"%e\000"
	.align	2
.LC3:
	.ascii	"%f\000"
	.section	.text.print_number,"ax",%progbits
	.align	2
	.type	print_number, %function
print_number:
.LFB7:
	.loc 1 120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI12:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI13:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #4]
	.loc 1 122 0
	ldr	r3, [sp, #4]
	fldd	d7, [r3, #24]
	fstd	d7, [sp, #16]
	.loc 1 123 0
	ldr	r3, [sp, #4]
	flds	s15, [r3, #20]	@ int
	fsitod	d6, s15
	fldd	d7, [sp, #16]
	fsubd	d7, d6, d7
	fabsd	d6, d7
	fldd	d7, .L70
	fcmped	d6, d7
	fmstat
	movhi	r3, #0
	movls	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L62
	.cfi_offset 14, -4
	fldd	d6, [sp, #16]
	fldd	d7, .L70+8
	fcmped	d6, d7
	fmstat
	movhi	r3, #0
	movls	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L62
	fldd	d6, [sp, #16]
	fldd	d7, .L70+16
	fcmped	d6, d7
	fmstat
	movlt	r3, #0
	movge	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L62
	.loc 1 125 0
	ldr	r3, .L70+40
	ldr	r3, [r3, #0]
	mov	r0, #21
	blx	r3
	mov	r3, r0
	str	r3, [sp, #12]
	.loc 1 126 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [sp, #12]
	ldr	r1, .L70+44
	mov	r2, r3
	bl	sprintf
	.loc 1 123 0
	b	.L64
.L62:
	.loc 1 130 0
	ldr	r3, .L70+40
	ldr	r3, [r3, #0]
	mov	r0, #64
	blx	r3
	mov	r3, r0
	str	r3, [sp, #12]
	.loc 1 131 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L64
	.loc 1 133 0
	ldrd	r0, [sp, #16]
	bl	floor
	fmdrr	d6, r0, r1
	fldd	d7, [sp, #16]
	fsubd	d7, d6, d7
	fabsd	d6, d7
	fldd	d7, .L70
	fcmped	d6, d7
	fmstat
	movhi	r3, #0
	movls	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L65
	ldr	r0, [sp, #12]
	ldr	r1, .L70+48
	ldrd	r2, [sp, #16]
	bl	sprintf
	b	.L64
.L65:
	.loc 1 134 0
	fldd	d7, [sp, #16]
	fabsd	d6, d7
	fldd	d7, .L70+24
	fcmped	d6, d7
	fmstat
	movpl	r3, #0
	movmi	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L66
	fldd	d7, [sp, #16]
	fabsd	d6, d7
	fldd	d7, .L70+32
	fcmped	d6, d7
	fmstat
	movle	r3, #0
	movgt	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L67
.L66:
	ldr	r0, [sp, #12]
	ldr	r1, .L70+52
	ldrd	r2, [sp, #16]
	bl	sprintf
	b	.L64
.L67:
	.loc 1 135 0
	ldr	r0, [sp, #12]
	ldr	r1, .L70+56
	ldrd	r2, [sp, #16]
	bl	sprintf
	b	.L64
.L69:
	.loc 1 123 0
	mov	r0, r0	@ nop
.L64:
	.loc 1 138 0
	ldr	r3, [sp, #12]
	.loc 1 139 0
	mov	r0, r3
	add	sp, sp, #28
	ldmfd	sp!, {pc}
.L71:
	.align	3
.L70:
	.word	0
	.word	1018167296
	.word	-4194304
	.word	1105199103
	.word	0
	.word	-1042284544
	.word	-1598689907
	.word	1051772663
	.word	0
	.word	1104006501
	.word	cJSON_malloc
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE7:
	.size	print_number, .-print_number
	.section	.rodata
	.align	2
	.type	firstByteMark, %object
	.size	firstByteMark, 7
firstByteMark:
	.byte	0
	.byte	0
	.byte	-64
	.byte	-32
	.byte	-16
	.byte	-8
	.byte	-4
	.align	2
.LC4:
	.ascii	"%4x\000"
	.section	.text.parse_string,"ax",%progbits
	.align	2
	.type	parse_string, %function
parse_string:
.LFB8:
	.loc 1 144 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI14:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #36
.LCFI15:
	.cfi_def_cfa_offset 40
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 145 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #28]
	.loc 1 146 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #34
	beq	.L105
	.cfi_offset 14, -4
	ldr	r3, .L106
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L74
.L77:
	.loc 1 148 0
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #92
	movne	r3, #0
	moveq	r3, #1
	and	r3, r3, #255
	ldr	r2, [sp, #16]
	add	r2, r2, #1
	str	r2, [sp, #16]
	cmp	r3, #0
	beq	.L75
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L75
.L105:
	mov	r0, r0	@ nop
.L75:
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #34
	beq	.L76
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L76
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L77
.L76:
	.loc 1 150 0
	ldr	r3, .L106+4
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #28]
	add	r2, r2, #1
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [sp, #24]
	.loc 1 151 0
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L78
	mov	r3, #0
	b	.L74
.L78:
	.loc 1 153 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #24]
	str	r3, [sp, #20]
	.loc 1 154 0
	b	.L79
.L102:
	.loc 1 156 0
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #92
	beq	.L80
	ldr	r3, [sp, #16]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L79
.L80:
	.loc 1 159 0
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 160 0
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #98
	cmp	r3, #19
	ldrls	pc, [pc, r3, asl #2]
	b	.L81
.L88:
	.word	.L82
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L83
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L84
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L85
	.word	.L81
	.word	.L86
	.word	.L87
.L82:
	.loc 1 162 0
	ldr	r3, [sp, #20]
	mov	r2, #8
	strb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	b	.L89
.L83:
	.loc 1 163 0
	ldr	r3, [sp, #20]
	mov	r2, #12
	strb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	b	.L89
.L84:
	.loc 1 164 0
	ldr	r3, [sp, #20]
	mov	r2, #10
	strb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	b	.L89
.L85:
	.loc 1 165 0
	ldr	r3, [sp, #20]
	mov	r2, #13
	strb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	b	.L89
.L86:
	.loc 1 166 0
	ldr	r3, [sp, #20]
	mov	r2, #9
	strb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
	b	.L89
.L87:
	.loc 1 168 0
	ldr	r3, [sp, #16]
	add	r2, r3, #1
	add	r3, sp, #12
	mov	r0, r2
	ldr	r1, .L106+8
	mov	r2, r3
	bl	sscanf
	ldr	r3, [sp, #16]
	add	r3, r3, #4
	str	r3, [sp, #16]
	.loc 1 170 0
	ldr	r2, [sp, #12]
	ldr	r3, .L106+12
	cmp	r2, r3
	bls	.L90
	ldr	r2, [sp, #12]
	ldr	r3, .L106+16
	cmp	r2, r3
	bls	.L89
.L90:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L89
	.loc 1 172 0
	ldr	r2, [sp, #12]
	ldr	r3, .L106+20
	cmp	r2, r3
	bls	.L91
	ldr	r2, [sp, #12]
	ldr	r3, .L106+12
	cmp	r2, r3
	bhi	.L91
	.loc 1 174 0
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #92
	bne	.L89
	ldr	r3, [sp, #16]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L89
	.loc 1 175 0
	ldr	r3, [sp, #16]
	add	r2, r3, #3
	add	r3, sp, #8
	mov	r0, r2
	ldr	r1, .L106+8
	mov	r2, r3
	bl	sscanf
	ldr	r3, [sp, #16]
	add	r3, r3, #6
	str	r3, [sp, #16]
	.loc 1 176 0
	ldr	r2, [sp, #8]
	ldr	r3, .L106+12
	cmp	r2, r3
	bls	.L89
	ldr	r2, [sp, #8]
	ldr	r3, .L106+16
	cmp	r2, r3
	bhi	.L89
	.loc 1 177 0
	ldr	r3, [sp, #12]
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	mov	r2, r3, asl #10
	ldr	r3, [sp, #8]
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	orr	r3, r2, r3
	orr	r3, r3, #65536
	str	r3, [sp, #12]
.L91:
	.loc 1 180 0
	mov	r3, #4
	str	r3, [sp, #28]
	ldr	r3, [sp, #12]
	cmp	r3, #127
	bhi	.L92
	mov	r3, #1
	str	r3, [sp, #28]
	b	.L93
.L92:
	ldr	r2, [sp, #12]
	ldr	r3, .L106+24
	cmp	r2, r3
	bhi	.L94
	mov	r3, #2
	str	r3, [sp, #28]
	b	.L93
.L94:
	ldr	r2, [sp, #12]
	ldr	r3, .L106+28
	cmp	r2, r3
	bhi	.L93
	mov	r3, #3
	str	r3, [sp, #28]
.L93:
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 182 0
	ldr	r3, [sp, #28]
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L100:
	.word	.L96
	.word	.L97
	.word	.L98
	.word	.L99
.L99:
	.loc 1 183 0
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #12]
	and	r3, r3, #255
	and	r3, r3, #63
	mvn	r3, r3, asl #25
	mvn	r3, r3, lsr #25
	and	r2, r3, #255
	ldr	r3, [sp, #20]
	strb	r2, [r3, #0]
	ldr	r3, [sp, #12]
	mov	r3, r3, lsr #6
	str	r3, [sp, #12]
.L98:
	.loc 1 184 0
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #12]
	and	r3, r3, #255
	and	r3, r3, #63
	mvn	r3, r3, asl #25
	mvn	r3, r3, lsr #25
	and	r2, r3, #255
	ldr	r3, [sp, #20]
	strb	r2, [r3, #0]
	ldr	r3, [sp, #12]
	mov	r3, r3, lsr #6
	str	r3, [sp, #12]
.L97:
	.loc 1 185 0
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #12]
	and	r3, r3, #255
	and	r3, r3, #63
	mvn	r3, r3, asl #25
	mvn	r3, r3, lsr #25
	and	r2, r3, #255
	ldr	r3, [sp, #20]
	strb	r2, [r3, #0]
	ldr	r3, [sp, #12]
	mov	r3, r3, lsr #6
	str	r3, [sp, #12]
.L96:
	.loc 1 186 0
	ldr	r3, [sp, #20]
	sub	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #28]
	ldr	r2, .L106+32
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	and	r3, r3, #255
	orr	r3, r2, r3
	and	r2, r3, #255
	ldr	r3, [sp, #20]
	strb	r2, [r3, #0]
.L95:
	.loc 1 188 0
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #20]
	add	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 189 0
	b	.L89
.L81:
	.loc 1 190 0
	ldr	r3, [sp, #16]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	strb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	add	r3, r3, #1
	str	r3, [sp, #20]
.L89:
	.loc 1 192 0
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
.L79:
	.loc 1 154 0
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #34
	beq	.L101
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L102
.L101:
	.loc 1 195 0
	ldr	r3, [sp, #20]
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 196 0
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #34
	bne	.L103
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
.L103:
	.loc 1 197 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #24]
	str	r2, [r3, #16]
	.loc 1 198 0
	ldr	r3, [sp, #4]
	mov	r2, #4
	str	r2, [r3, #12]
	.loc 1 199 0
	ldr	r3, [sp, #16]
.L74:
	.loc 1 200 0
	mov	r0, r3
	add	sp, sp, #36
	ldmfd	sp!, {pc}
.L107:
	.align	2
.L106:
	.word	ep
	.word	cJSON_malloc
	.word	.LC4
	.word	56319
	.word	57343
	.word	55295
	.word	2047
	.word	65535
	.word	firstByteMark
	.cfi_endproc
.LFE8:
	.size	parse_string, .-parse_string
	.section	.rodata
	.align	2
.LC5:
	.ascii	"\000"
	.align	2
.LC6:
	.ascii	"\"\\\010\014\012\015\011\000"
	.align	2
.LC7:
	.ascii	"u%04x\000"
	.section	.text.print_string_ptr,"ax",%progbits
	.align	2
	.type	print_string_ptr, %function
print_string_ptr:
.LFB9:
	.loc 1 204 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI16:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #36
.LCFI17:
	.cfi_def_cfa_offset 40
	str	r0, [sp, #4]
	.loc 1 205 0
	mov	r3, #0
	str	r3, [sp, #24]
	.loc 1 207 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L109
	.cfi_offset 14, -4
	ldr	r0, .L130
	bl	cJSON_strdup
	mov	r3, r0
	b	.L110
.L109:
	.loc 1 208 0
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	b	.L111
.L115:
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	ldr	r0, .L130+4
	mov	r1, r3
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	beq	.L112
	ldr	r3, [sp, #24]
	add	r3, r3, #1
	str	r3, [sp, #24]
	b	.L113
.L112:
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #31
	bhi	.L113
	ldr	r3, [sp, #24]
	add	r3, r3, #5
	str	r3, [sp, #24]
.L113:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
.L111:
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #0]
	strb	r3, [sp, #31]
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L114
	ldr	r3, [sp, #24]
	add	r3, r3, #1
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L115
.L114:
	.loc 1 210 0
	ldr	r3, .L130+8
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #24]
	add	r2, r2, #3
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [sp, #20]
	.loc 1 211 0
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L116
	mov	r3, #0
	b	.L110
.L116:
	.loc 1 213 0
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	.loc 1 214 0
	ldr	r3, [sp, #16]
	mov	r2, #34
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 215 0
	b	.L117
.L128:
	.loc 1 217 0
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L118
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #34
	beq	.L118
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #92
	beq	.L118
	ldr	r3, [sp, #12]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	b	.L117
.L118:
	.loc 1 220 0
	ldr	r3, [sp, #16]
	mov	r2, #92
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 221 0
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #0]
	strb	r3, [sp, #31]
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	add	r2, r2, #1
	str	r2, [sp, #12]
	cmp	r3, #12
	beq	.L123
	cmp	r3, #12
	bgt	.L127
	cmp	r3, #9
	beq	.L121
	cmp	r3, #10
	beq	.L122
	cmp	r3, #8
	beq	.L120
	b	.L119
.L127:
	cmp	r3, #34
	beq	.L125
	cmp	r3, #92
	beq	.L126
	cmp	r3, #13
	beq	.L124
	b	.L119
.L126:
	.loc 1 223 0
	ldr	r3, [sp, #16]
	mov	r2, #92
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L117
.L125:
	.loc 1 224 0
	ldr	r3, [sp, #16]
	mov	r2, #34
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L117
.L120:
	.loc 1 225 0
	ldr	r3, [sp, #16]
	mov	r2, #98
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L117
.L123:
	.loc 1 226 0
	ldr	r3, [sp, #16]
	mov	r2, #102
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L117
.L122:
	.loc 1 227 0
	ldr	r3, [sp, #16]
	mov	r2, #110
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L117
.L124:
	.loc 1 228 0
	ldr	r3, [sp, #16]
	mov	r2, #114
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L117
.L121:
	.loc 1 229 0
	ldr	r3, [sp, #16]
	mov	r2, #116
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	b	.L117
.L119:
	.loc 1 230 0
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	ldr	r0, [sp, #16]
	ldr	r1, .L130+12
	mov	r2, r3
	bl	sprintf
	ldr	r3, [sp, #16]
	add	r3, r3, #5
	str	r3, [sp, #16]
.L117:
	.loc 1 215 0
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L128
	.loc 1 234 0
	ldr	r3, [sp, #16]
	mov	r2, #34
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #16]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 235 0
	ldr	r3, [sp, #20]
.L110:
	.loc 1 236 0
	mov	r0, r3
	add	sp, sp, #36
	ldmfd	sp!, {pc}
.L131:
	.align	2
.L130:
	.word	.LC5
	.word	.LC6
	.word	cJSON_malloc
	.word	.LC7
	.cfi_endproc
.LFE9:
	.size	print_string_ptr, .-print_string_ptr
	.section	.text.print_string,"ax",%progbits
	.align	2
	.type	print_string, %function
print_string:
.LFB10:
	.loc 1 238 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI18:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI19:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 238 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	.cfi_offset 14, -4
	bl	print_string_ptr
	mov	r3, r0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE10:
	.size	print_string, .-print_string
	.section	.text.skip,"ax",%progbits
	.align	2
	.type	skip, %function
skip:
.LFB11:
	.loc 1 249 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI20:
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 1 249 0
	b	.L135
.L137:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
.L135:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L136
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bls	.L137
.L136:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #8
	bx	lr
	.cfi_endproc
.LFE11:
	.size	skip, .-skip
	.section	.text.cJSON_Parse,"ax",%progbits
	.align	2
	.global	cJSON_Parse
	.hidden	cJSON_Parse
	.type	cJSON_Parse, %function
cJSON_Parse:
.LFB12:
	.loc 1 253 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI21:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI22:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 254 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #12]
	.loc 1 255 0
	ldr	r3, .L144
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 1 256 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L140
	mov	r3, #0
	b	.L141
.L140:
	.loc 1 258 0
	ldr	r0, [sp, #4]
	bl	skip
	mov	r3, r0
	ldr	r0, [sp, #12]
	mov	r1, r3
	bl	parse_value
	mov	r3, r0
	cmp	r3, #0
	bne	.L142
	ldr	r0, [sp, #12]
	bl	cJSON_Delete
	mov	r3, #0
	b	.L141
.L142:
	.loc 1 259 0
	ldr	r3, [sp, #12]
.L141:
	.loc 1 260 0
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L145:
	.align	2
.L144:
	.word	ep
	.cfi_endproc
.LFE12:
	.size	cJSON_Parse, .-cJSON_Parse
	.section	.text.cJSON_Print,"ax",%progbits
	.align	2
	.global	cJSON_Print
	.hidden	cJSON_Print
	.type	cJSON_Print, %function
cJSON_Print:
.LFB13:
	.loc 1 263 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI23:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI24:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 263 0
	ldr	r0, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	.cfi_offset 14, -4
	bl	print_value
	mov	r3, r0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE13:
	.size	cJSON_Print, .-cJSON_Print
	.section	.text.cJSON_PrintUnformatted,"ax",%progbits
	.align	2
	.global	cJSON_PrintUnformatted
	.hidden	cJSON_PrintUnformatted
	.type	cJSON_PrintUnformatted, %function
cJSON_PrintUnformatted:
.LFB14:
	.loc 1 264 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI25:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI26:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 264 0
	ldr	r0, [sp, #4]
	mov	r1, #0
	mov	r2, #0
	.cfi_offset 14, -4
	bl	print_value
	mov	r3, r0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE14:
	.size	cJSON_PrintUnformatted, .-cJSON_PrintUnformatted
	.section	.rodata
	.align	2
.LC8:
	.ascii	"null\000"
	.align	2
.LC9:
	.ascii	"false\000"
	.align	2
.LC10:
	.ascii	"true\000"
	.section	.text.parse_value,"ax",%progbits
	.align	2
	.type	parse_value, %function
parse_value:
.LFB15:
	.loc 1 268 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI27:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI28:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 269 0
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L151
	.cfi_offset 14, -4
	mov	r3, #0
	b	.L152
.L151:
	.loc 1 270 0
	ldr	r0, [sp, #0]
	ldr	r1, .L162
	mov	r2, #4
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L153
	ldr	r3, [sp, #4]
	mov	r2, #2
	str	r2, [r3, #12]
	ldr	r3, [sp, #0]
	add	r3, r3, #4
	b	.L152
.L153:
	.loc 1 271 0
	ldr	r0, [sp, #0]
	ldr	r1, .L162+4
	mov	r2, #5
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L154
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [sp, #0]
	add	r3, r3, #5
	b	.L152
.L154:
	.loc 1 272 0
	ldr	r0, [sp, #0]
	ldr	r1, .L162+8
	mov	r2, #4
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L155
	ldr	r3, [sp, #4]
	mov	r2, #1
	str	r2, [r3, #12]
	ldr	r3, [sp, #4]
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, [sp, #0]
	add	r3, r3, #4
	b	.L152
.L155:
	.loc 1 273 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #34
	bne	.L156
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	bl	parse_string
	mov	r3, r0
	b	.L152
.L156:
	.loc 1 274 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L157
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L158
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L158
.L157:
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	bl	parse_number
	mov	r3, r0
	b	.L152
.L158:
	.loc 1 275 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L159
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	bl	parse_array
	mov	r3, r0
	b	.L152
.L159:
	.loc 1 276 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #123
	bne	.L160
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	bl	parse_object
	mov	r3, r0
	b	.L152
.L160:
	.loc 1 278 0
	ldr	r3, .L162+12
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
.L152:
	.loc 1 279 0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.L163:
	.align	2
.L162:
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	ep
	.cfi_endproc
.LFE15:
	.size	parse_value, .-parse_value
	.section	.text.print_value,"ax",%progbits
	.align	2
	.type	print_value, %function
print_value:
.LFB16:
	.loc 1 283 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI29:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI30:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 284 0
	mov	r3, #0
	str	r3, [sp, #20]
	.loc 1 285 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L165
	.cfi_offset 14, -4
	mov	r3, #0
	b	.L166
.L165:
	.loc 1 286 0
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	and	r3, r3, #255
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L167
.L175:
	.word	.L168
	.word	.L169
	.word	.L170
	.word	.L171
	.word	.L172
	.word	.L173
	.word	.L174
.L170:
	.loc 1 288 0
	ldr	r0, .L177
	bl	cJSON_strdup
	mov	r3, r0
	str	r3, [sp, #20]
	b	.L167
.L168:
	.loc 1 289 0
	ldr	r0, .L177+4
	bl	cJSON_strdup
	mov	r3, r0
	str	r3, [sp, #20]
	b	.L167
.L169:
	.loc 1 290 0
	ldr	r0, .L177+8
	bl	cJSON_strdup
	mov	r3, r0
	str	r3, [sp, #20]
	b	.L167
.L171:
	.loc 1 291 0
	ldr	r0, [sp, #12]
	bl	print_number
	mov	r3, r0
	str	r3, [sp, #20]
	b	.L167
.L172:
	.loc 1 292 0
	ldr	r0, [sp, #12]
	bl	print_string
	mov	r3, r0
	str	r3, [sp, #20]
	b	.L167
.L173:
	.loc 1 293 0
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	bl	print_array
	mov	r3, r0
	str	r3, [sp, #20]
	b	.L167
.L174:
	.loc 1 294 0
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	bl	print_object
	mov	r3, r0
	str	r3, [sp, #20]
.L167:
	.loc 1 296 0
	ldr	r3, [sp, #20]
.L166:
	.loc 1 297 0
	mov	r0, r3
	add	sp, sp, #28
	ldmfd	sp!, {pc}
.L178:
	.align	2
.L177:
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.cfi_endproc
.LFE16:
	.size	print_value, .-print_value
	.section	.text.parse_array,"ax",%progbits
	.align	2
	.type	parse_array, %function
parse_array:
.LFB17:
	.loc 1 301 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI31:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI32:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 303 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L180
	.cfi_offset 14, -4
	ldr	r3, .L191
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L181
.L180:
	.loc 1 305 0
	ldr	r3, [sp, #4]
	mov	r2, #5
	str	r2, [r3, #12]
	.loc 1 306 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 307 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L182
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	b	.L181
.L182:
	.loc 1 309 0
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #8]
	.loc 1 310 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L183
	mov	r3, #0
	b	.L181
.L183:
	.loc 1 311 0
	ldr	r0, [sp, #0]
	bl	skip
	mov	r3, r0
	ldr	r0, [sp, #8]
	mov	r1, r3
	bl	parse_value
	mov	r3, r0
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 312 0
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L190
	mov	r3, #0
	b	.L181
.L187:
.LBB2:
	.loc 1 317 0
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L186
	mov	r3, #0
	b	.L181
.L186:
	.loc 1 318 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	str	r2, [r3, #0]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 319 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	mov	r0, r3
	bl	skip
	mov	r3, r0
	ldr	r0, [sp, #8]
	mov	r1, r3
	bl	parse_value
	mov	r3, r0
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 320 0
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L185
	mov	r3, #0
	b	.L181
.L190:
.LBE2:
	.loc 1 314 0
	mov	r0, r0	@ nop
.L185:
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #44
	beq	.L187
	.loc 1 323 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L188
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	b	.L181
.L188:
	.loc 1 324 0
	ldr	r3, .L191
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
.L181:
	.loc 1 325 0
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L192:
	.align	2
.L191:
	.word	ep
	.cfi_endproc
.LFE17:
	.size	parse_array, .-parse_array
	.section	.text.print_array,"ax",%progbits
	.align	2
	.type	print_array, %function
print_array:
.LFB18:
	.loc 1 329 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI33:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #60
.LCFI34:
	.cfi_def_cfa_offset 64
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 331 0
	mov	r3, #0
	str	r3, [sp, #24]
	mov	r3, #5
	str	r3, [sp, #36]
	.loc 1 332 0
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #40]
	.loc 1 333 0
	mov	r3, #0
	str	r3, [sp, #44]
	mov	r3, #0
	str	r3, [sp, #48]
	mov	r3, #0
	str	r3, [sp, #52]
	.loc 1 336 0
	b	.L194
	.cfi_offset 14, -4
.L195:
	ldr	r3, [sp, #44]
	add	r3, r3, #1
	str	r3, [sp, #44]
	ldr	r3, [sp, #40]
	ldr	r3, [r3, #0]
	str	r3, [sp, #40]
.L194:
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bne	.L195
	.loc 1 338 0
	ldr	r3, .L214
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #44]
	mov	r2, r2, asl #2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [sp, #20]
	.loc 1 339 0
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L196
	mov	r3, #0
	b	.L197
.L196:
	.loc 1 340 0
	ldr	r3, [sp, #44]
	mov	r3, r3, asl #2
	ldr	r0, [sp, #20]
	mov	r1, #0
	mov	r2, r3
	bl	memset
	.loc 1 342 0
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #40]
	.loc 1 343 0
	b	.L198
.L202:
	.loc 1 345 0
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	ldr	r0, [sp, #40]
	mov	r1, r3
	ldr	r2, [sp, #4]
	bl	print_value
	mov	r3, r0
	str	r3, [sp, #32]
	.loc 1 346 0
	ldr	r3, [sp, #48]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r2, [sp, #32]
	str	r2, [r3, #0]
	ldr	r3, [sp, #48]
	add	r3, r3, #1
	str	r3, [sp, #48]
	.loc 1 347 0
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L199
	ldr	r0, [sp, #32]
	bl	strlen
	mov	r2, r0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	add	r2, r2, r3
	ldr	r3, [sp, #36]
	add	r3, r2, r3
	add	r3, r3, #2
	str	r3, [sp, #36]
	b	.L200
.L199:
	mov	r3, #1
	str	r3, [sp, #52]
.L200:
	.loc 1 348 0
	ldr	r3, [sp, #40]
	ldr	r3, [r3, #0]
	str	r3, [sp, #40]
.L198:
	.loc 1 343 0
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L201
	ldr	r3, [sp, #52]
	cmp	r3, #0
	beq	.L202
.L201:
	.loc 1 352 0
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L203
	ldr	r3, .L214
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #36]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [sp, #24]
.L203:
	.loc 1 354 0
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L204
	mov	r3, #1
	str	r3, [sp, #52]
.L204:
	.loc 1 357 0
	ldr	r3, [sp, #52]
	cmp	r3, #0
	beq	.L205
	.loc 1 359 0
	mov	r3, #0
	str	r3, [sp, #48]
	b	.L206
.L208:
	ldr	r3, [sp, #48]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L207
	ldr	r3, .L214+4
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #48]
	mov	r1, r2, asl #2
	ldr	r2, [sp, #20]
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
.L207:
	ldr	r3, [sp, #48]
	add	r3, r3, #1
	str	r3, [sp, #48]
.L206:
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #44]
	cmp	r2, r3
	blt	.L208
	.loc 1 360 0
	ldr	r3, .L214+4
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #20]
	blx	r3
	.loc 1 361 0
	mov	r3, #0
	b	.L197
.L205:
	.loc 1 365 0
	ldr	r3, [sp, #24]
	mov	r2, #91
	strb	r2, [r3, #0]
	.loc 1 366 0
	ldr	r3, [sp, #24]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 367 0
	mov	r3, #0
	str	r3, [sp, #48]
	b	.L209
.L212:
	.loc 1 369 0
	ldr	r3, [sp, #48]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #28]
	mov	r1, r3
	bl	strcpy
	ldr	r3, [sp, #48]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	ldr	r2, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 370 0
	ldr	r3, [sp, #44]
	sub	r2, r3, #1
	ldr	r3, [sp, #48]
	cmp	r2, r3
	beq	.L210
	ldr	r3, [sp, #28]
	mov	r2, #44
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L211
	ldr	r3, [sp, #28]
	mov	r2, #32
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L211:
	ldr	r3, [sp, #28]
	mov	r2, #0
	strb	r2, [r3, #0]
.L210:
	.loc 1 371 0
	ldr	r3, .L214+4
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #48]
	mov	r1, r2, asl #2
	ldr	r2, [sp, #20]
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
	.loc 1 367 0
	ldr	r3, [sp, #48]
	add	r3, r3, #1
	str	r3, [sp, #48]
.L209:
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #44]
	cmp	r2, r3
	blt	.L212
	.loc 1 373 0
	ldr	r3, .L214+4
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #20]
	blx	r3
	.loc 1 374 0
	ldr	r3, [sp, #28]
	mov	r2, #93
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 375 0
	ldr	r3, [sp, #24]
.L197:
	.loc 1 376 0
	mov	r0, r3
	add	sp, sp, #60
	ldmfd	sp!, {pc}
.L215:
	.align	2
.L214:
	.word	cJSON_malloc
	.word	cJSON_free
	.cfi_endproc
.LFE18:
	.size	print_array, .-print_array
	.section	.text.parse_object,"ax",%progbits
	.align	2
	.type	parse_object, %function
parse_object:
.LFB19:
	.loc 1 380 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI35:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI36:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 382 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #123
	beq	.L217
	.cfi_offset 14, -4
	ldr	r3, .L232
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L218
.L217:
	.loc 1 384 0
	ldr	r3, [sp, #4]
	mov	r2, #6
	str	r2, [r3, #12]
	.loc 1 385 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 386 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #125
	bne	.L219
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	b	.L218
.L219:
	.loc 1 388 0
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #8]
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #8]
	.loc 1 389 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L220
	mov	r3, #0
	b	.L218
.L220:
	.loc 1 390 0
	ldr	r0, [sp, #0]
	bl	skip
	mov	r3, r0
	ldr	r0, [sp, #8]
	mov	r1, r3
	bl	parse_string
	mov	r3, r0
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 391 0
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L221
	mov	r3, #0
	b	.L218
.L221:
	.loc 1 392 0
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [sp, #8]
	str	r2, [r3, #32]
	ldr	r3, [sp, #8]
	mov	r2, #0
	str	r2, [r3, #16]
	.loc 1 393 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #58
	beq	.L222
	ldr	r3, .L232
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L218
.L222:
	.loc 1 394 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	mov	r0, r3
	bl	skip
	mov	r3, r0
	ldr	r0, [sp, #8]
	mov	r1, r3
	bl	parse_value
	mov	r3, r0
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 395 0
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L231
	mov	r3, #0
	b	.L218
.L228:
.LBB3:
	.loc 1 400 0
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L225
	mov	r3, #0
	b	.L218
.L225:
	.loc 1 401 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	str	r2, [r3, #0]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 402 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	mov	r0, r3
	bl	skip
	mov	r3, r0
	ldr	r0, [sp, #8]
	mov	r1, r3
	bl	parse_string
	mov	r3, r0
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 403 0
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L226
	mov	r3, #0
	b	.L218
.L226:
	.loc 1 404 0
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [sp, #8]
	str	r2, [r3, #32]
	ldr	r3, [sp, #8]
	mov	r2, #0
	str	r2, [r3, #16]
	.loc 1 405 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #58
	beq	.L227
	ldr	r3, .L232
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
	b	.L218
.L227:
	.loc 1 406 0
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	mov	r0, r3
	bl	skip
	mov	r3, r0
	ldr	r0, [sp, #8]
	mov	r1, r3
	bl	parse_value
	mov	r3, r0
	mov	r0, r3
	bl	skip
	mov	r3, r0
	str	r3, [sp, #0]
	.loc 1 407 0
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	.L224
	mov	r3, #0
	b	.L218
.L231:
.LBE3:
	.loc 1 397 0
	mov	r0, r0	@ nop
.L224:
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #44
	beq	.L228
	.loc 1 410 0
	ldr	r3, [sp, #0]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #125
	bne	.L229
	ldr	r3, [sp, #0]
	add	r3, r3, #1
	b	.L218
.L229:
	.loc 1 411 0
	ldr	r3, .L232
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	mov	r3, #0
.L218:
	.loc 1 412 0
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L233:
	.align	2
.L232:
	.word	ep
	.cfi_endproc
.LFE19:
	.size	parse_object, .-parse_object
	.section	.text.print_object,"ax",%progbits
	.align	2
	.type	print_object, %function
print_object:
.LFB20:
	.loc 1 416 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI37:
	.cfi_def_cfa_offset 8
	sub	sp, sp, #64
.LCFI38:
	.cfi_def_cfa_offset 72
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 417 0
	mov	r3, #0
	str	r3, [sp, #16]
	mov	r3, #0
	str	r3, [sp, #20]
	.loc 1 418 0
	mov	r3, #0
	str	r3, [sp, #24]
	mov	r3, #7
	str	r3, [sp, #40]
	mov	r3, #0
	str	r3, [sp, #44]
	.loc 1 419 0
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #52]
	.loc 1 420 0
	mov	r3, #0
	str	r3, [sp, #56]
	mov	r3, #0
	str	r3, [sp, #60]
	.loc 1 422 0
	b	.L235
	.cfi_offset 14, -4
	.cfi_offset 4, -8
.L236:
	ldr	r3, [sp, #56]
	add	r3, r3, #1
	str	r3, [sp, #56]
	ldr	r3, [sp, #52]
	ldr	r3, [r3, #0]
	str	r3, [sp, #52]
.L235:
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L236
	.loc 1 424 0
	ldr	r3, .L267
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #56]
	mov	r2, r2, asl #2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [sp, #16]
	.loc 1 425 0
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L237
	mov	r3, #0
	b	.L238
.L237:
	.loc 1 426 0
	ldr	r3, .L267
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #56]
	mov	r2, r2, asl #2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [sp, #20]
	.loc 1 427 0
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L239
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #16]
	blx	r3
	mov	r3, #0
	b	.L238
.L239:
	.loc 1 428 0
	ldr	r3, [sp, #56]
	mov	r3, r3, asl #2
	ldr	r0, [sp, #16]
	mov	r1, #0
	mov	r2, r3
	bl	memset
	.loc 1 429 0
	ldr	r3, [sp, #56]
	mov	r3, r3, asl #2
	ldr	r0, [sp, #20]
	mov	r1, #0
	mov	r2, r3
	bl	memset
	.loc 1 432 0
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #52]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L241
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #8]
	add	r3, r2, r3
	str	r3, [sp, #40]
	.loc 1 433 0
	b	.L241
.L246:
	.loc 1 435 0
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r4, r2, r3
	ldr	r3, [sp, #52]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	print_string_ptr
	mov	r3, r0
	str	r3, [sp, #36]
	ldr	r3, [sp, #36]
	str	r3, [r4, #0]
	.loc 1 436 0
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #16]
	add	r4, r2, r3
	ldr	r0, [sp, #52]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	bl	print_value
	mov	r3, r0
	str	r3, [sp, #32]
	ldr	r3, [sp, #32]
	str	r3, [r4, #0]
	ldr	r3, [sp, #44]
	add	r3, r3, #1
	str	r3, [sp, #44]
	.loc 1 437 0
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L242
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L242
	ldr	r0, [sp, #32]
	bl	strlen
	mov	r4, r0
	ldr	r0, [sp, #36]
	bl	strlen
	mov	r3, r0
	add	r2, r4, r3
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L243
	ldr	r3, [sp, #8]
	add	r3, r3, #2
	b	.L244
.L243:
	mov	r3, #0
.L244:
	add	r2, r2, r3
	ldr	r3, [sp, #40]
	add	r3, r2, r3
	add	r3, r3, #2
	str	r3, [sp, #40]
	b	.L245
.L242:
	mov	r3, #1
	str	r3, [sp, #60]
.L245:
	.loc 1 438 0
	ldr	r3, [sp, #52]
	ldr	r3, [r3, #0]
	str	r3, [sp, #52]
.L241:
	.loc 1 433 0
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L246
	.loc 1 442 0
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L247
	ldr	r3, .L267
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #40]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [sp, #24]
.L247:
	.loc 1 443 0
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L248
	mov	r3, #1
	str	r3, [sp, #60]
.L248:
	.loc 1 446 0
	ldr	r3, [sp, #60]
	cmp	r3, #0
	beq	.L249
	.loc 1 448 0
	mov	r3, #0
	str	r3, [sp, #44]
	b	.L250
.L253:
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L251
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #44]
	mov	r1, r2, asl #2
	ldr	r2, [sp, #20]
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
.L251:
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L252
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #44]
	mov	r1, r2, asl #2
	ldr	r2, [sp, #16]
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
.L252:
	ldr	r3, [sp, #44]
	add	r3, r3, #1
	str	r3, [sp, #44]
.L250:
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #56]
	cmp	r2, r3
	blt	.L253
	.loc 1 449 0
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #20]
	blx	r3
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #16]
	blx	r3
	.loc 1 450 0
	mov	r3, #0
	b	.L238
.L249:
	.loc 1 454 0
	ldr	r3, [sp, #24]
	mov	r2, #123
	strb	r2, [r3, #0]
	ldr	r3, [sp, #24]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L254
	ldr	r3, [sp, #28]
	mov	r2, #10
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L254:
	ldr	r3, [sp, #28]
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 455 0
	mov	r3, #0
	str	r3, [sp, #44]
	b	.L255
.L262:
	.loc 1 457 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L256
	mov	r3, #0
	str	r3, [sp, #48]
	b	.L257
.L258:
	ldr	r3, [sp, #28]
	mov	r2, #9
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #48]
	add	r3, r3, #1
	str	r3, [sp, #48]
.L257:
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	blt	.L258
.L256:
	.loc 1 458 0
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #28]
	mov	r1, r3
	bl	strcpy
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	ldr	r2, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 459 0
	ldr	r3, [sp, #28]
	mov	r2, #58
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L259
	ldr	r3, [sp, #28]
	mov	r2, #9
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L259:
	.loc 1 460 0
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #28]
	mov	r1, r3
	bl	strcpy
	ldr	r3, [sp, #44]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #16]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	ldr	r2, [sp, #28]
	add	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 461 0
	ldr	r3, [sp, #56]
	sub	r2, r3, #1
	ldr	r3, [sp, #44]
	cmp	r2, r3
	beq	.L260
	ldr	r3, [sp, #28]
	mov	r2, #44
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L260:
	.loc 1 462 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L261
	ldr	r3, [sp, #28]
	mov	r2, #10
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
.L261:
	ldr	r3, [sp, #28]
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 463 0
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #44]
	mov	r1, r2, asl #2
	ldr	r2, [sp, #20]
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #44]
	mov	r1, r2, asl #2
	ldr	r2, [sp, #16]
	add	r2, r1, r2
	ldr	r2, [r2, #0]
	mov	r0, r2
	blx	r3
	.loc 1 455 0
	ldr	r3, [sp, #44]
	add	r3, r3, #1
	str	r3, [sp, #44]
.L255:
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #56]
	cmp	r2, r3
	blt	.L262
	.loc 1 466 0
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #20]
	blx	r3
	ldr	r3, .L267+4
	ldr	r3, [r3, #0]
	ldr	r0, [sp, #16]
	blx	r3
	.loc 1 467 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L263
	mov	r3, #0
	str	r3, [sp, #44]
	b	.L264
.L265:
	ldr	r3, [sp, #28]
	mov	r2, #9
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #44]
	add	r3, r3, #1
	str	r3, [sp, #44]
.L264:
	ldr	r3, [sp, #8]
	sub	r2, r3, #1
	ldr	r3, [sp, #44]
	cmp	r2, r3
	bgt	.L265
.L263:
	.loc 1 468 0
	ldr	r3, [sp, #28]
	mov	r2, #125
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r3, [sp, #28]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 469 0
	ldr	r3, [sp, #24]
.L238:
	.loc 1 470 0
	mov	r0, r3
	add	sp, sp, #64
	ldmfd	sp!, {r4, pc}
.L268:
	.align	2
.L267:
	.word	cJSON_malloc
	.word	cJSON_free
	.cfi_endproc
.LFE20:
	.size	print_object, .-print_object
	.section	.text.cJSON_GetArraySize,"ax",%progbits
	.align	2
	.global	cJSON_GetArraySize
	.hidden	cJSON_GetArraySize
	.type	cJSON_GetArraySize, %function
cJSON_GetArraySize:
.LFB21:
	.loc 1 473 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI39:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 473 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #12]
	b	.L270
.L271:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #0]
	str	r3, [sp, #8]
.L270:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L271
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	bx	lr
	.cfi_endproc
.LFE21:
	.size	cJSON_GetArraySize, .-cJSON_GetArraySize
	.section	.text.cJSON_GetArrayItem,"ax",%progbits
	.align	2
	.global	cJSON_GetArrayItem
	.hidden	cJSON_GetArrayItem
	.type	cJSON_GetArrayItem, %function
cJSON_GetArrayItem:
.LFB22:
	.loc 1 474 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI40:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 474 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #12]
	b	.L274
.L276:
	ldr	r3, [sp, #0]
	sub	r3, r3, #1
	str	r3, [sp, #0]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	str	r3, [sp, #12]
.L274:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L275
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bgt	.L276
.L275:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #16
	bx	lr
	.cfi_endproc
.LFE22:
	.size	cJSON_GetArrayItem, .-cJSON_GetArrayItem
	.section	.text.cJSON_GetObjectItem,"ax",%progbits
	.align	2
	.global	cJSON_GetObjectItem
	.hidden	cJSON_GetObjectItem
	.type	cJSON_GetObjectItem, %function
cJSON_GetObjectItem:
.LFB23:
	.loc 1 475 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI41:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI42:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 475 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #12]
	b	.L279
	.cfi_offset 14, -4
.L281:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	str	r3, [sp, #12]
.L279:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L280
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [sp, #0]
	bl	cJSON_strcasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L281
.L280:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE23:
	.size	cJSON_GetObjectItem, .-cJSON_GetObjectItem
	.section	.text.suffix_object,"ax",%progbits
	.align	2
	.type	suffix_object, %function
suffix_object:
.LFB24:
	.loc 1 478 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI43:
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 478 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #0]
	str	r2, [r3, #0]
	ldr	r3, [sp, #0]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
	add	sp, sp, #8
	bx	lr
	.cfi_endproc
.LFE24:
	.size	suffix_object, .-suffix_object
	.section	.text.create_reference,"ax",%progbits
	.align	2
	.type	create_reference, %function
create_reference:
.LFB25:
	.loc 1 480 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI44:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI45:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 480 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L286
	mov	r3, #0
	b	.L287
.L286:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	mov	r2, #40
	bl	memcpy
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	orr	r2, r3, #256
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #12]
	str	r2, [r3, #0]
	ldr	r3, [sp, #12]
.L287:
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE25:
	.size	create_reference, .-create_reference
	.section	.text.cJSON_AddItemToArray,"ax",%progbits
	.align	2
	.global	cJSON_AddItemToArray
	.hidden	cJSON_AddItemToArray
	.type	cJSON_AddItemToArray, %function
cJSON_AddItemToArray:
.LFB26:
	.loc 1 483 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI46:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI47:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 483 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #12]
	ldr	r3, [sp, #0]
	cmp	r3, #0
	beq	.L297
	.cfi_offset 14, -4
.L290:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L293
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #0]
	str	r2, [r3, #8]
	b	.L296
.L295:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	str	r3, [sp, #12]
.L293:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L294
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L295
.L294:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #0]
	bl	suffix_object
	b	.L296
.L297:
	mov	r0, r0	@ nop
.L296:
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE26:
	.size	cJSON_AddItemToArray, .-cJSON_AddItemToArray
	.section	.text.cJSON_AddItemToObject,"ax",%progbits
	.align	2
	.global	cJSON_AddItemToObject
	.hidden	cJSON_AddItemToObject
	.type	cJSON_AddItemToObject, %function
cJSON_AddItemToObject:
.LFB27:
	.loc 1 484 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI48:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI49:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 484 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L303
	.cfi_offset 14, -4
.L299:
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L301
	ldr	r3, .L304
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #4]
	ldr	r2, [r2, #32]
	mov	r0, r2
	blx	r3
.L301:
	ldr	r0, [sp, #8]
	bl	cJSON_strdup
	mov	r2, r0
	ldr	r3, [sp, #4]
	str	r2, [r3, #32]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	bl	cJSON_AddItemToArray
	b	.L302
.L303:
	mov	r0, r0	@ nop
.L302:
	add	sp, sp, #20
	ldmfd	sp!, {pc}
.L305:
	.align	2
.L304:
	.word	cJSON_free
	.cfi_endproc
.LFE27:
	.size	cJSON_AddItemToObject, .-cJSON_AddItemToObject
	.section	.text.cJSON_AddItemReferenceToArray,"ax",%progbits
	.align	2
	.global	cJSON_AddItemReferenceToArray
	.hidden	cJSON_AddItemReferenceToArray
	.type	cJSON_AddItemReferenceToArray, %function
cJSON_AddItemReferenceToArray:
.LFB28:
	.loc 1 485 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI50:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI51:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 485 0
	ldr	r0, [sp, #0]
	.cfi_offset 14, -4
	bl	create_reference
	mov	r3, r0
	ldr	r0, [sp, #4]
	mov	r1, r3
	bl	cJSON_AddItemToArray
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE28:
	.size	cJSON_AddItemReferenceToArray, .-cJSON_AddItemReferenceToArray
	.section	.text.cJSON_AddItemReferenceToObject,"ax",%progbits
	.align	2
	.global	cJSON_AddItemReferenceToObject
	.hidden	cJSON_AddItemReferenceToObject
	.type	cJSON_AddItemReferenceToObject, %function
cJSON_AddItemReferenceToObject:
.LFB29:
	.loc 1 486 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI52:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI53:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 486 0
	ldr	r0, [sp, #4]
	.cfi_offset 14, -4
	bl	create_reference
	mov	r3, r0
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	mov	r2, r3
	bl	cJSON_AddItemToObject
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE29:
	.size	cJSON_AddItemReferenceToObject, .-cJSON_AddItemReferenceToObject
	.section	.text.cJSON_DetachItemFromArray,"ax",%progbits
	.align	2
	.global	cJSON_DetachItemFromArray
	.hidden	cJSON_DetachItemFromArray
	.type	cJSON_DetachItemFromArray, %function
cJSON_DetachItemFromArray:
.LFB30:
	.loc 1 488 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI54:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 488 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #12]
	b	.L311
.L313:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	str	r3, [sp, #12]
	ldr	r3, [sp, #0]
	sub	r3, r3, #1
	str	r3, [sp, #0]
.L311:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L312
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bgt	.L313
.L312:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L314
	mov	r3, #0
	b	.L315
.L314:
	.loc 1 489 0
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L316
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #0]
	str	r2, [r3, #0]
.L316:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L317
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
.L317:
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bne	.L318
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #0]
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
.L318:
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #0]
	ldr	r3, [sp, #12]
	str	r2, [r3, #4]
	ldr	r3, [sp, #12]
.L315:
	mov	r0, r3
	add	sp, sp, #16
	bx	lr
	.cfi_endproc
.LFE30:
	.size	cJSON_DetachItemFromArray, .-cJSON_DetachItemFromArray
	.section	.text.cJSON_DeleteItemFromArray,"ax",%progbits
	.align	2
	.global	cJSON_DeleteItemFromArray
	.hidden	cJSON_DeleteItemFromArray
	.type	cJSON_DeleteItemFromArray, %function
cJSON_DeleteItemFromArray:
.LFB31:
	.loc 1 490 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI55:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI56:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 490 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	.cfi_offset 14, -4
	bl	cJSON_DetachItemFromArray
	mov	r3, r0
	mov	r0, r3
	bl	cJSON_Delete
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE31:
	.size	cJSON_DeleteItemFromArray, .-cJSON_DeleteItemFromArray
	.section	.text.cJSON_DetachItemFromObject,"ax",%progbits
	.align	2
	.global	cJSON_DetachItemFromObject
	.hidden	cJSON_DetachItemFromObject
	.type	cJSON_DetachItemFromObject, %function
cJSON_DetachItemFromObject:
.LFB32:
	.loc 1 491 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI57:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI58:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 491 0
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #12]
	b	.L323
	.cfi_offset 14, -4
.L325:
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #0]
	str	r3, [sp, #12]
.L323:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L324
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [sp, #0]
	bl	cJSON_strcasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L325
.L324:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L326
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	bl	cJSON_DetachItemFromArray
	mov	r3, r0
	b	.L327
.L326:
	mov	r3, #0
.L327:
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE32:
	.size	cJSON_DetachItemFromObject, .-cJSON_DetachItemFromObject
	.section	.text.cJSON_DeleteItemFromObject,"ax",%progbits
	.align	2
	.global	cJSON_DeleteItemFromObject
	.hidden	cJSON_DeleteItemFromObject
	.type	cJSON_DeleteItemFromObject, %function
cJSON_DeleteItemFromObject:
.LFB33:
	.loc 1 492 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI59:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI60:
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 492 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	.cfi_offset 14, -4
	bl	cJSON_DetachItemFromObject
	mov	r3, r0
	mov	r0, r3
	bl	cJSON_Delete
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE33:
	.size	cJSON_DeleteItemFromObject, .-cJSON_DeleteItemFromObject
	.section	.text.cJSON_ReplaceItemInArray,"ax",%progbits
	.align	2
	.global	cJSON_ReplaceItemInArray
	.hidden	cJSON_ReplaceItemInArray
	.type	cJSON_ReplaceItemInArray, %function
cJSON_ReplaceItemInArray:
.LFB34:
	.loc 1 495 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI61:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI62:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 495 0
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #20]
	b	.L332
	.cfi_offset 14, -4
.L334:
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #0]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	sub	r3, r3, #1
	str	r3, [sp, #8]
.L332:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L333
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bgt	.L334
.L333:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L341
.L335:
	.loc 1 496 0
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #0]
	ldr	r3, [sp, #4]
	str	r2, [r3, #0]
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #4]
	str	r2, [r3, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L337
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
.L337:
	.loc 1 497 0
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bne	.L338
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #8]
	b	.L339
.L338:
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [sp, #4]
	str	r2, [r3, #0]
.L339:
	ldr	r3, [sp, #20]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #20]
	str	r2, [r3, #0]
	ldr	r0, [sp, #20]
	bl	cJSON_Delete
	b	.L340
.L341:
	.loc 1 495 0
	mov	r0, r0	@ nop
.L340:
	.loc 1 497 0
	add	sp, sp, #28
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE34:
	.size	cJSON_ReplaceItemInArray, .-cJSON_ReplaceItemInArray
	.section	.text.cJSON_ReplaceItemInObject,"ax",%progbits
	.align	2
	.global	cJSON_ReplaceItemInObject
	.hidden	cJSON_ReplaceItemInObject
	.type	cJSON_ReplaceItemInObject, %function
cJSON_ReplaceItemInObject:
.LFB35:
	.loc 1 498 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI63:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI64:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 498 0
	mov	r3, #0
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #20]
	b	.L343
	.cfi_offset 14, -4
.L345:
	ldr	r3, [sp, #16]
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #0]
	str	r3, [sp, #20]
.L343:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L344
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [sp, #8]
	bl	cJSON_strcasecmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L345
.L344:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L347
	ldr	r0, [sp, #8]
	bl	cJSON_strdup
	mov	r2, r0
	ldr	r3, [sp, #4]
	str	r2, [r3, #32]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #4]
	bl	cJSON_ReplaceItemInArray
.L347:
	add	sp, sp, #28
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE35:
	.size	cJSON_ReplaceItemInObject, .-cJSON_ReplaceItemInObject
	.section	.text.cJSON_CreateNull,"ax",%progbits
	.align	2
	.global	cJSON_CreateNull
	.hidden	cJSON_CreateNull
	.type	cJSON_CreateNull, %function
cJSON_CreateNull:
.LFB36:
	.loc 1 501 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI65:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI66:
	.cfi_def_cfa_offset 16
	.loc 1 501 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L349
	ldr	r3, [sp, #4]
	mov	r2, #2
	str	r2, [r3, #12]
.L349:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE36:
	.size	cJSON_CreateNull, .-cJSON_CreateNull
	.section	.text.cJSON_CreateTrue,"ax",%progbits
	.align	2
	.global	cJSON_CreateTrue
	.hidden	cJSON_CreateTrue
	.type	cJSON_CreateTrue, %function
cJSON_CreateTrue:
.LFB37:
	.loc 1 502 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI67:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI68:
	.cfi_def_cfa_offset 16
	.loc 1 502 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L352
	ldr	r3, [sp, #4]
	mov	r2, #1
	str	r2, [r3, #12]
.L352:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE37:
	.size	cJSON_CreateTrue, .-cJSON_CreateTrue
	.section	.text.cJSON_CreateFalse,"ax",%progbits
	.align	2
	.global	cJSON_CreateFalse
	.hidden	cJSON_CreateFalse
	.type	cJSON_CreateFalse, %function
cJSON_CreateFalse:
.LFB38:
	.loc 1 503 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI69:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI70:
	.cfi_def_cfa_offset 16
	.loc 1 503 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L355
	ldr	r3, [sp, #4]
	mov	r2, #0
	str	r2, [r3, #12]
.L355:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE38:
	.size	cJSON_CreateFalse, .-cJSON_CreateFalse
	.section	.text.cJSON_CreateBool,"ax",%progbits
	.align	2
	.global	cJSON_CreateBool
	.hidden	cJSON_CreateBool
	.type	cJSON_CreateBool, %function
cJSON_CreateBool:
.LFB39:
	.loc 1 504 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI71:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI72:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 504 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L358
	ldr	r3, [sp, #4]
	cmp	r3, #0
	moveq	r2, #0
	movne	r2, #1
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
.L358:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE39:
	.size	cJSON_CreateBool, .-cJSON_CreateBool
	.section	.text.cJSON_CreateNumber,"ax",%progbits
	.align	2
	.global	cJSON_CreateNumber
	.hidden	cJSON_CreateNumber
	.type	cJSON_CreateNumber, %function
cJSON_CreateNumber:
.LFB40:
	.loc 1 505 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI73:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI74:
	.cfi_def_cfa_offset 24
	strd	r0, [sp]
	.loc 1 505 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L361
	ldr	r3, [sp, #12]
	mov	r2, #3
	str	r2, [r3, #12]
	ldr	r3, [sp, #12]
	fldd	d7, [sp, #0]
	fstd	d7, [r3, #24]
	fldd	d7, [sp, #0]
	ftosizd	s15, d7
	ldr	r3, [sp, #12]
	fsts	s15, [r3, #20]	@ int
.L361:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE40:
	.size	cJSON_CreateNumber, .-cJSON_CreateNumber
	.section	.text.cJSON_CreateString,"ax",%progbits
	.align	2
	.global	cJSON_CreateString
	.hidden	cJSON_CreateString
	.type	cJSON_CreateString, %function
cJSON_CreateString:
.LFB41:
	.loc 1 506 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI75:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #20
.LCFI76:
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 506 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L364
	ldr	r3, [sp, #12]
	mov	r2, #4
	str	r2, [r3, #12]
	ldr	r0, [sp, #4]
	bl	cJSON_strdup
	mov	r2, r0
	ldr	r3, [sp, #12]
	str	r2, [r3, #16]
.L364:
	ldr	r3, [sp, #12]
	mov	r0, r3
	add	sp, sp, #20
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE41:
	.size	cJSON_CreateString, .-cJSON_CreateString
	.section	.text.cJSON_CreateArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateArray
	.hidden	cJSON_CreateArray
	.type	cJSON_CreateArray, %function
cJSON_CreateArray:
.LFB42:
	.loc 1 507 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI77:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI78:
	.cfi_def_cfa_offset 16
	.loc 1 507 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L367
	ldr	r3, [sp, #4]
	mov	r2, #5
	str	r2, [r3, #12]
.L367:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE42:
	.size	cJSON_CreateArray, .-cJSON_CreateArray
	.section	.text.cJSON_CreateObject,"ax",%progbits
	.align	2
	.global	cJSON_CreateObject
	.hidden	cJSON_CreateObject
	.type	cJSON_CreateObject, %function
cJSON_CreateObject:
.LFB43:
	.loc 1 508 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI79:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #12
.LCFI80:
	.cfi_def_cfa_offset 16
	.loc 1 508 0
	.cfi_offset 14, -4
	bl	cJSON_New_Item
	mov	r3, r0
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L370
	ldr	r3, [sp, #4]
	mov	r2, #6
	str	r2, [r3, #12]
.L370:
	ldr	r3, [sp, #4]
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE43:
	.size	cJSON_CreateObject, .-cJSON_CreateObject
	.section	.text.cJSON_CreateIntArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateIntArray
	.hidden	cJSON_CreateIntArray
	.type	cJSON_CreateIntArray, %function
cJSON_CreateIntArray:
.LFB44:
	.loc 1 511 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI81:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI82:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 511 0
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #16]
	.cfi_offset 14, -4
	bl	cJSON_CreateArray
	mov	r3, r0
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #8]
	b	.L373
.L377:
	ldr	r3, [sp, #8]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	flds	s15, [r3, #0]	@ int
	fsitod	d7, s15
	fmrrd	r0, r1, d7
	bl	cJSON_CreateNumber
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L374
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #12]
	str	r2, [r3, #8]
	b	.L375
.L374:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	bl	suffix_object
.L375:
	ldr	r3, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L373:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L376
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0]
	cmp	r2, r3
	blt	.L377
.L376:
	ldr	r3, [sp, #20]
	mov	r0, r3
	add	sp, sp, #28
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE44:
	.size	cJSON_CreateIntArray, .-cJSON_CreateIntArray
	.section	.text.cJSON_CreateFloatArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateFloatArray
	.hidden	cJSON_CreateFloatArray
	.type	cJSON_CreateFloatArray, %function
cJSON_CreateFloatArray:
.LFB45:
	.loc 1 512 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI83:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI84:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 512 0
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #16]
	.cfi_offset 14, -4
	bl	cJSON_CreateArray
	mov	r3, r0
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #8]
	b	.L380
.L384:
	ldr	r3, [sp, #8]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	flds	s15, [r3, #0]
	fcvtds	d7, s15
	fmrrd	r0, r1, d7
	bl	cJSON_CreateNumber
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L381
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #12]
	str	r2, [r3, #8]
	b	.L382
.L381:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	bl	suffix_object
.L382:
	ldr	r3, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L380:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L383
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0]
	cmp	r2, r3
	blt	.L384
.L383:
	ldr	r3, [sp, #20]
	mov	r0, r3
	add	sp, sp, #28
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE45:
	.size	cJSON_CreateFloatArray, .-cJSON_CreateFloatArray
	.section	.text.cJSON_CreateDoubleArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateDoubleArray
	.hidden	cJSON_CreateDoubleArray
	.type	cJSON_CreateDoubleArray, %function
cJSON_CreateDoubleArray:
.LFB46:
	.loc 1 513 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI85:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI86:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 513 0
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #16]
	.cfi_offset 14, -4
	bl	cJSON_CreateArray
	mov	r3, r0
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #8]
	b	.L387
.L391:
	ldr	r3, [sp, #8]
	mov	r2, r3, asl #3
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	cJSON_CreateNumber
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L388
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #12]
	str	r2, [r3, #8]
	b	.L389
.L388:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	bl	suffix_object
.L389:
	ldr	r3, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L387:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L390
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0]
	cmp	r2, r3
	blt	.L391
.L390:
	ldr	r3, [sp, #20]
	mov	r0, r3
	add	sp, sp, #28
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE46:
	.size	cJSON_CreateDoubleArray, .-cJSON_CreateDoubleArray
	.section	.text.cJSON_CreateStringArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateStringArray
	.hidden	cJSON_CreateStringArray
	.type	cJSON_CreateStringArray, %function
cJSON_CreateStringArray:
.LFB47:
	.loc 1 514 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI87:
	.cfi_def_cfa_offset 4
	sub	sp, sp, #28
.LCFI88:
	.cfi_def_cfa_offset 32
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 514 0
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #16]
	.cfi_offset 14, -4
	bl	cJSON_CreateArray
	mov	r3, r0
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #8]
	b	.L394
.L398:
	ldr	r3, [sp, #8]
	mov	r2, r3, asl #2
	ldr	r3, [sp, #4]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	cJSON_CreateString
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L395
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #12]
	str	r2, [r3, #8]
	b	.L396
.L395:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	bl	suffix_object
.L396:
	ldr	r3, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
.L394:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L397
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0]
	cmp	r2, r3
	blt	.L398
.L397:
	ldr	r3, [sp, #20]
	mov	r0, r3
	add	sp, sp, #28
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE47:
	.size	cJSON_CreateStringArray, .-cJSON_CreateStringArray
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB1
	.4byte	.LCFI0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB2
	.4byte	.LCFI2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB3
	.4byte	.LCFI4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB4
	.4byte	.LCFI5
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB5
	.4byte	.LCFI7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB6
	.4byte	.LCFI9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI11
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB7
	.4byte	.LCFI12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI13
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB8
	.4byte	.LCFI14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI15
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB9
	.4byte	.LCFI16
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI17
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB10
	.4byte	.LCFI18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI19
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB11
	.4byte	.LCFI20
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI20
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB12
	.4byte	.LCFI21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI22
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB13
	.4byte	.LCFI23
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI24
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB14
	.4byte	.LCFI25
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI25
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI26
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB15
	.4byte	.LCFI27
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI27
	.4byte	.LCFI28
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI28
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB16
	.4byte	.LCFI29
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI29
	.4byte	.LCFI30
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI30
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB17
	.4byte	.LCFI31
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI31
	.4byte	.LCFI32
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI32
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB18
	.4byte	.LCFI33
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI33
	.4byte	.LCFI34
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI34
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB19
	.4byte	.LCFI35
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI35
	.4byte	.LCFI36
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI36
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB20
	.4byte	.LCFI37
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI37
	.4byte	.LCFI38
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI38
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB21
	.4byte	.LCFI39
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI39
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB22
	.4byte	.LCFI40
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI40
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB23
	.4byte	.LCFI41
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI41
	.4byte	.LCFI42
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI42
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB24
	.4byte	.LCFI43
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI43
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB25
	.4byte	.LCFI44
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI44
	.4byte	.LCFI45
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI45
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB26
	.4byte	.LCFI46
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI46
	.4byte	.LCFI47
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI47
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB27
	.4byte	.LCFI48
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI48
	.4byte	.LCFI49
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI49
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB28
	.4byte	.LCFI50
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI50
	.4byte	.LCFI51
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI51
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB29
	.4byte	.LCFI52
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI52
	.4byte	.LCFI53
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI53
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB30
	.4byte	.LCFI54
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI54
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB31
	.4byte	.LCFI55
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI55
	.4byte	.LCFI56
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI56
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB32
	.4byte	.LCFI57
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI57
	.4byte	.LCFI58
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI58
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB33
	.4byte	.LCFI59
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI59
	.4byte	.LCFI60
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI60
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB34
	.4byte	.LCFI61
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI61
	.4byte	.LCFI62
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI62
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB35
	.4byte	.LCFI63
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI63
	.4byte	.LCFI64
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI64
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB36
	.4byte	.LCFI65
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI65
	.4byte	.LCFI66
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI66
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB37
	.4byte	.LCFI67
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI67
	.4byte	.LCFI68
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI68
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB38
	.4byte	.LCFI69
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI69
	.4byte	.LCFI70
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI70
	.4byte	.LFE38
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB39
	.4byte	.LCFI71
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI71
	.4byte	.LCFI72
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI72
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB40
	.4byte	.LCFI73
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI73
	.4byte	.LCFI74
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI74
	.4byte	.LFE40
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB41
	.4byte	.LCFI75
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI75
	.4byte	.LCFI76
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI76
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB42
	.4byte	.LCFI77
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI77
	.4byte	.LCFI78
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI78
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB43
	.4byte	.LCFI79
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI79
	.4byte	.LCFI80
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI80
	.4byte	.LFE43
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB44
	.4byte	.LCFI81
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI81
	.4byte	.LCFI82
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI82
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB45
	.4byte	.LCFI83
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI83
	.4byte	.LCFI84
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI84
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LFB46
	.4byte	.LCFI85
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI85
	.4byte	.LCFI86
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI86
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LFB47
	.4byte	.LCFI87
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI87
	.4byte	.LCFI88
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI88
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/users/1106786/dropbox/dropbox/pg life/project impact/code/demos/demo_6_p.c.ani/libs/cjson-for-marmalade/cJSON.h"
	.file 3 "c:/marmalade/6.2/s3e/h/std/stddef.h"
	.section	.debug_info
	.4byte	0x1079
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1
	.4byte	.LASF100
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
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.4byte	0x41
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x28
	.byte	0x2
	.byte	0x2b
	.4byte	0xff
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2c
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x2c
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x2d
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2f
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0x31
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.byte	0x32
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.byte	0x33
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.byte	0x35
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x82
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x2
	.byte	0x36
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x8
	.byte	0x2
	.byte	0x38
	.4byte	0x146
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.byte	0x39
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x2
	.byte	0x3a
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x64
	.4byte	0x156
	.uleb128 0xb
	.4byte	0x66
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x146
	.uleb128 0xc
	.byte	0x1
	.4byte	0x168
	.uleb128 0xb
	.4byte	0x64
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x2
	.byte	0x3b
	.4byte	0x11d
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.byte	0x25
	.4byte	0x18f
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x195
	.uleb128 0xe
	.4byte	0x7b
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.4byte	0x1d1
	.uleb128 0x10
	.ascii	"s1\000"
	.byte	0x1
	.byte	0x27
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.ascii	"s2\000"
	.byte	0x1
	.byte	0x27
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.4byte	0x218
	.uleb128 0x10
	.ascii	"str\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"len\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x34
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.4byte	0x240
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3c
	.4byte	0x240
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x16e
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x49
	.4byte	0x270
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.4byte	0x270
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4b
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x112
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST5
	.4byte	0x2aa
	.uleb128 0x10
	.ascii	"c\000"
	.byte	0x1
	.byte	0x51
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF10
	.byte	0x1
	.byte	0x53
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x18f
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST6
	.4byte	0x327
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x60
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.ascii	"num\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.ascii	"n\000"
	.byte	0x1
	.byte	0x62
	.4byte	0x10b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x62
	.4byte	0x10b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x62
	.4byte	0x10b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x62
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x62
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST7
	.4byte	0x36c
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x77
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.ascii	"str\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0x1
	.byte	0x7a
	.4byte	0x10b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.4byte	0x18f
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.4byte	0x3f8
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8f
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.ascii	"str\000"
	.byte	0x1
	.byte	0x8f
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x91
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"out\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"len\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.ascii	"uc\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.ascii	"uc2\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST9
	.4byte	0x469
	.uleb128 0x10
	.ascii	"str\000"
	.byte	0x1
	.byte	0xcb
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xcd
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"out\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"len\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0xcd
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST10
	.4byte	0x494
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0xee
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.4byte	0x18f
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST11
	.4byte	0x4be
	.uleb128 0x10
	.ascii	"in\000"
	.byte	0x1
	.byte	0xf9
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST12
	.4byte	0x4f6
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xfc
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.ascii	"c\000"
	.byte	0x1
	.byte	0xfe
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x107
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST13
	.4byte	0x524
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x107
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x108
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST14
	.4byte	0x552
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x108
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x10b
	.byte	0x1
	.4byte	0x18f
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST15
	.4byte	0x58e
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x10b
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x10b
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11a
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST16
	.4byte	0x5e8
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x11a
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x11a
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.ascii	"out\000"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x12c
	.byte	0x1
	.4byte	0x18f
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST17
	.4byte	0x64c
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x12c
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x12c
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x12e
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x13c
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x148
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST18
	.4byte	0x71c
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x148
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x148
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x148
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x14a
	.4byte	0x71c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.ascii	"out\000"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x14c
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x14d
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x14d
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x105
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	0x18f
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST19
	.4byte	0x786
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x17b
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x17b
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x17d
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x18f
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x19f
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST20
	.4byte	0x882
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x19f
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x19f
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x48
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x71c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x71c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.ascii	"out\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1d9
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST21
	.4byte	0x8ca
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST22
	.4byte	0x914
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1da
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1da
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1da
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1db
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST23
	.4byte	0x95e
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1db
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1db
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1db
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1de
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST24
	.4byte	0x996
	.uleb128 0x18
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x1de
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1de
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1e0
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST25
	.4byte	0x9d2
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"ref\000"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1e3
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST26
	.4byte	0xa18
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1e4
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST27
	.4byte	0xa60
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1e5
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST28
	.4byte	0xa99
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1e6
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST29
	.4byte	0xae1
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1e8
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST30
	.4byte	0xb2b
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1ea
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST31
	.4byte	0xb64
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1eb
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST32
	.4byte	0xbbb
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1ec
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST33
	.4byte	0xbf4
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1ef
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST34
	.4byte	0xc49
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1f2
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST35
	.4byte	0xcab
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x270
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST36
	.4byte	0xcd8
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x270
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST37
	.4byte	0xd05
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x270
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST38
	.4byte	0xd32
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1f8
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST39
	.4byte	0xd6d
	.uleb128 0x1a
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1f9
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST40
	.4byte	0xdaa
	.uleb128 0x1a
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x10b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1fa
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST41
	.4byte	0xde7
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x270
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST42
	.4byte	0xe14
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x270
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST43
	.4byte	0xe41
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1ff
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST44
	.4byte	0xeb2
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1ff
	.4byte	0xeb2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x48
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x200
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST45
	.4byte	0xf29
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x200
	.4byte	0xf29
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x200
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x200
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x200
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x200
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x200
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf2f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF92
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x201
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST46
	.4byte	0xfa7
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x201
	.4byte	0xfa7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x201
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x201
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x201
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x201
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x201
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x202
	.byte	0x1
	.4byte	0x270
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST47
	.4byte	0x101e
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x202
	.4byte	0x101e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x202
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x202
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x202
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x202
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x202
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x11
	.ascii	"ep\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x18f
	.byte	0x5
	.byte	0x3
	.4byte	ep
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x1
	.byte	0x2e
	.4byte	0x156
	.byte	0x5
	.byte	0x3
	.4byte	cJSON_malloc
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x1
	.byte	0x2f
	.4byte	0x168
	.byte	0x5
	.byte	0x3
	.4byte	cJSON_free
	.uleb128 0x21
	.4byte	0x25
	.4byte	0x1066
	.uleb128 0x22
	.4byte	0x78
	.byte	0x6
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x1
	.byte	0x8e
	.4byte	0x1077
	.byte	0x5
	.byte	0x3
	.4byte	firstByteMark
	.uleb128 0xe
	.4byte	0x1056
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
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
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x313
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x107d
	.4byte	0x179
	.ascii	"cJSON_GetErrorPtr\000"
	.4byte	0x218
	.ascii	"cJSON_InitHooks\000"
	.4byte	0x276
	.ascii	"cJSON_Delete\000"
	.4byte	0x4be
	.ascii	"cJSON_Parse\000"
	.4byte	0x4f6
	.ascii	"cJSON_Print\000"
	.4byte	0x524
	.ascii	"cJSON_PrintUnformatted\000"
	.4byte	0x882
	.ascii	"cJSON_GetArraySize\000"
	.4byte	0x8ca
	.ascii	"cJSON_GetArrayItem\000"
	.4byte	0x914
	.ascii	"cJSON_GetObjectItem\000"
	.4byte	0x9d2
	.ascii	"cJSON_AddItemToArray\000"
	.4byte	0xa18
	.ascii	"cJSON_AddItemToObject\000"
	.4byte	0xa60
	.ascii	"cJSON_AddItemReferenceToArray\000"
	.4byte	0xa99
	.ascii	"cJSON_AddItemReferenceToObject\000"
	.4byte	0xae1
	.ascii	"cJSON_DetachItemFromArray\000"
	.4byte	0xb2b
	.ascii	"cJSON_DeleteItemFromArray\000"
	.4byte	0xb64
	.ascii	"cJSON_DetachItemFromObject\000"
	.4byte	0xbbb
	.ascii	"cJSON_DeleteItemFromObject\000"
	.4byte	0xbf4
	.ascii	"cJSON_ReplaceItemInArray\000"
	.4byte	0xc49
	.ascii	"cJSON_ReplaceItemInObject\000"
	.4byte	0xcab
	.ascii	"cJSON_CreateNull\000"
	.4byte	0xcd8
	.ascii	"cJSON_CreateTrue\000"
	.4byte	0xd05
	.ascii	"cJSON_CreateFalse\000"
	.4byte	0xd32
	.ascii	"cJSON_CreateBool\000"
	.4byte	0xd6d
	.ascii	"cJSON_CreateNumber\000"
	.4byte	0xdaa
	.ascii	"cJSON_CreateString\000"
	.4byte	0xde7
	.ascii	"cJSON_CreateArray\000"
	.4byte	0xe14
	.ascii	"cJSON_CreateObject\000"
	.4byte	0xe41
	.ascii	"cJSON_CreateIntArray\000"
	.4byte	0xeb8
	.ascii	"cJSON_CreateFloatArray\000"
	.4byte	0xf36
	.ascii	"cJSON_CreateDoubleArray\000"
	.4byte	0xfad
	.ascii	"cJSON_CreateStringArray\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x194
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
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
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF14:
	.ascii	"valuestring\000"
.LASF90:
	.ascii	"count\000"
.LASF34:
	.ascii	"scale\000"
.LASF45:
	.ascii	"cJSON_Parse\000"
.LASF44:
	.ascii	"value\000"
.LASF19:
	.ascii	"size_t\000"
.LASF85:
	.ascii	"cJSON_CreateString\000"
.LASF17:
	.ascii	"string\000"
.LASF60:
	.ascii	"cJSON_GetArraySize\000"
.LASF11:
	.ascii	"prev\000"
.LASF40:
	.ascii	"print_string_ptr\000"
.LASF20:
	.ascii	"cJSON\000"
.LASF13:
	.ascii	"type\000"
.LASF100:
	.ascii	"c:/users/1106786/dropbox/dropbox/pg life/project im"
	.ascii	"pact/code/demos/demo_6_p.c.ani/libs/cjson-for-marma"
	.ascii	"lade/cJSON.c\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF38:
	.ascii	"parse_string\000"
.LASF99:
	.ascii	"GNU C 4.4.1\000"
.LASF35:
	.ascii	"subscale\000"
.LASF10:
	.ascii	"next\000"
.LASF64:
	.ascii	"object\000"
.LASF31:
	.ascii	"parse_number\000"
.LASF5:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF48:
	.ascii	"parse_value\000"
.LASF36:
	.ascii	"signsubscale\000"
.LASF16:
	.ascii	"valuedouble\000"
.LASF8:
	.ascii	"long int\000"
.LASF79:
	.ascii	"cJSON_ReplaceItemInObject\000"
.LASF83:
	.ascii	"cJSON_CreateBool\000"
.LASF18:
	.ascii	"double\000"
.LASF63:
	.ascii	"cJSON_GetObjectItem\000"
.LASF61:
	.ascii	"array\000"
.LASF67:
	.ascii	"create_reference\000"
.LASF82:
	.ascii	"cJSON_CreateFalse\000"
.LASF98:
	.ascii	"firstByteMark\000"
.LASF39:
	.ascii	"ptr2\000"
.LASF29:
	.ascii	"cJSON_InitHooks\000"
.LASF55:
	.ascii	"numentries\000"
.LASF101:
	.ascii	"cJSON_GetErrorPtr\000"
.LASF78:
	.ascii	"newitem\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF73:
	.ascii	"which\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF84:
	.ascii	"cJSON_CreateNumber\000"
.LASF87:
	.ascii	"cJSON_CreateObject\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF70:
	.ascii	"cJSON_AddItemReferenceToArray\000"
.LASF50:
	.ascii	"depth\000"
.LASF51:
	.ascii	"parse_array\000"
.LASF62:
	.ascii	"cJSON_GetArrayItem\000"
.LASF80:
	.ascii	"cJSON_CreateNull\000"
.LASF95:
	.ascii	"strings\000"
.LASF75:
	.ascii	"cJSON_DetachItemFromObject\000"
.LASF30:
	.ascii	"cJSON_Delete\000"
.LASF32:
	.ascii	"item\000"
.LASF47:
	.ascii	"cJSON_PrintUnformatted\000"
.LASF26:
	.ascii	"copy\000"
.LASF77:
	.ascii	"cJSON_ReplaceItemInArray\000"
.LASF74:
	.ascii	"cJSON_DeleteItemFromArray\000"
.LASF58:
	.ascii	"print_object\000"
.LASF72:
	.ascii	"cJSON_DetachItemFromArray\000"
.LASF89:
	.ascii	"numbers\000"
.LASF41:
	.ascii	"token\000"
.LASF93:
	.ascii	"cJSON_CreateDoubleArray\000"
.LASF66:
	.ascii	"suffix_object\000"
.LASF46:
	.ascii	"cJSON_Print\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF12:
	.ascii	"child\000"
.LASF28:
	.ascii	"node\000"
.LASF3:
	.ascii	"short int\000"
.LASF53:
	.ascii	"print_array\000"
.LASF97:
	.ascii	"cJSON_free\000"
.LASF81:
	.ascii	"cJSON_CreateTrue\000"
.LASF59:
	.ascii	"names\000"
.LASF91:
	.ascii	"cJSON_CreateFloatArray\000"
.LASF65:
	.ascii	"cJSON_New_Item\000"
.LASF23:
	.ascii	"free_fn\000"
.LASF69:
	.ascii	"cJSON_AddItemToObject\000"
.LASF56:
	.ascii	"fail\000"
.LASF68:
	.ascii	"cJSON_AddItemToArray\000"
.LASF9:
	.ascii	"char\000"
.LASF42:
	.ascii	"print_string\000"
.LASF54:
	.ascii	"entries\000"
.LASF25:
	.ascii	"cJSON_strdup\000"
.LASF43:
	.ascii	"skip\000"
.LASF49:
	.ascii	"print_value\000"
.LASF86:
	.ascii	"cJSON_CreateArray\000"
.LASF27:
	.ascii	"hooks\000"
.LASF57:
	.ascii	"parse_object\000"
.LASF37:
	.ascii	"print_number\000"
.LASF71:
	.ascii	"cJSON_AddItemReferenceToObject\000"
.LASF76:
	.ascii	"cJSON_DeleteItemFromObject\000"
.LASF94:
	.ascii	"cJSON_CreateStringArray\000"
.LASF52:
	.ascii	"new_item\000"
.LASF33:
	.ascii	"sign\000"
.LASF92:
	.ascii	"float\000"
.LASF96:
	.ascii	"cJSON_malloc\000"
.LASF15:
	.ascii	"valueint\000"
.LASF22:
	.ascii	"malloc_fn\000"
.LASF24:
	.ascii	"cJSON_strcasecmp\000"
.LASF88:
	.ascii	"cJSON_CreateIntArray\000"
.LASF21:
	.ascii	"cJSON_Hooks\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
