	%macro main 1
%1:
	push rbp
	mov rax, 0x2000005
	lea rdi, [v1]
	mov rsi, 1|600h
	mov rdx, 644o
	syscall
	jc %%END
	push rax
	mov edi, eax
	lea rsi, [v]
	mov dl, [nl]
	mov cl, [ht]
	mov r8b, [p]
	mov r9b, [q]
	lea rax, [v]
	push rax
	call _dprintf
	mov rax, 0x2000006
	add rsp, 8
	pop rdi
	syscall
%%END:
	add rsp, 8
	mov rax, 0
	ret
	%endmacro

	%macro value 6
%1:	db 10
%2:	db 9
%3:	db 37
%4:	db 34
%5:	db "%2$c%3$cmacro main 1%1$c%3$c1:%1$c%2$cpush rbp%1$c%2$cmov rax, 0x2000005%1$c%2$clea rdi, [v1]%1$c%2$cmov rsi, 1|600h%1$c%2$cmov rdx, 644o%1$c%2$csyscall%1$c%2$cjc %3$c%3$cEND%1$c%2$cpush rax%1$c%2$cmov edi, eax%1$c%2$clea rsi, [v]%1$c%2$cmov dl, [nl]%1$c%2$cmov cl, [ht]%1$c%2$cmov r8b, [p]%1$c%2$cmov r9b, [q]%1$c%2$clea rax, [v]%1$c%2$cpush rax%1$c%2$ccall _dprintf%1$c%2$cmov rax, 0x2000006%1$c%2$cadd rsp, 8%1$c%2$cpop rdi%1$c%2$csyscall%1$c%3$c%3$cEND:%1$c%2$cadd rsp, 8%1$c%2$cmov rax, 0%1$c%2$cret%1$c%2$c%3$cendmacro%1$c%1$c%2$c%3$cmacro value 6%1$c%3$c1:%2$cdb 10%1$c%3$c2:%2$cdb 9%1$c%3$c3:%2$cdb 37%1$c%3$c4:%2$cdb 34%1$c%3$c5:%2$cdb %4$c%5$s%4$c,0%1$c%3$c6:%2$cdb %4$cGrace_kid.s%4$c%1$c%2$c%3$cendmacro%1$c%1$c%2$cextern _dprintf%1$c%2$cextern _main%1$c%2$cdefault rel%1$c%2$csection .text%1$cmain _main%1$c%2$csection .data%1$cvalue nl, ht, p, q, v, v1%1$c",0
%6:	db "Grace_kid.s"
	%endmacro

	extern _dprintf
	extern _main
	default rel
	section .text
main _main
	section .data
value nl, ht, p, q, v, v1
