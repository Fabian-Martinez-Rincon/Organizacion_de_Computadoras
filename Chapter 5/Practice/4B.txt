ORG 1000H
 A DB 4
 B DB 8
 C DB ?
org 2000h
  MOV AL, A
  MOV BL, B
  MOV CL, C;Esta mas al pedo que madre en navidad
  CMP AL,BL
  JZ IGUAL
  MOV C,BL
  JMP TERMINAR
  IGUAL: MOV C,AL
  TERMINAR:HLT
 END