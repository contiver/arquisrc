section .text
GLOBAL _start
_start:
        mov eax, 4
        mov ebx, 1
        mov ecx, num
        mov edx, 2
        int 80h
cycle:
        mov eax, [num]
        sal eax, 1
        mov [num], eax
        mov eax, 4
        int 80h
        jnc cycle
exit:
        mov eax, 1
        mov ebx, 0
        int 80h
section .data
        num: dw 49
        lg equ $-num
