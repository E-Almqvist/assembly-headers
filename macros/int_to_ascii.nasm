; Macro to convert integers to ASCII strings

ASCII_NUM_OFFSET equ 48		; ASCII number characters have the 48 offset
	; Here is a ASCII table if you are curious: http://www.asciitable.com/

_digitToASCII:
	pop ah	 			; Move the input from the stack to 8bit ah register
	add ah, ASCII_NUM_OFFSET	; More than 8 bits is not needed as it is from 0-9
	mov rax, ah			; return the ASCII character



; Takes two arguments
; %1: the integer
; %2: string buffer

%macro int_to_str 2

%endmacro