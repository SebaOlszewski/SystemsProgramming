	.file	"main3.c"
	.text
	.section	.rodata
.LC0:
	.string	"Your weight: %.2f \n"
.LC1:
	.string	"Your height: %.2f \n"
.LC2:
	.string	"Your BMI: %.2f \n"
.LC4:
	.string	"You are underweight"
.LC6:
	.string	"You have normal BMI"
.LC9:
	.string	"You are overweight!"
.LC11:
	.string	"You are obese!!!!"
.LC12:
	.string	"error"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-20(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movss	.LC3(%rip), %xmm0
	comiss	-20(%rbp), %xmm0
	jbe	.L20
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L4
.L20:
	movss	-20(%rbp), %xmm0
	comiss	.LC3(%rip), %xmm0
	jb	.L5
	pxor	%xmm1, %xmm1
	cvtss2sd	-20(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L5
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L4
.L5:
	movss	-20(%rbp), %xmm0
	comiss	.LC7(%rip), %xmm0
	jb	.L8
	pxor	%xmm1, %xmm1
	cvtss2sd	-20(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L8
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L4
.L8:
	movss	-20(%rbp), %xmm0
	comiss	.LC10(%rip), %xmm0
	jb	.L21
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L4
.L21:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L4:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC3:
	.long	1100218368
	.align 8
.LC5:
	.long	1717986918
	.long	1077470822
	.align 4
.LC7:
	.long	1103626240
	.align 8
.LC8:
	.long	1717986918
	.long	1077798502
	.align 4
.LC10:
	.long	1106247680
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
