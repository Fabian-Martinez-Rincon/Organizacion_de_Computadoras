# Final Resumen OC



- [Link con clases grabadas](https://drive.google.com/drive/u/0/folders/1HSUB4U7XXDajAACpsZ5qg9X5byNvKdjM)
- [Otro Link](https://drive.google.com/drive/folders/1XfdjYGdLKIebInigC2scgMS0-NRRx6fP)

## Clase 1 Numeros Sin Signo

#### Representación de Datos

Las computadoras almacenan datos e instrucciones en memoria.
Para ello utilizan el sistema binario
**Razones** : 
- el dispositivo se encuentra en uno de dos estados posibles (0 ó 1) 
- identificar el estado es más fácil si sólo hay dos 

#### Tipos de Datos

Las computadoras manejan 4 tipos básicos de datos binarios

- Números enteros sin/con signo
- Números reales con signo
- Números decimales codificados en binario (BCD)
- Caracteres

#### Representación de Números Enteros
- Sin signo
- Módulo y signo
- **Complemento a uno (Ca1)** Complemento a la base reducida
- **Complemento a dos (Ca2)** Complemento a la base
- Exceso

#### Números enteros sin signo

- Si el número tiene **n** bits, puedo representar **2^n** = números distintos
- El rango va desde 0 hasta **2^n - 1**

#### Números en Punto Fijo

Se considera que todos los números a representar tienen exactamente la misma cantidad de dígitos y la coma fraccionaria está siempre ubicada en el mismo lugar.

- **En sistema decimal** 0,23 ó 5,12 ó 9,11
- En los ejemplos cada número tiene tres dígitos, y la coma está a la derecha del mas significativo
- **En sistema binario** 11,10 ó 01,10 ó 00,1
- La diferencia principal entre la representación en el papel y su almacenamiento en compu-tadora, es que no se guarda coma alguna, se supone que está en un lugar determinado

#### Punto Fijo: Rango y Resolución

- **Rango** diferencia entre el número mayor y el menor
- **Resolución** diferencia entre dos números consecutivos
- Para el ejemplo anterior en sistema decimal
  - **Rango** es de 0,00 a 9,99 ó [0,00...9,99]
  - **Resolución** es 0,01 (2,32 - 2,31 = 0,01  ó   9,99 - 9,98 = 0,01)
- Notar que hay un compromiso entre rango y resolución
- Si mantenemos tres dígitos y desplazamos la coma dos lugares a la derecha, el rango pasa a ser [0,..,999] y la resolución valdrá 1

#### Representación y error
Al convertir un número decimal a sistema binario tendremos 2 casos
- **Sin error**
  - Sin restricción en la cantidad de bits a usar: 3,125_10 = 11,001_2
  - Con restricción, por ejemplo 3 bits para parte entera y 4 bits para parte fraccionaria: 3,1251_0 = 011,0010_2

