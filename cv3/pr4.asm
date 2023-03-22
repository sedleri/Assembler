%include "rw32-2022-mingw.inc"

section .data

; db - define byte - 8 bit
; dw - define word - 16 bitu
; dd - define double word - 32 bitu

    x db 1,2,3,4 ; inicialozovana data
    y dw 1,2,3,4
    z dd 8
    
section .text
CMAIN:
	push ebp
	mov ebp,esp
	
    ; char 1 byte
    mov al,[x] ; [x+0]
    mov al,[x + 1 ] ; al = x[1]

    ; short 2 byty
    mov ax,[y + 0*2] ; [] -- "dereference"
    mov ax,[y + 1*2 ] ; ax = y[1]

    ; double word 4 byty
    mov eax,[z + 0*4]
    mov eax,[z + 4*4]
   
    
    pop ebp
	ret
