global _start


section .text

_start:
		mov ebx, 20  ;exit status is 20
		mov eax, 1 	 ;sys_exit system call

		jmp skip     ; jump to 'skip' label

		mov ebx, 2   ; exit status is 2


skip:

		int 18
