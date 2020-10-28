; Macro to print ASCII strings
_printstr:					; NOTE Takes the rax register as input
	push rax
	mov rdx, 0

_printstrLoop:
	inc rax
	inc rbx					; String size count
	mov cl, [rax]				; Incrementor

	cmp cl, 0				; Check if we have reached the end of the string
	jne _printLoop				; If not then do another iteration

	mov rax, SYS_WRITE
	mov rdi, STDIN
	pop rsi					; Move rax into rsi (from the stack)
	mov rdx, rbx
	syscall

	ret

%macro printstr 1				; Macro to print stuff
	mov rax, %1
	call _printstr
%endmacro
