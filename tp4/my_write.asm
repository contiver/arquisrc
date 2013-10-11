;TP4 ejercicio 15
global my_write
section .text
my_write:
    enter
    mov edx, [ebp+16] ; 3rd arg
    mov ecx, [ebp+12] ; 2nd arg
    mov ebx, [ebp+8]  ; 1st arg
    mov eax, 4
    int 80h
    leave
    ret

; Note that on line 8 it's ebp+8, that's because call pushes the RET value
; into the stack (4 bytes), and later ebp (anoter 4 bytes) is pushed on the
; stackframe creation, leaving the first argument at ebp+8
