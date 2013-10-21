;TP4 ejercicio 3

section .text
GLOBAL _start
_start:
    mov eax, 162        ; sys_nanosleep
    mov ebx, seconds
    xor ecx, ecx
    int 80
;exit
    mov eax, 1
    xor ebx, ebx
    int 80h
section .data
    seconds dq 7,       ; seconds
               0        ; nanoseconds

