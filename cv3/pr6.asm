%include "rw32-2022-mingw.inc"

section .data
    db_string db "ISU cviceni 3",0
 
section .text   
CMAIN:
    mov ebp, esp
 
    mov esi, db_string ;Jelikož neprovádíme dereferenci (získaní hodnoty z adresy), ale ukládáme adresu, musíme ve 32 bitovém režimu uložit do 32 bitového registru. 
    mov al,[esi] ;Přesunutí 8 bitové hodnoty z adresy uložené v registru esi do al
 
    call WriteChar ;Výpis hodnoty pomocí funkce z knihovny rw32-2017.inc
    mov al,[esi+1] ;Přesunutí 8 bitové hodnoty z adresy uložené v registru esi posunuté o 1B do al
    call WriteChar ;Výpis hodnoty pomocí funkce z knihovny rw32-2017.inc
    mov al,[esi+2] ;Přesunutí 8 bitové hodnoty z adresy uložené v registru esi posunuté o 1B do al
    call WriteChar 
ret