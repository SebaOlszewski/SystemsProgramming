	.file	"calc.c"
	.text
	.section	.rodata
.LC0:
	.string	"%.2f + %.2f = %.2f\n"
.LC1:
	.string	"%.2f - %.2f = %.2f\n"
.LC2:
	.string	"%.2f * %.2f = %.2f\n"
.LC3:
	.string	"%.2f / %.2f = %.2f\n"
.LC4:
	.string	"ERROR "
	.text
	.globl	solve
	.type	solve, @function
solve:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	%edi, %eax
	movsd	%xmm1, -24(%rbp)
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %eax
	cmpl	$47, %eax
	je	.L2
	cmpl	$47, %eax
	jg	.L3
	cmpl	$45, %eax
	je	.L4
	cmpl	$45, %eax
	jg	.L3
	cmpl	$42, %eax
	je	.L5
	cmpl	$43, %eax
	jne	.L3
	movsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	jmp	.L6
.L4:
	movsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	jmp	.L6
.L5:
	movsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	jmp	.L6
.L2:
	movsd	-8(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	jmp	.L6
.L3:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	solve, .-solve
	.section	.rodata
.LC5:
	.string	"To little arguments!"
.LC6:
	.string	"To many arguments!"
.LC7:
	.string	"Missing operator "
.LC8:
	.string	"Missing number"
.LC9:
	.string	"ERROR: No number"
.LC10:
	.string	"Missing number! "
.LC11:
	.string	"Wrong operator! "
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	cmpl	$2, -68(%rbp)
	jg	.L8
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	cmpl	$4, -68(%rbp)
	jle	.L10
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	cmpl	$3, -68(%rbp)
	jne	.L11
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L12
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L12
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L13
.L12:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L14
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L14
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L13
.L14:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L15
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L15
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L13
.L15:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L13:
	movl	$0, %eax
	jmp	.L9
.L11:
	cmpl	$4, -68(%rbp)
	jne	.L16
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L17
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L17
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L17
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L18
.L17:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L19
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L19
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movsd	-56(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movapd	%xmm0, %xmm1
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	solve
	jmp	.L20
.L19:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L21
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L21
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L21
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movsd	-40(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movapd	%xmm0, %xmm1
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	solve
	jmp	.L20
.L21:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L22
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L22
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L22
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	solve
	jmp	.L20
.L22:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L23
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L23
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L23
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L23
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movsd	-8(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	solve
	jmp	.L20
.L23:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L16
.L20:
	jmp	.L16
.L18:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L16:
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
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
