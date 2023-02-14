	.arch armv8-a
	.file	"decomment.c"
	.text
	.comm	eState,4,4
	.global	linesaver
	.bss
	.align	2
	.type	linesaver, %object
	.size	linesaver, 4
linesaver:
	.zero	4
	.text
	.align	2
	.global	NORMALstate
	.type	NORMALstate, %function
NORMALstate:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 47
	bne	.L2
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 34
	bne	.L4
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 4
	str	w0, [sp, 44]
	b	.L3
.L4:
	ldr	w0, [sp, 28]
	cmp	w0, 39
	bne	.L5
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 6
	str	w0, [sp, 44]
	b	.L3
.L5:
	ldr	w0, [sp, 28]
	bl	putchar
	str	wzr, [sp, 44]
.L3:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	NORMALstate, .-NORMALstate
	.align	2
	.global	POSSIBLE_COMMENTstate
	.type	POSSIBLE_COMMENTstate, %function
POSSIBLE_COMMENTstate:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 42
	bne	.L8
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L9
.L8:
	ldr	w0, [sp, 28]
	cmp	w0, 34
	bne	.L10
	mov	w0, 47
	bl	putchar
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 4
	str	w0, [sp, 44]
	b	.L9
.L10:
	ldr	w0, [sp, 28]
	cmp	w0, 39
	bne	.L11
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	bl	putchar
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 6
	str	w0, [sp, 44]
	b	.L9
.L11:
	ldr	w0, [sp, 28]
	cmp	w0, 47
	bne	.L12
	mov	w0, 47
	bl	putchar
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L9
.L12:
	mov	w0, 47
	bl	putchar
	ldr	w0, [sp, 28]
	bl	putchar
	str	wzr, [sp, 44]
.L9:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	POSSIBLE_COMMENTstate, .-POSSIBLE_COMMENTstate
	.align	2
	.global	COMMENTstate
	.type	COMMENTstate, %function
COMMENTstate:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 42
	bne	.L15
	mov	w0, 3
	str	w0, [sp, 44]
	b	.L16
.L15:
	ldr	w0, [sp, 28]
	cmp	w0, 10
	bne	.L17
	ldr	w0, [sp, 28]
	bl	putchar
	adrp	x0, linesaver
	add	x0, x0, :lo12:linesaver
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, linesaver
	add	x0, x0, :lo12:linesaver
	str	w1, [x0]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L16
.L17:
	mov	w0, 2
	str	w0, [sp, 44]
.L16:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	COMMENTstate, .-COMMENTstate
	.align	2
	.global	POSSIBLE_ENDCOMMENTstate
	.type	POSSIBLE_ENDCOMMENTstate, %function
POSSIBLE_ENDCOMMENTstate:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 47
	bne	.L20
	adrp	x0, linesaver
	add	x0, x0, :lo12:linesaver
	str	wzr, [x0]
	str	wzr, [sp, 44]
	b	.L21
.L20:
	ldr	w0, [sp, 28]
	cmp	w0, 42
	bne	.L22
	mov	w0, 3
	str	w0, [sp, 44]
	b	.L21
.L22:
	ldr	w0, [sp, 28]
	cmp	w0, 10
	bne	.L23
	ldr	w0, [sp, 28]
	bl	putchar
	adrp	x0, linesaver
	add	x0, x0, :lo12:linesaver
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, linesaver
	add	x0, x0, :lo12:linesaver
	str	w1, [x0]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L21
.L23:
	mov	w0, 2
	str	w0, [sp, 44]
.L21:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	POSSIBLE_ENDCOMMENTstate, .-POSSIBLE_ENDCOMMENTstate
	.align	2
	.global	STRINGstate
	.type	STRINGstate, %function
STRINGstate:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 92
	bne	.L26
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 5
	str	w0, [sp, 44]
	b	.L27
.L26:
	ldr	w0, [sp, 28]
	cmp	w0, 34
	bne	.L28
	ldr	w0, [sp, 28]
	bl	putchar
	str	wzr, [sp, 44]
	b	.L27
.L28:
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 4
	str	w0, [sp, 44]
