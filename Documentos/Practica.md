Indice
=================

<!--ts-->
   * [Punto Fijo](#Punto_Fijo)
     * [BSS](#Binario_Sin_Signo)
     * [BSS con Parte fraccionaria](#BSS_con_Parte_fraccionaria)
   * [Operaciones Aritmeticas](#Operaciones_Aritmeticas)
     * [Suma](#Suma)
     * [Resta](#Resta) 
   * [BCH](#Binary_Coded_Hexadecimal) 
   * [BCD](#Binary_Coded_Decimal)
     * [BCD Desempaquetado](#BCD_Desempaquetado)
   
   
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

![Imagen7](https://user-images.githubusercontent.com/55964635/147872700-472e0a37-ccfb-4606-a259-e4933681d5b7.png)

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

![Imagen7 (1)](https://user-images.githubusercontent.com/55964635/147873137-38dc0f51-3e65-4d28-b5a0-6bbebf5a5db5.png)

- Con signo

![Imagen7 (1)](https://user-images.githubusercontent.com/55964635/147873165-573b4191-3f96-4a44-b549-1d0d762243d1.png)

