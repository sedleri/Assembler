; a 8bit
; b 32bit
; c 16bit
; d 16bit
; e 16bit
; q low 32bit of the division
; r division remainder
; q = (a * b + c - 26)/(13 * d + e - 1033)
; r = (a * b + c - 26)%(13 * d + e - 1033) 
; signed


%include "rw32-2022-mingw.inc"

section .data
  a db -1
  b dd -1
  c dw -1
  d dw -1
  e dw -1
  q dd 0
  r dd 0

section .text
_main:
  movsx eax, byte [a]
  imul eax, dword [b]
  movsx ebx, word [c] 
  add eax, ebx
  mov ecx, 26
  sub eax, ecx
  mov ebx, eax
  
  mov ecx, 13
  movsx eax, word [d]
  imul eax, ecx
  mov edi, edx
  movsx ecx, word [e]
  add eax, ecx 
  mov ecx, 1033
  sub eax, ecx
  mov ecx, eax
  
  mov eax, ebx
  cdq
  idiv ecx

  mov [q], eax
  mov [r], edx

  ret