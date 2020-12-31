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
 LAZO: ADD DX, AX
 DEC CX
 JNZ LAZO
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
;El tiempo de ejecucion depende de NUM2
;