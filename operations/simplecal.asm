section .data
    ; data section for function arguments
    a dq 4
    b dq 23
    result dq 0 ; variable to store result

section .text
    global _start

_start:
    ; load arguments into registers
    mov rax, [a]
    mov rbx, [b]

    ; perform addition
    add rax, rbx

    ; store result
    mov [result], rax

    ; print result
    mov rdi, result
    call print_num

print_num:
    ; implementation of print function
    ; ...

