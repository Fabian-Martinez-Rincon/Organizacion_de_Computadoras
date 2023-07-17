# 🖥️ Organización de Computadoras

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
  - <details><summary> Con error </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/7a0417dd-e2e9-4894-8bd5-62a17022dc0b'></details>
- **Operaciones aritméticas** Suma con carry, resta con borrow
- **Bits de Condición** Valores acorde a una operación realizada
- **Banderas Aritméticas**
  - **Z**(cero) 1 si el resultado es cero
  - **C**(carry) 1 si hubo acarreo en la suma y 1 si hubo borrow en la resta.
- **Sistema Hexadecimal**
- **BCH** Sistema Hexadecimal Codificado en Binario (4 bits por dígito)

### **BCD** Sistema Decimal Codificado en Binario (4 bits por dígito)
  - Se asocia cada digito a su valor en binario puro y tiene dos ambitos de aplicación
#### **Desempaquetado** E/S y Perifericos (1 digito, 1 byte = 8 bits)
<details><summary> Sin signo </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/2c10001d-9991-47c2-8215-79dfe58ab869'></details>

<details><summary> Con signo Positivo (+) </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/d17f71ca-83c0-44cc-976a-9931671956f9'></details>

<details><summary> Con signo Negativo (-)</summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/b2a9428d-c645-4bee-a7fc-36479fb46ea5'></details>

#### **Empaquetado** Calculo (1 digitos, 4 bits)

<details><summary> Con signo Positivo (+) y Negativo (-) </summary><img src='https://github.com/Fabian-Martinez-Rincon/Fabian-Martinez-Rincon/assets/55964635/c5a3b449-67aa-43ab-b12d-b09e1974ed32'></details>

---

## 🏁 Clase 2 Operaciones y Flags

---

## 📙 Clase 3 Punto Flotante

---

## 📕 Clase 4 Circuitos Logicos

---

## 📓 Clase 5 Arquitectura

---

## 📔 Clase 6 Ciclo de instrucción

---

## Clase 7 Formato de Direccionamiento

---

## Clase 8 Registros

---

## Clase 9 Memoria

---

## Clase 10 Memoria Caché

---

## Clase 11 Perifericos Leídos

---