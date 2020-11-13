%include "base/linux.nasm"		; This has to be included everytime you want to include any other macro/subroutine etc
%include "macros/printstr.nasm"		; Print String macro.
%include "macros/int_to_ascii.nasm"	; Convert integers to ASCII strings macro

section .data
	helloString db "Hello world!", ASCII_LINEBREAK, ASCII_END ; Important to include a ASCII_END otherwise ASCII
	testString db "Hello there!", ASCII_LINEBREAK, ASCII_END  ; will think that the string never ended.

	linebreak db ASCII_LINEBREAK, ASCII_END

	numbertwo db 2

section .bss
	digitStr resb 1		; Reserv 1 byte for the character

section .text
	global _start

_start:
	printstr helloString	 		; This will print "Hello world!\n".	NOTE: macro is included on line 2
	printstr testString			; This will print "Hello there!\n"

	digit_to_str numbertwo
	pop rax
	printstr rax
	printstr linebreak

	exit 0					; End the program with exitcode 0.	NOTE: macro is included on line 1 (base file)
