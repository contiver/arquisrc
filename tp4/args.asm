; TP4 ejercicio 17

section .text
extern printf
GLOBAL main
main:
    push ebp
    mov ebp,esp
    mov eax, [ebp+8]    ; arguments amount:  argc
    mov ebx, [ebp+12]   ; pointer to the arguments table: argv
    xor esi,esi         ; initialize counter to 0
loop:
    push DWORD [ebx]
    call printf
    add esp, 4          ; pop
    add ebx, 4
    add esi, 1
    cmp eax,esi
    jge loop
exit:
    leave
    ret
