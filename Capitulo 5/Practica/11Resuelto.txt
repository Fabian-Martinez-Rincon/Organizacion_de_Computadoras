;programa7
ORG 1000H
 NUM1 DB 50
 NUM2 DB 10
 RESUL DW ?
; Subrutina SUB1
ORG 3000H
 SUB1: MOV DX, 0 ;Inicializo DX en 0
 CMP AL, 0 ;AL - 0
 JZ FIN ;Si AL - 0 = 0 termino el programa
 CMP CL, 0
 JZ FIN ;Si CL - 0 = 0 termino el programa
 MOV AH, 0 ; Pongo en 0 la parte alta del registro AH
 LAZO: ADD DX, AX ;Sumo num1 a DX
 DEC CX   ;Decremento la cantidad de elementos en NUM2
 JNZ LAZO ;Cuando me quedo sin numeros ya paro el bucle
FIN: RET
; Programa principal
ORG 2000H
 MOV AL, NUM1  ;A AL le paso 150
 MOV CL, NUM2 ; A CL le paso 10
 CALL SUB1 ;Llamo a la funcion SUB1
 MOV RESUL, DX ;Paso el resultado a DX
 HLT
END
;A Ambos programas sirven para multiplicar y el resultado queda
;almacenado en DX
;B) El programa 7 es el que realiza la tarea mas rapido ya que el
;loop tiene menos instrucciones para ejecutar
;El tiempo de ejecucion depende de ambos, si cualquiera de los dos
;vale 0, se detiene el programa y tambien de lo grande que sea num1
;d) RET es para retornar al programa principal
;e) Retorna a la misma direccion de donde fue llamado por 
;ultima vez