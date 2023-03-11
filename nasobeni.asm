%include "rw32-2018.inc"

section .data
   X db 100
   Y db 200
   Z dw 300

section .text
_main:
    mov al, [X]
    mul byte [Y]
    mul word [Z]
    shl eax, 16
    mov ax, dx
    rol eax, 16
    call WriteInt32
    ret