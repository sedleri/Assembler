; a 8bit
; b 32bit
; c 16bit
; d 16bit
; e 16bit
; q low 32bit of the division
; r division remainder
; q = (a * b + c + 24)/(9 * d + e + 124)
; r = (a * b + c + 24)%(9 * d + e + 124) 
; unsigned

%include "rw32-2022-mingw.inc"

section .data
  
  a db 10
  b dd 2,147,483,647
  c dw 10
  d dw 7
  e dw 7
  q dd 0
  r dd 0

section .text
_main:
  movzx eax, word [d]
  mov ebx, 9
  mul ebx
  movzx ebx, word [e]
  add eax, ebx
  add eax, 124
  mov ecx, eax

  movzx eax, byte [a]
  mov ebx, [b]
  mul ebx
  movzx ebx, word [c]
  add eax, ebx
  adc eax, 24
  cdq

  div ecx

  mov [q], eax
  mov [r], edx
  ret
