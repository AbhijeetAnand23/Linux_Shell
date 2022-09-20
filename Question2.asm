global main
extern scanf, printf

section .data
    format1: db "%d", 0
    format2: db "%s", 0
    message1: db "Enter the Integer : ", 0
    message2: db "Enter the String : ", 0
    printInt: db "The entered Integer is : %d", 10, 0
    printStr: db "The entered String is : %s", 10, 0
    st times 100 db 0

section .text

main:
    push rbp
    mov rbp, rsp
    sub rsp, 16

    xor eax, eax
    lea rdi, [message1]
    call printf

    lea rdi, [format1]
    lea rsi, [n]
    xor eax, eax
    call scanf

    lea rdi, [printInt]
    mov edx, [n]
    xor eax, eax
    call printf


    xor eax, eax
    lea rdi, [message2]
    call printf

    lea rdi, [format2]
    lea rsi, [st]
    xor eax, eax
    call scanf

    lea rdi, [printStr]
    lea rsi, [st]
    xor eax, eax
    call printf

    add rsp, 16
    leave
    ret

section .bss
    n resb 4