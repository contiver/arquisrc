;TP4 ejercicio 3

section .text
GLOBAL _start
_start:
    mov eax, 162        ; sys_nanosleep
    mov ebx, seconds
    mov ecx, 0
    int 80
;exit
    mov eax, 1
    mov ebx, 0
    int 80h
section .data
    seconds dq 7,       ; seconds
               0        ; nanoseconds

