; TP4 ejercicio 5

section .text
GLOBAL _start
_start:
    mov eax, 3          ;sys_read
    xor ebx, ebx        ;File descriptor 0
    mov ecx, buffer
    mov edx, 64
    int 80h
    xor ecx, ecx
getLetter:
    mov ebx, [buffer+ecx]
    cmp bl, 'a'
    jl notLower
    cmp bl, 'z'
    jg notLower
    and bl, 0dfh        ;change the letter to uppercase
    mov [buffer+ecx], bl
notLower:
    cmp ecx, eax
    je write
    add ecx, 1
    jmp getLetter
write:
    mov ecx, buffer
    mov ebx, 1
    mov eax, 4
    int 80h
end:
    mov eax, 1
    xor ebx, ebx
    int 80h
section .bss
    buffer resb 64
