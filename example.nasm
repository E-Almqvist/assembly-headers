%include "base/linux.nasm"		; This has to be included everytime you want to include any other macro/subroutine etc
%include "macros/printstr.nasm"	; Print String macro.

section .data
	helloString db "Hello world!", ASCII_LINEBREAK

section .text
	global _start

; This is not finished. Do not use these includes
; FIXME: example.nasm:13: error: parser: instruction expected

_start:
	print helloString	 		; This will print "Hello world!\n".	NOTE: macro is included on line 2
	exit 0						; End the program with exitcode 0.	NOTE: macro is included on line 1 (base file)
