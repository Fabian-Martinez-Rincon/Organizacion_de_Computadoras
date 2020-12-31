; Memoria de Datos
ORG 1000H
 TAB1 DW 1, 12
      DW 25, 48
      DW 51, 20
TAB2 DW 4, 26, 25, 42 
 DW 23, 7, 2, 56
 DW 14, 3, 14, 74
TAB3 DW ? ,?,?,?
 
CANT DB 12
DIR3 DW ?
 ; Memoria de Instrucciones
ORG 2000H
 MOV AX, OFFSET TAB1 
 MOV CX, OFFSET TAB2 
 MOV DIR3, OFFSET TAB3 
 LAZO: MOV BX, AX 
 MOV DX, [BX] 
 MOV BX, CX 
 ADD DX, [BX] 

 MOV BX, DIR3 
 MOV [BX], DX 
 
 ADD AX, 2 
 ADD CX, 2 
 ADD DIR3, 2 
 DEC CANT 
 JNZ LAZO ; Si flag Z no es cero, se repite el lazo
 HLT
 END