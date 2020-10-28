%include "../equ.nasm"			; Include the predefined "vars"

; Macro to end program
_endProgram:
	mov rax, SYS_EXIT
	syscall

%macro exit 1
	mov rdi, %1
	jmp _endProgram				; Macro to end/exit the program
%endmacro
