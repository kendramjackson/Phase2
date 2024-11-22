	.file	"Phase2.c"
	.text
	.globl	int_to_bin
	.type	int_to_bin, @function
int_to_bin:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-24(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.L2
.L5:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	movl	$49, %edx
	jmp	.L4
.L3:
	movl	$48, %edx
.L4:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	sarl	-20(%rbp)
	subl	$1, -4(%rbp)
.L2:
	cmpl	$0, -4(%rbp)
	jns	.L5
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	int_to_bin, .-int_to_bin
	.section	.rodata
	.align 8
.LC0:
	.string	"Error: Negative numbers cannot be represented in the unsigned format."
.LC1:
	.string	"Unsigned binary:   %s\n"
.LC2:
	.string	"Unsigned hex:      %08X\n"
.LC3:
	.string	"Unsigned octal:    %011o\n"
.LC4:
	.string	"Signed binary:     %s\n"
.LC5:
	.string	"Signed hex:        %08X\n"
.LC6:
	.string	"Signed octal:      %011o\n"
.LC7:
	.string	"One's complement:  %s\n"
.LC8:
	.string	"One's comp. hex:   %08X\n"
.LC9:
	.string	"One's comp. octal: %011o\n"
.LC10:
	.string	"Two's complement:  %s\n"
.LC11:
	.string	"Two's comp. hex:   %08X\n"
.LC12:
	.string	"Two's comp. octal: %011o\n"
	.text
	.globl	print_representations
	.type	print_representations, @function
print_representations:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$0, -68(%rbp)
	jns	.L7
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L8
.L7:
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	leaq	-48(%rbp), %rcx
	movl	$33, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	int_to_bin
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	leaq	-48(%rbp), %rcx
	movl	-68(%rbp), %eax
	movl	$33, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	int_to_bin
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -64(%rbp)
	jmp	.L9
.L12:
	movl	-64(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	cmpb	$48, %al
	jne	.L10
	movl	$49, %edx
	jmp	.L11
.L10:
	movl	$48, %edx
.L11:
	movl	-64(%rbp), %eax
	cltq
	movb	%dl, -48(%rbp,%rax)
	addl	$1, -64(%rbp)
.L9:
	cmpl	$31, -64(%rbp)
	jle	.L12
	leaq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, -56(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -68(%rbp)
	jns	.L13
	movl	-68(%rbp), %eax
	subl	$2147483647, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	leaq	-48(%rbp), %rcx
	movl	$33, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	int_to_bin
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L16
.L13:
	leaq	-48(%rbp), %rcx
	movl	-68(%rbp), %eax
	movl	$33, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	int_to_bin
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L16:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	print_representations, .-print_representations
	.section	.rodata
.LC13:
	.string	"Enter a number: "
.LC14:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	print_representations
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
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
