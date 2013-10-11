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
    jl notLower
    cmp bl, 'z'
    jg notLower
    and bl, 0dfh
    mov [buffer+ecx], bl
notLower:
    cmp ecx, eax
    je write
    inc ecx
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
