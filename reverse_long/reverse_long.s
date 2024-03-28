	.arch armv8-a
	.file	"reverse_long.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rev_ulong_dword_jt
	.type	rev_ulong_dword_jt, %function
rev_ulong_dword_jt:
.LFB0:
	.cfi_startproc
	mov	x2, x0
	mov	x3, 16
	mov	x0, 0
	mov	x7, 11
	mov	x6, 5
	mov	x5, 13
	mov	x4, 10
	b	.L21
	.p2align 2,,3
.L27:
	cmp	x1, 4
	beq	.L4
	bls	.L24
	cmp	x1, 6
	beq	.L10
	cmp	x1, 7
	bne	.L25
	orr	x0, x0, 14
	.p2align 3,,7
.L9:
	lsr	x2, x2, 4
	subs	x3, x3, #1
	beq	.L26
.L21:
	and	x1, x2, 15
	lsl	x0, x0, 4
	cmp	x1, 8
	beq	.L2
	bls	.L27
	cmp	x1, 12
	beq	.L13
	bls	.L28
	cmp	x1, 14
	beq	.L18
	cmp	x1, 15
	bne	.L29
	orr	x0, x0, 15
	lsr	x2, x2, 4
	subs	x3, x3, #1
	bne	.L21
.L26:
	ret
.L25:
	cmp	x1, 5
	bne	.L9
	orr	x0, x0, x4
	b	.L9
	.p2align 2,,3
.L24:
	cmp	x1, 2
	beq	.L6
	cmp	x1, 3
	bne	.L30
	orr	x0, x0, 12
	b	.L9
.L29:
	cmp	x1, 13
	bne	.L9
	orr	x0, x0, x7
	b	.L9
	.p2align 2,,3
.L28:
	cmp	x1, 10
	beq	.L15
	cmp	x1, 11
	bne	.L31
	orr	x0, x0, x5
	b	.L9
.L30:
	cmp	x1, 1
	bne	.L9
	orr	x0, x0, 8
	b	.L9
.L31:
	cmp	x1, 9
	bne	.L9
	orr	x0, x0, x1
	b	.L9
	.p2align 2,,3
.L6:
	orr	x0, x0, 4
	b	.L9
	.p2align 2,,3
.L15:
	orr	x0, x0, x6
	b	.L9
	.p2align 2,,3
.L18:
	orr	x0, x0, 7
	b	.L9
	.p2align 2,,3
.L13:
	orr	x0, x0, 3
	b	.L9
	.p2align 2,,3
.L10:
	orr	x0, x0, 6
	b	.L9
	.p2align 2,,3
.L4:
	orr	x0, x0, 2
	b	.L9
	.p2align 2,,3
.L2:
	orr	x0, x0, 1
	b	.L9
	.cfi_endproc
.LFE0:
	.size	rev_ulong_dword_jt, .-rev_ulong_dword_jt
	.align	2
	.p2align 4,,11
	.global	start
	.type	start, %function
start:
.LFB1:
	.cfi_startproc
	mov	x0, 0
	ret
	.cfi_endproc
.LFE1:
	.size	start, .-start
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
