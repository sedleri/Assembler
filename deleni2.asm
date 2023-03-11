%include "rw32-2022-mingw.inc"

section .data
    K db 10
    L db 20
    M db 2
    N db 3
    V dw 0
    Z dw 0

section .text
_main:
    mov al, byte [K]
    add al, byte [L]
    cbw
    add ax, 100
    mov bx, ax
    mov al, byte [M]
    mul byte [N]
    mov cx, ax
    mov ax, bx
    cwd
    div cx
    call WriteInt8
    call WriteNewLine
    mov word [V], ax
    mov ax, dx
    call WriteInt8
    mov word [Z], ax
    
    ret