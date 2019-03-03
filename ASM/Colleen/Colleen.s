	extern _printf
	extern _main
	default rel
	section .text
	;; This program will display itself when run
_f1:
	push rbp
	lea rdi, [v]
	mov rsi, [nl]
	mov rdx, [ht]
	mov rcx, [q]
	lea r8, [v]
	call _printf
	pop rbp
	ret
_main:
	;; Function to display itself
	push rbp
	call _f1
	xor rax, rax
	pop rbp
	ret
	section .data
ht:	db 9
nl:	db 10
q:	db 34
v:	db "%2$cextern _printf%1$c%2$cextern _main%1$c%2$cdefault rel%1$c%2$csection .text%1$c%2$c;; This program will display itself when run%1$c_f1:%1$c%2$cpush rbp%1$c%2$clea rdi, [v]%1$c%2$cmov rsi, [nl]%1$c%2$cmov rdx, [ht]%1$c%2$cmov rcx, [q]%1$c%2$clea r8, [v]%1$c%2$ccall _printf%1$c%2$cpop rbp%1$c%2$cret%1$c_main:%1$c%2$c;; Function to display itself%1$c%2$cpush rbp%1$c%2$ccall _f1%1$c%2$cxor rax, rax%1$c%2$cpop rbp%1$c%2$cret%1$c%2$csection .data%1$cht:%2$cdb 9%1$cnl:%2$cdb 10%1$cq:%2$cdb 34%1$cv:%2$cdb %3$c%4$s%3$c%1$c"
