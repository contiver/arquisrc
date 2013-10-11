; TP4 ejercicio 5 (primer intento)

section .text
GLOBAL _start
_start:
    mov eax, 3 ; Read
    mov ebx, 0 ; File descriptor 0
    mov ecx, buffer
    mov edx, 64
    int 80h
    mov ecx, 0
getLetter:
    mov ebx, [buffer+ecx]
    cmp bl, 'a'
    jge upperBound
cicle:
    inc ecx
    cmp ecx, eax
    je write
    jmp getLetter
upperBound:
    cmp bl, 'z'
    jg cicle
toCaps:
    sub bl, 20h
    mov [buffer+ecx], bl
    jmp getLetter
write:
    mov ecx, buffer
    mov ebx, 1
    mov eax, 4
    int 80h
end:
    mov eax, 1
    mov ebx, 0
    int 80h
section .bss
    buffer resb 64