.L27:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	STRINGstate, .-STRINGstate
	.align	2
	.global	STRING_BACKSLASHstate
	.type	STRING_BACKSLASHstate, %function
STRING_BACKSLASHstate:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 92
	bne	.L31
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 5
	str	w0, [sp, 44]
	b	.L32
.L31:
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 4
	str	w0, [sp, 44]
.L32:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	STRING_BACKSLASHstate, .-STRING_BACKSLASHstate
	.align	2
	.global	CHARstate
	.type	CHARstate, %function
CHARstate:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 92
	bne	.L35
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 7
	str	w0, [sp, 44]
	b	.L36
.L35:
	ldr	w0, [sp, 28]
	cmp	w0, 39
	bne	.L37
	ldr	w0, [sp, 28]
	bl	putchar
	str	wzr, [sp, 44]
	b	.L36
.L37:
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 6
	str	w0, [sp, 44]
.L36:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	CHARstate, .-CHARstate
	.align	2
	.global	CHAR_BACKSLASHstate
	.type	CHAR_BACKSLASHstate, %function
CHAR_BACKSLASHstate:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 92
	bne	.L40
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 7
	str	w0, [sp, 44]
	b	.L41
.L40:
	ldr	w0, [sp, 28]
	bl	putchar
	mov	w0, 6
	str	w0, [sp, 44]
.L41:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	CHAR_BACKSLASHstate, .-CHAR_BACKSLASHstate
	.section	.rodata
	.align	3
.LC0:
	.string	"Error: line %d: unterminated comment\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L44
.L55:
	ldr	w0, [sp, 20]
	cmp	w0, 10
	bne	.L45
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L45:
	ldr	w0, [sp, 24]
	cmp	w0, 3
	beq	.L46
	ldr	w0, [sp, 24]
	cmp	w0, 3
	bhi	.L47
	ldr	w0, [sp, 24]
	cmp	w0, 1
	beq	.L48
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bhi	.L49
	b	.L60
.L47:
	ldr	w0, [sp, 24]
	cmp	w0, 5
	beq	.L51
	ldr	w0, [sp, 24]
	cmp	w0, 5
	bcc	.L52
	ldr	w0, [sp, 24]
	cmp	w0, 6
	beq	.L53
	ldr	w0, [sp, 24]
	cmp	w0, 7
	beq	.L54
	b	.L44
.L60:
	ldr	w0, [sp, 20]
	bl	NORMALstate
	str	w0, [sp, 24]
	b	.L44
.L48:
	ldr	w0, [sp, 20]
	bl	POSSIBLE_COMMENTstate
	str	w0, [sp, 24]
	b	.L44
.L49:
	ldr	w0, [sp, 20]
	bl	COMMENTstate
	str	w0, [sp, 24]
	b	.L44
.L46:
	ldr	w0, [sp, 20]
	bl	POSSIBLE_ENDCOMMENTstate
	str	w0, [sp, 24]
	b	.L44
.L52:
	ldr	w0, [sp, 20]
	bl	STRINGstate
	str	w0, [sp, 24]
	b	.L44
.L51:
	ldr	w0, [sp, 20]
	bl	STRING_BACKSLASHstate
	str	w0, [sp, 24]
	b	.L44
.L53:
	ldr	w0, [sp, 20]
	bl	CHARstate
	str	w0, [sp, 24]
	b	.L44
.L54:
	ldr	w0, [sp, 20]
	bl	CHAR_BACKSLASHstate
	str	w0, [sp, 24]
	nop
.L44:
	bl	getchar
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmn	w0, #1
	bne	.L55
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bne	.L56
	mov	w0, 47
	bl	putchar
	b	.L57
.L56:
	ldr	w0, [sp, 24]
	cmp	w0, 2
	beq	.L58
	ldr	w0, [sp, 24]
	cmp	w0, 3
	bne	.L57
.L58:
	adrp	x0, linesaver
	add	x0, x0, :lo12:linesaver
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 16]
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	w2, [sp, 16]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	b	.L59
.L57:
	mov	w0, 0
.L59:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
