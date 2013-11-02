; TP4 ejercicio 14

extern printf
section .text
GLOBAL main
main:
    push    ebp         ;create
    mov     ebp, esp    ;stackframe
    push    string
    push    4
    push    text
    call    printf
    mov     esp, ebp    ;destroy
    pop     ebp         ;stackframe
    ret
section .data
    text    db  "%d %s", 0
    string  db  "Hello world", 0

;Normally you would pop the three values stacked as parameters
;for printf after it was called by doing: add esp, 12
;but since in this particular case just after that the stackframe
;is destroyed, it was deemed unnecessary
