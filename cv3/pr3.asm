%include "rw32-2022-mingw.inc"

section .data

; db - define byte - 8 bit
; dw - define word - 16 bitu
; dd - define double word - 32 bitu

; zacatek promenne p_ -- pointer
    p_x db 1      ; inicialozovana data
    p_y dw 1000   ; hexa 0x0F, 0Fh
    p_z dd 65     ; globalni promenne, pristupne z celeho soubory
    s db "ahoj",0 ; 'a','h','o','j', 0
    ; data v pameti poskladana hned za sebou
    ; p_z = p_x + 3 

section .text
CMAIN:
	push ebp
	mov ebp,esp
	
    ; cteni promenne z pameti
    ; mov kam, odkud ; odkud - registr, pamet; kam  - registr, pamet, konstanta
    mov al,[p_x] ; [] -- "dereference"
                 ; do al presunu hodnotu z adresy x
    ;mov al, [5] ; nefunguje, pristupuju do adresy kam nemuzu
    mov al, [p_x+1]
    mov al, [p_x+2]
    mov al, [p_x+3]
    mov al, [p_y]
    mov al, [p_z]
    ; velikost al 1 byte
    mov al, [p_x]
    mov ax, [p_y]
    mov eax, [p_z]

    ; zapis do pameti

    ;mov [p_y], axp_z 
    mov ax, [p_y]
    mov [p_x], al
    mov [p_x], ax

	;nulovani registru pred operacemi 
    mov eax, 0
    
    pop ebp
	ret
