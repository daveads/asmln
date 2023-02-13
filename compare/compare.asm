section .data
		; Define constants
		num1: equ 100
		num2: equ 50

		; initialize mesage
		msg: db "sum is correct \n"

section .text


;; entry point

_start:

		; set num1's value to rax

		mov rax, num1
