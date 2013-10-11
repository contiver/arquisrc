;TP4 ejercicio 2

section .text
GLOBAL _start
_start:
    mov eax, 2         ; sys_fork
    mov ebx, 0         ; NULL
    int 80h
    cmp eax, 0
    je son
    mov edx, length
    mov ecx, string
    mov ebx, 1
    mov eax, 4
    int 80h
    jmp exit
son:
    mov edx, length2
    mov ecx, string2
    mov ebx, 1
    mov eax, 4
    int 80h
exit:
    mov eax, 1
    mov ebx, 0
    int 80h
section .data
    string db "I'm the father"
    length equ $-string
    string2 db "I'm the son"
    length2 equ $-string2
