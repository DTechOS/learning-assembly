section .text
global _start

_start:
    mov ecx, 11      ; number of characters to encrypt
    mov eax, 23
    mov ebx, 5
    xor edx, edx
    div ebx

loop1:
    push ecx

    mov ebx, msg    ; start of message
    add ebx, ecx
    sub ebx, 1
    mov al, [ebx]
    xor al, dl
    mov [ebx], al
    pop ecx
    loop loop1

    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80        ; print message

    mov eax, 1
    int 0x80        ; exit

section .data

msg db "Kfool8Tlqog", 13, 10
len equ $ - msg
