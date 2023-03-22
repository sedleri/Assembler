%include "rw32-2022-mingw.inc"

section .data

; db - define byte - 8 bit
; dw - define word - 16 bitu
; dd - define double word - 32 bitu

    ;x db 1,2,3,4 ; inicialozovana data
    y dd 1200000000,23,36,49 ; inicialozovana data 
    k dd 7

    
section .text
CMAIN:
	push ebp
	mov ebp,esp
	
    ; for (i=0; i<4; i++) a=a+y[i]
    ; a = y[0]
    ; a += y[1]
    ; a += y[2]
    ; a += y[3]

        
    mov eax,[y + 0*4] ; [y+0]
    add eax,[y + 1*4]
    add eax,[y + 2*4]
    add eax,[y + 3*4]
    
    mov ebx, 0
    mov eax,[y +ebx*4] ; [y+0]
    add ebx, 1

    add eax,[y+ebx*4]
    add ebx, 1

    add eax,[y+ebx*4]
    add ebx, 1
    
    add eax,[y+ebx*4]

    mov ebx, y
    mov eax,[ebx] ; [y+0]
    add ebx, 4
    
    add eax,[ebx] ; [y+1]
    add ebx, 4

    add eax,[ebx] ; [y+2]
    add ebx, 4

    add eax,[ebx] ; [y+2]

 
    

    pop ebp
	ret
