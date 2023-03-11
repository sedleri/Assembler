%include "rw32-2022-mingw.inc"

section .data
    ; zde budou vase data

section .text
_main:
    mov eax, 0x12345678
    call WriteHex32
    call WriteNewLine
    ror ax, 8
    call WriteHex32
    call WriteNewLine
    ror ah, 4
    call WriteHex32
    call WriteNewLine
    rol eax, 12
    call WriteHex32
    call WriteNewLine
    ror eax, 8
    shr ax, 8
    call WriteHex32
    call WriteNewLine

    
    ret