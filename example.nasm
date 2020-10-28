%include "headers/print.nasm"

section .data
	helloString db "Hello world!"

section .bss

section .text
	global _start

_start:
	print helloString	 		; This will print "Hello world!"
	exit 0						; End the program with exitcode 0
