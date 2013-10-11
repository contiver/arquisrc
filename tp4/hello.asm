section .text
GLOBAL main
main:
    mov edx, longitud   ; La longitud de la cadena
    mov ecx, cadena     ; El puntero a la cadena
    mov ebx, 1          ; FileDescriptor :stdout
    mov eax, 4          ; Systemcallwrite
    int 80h
    mov eax, 1          ; Systemcallexit
    mov ebx, 0          ; Retornar0alSO
    int 80h
section .data
    cadena db "Hola Mundo!"
    longitud equ $-cadena
section .bss
    placeholder resb 10
