%include "rw32-2022-mingw.inc"

section .data

section .text
_main:

    ;X3X1X2X4
    mov eax, 0x44332211
    ror ax, 8
    rol eax, 8
    
    ;X4X1X3X2
    mov eax, 0x44332211
    rol eax, 8
    rol ax, 8
    ror eax, 16
    
    ;X1X3X4X2
    mov eax, 0x44332211
    ror eax, 8
    ror ax, 8
    rol eax, 8
    ror ax, 8
    ror eax, 16
    
    ;X4X1X3X2
    mov eax, 0x44332211
    rol eax, 8
    ror ax, 8
    ror eax, 16
    
    ret