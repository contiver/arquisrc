extern printf
section .text
GLOBAL main
main:
    push ebp
    mov ebp, esp ; create stackframe
    push string
    push 4
    push text
    call printf
    pop eax
    pop ebx
    pop ecx
    mov esp, ebp ; destroy stackframe
    pop ebp
    ret
section .data
    text db "%d %s", 0
    string db "Hola mundo",0
