;9
ORG 1000H
 NUM1 DW 05678H,01234H 
 NUM2 DW 08765H,04321H
 ;1008h
 suma DW ?,?
 dir_suma dw ?
ORG 2000H
 mov AX, OFFSET NUM1;Le paso la dir de donde comienza num1
 MOV CX, OFFSET NUM2;lo mismo pero con num2
 mov dir_suma, OFFSET suma;reservo una direccion para suma
 mov BX, AX ; Pasamos el valor
 mov DX, [BX] ;Le pasamos a lo que apunta BX (que pase AX)
 mov BX, CX ;pasamos el valor
 ADD DX, [BX] ;Como sumar AX + BX
 mov BX, suma ;a el registro BX le paso suma
 mov [BX],DX ; a lo que apunta suma le paso la suma literal
 
 ADD AX,2 ;Incremento todo en
 ADD CX,2
 ADD suma,2  ;DD
 ;______________________________
 mov BX, AX
 mov DX, [BX]
 mov BX, CX
 ADD DX, [BX]
 mov BX, suma
 mov [BX],DX ;5555h 0101010101010101b
 HLT
END