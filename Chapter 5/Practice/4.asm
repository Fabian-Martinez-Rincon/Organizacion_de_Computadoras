
ORG 1000H
 A DB 4
 B DB 8
 C DB ?
org 2000h
  MOV AL, A
  MOV BL, B
  MOV CL, C;Esta mas al pedo que madre en navidad
  CMP AL,BL
  JS MENOR
  MOV C,BL
  JMP TERMINAR
  MENOR: MOV C,AL
  TERMINAR:HLT
 END