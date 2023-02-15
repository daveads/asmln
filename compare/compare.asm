section .data
		; Define constants
		num1: equ 100
		num2: equ 50

		; initialize mesage
		msg: db "sum is correct \n"

section .text
		global _start

;; entry point

_start:

		; set num1's value to rax

		mov rax, num1

		; set num2 value to rbx

		mov rbx, num2

		; get the sum of rbx, rax store it in rax

		add rax, rbx

		;compare rax and 150

		cmp rax, 150

		; goes to the .exit label if not equal to
		jne .exit

		; goes to the right label if rax and 150 are equal to
		jmp .rightsum

; prints the message that sum is correct
.rightsum:
		; write syscall 

		mov rax, 1

		;; file descritor standard output
		mov rdi, 1

		;; message address
		mov rsi, msg

		;; length of message
		mov rdx, 15

		;;call write syscall
		syscall

		;exit from program
		jmp .exit

.exit:
		; exit syscall

		mov rax, 60

		; exit code 
		mov rdi, 0

		; call exit syscall
		syscall
