section .data
		SYS_WRITE equ 1
		STD_IN 	  equ 1
		SYS_EXIT  equ 60
		EXIT_CODE equ 0


		NEW_LINE   db  0xa
		WRONG_ARGC db  "Must be too commandline argument", 0xa


section .text
		global _start

_start:

		pop rcx
		cmp rcx, 3
		jne argcError

		add rsp, 8
		pop rsi 
		call str_to_int

		mov r10, rax
		pop rsi
		call str_to_int
		mov r11, rax

		add r10, r11

		;; convert to string


argcError:
		;; sys_write syscall
		mov rax, 1
		;; file descritor, standard output
		mov rdi, 1

		;; message address
		mov rsi, WRONG_ARGC

		;; length  of message
		mov rdx, 34

		;; call  write syscall

		syscall

		;; exit from program

		jmp exit






exit:
		mov rax, SYS_EXIT
		exit code
		mov rdi, EXIT_CODE
		syscall
