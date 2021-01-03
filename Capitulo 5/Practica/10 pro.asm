; Memoria de Datos
ORG 1000H
 TAB1 DW 1, 1, 1, 1, 1, 1;6 Elementos de 16 bits c/u 
 TAB2 DW 2, 2, 2, 2, 2, 2
 TAB3 DW ?, ?, ?, ?, ?, ?;Guardo las direcciones para el resultado
 
 Contador DB 6 ;Para recorrer la tabla 
 
 DIRECCION DW ?  ;Es solo para no perder la direccion de TAB3

ORG 2000H
 MOV AX, OFFSET TAB1 ;Guardo la dir de Tab1 en AX
 MOV CX, OFFSET TAB2 ;Guardo la dir de Tab2 en CX
 MOV DIRECCION, OFFSET TAB3;Guardo la dir de Tab3 en DIRECCION
 
 BUCLE: MOV BX, AX ;Copio AX en BX
 MOV DX, [BX] ;Copio el contenido de la direccion BX
 MOV BX, CX ;Copio CX en BX
 ADD DX, [BX];Sumo TAB1 con TAB2
 
 MOV BX, DIRECCION ;Copio en BX la direccion de TAB3
 MOV [BX], DX ;A TAB3 le paso la suma de TAB1 + TAB2
 
 ADD AX, 2 ;Como tengo 2 bytes por numero, avanzo sumando 2
 ADD CX, 2 ;x2
 ADD DIRECCION, 2 ;x3
 
 DEC Contador; Repito para todos los numeros de la tabla
 JNZ BUCLE ;Si el flag Z no es 0, vuelvo a ejecutar
 HLT
END