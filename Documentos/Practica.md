Indice
=================

<!--ts-->
   * [Punto Fijo](#Punto_Fijo)
     * [BSS](#Binario_Sin_Signo)
     * [BSS con Parte fraccionaria](#BSS_con_Parte_fraccionaria)
     * [BCS](#Binario_Con_Signo)
     * [Ca1](#Complemento_a_1)
     * [Ca2](#Complemento_a_2)
     * [Ex2](#Exceso)
   * [Punto Flotante](#Punto_Flotante) 
     * [Mantisa Fraccionaria](#Mantisa_Fraccionaria) 
     * [Mantisa Fraccionaria Normalizada](#Mantisa_Fraccionaria_Normalizada)
     * [Rango y Resolución](#Rango_y_Resolucion) 
       * [Punto Flotante](#Punto_Flotante) 
   * [Operaciones Aritmeticas](#Operaciones_Aritmeticas)
     * [Suma](#Suma)
     * [Resta](#Resta) 
   * [BCH](#Binary_Coded_Hexadecimal) 
   * [BCD](#Binary_Coded_Decimal)
     * [BCD Desempaquetado](#BCD_Desempaquetado)
     * [BCD Empaquetado](#BCD_Empaquetado)
   * [Compuertas Logicas](#Compuertas_Logicas)
   * [Mascaras](#Mascaras)
   * [Flags](#Flags)
   
   
Punto_Fijo
==========

Binario_Sin_Signo
-----------------
Representar el número ```1011``` en notacion decimal

![147869783-91371f3a-cfd4-4644-acd1-d6adad7d80e1](https://user-images.githubusercontent.com/55964635/147873375-ba322a88-c324-47c2-93db-c6f5be79e8fd.png)

Si mi sistema de representación tiene ***N*** bits

- Puedo representar 2^***N*** números
- Rango de números: [0 ; 2 ^ ***N*** - 1]
- Resolución: anterior al menor - el menor

```
Nota: El punto fijo no fraccionario siempre va a ser 1 
```

BSS_con_Parte_fraccionaria
--------------------------
- Supongamos que queremos representar el 15,25 en binario.
- La parte entera se hace de forma normal.
- Con la parte fraccionaria se debe multiplicar por 2 hasta que ya no tenga más bits de representacion, o la parte fraccionaria sea 0.


### 4 bits Parte entera y 3 bits en la parte fraccionaria

<table>
<tr>
<td> 15,25 </td> <td> 15,0625  </td>
</tr>
<tr>
<td>

```15``` = ```111```

```0,25 x 2``` = ```0,50```

```0,50 x 2``` = ```1.0```

```15,25``` = ```1111,01```
  
  
</td>
<td>

```15``` = ```111```

```0,625 x 2``` = ```0,125```

```0,125 x 2``` = ```0,25```
  
```0,25 x 2``` = ```0,50```

  
Tengo que frenar ya que solo tengo 3 bits para representar la parte fraccionaria  

  
```15,0625``` = ```1111,000```
 
</td>
</tr>
 </table>
 
- Para representar numeros decimales de forma fraccionaria simplemente se utiliza la coma con los binarios 

![Imagen2](https://user-images.githubusercontent.com/55964635/147873427-8c7341a7-3ed1-4ae0-a4a4-a54cef6fff79.png)

- Se calcula igual que la parte entera, pero los bits a la derecha de la coma tienen exponentes negativos

![Imagen2](https://user-images.githubusercontent.com/55964635/147873450-f7dd21f1-adf8-4d45-9bf4-d11c105758ea.png)


- Se calculan los exponentes y se suman las partes que tienen el bit en 1 (Marcados en verde)

![Imagen2](https://user-images.githubusercontent.com/55964635/147883165-ee8c1eae-a70b-4604-8c0f-1469bf0b5a90.png)

Binario_Con_Signo
=================
Dado ***N*** bits se usa
- El bit más significativo para el signo (0 +, 1 -)
- El resto para el nro
- -27 con 8 bits

![Imagen1](https://user-images.githubusercontent.com/55964635/147886016-28e00247-1ca2-4033-ae05-2df71856660d.png)

### Rango

![Imagen2](https://user-images.githubusercontent.com/55964635/147886085-3b48ca13-9514-4495-8116-b2eee926e5dd.png)

Complemento_a_1
===============
- En el caso de que el bit de signo sea positivo (0) se ***interpreta como BSS normal***
- Si es ***negativo (1)*** hay que:

1) Invertir todos los bits
2) Interpretar como BSS
3) Ponerle el signo negativo a la interpretación

- Representar el ***-9*** en ***Ca1*** en un sistema de 5 bits

![Imagen1](https://user-images.githubusercontent.com/55964635/147886647-71847d67-405d-4ba4-bc97-05bd846e44ce.png)

### Rango

![Imagen1](https://user-images.githubusercontent.com/55964635/147886696-44196d07-caef-4b5d-aa4e-6119aaf7979d.png)

Complemento_a_2
===============
- En el caso de que el bit de signo sea positivo (0) se ***interpreta como BSS normal***
- Si es negativo (1) hay que:
1) Invertir todos los bits
2) Sumar 1 (única diferencia con Ca1)
3) Interpretar como BSS
4) Ponerle el signo negativo a la interpretación

- Representar el -9 en Ca2 en un sistema de 5 bits

![Imagen2](https://user-images.githubusercontent.com/55964635/147886912-53a50b41-20aa-4e5a-96f1-94e1314e734c.png)

### Rango

![Imagen1](https://user-images.githubusercontent.com/55964635/147887133-d7286b9b-5342-4e36-b394-8de83028d5b8.png)

Exceso
======

Se usa un ***exceso*** constante
- Para pasar un binario a decimal
1) Se interpreta como BSS
2) Se le resta el exceso
- Para pasar un decimal a binario
1) Se le suma el exceso
2) Se pasa a BSS 

- En un sistema de ***6*** bits ¿Qué numero representa ***000011*** en ***Ex2***?

```
Exceso = 2 ^(6-1) = 2^5 = 32
```

![Imagen1](https://user-images.githubusercontent.com/55964635/147957966-197e72b1-16b7-45fe-8a83-9fc5a6a35a57.png)

- Representar el ***-9*** en ***Ex2*** en un sistema de ***5*** bits

```
Exceso = 2 ^ (5 - 1) = 2^4 = 16
```

![Imagen1](https://user-images.githubusercontent.com/55964635/147958368-8ea3deb8-93a2-417d-95b3-e2bef7ef3fdf.png)

### Rango

![Imagen1](https://user-images.githubusercontent.com/55964635/147887133-d7286b9b-5342-4e36-b394-8de83028d5b8.png)

Punto_Flotante
==============
Definicion:
- Dividir binario en dos partes: una llamada ***Mantisa (M)*** y otra ***Exponente (E)***. (Puede terner sistemas diferentes)
- Ahora para calcular la siguiente formula

![Imagen1](https://user-images.githubusercontent.com/55964635/147984610-f4f678df-3794-4317-82db-d14695c436cc.png)

B es mi base y siempre vale 2

Sistema 5 bits de ***Mantisa*** y 3 bits de ***Exponente***, ambos en ***BSS*** ¿Que representa el ***01010011***?

![Imagen1](https://user-images.githubusercontent.com/55964635/147984930-823c3a49-799b-49c3-93aa-767b268d1cce.png)

### Ejemplos

![Imagen1](https://user-images.githubusercontent.com/55964635/147985285-1ceead6c-8666-4f7c-918f-566da675c76e.png)

Mantisa_Fraccionaria
--------------------
Puede ser posible que la mantisa sea fraccionaria.

En ese caso, lo unico que se agrega es un 0, delante de la Mantisa y se interpreta como binario fraccionario

![Imagen1](https://user-images.githubusercontent.com/55964635/147985969-e85741b0-208a-4382-9f05-e68ba183cd7d.png)

### Ejemplos

![Imagen1](https://user-images.githubusercontent.com/55964635/147986290-12ce9cc8-8730-4e34-9acf-8436a4254eed.png)

Mantisa_Fraccionaria_Normalizada
================================

### Ejemplos

![Imagen1](https://user-images.githubusercontent.com/55964635/148018938-6e049937-44e6-421e-9eb3-d34775673bae.png)

Pensemos, si todas nuestras ***Mantisas*** comienzan con 0,1... ¿Es necesario almacenar ese  ***1***?

Podria tener un bit mas en la mantisa!

![Imagen1](https://user-images.githubusercontent.com/55964635/148019470-84b6de5a-3cd3-4593-9c8f-8a959c3fea89.png)

Asi nace la ***Mantisa Fraccionaria Normalizada con Bit Implicito!*** Donde ***todas las mantisas*** comienzan con ***0,1***

![Imagen1](https://user-images.githubusercontent.com/55964635/148019914-e37b285a-067e-49ea-ae91-807931dd5239.png)

Rango_y_Resolucion
==================

![Imagen1](https://user-images.githubusercontent.com/55964635/148021512-ea2bc6c5-9ed4-4c63-9ab4-056e5d0b09fe.png)

Si mi sistema de representacion tiene ***N*** bits.

- Puedo representar ***2^N*** numeros (igual que en Punto Fijo!)
- El ***rango va a ser [Minimo ; Maximo positivo]***

### Numero sin signo

```
Ejemplo: 5 bits de mantisa BSS y 3 de exponente BCS
```

***Minimo***

- Mantisa Minima Positiva 00000 (0)
- Exponente Minimo negativo 111 (-3)
- Resultado ```0 * 2^(-3) = 0 ```

***Maximo Positivo***

- Mantisa Maxima Positiva 11111 (31)
- Exponente Maximo Positivo 011 (3)
- Resultado ```31 * 2 ^ 3 = 31 * 8 = 248 ```

```
Rango : [0 ; 248]
```

### Numero con signo

```
Ejemplo: 5 bits de mantisa BCS y 3 de exponente BCS
```

***Minimo Negativo***

- Mantisa Minima Negativa 11111 (-15)
- Exponente Maximo Positivo 111 (7)
- Resultado ```-15 * 2 ^ 7 = -15 * 128 = -1920 ```

***Maximo Positivo***

- Mantisa Maxima Positiva 01111 (15)
- Exponente Maximo Positivo 111 (7)
- Resultado ```15 * 2 ^ 7 = 15 * 128 = 1920 ```

```
Rango : [-1920 ; 1920]
```

Punto_Flotante
--------------
A diferencia del Punto fijo, la resolucion en Punto Flotante cambia a lo largo de la linea!

Pero sigue siendo la misma formula. La resta de dos numeros consecutivos. En este caso, de ***las Mantisas***

### Resolucion

```
Ejemplo: 5 bits de mantisa BCS y 3 de exponente BCS
```

Resolución en el ***Extremo inferior Positivo***: necesito Mantisas ***Minimas Positivas*** y un Exponente ***Minimo Negativo***

- Exponente Minimo Negativo : 111 (-3)
- Mantisa Minima Positiva 00000
- Mantisa anterior 00001
- Resolución: ```(00001 - 00000) * 2^(-3) = 1 * 2^(-3) = 0,125```

Operaciones_Aritmeticas
=======================


Suma
----
- La suma es posicional
- Si la suma supera el maximo numero representable se genera un acarreo como en el sistema decimal

![147869783-91371f3a-cfd4-4644-acd1-d6adad7d80e1](https://user-images.githubusercontent.com/55964635/147883212-201fa70b-8830-4c5d-b97b-14923bf5b2eb.png)


Carry: Es 1 si el resultado de la suma supera el limite maximo

Zero: Es 1 si el resultado es igual a 0


Resta
-----
- Igual que la suma. Pero con el flago ***borrow***


![Imagen2](https://user-images.githubusercontent.com/55964635/147883270-dfd3ab3e-3776-4df0-8459-91e7490c4a8f.png)

Binary_Coded_Hexadecimal
========================
- Digitos hexadecimales en binario
- Para representar un digito hexadecimal se utilizara siempre 4 bits
- Se asocia cada digito con su valor en binario puro



![147869783-91371f3a-cfd4-4644-acd1-d6adad7d80e1](https://user-images.githubusercontent.com/55964635/147883313-25731858-8731-4d41-b80d-8179a6114ca2.png)


Binary_Coded_Decimal
====================
- Digitos decimales en binario
- Para representar un digito en decimal se requeriran 4 bits
- Se asocia cada digito con su valor binario puro
- Hay dos tipos
  - BCD ***desenpaquetado:*** 1 byte por digito
  - BCD ***empaquetado:*** 4 bits por digito

BCD_Desempaquetado
------------------
8 bits (1 byte) por digito:

- Los 4 menos significativos numero
- Los 4 mas significativos signo
 - ```+``` 1100 (la ``C`` en hexadecimal) 
 - ```-``` 1101 (la ``D`` en hexadecimal) 
 - El signo ***solo se pone en el ultimo digito***. El resto se rellena con 1111 (F)

- Sin signo

![Imagen2](https://user-images.githubusercontent.com/55964635/147883334-9237bae4-186d-4f9a-8cd7-dd484a462fa7.png)


- Con signo

![147873165-573b4191-3f96-4a44-b549-1d0d762243d1](https://user-images.githubusercontent.com/55964635/147883359-bb03075f-e904-4155-9b23-c174af704a15.png)

BCD_Empaquetado
---------------
- 4 bits (medio byte) por digito:
- Para manejar valores con ***signo*** se utilizan ***los 4 bits menos significativos***

El signo lleva la misma codificacion que el BCD Desempaquetado:
- C +
- D -

- Con signo

![Imagen1](https://user-images.githubusercontent.com/55964635/147883581-981887c8-0be8-45d9-8773-d72d3f01c16c.png)

```
En el ultimo caso completamos con 0 para que siempre queden bytes completos
```

Compuertas_Logicas
==================
![puertas-logicas](https://user-images.githubusercontent.com/55964635/147883811-80d097e4-71e4-4025-95d3-bfb81fc94b22.png)

Reglas
------

![Imagen2](https://user-images.githubusercontent.com/55964635/147883919-81dbe448-0f79-4869-913c-04e246657956.png)

Mascaras
========

Son cadenas de bits que aplicamos a otra cadena. Los usas más comunes de las máscaras de bits son

![Sin título-1](https://user-images.githubusercontent.com/55964635/147884239-1a76b67e-4b59-42ef-a97e-8aa2fe0d30cc.png)

***Importante!*** Para tener en cuenta:

- Los 1s en un ```OR``` ***fuerzan a 1*** cualquier bit
- Los 0s en un ```AND``` ***fuerzan a 0*** cualquier bit
- Los 1s en un ```XOR``` ***Invierten*** cualquier bit

### Ejemplos

![Imagen5](https://user-images.githubusercontent.com/55964635/147884536-ec3e8925-5342-4dc2-8679-d81fe93a3542.png)

![Imagen6](https://user-images.githubusercontent.com/55964635/147884570-7192c54b-145a-4d2c-a190-cef817c45db5.png)

![Imagen7](https://user-images.githubusercontent.com/55964635/147884662-d27a2bca-6fde-44e7-8066-96712394cfa1.png)

Flags
=====

Son indicadores que establece ***automaticamente*** el procesador despues de cada operacion ***aritmetica*** o ***logica***

- ***C*** (Carry) : Carry o Borroy (Suma o Resta respectivamente). Cuando son operaciones con BSS, C = 1 indica overflow
- ***Z*** (Zero) : Es 1 si el resultado es cero
- ***N*** (Negativo) : Es igual al bit ***mas*** significativo del resultado
- ***V*** (Overflow) : Es 1 si hay condicion fuera de rango (o desborde). Se analiza en Ca2 independientemente del sistema de representacion que se este utilizando

### Las condiciones que generan overflow son las siguiente:



<table>
<tr>
<td> Suma </td> <td> Resta  </td>
</tr>
<tr>
<td>

![Imagen1](https://user-images.githubusercontent.com/55964635/147959492-82bdda88-6fc8-4a8c-b1c5-a78c0385bf54.png)

  
</td>
<td>

![Imagen1](https://user-images.githubusercontent.com/55964635/147959602-c8661054-86a5-4392-b40e-389fd25b9f24.png)

 
</td>
</tr>
 </table>

