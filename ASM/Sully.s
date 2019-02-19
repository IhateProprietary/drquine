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
	mov rcx, i-1
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
	lea rsi, [v]
	mov dl, 10
	mov cl, 9
	mov r8b, 34
	mov r9b, 37
	sub rsp, 8
	push rsi
	mov eax, i-1
	push rax
	call _dprintf
	mov rax, 0x2000006
	add rsp, 24
	pop rdi
	syscall
END:
	add rsp, 8
	xor rax, rax
%endif
	ret
	section .bss
b:	resb 512
	section .data
v1:	db "Sully_%d.s", 0
v:	db "%2$cextern _main%1$c%2$cextern _dprintf%1$c%2$cextern _snprintf%1$c%2$cdefault rel%1$c%2$csection .text%1$c%2$c%4$cdefine i %5$d%1$c_main:%1$c%4$cif i > 0%1$c%2$cpush rbp%1$c%2$clea rdi, [b]%1$c%2$cmov rsi, 512%1$c%2$clea rdx, [v1]%1$c%2$cmov rcx, i-1%1$c%2$ccall _snprintf%1$c%2$cmov rax, 0x2000005%1$c%2$clea rdi, [b]%1$c%2$cmov rsi, 1|600h%1$c%2$cmov rdx, 644o%1$c%2$csyscall%1$c%2$ccmp rax, 0%1$c%2$cjz END%1$c%2$cpush rax%1$c%2$cmov rdi, [rsp]%1$c%2$clea rsi, [v]%1$c%2$cmov dl, 10%1$c%2$cmov cl, 9%1$c%2$cmov r8b, 34%1$c%2$cmov r9b, 37%1$c%2$csub rsp, 8%1$c%2$cpush rsi%1$c%2$cmov eax, i-1%1$c%2$cpush rax%1$c%2$ccall _dprintf%1$c%2$cmov rax, 0x2000006%1$c%2$cadd rsp, 24%1$c%2$cpop rdi%1$c%2$csyscall%1$cEND:%1$c%2$cadd rsp, 8%1$c%2$cxor rax, rax%1$c%4$cendif%1$c%2$cret%1$c%2$csection .bss%1$cb:%2$cresb 512%1$c%2$csection .data%1$cv1:%2$cdb %3$cSully_%4$cd.s%3$c, 0%1$cv:%2$cdb %3$c%6$s%3$c, 0%1$c", 0
