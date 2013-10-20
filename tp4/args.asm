; TP4 ejercicio 17

section .text
extern printf
GLOBAL main
main:
    push ebp
    mov ebp,esp
    mov esi, [ebp+8]    ; arguments amount:  argc
    mov ebx, [ebp+12]   ; pointer to the 2nd argument in  the arguments table: argv
    add ebx, 4          ; start from argv[1] (ignore the progam name)
loop:
    push DWORD [ebx]
    call printf
    add esp, 4          ; pop
    push space
    call printf
    add esp, 4
    add ebx, 4
    sub esi, 1
    cmp esi, 1
    jge loop
exit:
    push cr
    call printf
    add esp, 4
    leave
    ret

section .data
    space db ' ', 0
    cr db 10, 0       ; 10 equals the \n character
