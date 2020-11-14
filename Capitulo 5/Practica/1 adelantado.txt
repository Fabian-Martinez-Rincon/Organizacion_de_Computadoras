ORG 1000H
NUM1 DW 8000H ;16 bits, Parte baja
     DW 0004H ;16 bits, Parte alta
NUM2 DW 8000H
     DW 0004H
RESULT DW 0
       DW 0
BIEN DB ? ;100C
MAL DB ? ;100D
ORG 2000H
 
 mov AX, NUM1 ;AX = Parte baja de num1 
 mov CX, NUM2 ;CX = Parte baja de num2
 
 ADD AX, CX ;Los sumo
 
 MOV RESULT,AX
 ;Guardo la parte baja de la suma en la parte baja del resultado
 MOV BX, OFFSET RESULT + 2;Me muevo a la direccion alta de Result
 
 MOV BX, OFFSET NUM1 + 2 ;Me voy a la direccion alta de num1
 MOV AX,[BX] ;Ax = la parte alta de num1
 
 MOV BX, OFFSET NUM2 + 2;Voy a la direccion alta de num2
 MOV CX,[BX] ;CX = Parte alta de num2
 
 MOV BX, OFFSET RESULT + 2
 ADC [BX], AX ;Sumo la parte alta de num1 + el carry por si acaso
 ADC [BX], CX ;Sumo la parte alta de num2
 
 ;Para comprobar de que no de Overflow y de que este bien
 JO SALIO_MAL
 MOV BIEN, 0FFH
 JMP FIN
 SALIO_MAL: MOV MAL, 0FFH
 FIN: HLT
END
