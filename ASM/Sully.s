	extern _main
	extern _dprintf
	extern _snprintf
	default rel
	section .text
	%define i 5
_main:
%if i > 0
	push rbp
	lea rdi, [b]
	mov rsi, 512
	lea rdx, [v1]
	mov rcx, i
	call _snprintf
	mov rax, 0x2000005
	lea rdi, [b]
	mov rsi, 1|600h
	mov rdx, 644o
	syscall
	cmp rax, 0
	jz END
	push rax
	mov rdi, [rsp]
	mov rsi, [v]
	mov dl, 10
	mov cl, 9
	mov r8b, 34
	mov r9b, 37
	lea rax, [v]
	push rax
	call _dprintf
	mov rax, 0x2000006
	add rsp, 8
	pop rdi
	syscall
END:
	add rsp, 8
	mov rax, 0
%endif
	ret
	section .bss
b:	resb 512
	section .data
v1:	db "Sully_%d.s"
v:	db ""
