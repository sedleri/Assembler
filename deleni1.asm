%include "rw32-2022-mingw.inc"

section .data
    X dd 100
    Y dd 300

section .text
_main:
    mov ax, [X]
    mul word [Y]
    mov bx, [X]
    add bx, word [Y] 
    div bx
    call WriteInt32
    ret