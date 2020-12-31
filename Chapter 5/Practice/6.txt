ORG 1000H
TABLA DB 2,4,6,8,10,12,14,16,18,20 ;Se ejecuta la misma cantidad de numeros que teiene la tabla
FIN DB ? ;Lo empiezo con basura 1010h
TOTAL DB ? ;Tambien tiene basura 1011h
MAX DB 13 ; 1012h
 ORG 2000H
 MOV AL, 0  ;Pongo el registro AL en 0
 MOV CL, OFFSET FIN-OFFSET TABLA ;Resta ambas direcciones
 ;100Ah-1000h
 ;El resultado nos da la cantidad de elementos que tiene tabla
 MOV BX, OFFSET TABLA ;Mandamos al registro BX la direccion de tabla (1000h)
SUMA: ADD AL, [BX];Sumo a lo que apunta 1000h se lo suma al registo AL
 INC BX ;Incremento la posicion de memoria para ir a 1001h
 DEC CL ;Decremento el contador de elementos que tengo en la tabla
 JNZ SUMA ;Mientras nuestro contador no esta en cero, que se vuelva a ajecutar
 HLT
END
; El resultado final es 6E (110 en decimal) 