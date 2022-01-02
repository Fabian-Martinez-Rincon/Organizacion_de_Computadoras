Indice
=================

<!--ts-->
   * [Punto Fijo](#Punto_Fijo)
     * [BSS](#Binario_Sin_Signo)
     * [BSS con Parte fraccionaria](#BSS_con_Parte_fraccionaria)
   
   
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

```15``` = ```111```

```0,25 x 2``` = ```0,50```

```0,50 x 2``` = ```1.0```
