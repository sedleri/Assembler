%include "rw32-2022-mingw.inc"

section .data
    

section .text
CMAIN:
	push ebp
	mov ebp,esp
	
    mov al, 1
    add al,1

    mov al,100
    mov al, 0
    mov al, -100
    mov al, 256

	pop ebp
	ret
