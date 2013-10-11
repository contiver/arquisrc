;TP4 ejercicio 16

section .text
GLOBAL my_Pid
my_Pid:
    mov eax, 20     ; sys_getpid
    int 80h
    ret
