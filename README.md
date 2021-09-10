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
```
