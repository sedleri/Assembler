;Napište program který ze vstupu načte tři čísla (X, Y, Z), a pak
;vypíše hodnoty Y+Z, -X a X-Y-Z, každou na vlastní řádek.

%include "rw32-2022-mingw.inc"

section .data

section .text
_main:

    call ReadInt32
    mov ebx, eax
    call ReadInt32
    mov ecx, eax
    call ReadInt32
    mov edx, eax
    mov eax, 0

    mov eax, ecx
    add eax, edx
    call WriteInt32
    call WriteNewLine
    mov eax, 0

    mov eax, ebx
    neg eax
    call WriteInt32
    call WriteNewLine
    mov eax, 0

    mov eax, ebx
    sub eax, ecx
    sub eax, edx
    call WriteInt32
    call WriteNewLine
    mov eax, 0