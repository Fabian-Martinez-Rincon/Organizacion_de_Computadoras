 ORG 2000H ;empiezo en la 2000
 MOV AX, 1  ;Al registro le pongo 1 en AL
 MOV BX, 1000H  
CARGA: MOV [BX], AX ; A la direccion 1000H mando 1 que es AX
 ADD BX, 2 ; A 1000h le sumo 2h= 1002h
 ADD AX, AX ;hago 1 + 1 =2
 CMP AX, 200 ; resto Ax - 200
 JS CARGA  ; Vuelve a carga hasta que Ax-200 sea positivo
 HLT
END
;1,2,4,8,16,32,64,128,256