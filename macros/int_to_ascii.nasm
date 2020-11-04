; Macro to convert integers to ASCII strings

ASCII_NUM_OFFSET equ 48		; ASCII number characters have the 48 offset
	; Here is a ASCII table if you are curious: http://www.asciitable.com/

_digitToASCII:
	pop rax	 			; Move the input from the stack
	add rax, ASCII_NUM_OFFSET
	push rax			; return the ASCII character to the stack

	ret



; Takes two arguments
; %1: the integer
; %2: string buffer

%macro digit_to_str 1
	push %1
	call _digitToASCII
	pop rax
%endmacro

%macro int_to_str 2

%endmacro
