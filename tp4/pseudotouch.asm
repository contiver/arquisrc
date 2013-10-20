section .text
Global pseudotouch
pseudotouch:
    push esp
    mov ebp, esp
    mov ebx, [ebp+8]
    mov ecx, [ebp+12]
    mov eax, 8
    int 80h
    leave
    ret
