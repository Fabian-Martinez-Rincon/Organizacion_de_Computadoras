<h1 align="center">Organización de Computadoras </h1>
<div align="center">
<img src="https://media.giphy.com/media/11LK0CKzYtkaic/giphy.gif?cid=ecf05e47q1771mvp65emyjz7yd60iq2d0jy5awmuqxxdrr6q&rid=giphy.gif&ct=g"/>
 </div>
<br>

1- El Programa 1 utiliza una instrucción de transferencia de datos (instrucción MOV) con diferentes modos de direccionamiento para hacer referencia a sus operandos. Ejecutar y analizar cada instrucción en el Simulador MSX88 observando el flujo de información a través del BUS DE DATOS, el BUS DE DIRECCIONES, el BUS DE CONTROL, el contenido de los REGISTROS, de las posiciones de MEMORIA accedidas, de las operaciones en la ALU, etc...

a) Explicar detalladamente qué hace cada instrucción MOV del programa anterior, en función de sus operandos y su modo de direccionamiento.

b) Confeccionar una tabla que contenga todas las instrucciones MOV anteriores, el modo de direccionamiento y el contenido final del operando destino de cada una de ellas.

c) Notar que durante la ejecución de algunas instrucciones MOV aparece en la pantalla del simulador un registro temporal denominado “ri”, en ocasiones acompañado por otro registro temporal denominado “id”. Explicar con detalle que función cumplen estos registros.
```Assembly
;Variables
org 1000h
NUM0 DB 0CAH ;1000h
NUM1 DB 0  ;1001h
NUM2 DW ? ; 1002h y 1003h
NUM3 DW 0ABCDH ;1004h y 1005h
NUM4 DW ?  ;1006h y  1007h

;Programa
org 2000h
mov BL, NUM0  ;BL = CA
mov BH, 0FFH    ;BH = FF
mov CH, BL      ;CH  = CA
mov AX, BX     ; AX = BX(BL:CA,BH:FF)  = CA,FF
mov NUM1, AL ;1001h = CA
mov NUM2, 1234h ;1002h = 34h y 1003H = 12h
mov BX, OFFSET NUM3 ;BX = 1004h
mov DL, [BX] ;DL = CD (Lo que apunta 1004h)
mov AX, [BX] ; AH=AB, AL=CD
mov BX, 1006h ;BX = 1006h
mov WORD PTR [BX], 0CDEFH ;1007h=CD, 1006h = EF
HLT
end
```
