;Variables
org 1000h
NUM0 DB 0CAH
NUM1 DB 0
NUM2 DW ?
NUM3 DW 0ABCDH
NUM4 DW ?

;Programa
org 2000h
mov BL, NUM0  ;Inmediato
mov BH, 0FFH    ;Registro
mov CH, BL      ;Registro
mov AX, BX      
mov NUM1, AL
mov NUM2, 1234h
mov BX, OFFSET NUM3
mov DL, [BX]
mov AX, [BX]
mov BX, 1006h
mov WORD PTR [BX], 0CDEFH
HLT
end