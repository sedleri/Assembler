%include "rw32-2022.inc"

section .data
    

section .text
CMAIN:
	push ebp
	mov ebp,esp
	
    mov al, 50
    add al, -100
    add al, -120









    mov al, 100
    add al,1

    ;mov al,x 
    ;add al,y ; ZF = 1 ; SF = 1; nikdy nenastane

    mov al, 1111_1111b
    add al,1 ; carry flag

    mov al, 127
    add al,1 ; overflow flag

    mov al,-100 
    add al,-100 ; CF = 1 ; OF = 1; 

    mov al,255 
    add al,128 ; CF = 1 ; OF = 1; 
  

	pop ebp
	ret
