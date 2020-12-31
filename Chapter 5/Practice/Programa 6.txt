;programa6
ORG 1000H
 NUM1 DB 50
 NUM2 DB 5
ORG 2000H
 MOV AL, NUM1 ;Paso a AL 150
 CMP AL, 0 ;150 - 0 
 JZ FIN ;Si el resultado es 0 termina el programa
 MOV AH, 0 ;Inicializo AH para que no tenga basura
 MOV DX, 0 ;Lo mismo con DX
 MOV CL, NUM2 ;Paso lo que tiene NUM2 a CL
 LOOP: CMP CL, 0 ;Hace 10-0
 JZ FIN  ;Si CL-0 es 0 entonces termina el programa
 ADD DX, AX  ;a dx le sumo lo que tengo en AX
 DEC CL ;voy decrementando num1
 JMP LOOP;Vuelve siempre al loob si es que no salta para terminar
 FIN: HLT
END