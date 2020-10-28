%include "base/linux.nasm"
%include "macros/printstr.nasm"

section .data
	helloString db "Hello world!", ASCII_LINEBREAK

section .bss

section .text
	global _start

_start:
	print helloString	 		; This will print "Hello world!\n"
	exit 0						; End the program with exitcode 0
