ORG 1000H
 TABLA DB 2,4,6,8,10,12,14,16,18,20
 FIN DB ?
 TOTAL DB ?
 MAX DB 13
ORG 2000H
 MOV AL, 0 ;Inicializo el contador de elementos menores iguales
 MOV CL, OFFSET FIN-OFFSET TABLA ;Saco los elementos de la tabla 
 MOV BX, OFFSET TABLA ;Le paso la posicion de tabla (1000h)
 MOV DL, MAX  ;Inicializo Max que es 13
 COMPARA: CMP [BX],DL ;A lo que apunta BX le resto 13
 JS MENOR_IGUAL ;Si [BX] - 13 es negativo lo mando a la etiqueta
 JZ MENOR_IGUAL ; Si es igual tambien lo mando a la etiqueta
 JMP SIGUE   ;Si no se cumple ningunas, salto a sigue e incremento en BX
 MENOR_IGUAL: INC AL;El contador
 SIGUE: INC BX
 DEC CL ;Decrenebto hasta que los elementos sean 0
 JNZ COMPARA  ;Si el contador no llego a 0 vuelvo a comparar
 mov TOTAL,AL ;La cantidad de elementos menores iguales los paso a total
 HLT
END
