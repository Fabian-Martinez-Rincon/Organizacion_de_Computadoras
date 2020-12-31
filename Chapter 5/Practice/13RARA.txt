; Memoria de Datos
ORG 1000H
 FRASE DB "Organizacion y la Computacion"  
 FIN_FRASE DB ?

ORG 2000H
 MOV BX, OFFSET FRASE ; Paso la direccion en donde comienza
 MOV DL, 0 ; Inicializo en cero
 REPETIR: MOV AL, [BX] ;Tomo el elemento actual de la frase
  CMP AL, 61H ;Lo comparo con la letra "a"
  JNZ NO_ES_UNA_AC; SI no es una "a", no incremento el contador
  INC BX ;Paso a la siguiente letra
  MOV CX, [BX] ;Le paso el contenido de BX
  DEC BX ;Decremento por las dudas
  CMP CL, 63H ; ;Comparo la siguiente letra con la "c"
  JNZ NO_ES_UNA_AC
  INC DL;El lugar en donde incremento los caracteres a
  NO_ES_UNA_AC:INC BX;Voy a la siguiente letra
  CMP BX, OFFSET FIN_FRASE ;Me fijo si llegue al final
  JNZ REPETIR
 HLT
END