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
   * [Operaciones Aritmeticas](#Operaciones_Aritmeticas)
     * [Suma](#Suma)
     * [Resta](#Resta) 
   * [BCH](#Binary_Coded_Hexadecimal) 
   * [BCD](#Binary_Coded_Decimal)
     * [BCD Desempaquetado](#BCD_Desempaquetado)
     * [BCD Empaquetado](#BCD_Empaquetado)
   * [Compuertas Logicas](#Compuertas_Logicas)
   * [Mascaras](#Mascaras)
   
   
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

![Imagen1](https://user-images.githubusercontent.com/55964635/147886016-28e00247-1ca2-4033-ae05-2df71856660d.png)



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


