section .data
    a dd 1
    b dd 2
    c dd 3
    d dd 4
    e dd 5

section .text
    mov eax, [a]  ; [a] is moved in the register
    cmp eax, 1   ; compare the value in the register to 1 {if == 1 zero flag will be set "ZF" else if != 1 carry flag will be set "CF"

    je end_if ; je is the instruction mnemonic which stand for "jump if equal"


    mov eax, [b]
    cmp eax, 2
    jne skip_c ; "jump if not equal to"


    mov eax, [c]
    cmp eax, 3
    jg skip_d ; "jump if greater." "end_if"

skip_c:
    mov eax, [d]
    cmp eax, 4
    jg end_if ; jump if greater than 

skip_d:
    dec dword [e] ; decrement by 1

end_if:
    ; continue with other code here

