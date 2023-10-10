	.file	"calc.c"
	.text
	.section	.rodata
.LC0:
	.string	"%c \n"
.LC1:
	.string	"%.2f + %.2f = %.2f\n"
.LC2:
	.string	"%.2f - %.2f = %.2f\n"
.LC3:
	.string	"%.2f * %.2f = %.2f\n"
.LC4:
	.string	"%.2f / %.2f = %.2f\n"
.LC5:
	.string	"ERROR"
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
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -36(%rbp)
	jmp	.L2
.L3:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	movb	%dl, -11(%rbp,%rax)
	addl	$1, -36(%rbp)
.L2:
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L3
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-9(%rbp), %eax
	cmpb	$43, %al
	jne	.L4
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L9
.L4:
	movzbl	-9(%rbp), %eax
	cmpb	$45, %al
	jne	.L6
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L9
.L6:
	movzbl	-9(%rbp), %eax
	cmpb	$67, %al
	jne	.L7
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L9
.L7:
	movzbl	-9(%rbp), %eax
	cmpb	$47, %al
	jne	.L8
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
.L9:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
