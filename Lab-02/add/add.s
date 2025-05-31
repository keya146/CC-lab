	.file	"add.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter two numbers: \0"
LC1:
	.ascii "%d %d\0"
LC2:
	.ascii "Sum is: %d\12\0"
LC3:
	.ascii "Sum is more than 10.\0"
LC4:
	.ascii "Sum is 10 or less.\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	eax, [esp+20]
	mov	DWORD PTR [esp+8], eax
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	cmp	DWORD PTR [esp+28], 10
	jle	L2
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_puts
	jmp	L3
L2:
	mov	DWORD PTR [esp], OFFSET FLAT:LC4
	call	_puts
L3:
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
