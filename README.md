<h1 align="center"> 

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Fabian-Martinez-Rincon/Organizacion_de_Computadoras)
[![GitHub stars](https://img.shields.io/github/stars/Fabian-Martinez-Rincon/Organizacion_de_Computadoras)](https://github.com/Fabian-Martinez-Rincon/Organizacion_de_Computadoras/stargazers/)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/Fabian-Martinez-Rincon/Organizacion_de_Computadoras)](https://github.com/Fabian-Martinez-Rincon/Organizacion_de_Computadoras)



<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&duration=1200&pause=1000&color=F7F123&center=true&width=535&lines=Organización de Computadoras"/>

</h1>

<a title="" href="https://cafecito.app/ei-materias"><img src="/Documentos/Cafecito.png" alt="" /></a>

***Practicas resueltas Junto con teorias***

- [Practica](/Documentos/Practica.md)
- [Finales](/Documentos/Finales.md)
- [Resumen Assembly](/Documentos/resumenAssembly.md)

## 📘 Clase 1 Numeros Sin Signo

- **Representación de Datos** Dispositivos en dos estados posibles 1 o 0
- **Tipos de Datos** La computadora maneja 4 tipos de datos básicos de datos binarios
  - Numeros Enteros sin/con signo
  - Numeros Reales con signo
  - Números decimales codificados en binario (BCD)
  - Caracteres
- **Representación de Números enteros**
  - Sin signo
  - Módulo y signo
  - Complemento a uno ( Ca1 ) Complemento a la base reducida
  - Complemento a dos ( Ca2 ) Complemento a la base
  - Exceso
- **Numeros Enteros sin signo** (con n bits)
  - 2^n números diferentes
  - Rango: 0 a 2^n - 1
- **Sistemas Posicionales** (Los romanos no son posicionales)
  - Cada dígito tiene un valor que depende de su posición
  - El valor de un número depende de la base del sistema
- **Numeros en Punto fijo**
  - Se fija la posición de la coma
  - Siempre tiene la misma cantidad de digitos
  - **Rango** Menor representable , Mayor representable
  - **Resolución** diferencia entre dos números consecutivos
- **Representación y error**
  - Sin restricción en la cantidad de bits
  - Con restricción en al cantidad de bits
  - <details><summary> Sin error </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/fdd16909-781d-44c6-8d09-199b0616fcec'></details>
  - <details><summary> Con error </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/7a0417dd-e2e9-4894-8bd5-62a17022dc0b'><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/1fd2128e-6d1b-4d03-a504-8813175e558f'> Cuando no termina en 0, indica que quedo algún error</details>
- **Operaciones aritméticas** Suma con carry, resta con borrow
- **Bits de Condición** Valores acorde a una operación realizada
- **Banderas Aritméticas**
  - **Z**(cero) 1 si el resultado es cero
  - **C**(carry) 1 si hubo acarreo en la suma y 1 si hubo borrow en la resta.
- **Sistema Hexadecimal**
- **BCH** Sistema Hexadecimal Codificado en Binario (4 bits por dígito)
- **BCD** Sistema Decimal Codificado en Binario (4 bits por dígito)
  - Se asocia cada digito a su valor en binario puro y tiene dos ambitos de aplicación
  - **Desempaquetado** E/S y Perifericos (1 digito, 1 byte = 8 bits)
    - <details><summary> Sin signo </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/2c10001d-9991-47c2-8215-79dfe58ab869'></details>
    - <details><summary> Con signo Positivo (+) </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/d17f71ca-83c0-44cc-976a-9931671956f9'></details>
    - <details><summary> Con signo Negativo (-)</summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/b2a9428d-c645-4bee-a7fc-36479fb46ea5'></details>
  - **Empaquetado** Calculo (1 digitos, 4 bits)
    - <details><summary> Con signo Positivo (+) y Negativo (-) </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/c5a3b449-67aa-43ab-b12d-b09e1974ed32'></details>
  - **Suma en BCD**
    - <details><summary> la suma es ≤ 9 </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/a5163906-6e37-4b7b-af62-55fd3ad817b4'></details>
    - <details><summary> la suma es > 9 </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/41bdd21c-5db9-4d9a-99d5-b58b9934e163'> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/80b29439-89fd-477d-a717-0bb75073d2a3'></details>
    - <details><summary> Otro Ejemplo suma es > 9 </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/5acf0f3a-2540-48fc-9d2b-69954a1e34ce'></details>
- El Nivel de Logica Digital
  - **AND** (Y) 1 si ambos son 1 y 0 en cualquier otro caso
  - **OR** (O) 1 si alguno es 1 y 0 en cualquier otro caso
  - **NOT** (NO) 1 si es 0 y 0 si es 1
  - **NAND** (NO Y) 0 si ambos son 1 y 1 en cualquier otro caso
  - **NOR** (NO O) 0 si alguno es 1 y 1 en cualquier otro caso
  - **XOR** (O exclusivo) 1 si son diferentes y 0 si son iguales
- **Algebra Booleana** Para describir circuitos se necesita un nuevo tipo de algebra
  - <details> <summary> Tabla de verdad </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/6f7c48b6-1e01-46bd-90b6-a618b3d5df59' > </details>
- **Leyes de De Morgan** (Puedo armar todas las compuertas con NAND o NOR)
  - <details> <summary> Construir un NOT con NAND </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/8bfcafad-f553-493d-877f-0d31b4d99a0f'> </details>
  - <details> <summary> Construir un OR con NAND </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/c954ec41-ac47-486d-8152-b6a62e0a8e5e '> </details>
- **Implementación de Funciones Booleanas**
  - Dibujar una AND para cada término que tiene un 1 en la columna de resultado (con sus entradas apropiadas )
  - Invertir las entradas necesarias
  - Unir todas las AND a una OR
- **Circuitos Combinados**
  - <details> <summary> Semi-Sumador </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/c01e34e1-484c-4e44-8b68-7d75701be716'> </details>

## 🏁 Clase 2 Operaciones y Flags

- **Representación en BCS** intervalo es simétrico y 2^n números distintos
  - El primer bit sólo indica el signo (0 positivo, 1 negativo)
  - Rango -(2^n-1 - 1), +(2^n-1 - 1) con 2 ceros
  - <details> <summary> Ejemplo de representación </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/12635a56-c631-4180-88e1-8bbabba5ef4a'> </details>
- Técnica de Complementos
  - **Complemento a N** de A = N - A
  - **Complemento a N** de (N-A) = N - (N-A) = A
  - **Si N = base^n - 1** El sistema binario es Ca1
  - **Si N = base^n** El sistema binario es Ca2
- **Representación en Ca1** intervalo es simétrico y 2^n números distintos
  - El primer bit sólo indica el signo (0 positivo, 1 negativo)
  - Rango -(2^n-1 - 1), +(2^n-1 - 1) con 2 ceros
  - En binario se invierten todos sus bits
  - <details> <summary> Ejemplo decimal a binario </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/419e6fdd-9928-407a-8c89-38d89659f2b6'> </details>
  - <details> <summary> Ejemplo binario a decimal</summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/c482a65e-bd7f-42a4-a1dc-3f9b3b904828'> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/5a2bde89-0061-4d30-ae85-7f608196d18f'></details>
- **Representación en Ca2** intervalo es asimetrico y 2^n números distintos
  - Tenemos un negativo más
  - En binario se invierten todos sus bits y se le suma 1
  - -(2^n-1) a +(2^n-1 - 1) Solo hay un cero
  - <details> <summary> Ejemplo decimal a binario </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/09232eb0-35fa-4d2d-87e1-7d6d582477fa'> </details>
  - <details> <summary> Ejemplo binario a decimal</summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/f9b2b43a-7456-4504-af71-7307dd5dfd85'> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/aea80d11-1dea-4708-9df5-0df99dde8812'></details>
- **Técnica de Exceso**
  - Exceso E de A = A + E 
  - A = (Exceso E de A) - E
- **Exceso 2^n-1**
  - **Rango** -2(n-1) <= x <= 2(n-1)-1
  - <details> <summary> Ejemplo </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/9c7d3928-333d-493a-9f99-0886ed043273'> </details>
- **Nuevas Banderas aritméticas**
  - **N (Negativo)** Es 1 si el resultado es negativo
  - **V (Overflow)** El 1 indica una condición de fuera de rango (desborde) en Ca2
    - **Para sumar dos números en Ca2** se suman los n bits directamente.
      - Si sumamos dos números + y el resultado es –. Ej en decimal 127 + 1 = -128
      - Si sumamos dos números – y el resultado es +. Ej en decimal -128 + -1 = 127
      - <details> <summary> Ejemplo 1 </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/01ff1fc5-0e5e-4ffd-9ddc-5aa35affa855'> </details>
      - <details> <summary> Ejemplo 2 </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/a7d9d791-4394-427f-8533-57cd114872b9'> </details>
    - Si son de distinto signo no puede haber overflow
    - **Para restar dos números en Ca2** se restan los n bits directamente. 
      - Si a un número + le restamos un número - y el resultado es –.Ej en decimal 127 - -128 = -1
      - Si a un número - le restamos un número + y el resultado es +.Ej en decimal -127 - 128 = 1
      - <details> <summary> Ejemplo 1 </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/7428fe1d-66de-4d86-ba4c-5221e5f11fca'> </details>
      - <details> <summary> Ejemplo 2 </summary> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/ec8e6cf5-4715-4357-af3b-5370318693b2'> </details>
    - Si son de igual signo no puede haber overflow
- Representación Alfanumerica
  - **Letras** (mayúsculas y minúsculas)
  - **Dígitos decimales** (0, ..., 9)
  - **Signos de puntuación**
  - **Caracteres especiales**
  - **Caracteres** u órdenes de control
- Los unicos dos sistemas que sumo directamente son BSS y CA2

## 📙 Clase 3 Punto Flotante

- Números en punto flotante
  - Limitaciones: "números muy grandes y números muy pequeños".
  - **976.000.000.000.000** -> 9,76 x 10^14
  - **0,0000000000000976** -> 9,76 x 10^-14
  - Se representa como M * B^E
  - **M** es la mantisa, **B** es la base, **E** es el exponente
  - La M y E estan representados en BSS, BCS, Ca2, Ca1, Exceso
  - <details><summary> Ejemplos </summary> <table><td><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/ba4e6d70-ea76-498a-919a-6b7acb6395ff'> <img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/bc44d28a-76c6-4bb5-b12e-5aa519a8a094'></td><td><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/deae34ac-bb98-41ee-8c08-d8d237ccd156'><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/729ac248-41f8-47e0-b56f-81f67b31b1d2'></td></table></details>
- **Comparación**
  - El rango en punto flotante es mayor
  - La cantidad de combinaciones binarias distintas es la misma en ambos sistemas 2^8 = 256
  - En punto flotante la resolución no es constante a lo largo del intervalo, como lo es en el segundo ejemplo.
- **Conclusión**
  - Podemos representar números más grandes ó más pequeños que en un sistema de punto fijo (para igual cantidad de bits), pero pagamos el precio que los Nos no están igualmente espaciados, como en punto fijo.
- <details><summary>Mantisa y Exponente en Ca2</summary><table><td><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/19227a87-f9fc-4387-ba53-566d0af59b76'></td><td><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/729ac248-41f8-47e0-b56f-81f67b31b1d2'></td></table> </details>
- <details><summary> Mantisa Fraccionaria </summary> <table><td><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/1e9d768d-fb8d-4840-8eb5-6cde95a94c7c'></td><td><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/b54a25c7-4d3c-4d20-b5a6-566f23c1a1f3'></td></table></details>
- <details><summary><b>Formato final</b> El formato anterior se puede representar</summary><img src='https://github.com/Fabian-Martinez-Rincon/Working/assets/55964635/7532b61b-080d-4e30-a750-e68cc286132c'></details>
- **Normalización**
  - Por ejemplo 40x10^0 = 4x10^1 = 0,4x10^2 = 400x10^-1
  - Existen distintos valores de mantisa y exponente para representar un mismo número.
  - Con el objetivo de tener un único par de valores de mantisa y exponente para un número, se introduce la normalización.
  - <details><summary> Ejemplos </summary> <table><td><img src='https://github.com/Fabian-Martinez-Rincon/Organizacion_de_Computadoras/assets/55964635/2b0b05b8-afe2-472d-b296-91038e9942ec'></td><td><img src='https://github.com/Fabian-Martinez-Rincon/Organizacion_de_Computadoras/assets/55964635/367494b9-953b-4daf-b8e7-726af3e250b5'></td></table></details>
- Bit Implicito
- Recta Numerica
- ¿Cómo se escribe un No en punto flotante normalizado?
- Resolución - Error absoluto
- Estándar IEEE 754