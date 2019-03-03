extern _main
extern _dprintf
extern _snprintf
extern _system
default rel
section .text
%define i 5
_main:
%if i > 0
	push rbp
%ifdef __ORIGIN
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
	jc END
	push rax
	mov rdi, [rsp]
	lea rsi, [v]
	mov dl, 10
	mov cl, 9
	mov r8b, 34
	mov r9b, 37
	sub rsp, 8
	push rsi
	mov eax, i
	push rax
	call _dprintf
%else
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
	jc END
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
%endif
	mov rax, 0x2000006
	add rsp, 24
	pop rdi
	syscall
	lea rdi, [s]
	mov rsi, 512
	lea rdx, [v2]
	lea rcx, [b]
	mov r8, 7
	call _snprintf
	lea rdi, [s]
	call _system
END:
	add rsp, 8
	xor rax, rax
%endif
	ret
section .bss
b:	resb 512
s:	resb 512
section .data
v1:	db "Sully_%d.s", 0
v:	db "extern _main%1$cextern _dprintf%1$cextern _snprintf%1$cextern _system%1$cdefault rel%1$csection .text%1$c%4$cdefine i %5$d%1$c_main:%1$c%4$cif i > 0%1$c%2$cpush rbp%1$c%4$cifdef __ORIGIN%1$c%2$clea rdi, [b]%1$c%2$cmov rsi, 512%1$c%2$clea rdx, [v1]%1$c%2$cmov rcx, i%1$c%2$ccall _snprintf%1$c%2$cmov rax, 0x2000005%1$c%2$clea rdi, [b]%1$c%2$cmov rsi, 1|600h%1$c%2$cmov rdx, 644o%1$c%2$csyscall%1$c%2$cjc END%1$c%2$cpush rax%1$c%2$cmov rdi, [rsp]%1$c%2$clea rsi, [v]%1$c%2$cmov dl, 10%1$c%2$cmov cl, 9%1$c%2$cmov r8b, 34%1$c%2$cmov r9b, 37%1$c%2$csub rsp, 8%1$c%2$cpush rsi%1$c%2$cmov eax, i%1$c%2$cpush rax%1$c%2$ccall _dprintf%1$c%4$celse%1$c%2$clea rdi, [b]%1$c%2$cmov rsi, 512%1$c%2$clea rdx, [v1]%1$c%2$cmov rcx, i-1%1$c%2$ccall _snprintf%1$c%2$cmov rax, 0x2000005%1$c%2$clea rdi, [b]%1$c%2$cmov rsi, 1|600h%1$c%2$cmov rdx, 644o%1$c%2$csyscall%1$c%2$cjc END%1$c%2$cpush rax%1$c%2$cmov rdi, [rsp]%1$c%2$clea rsi, [v]%1$c%2$cmov dl, 10%1$c%2$cmov cl, 9%1$c%2$cmov r8b, 34%1$c%2$cmov r9b, 37%1$c%2$csub rsp, 8%1$c%2$cpush rsi%1$c%2$cmov eax, i-1%1$c%2$cpush rax%1$c%2$ccall _dprintf%1$c%4$cendif%1$c%2$cmov rax, 0x2000006%1$c%2$cadd rsp, 24%1$c%2$cpop rdi%1$c%2$csyscall%1$c%2$clea rdi, [s]%1$c%2$cmov rsi, 512%1$c%2$clea rdx, [v2]%1$c%2$clea rcx, [b]%1$c%2$cmov r8, 7%1$c%2$ccall _snprintf%1$c%2$clea rdi, [s]%1$c%2$ccall _system%1$cEND:%1$c%2$cadd rsp, 8%1$c%2$cxor rax, rax%1$c%4$cendif%1$c%2$cret%1$csection .bss%1$cb:%2$cresb 512%1$cs:%2$cresb 512%1$csection .data%1$cv1:%2$cdb %3$cSully_%4$cd.s%3$c, 0%1$cv:%2$cdb %3$c%6$s%3$c, 0%1$cv2:%2$cdb %3$cnasm %4$c1$.*2$s.s -fmacho64 && gcc %4$c1$.*2$s.o -o %4$c1$.*2$s && rm %4$c1$.*2$s.o && ./%4$c1$.*2$s%3$c, 0%1$c", 0
v2:	db "nasm %1$.*2$s.s -fmacho64 && gcc %1$.*2$s.o -o %1$.*2$s && rm %1$.*2$s.o && ./%1$.*2$s", 0
