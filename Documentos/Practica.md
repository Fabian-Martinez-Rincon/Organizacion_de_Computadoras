Indice
=================

<!--ts-->
   * [Punto Fijo](#Punto_Fijo)
     * [BSS](#Binario_Sin_Signo)
     * [BSS con Parte fraccionaria](#BSS_con_Parte_fraccionaria)
   * [Operaciones Aritmeticas](#Operaciones_Aritmeticas)
     * [Suma](#Suma)
     * [Resta](#Resta) 
   
   
Punto_Fijo
==========

Binario_Sin_Signo
-----------------
Representar el número ```1011``` en notacion decimal

![Imagen11](https://user-images.githubusercontent.com/55964635/147869783-91371f3a-cfd4-4644-acd1-d6adad7d80e1.png)

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

![Imagen2](https://user-images.githubusercontent.com/55964635/147870943-4ffe234b-c665-4fca-a1f6-1c8ed6940cb3.png)

- Se calcula igual que la parte entera, pero los bits a la derecha de la coma tienen exponentes negativos

![Imagen3](https://user-images.githubusercontent.com/55964635/147871918-9f07fa10-a363-4eeb-a77f-17fcc4694efe.png)

- Se calculan los exponentes y se suman las partes que tienen el bit en 1 (Marcados en verde)

![Imagen4 (1)](https://user-images.githubusercontent.com/55964635/147871980-4f1d17c4-6bd8-4ef9-bc3a-b967ff971cf6.png)

Operaciones_Aritmeticas
=======================

Suma
----
- La suma es posicional
- Si la suma supera el maximo numero representable se genera un acarreo como en el sistema decimal

![Imagen6](https://user-images.githubusercontent.com/55964635/147872218-fe191e51-9a19-403f-9f79-1a25d4f04c50.png)

Carry: Es 1 si el resultado de la suma supera el limite maximo

Zero: Es 1 si el resultado es igual a 0


Resta
-----
- Igual que la suma. Pero con el flago ***borrow***
