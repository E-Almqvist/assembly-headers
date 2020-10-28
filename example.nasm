%include "headers/print.nasm"

section .data

section .bss

section .text
	global _start

_start:
	print "Hello world!" 		; This will print "Hello world!"
	exit 0						; End the program with exitcode 0
