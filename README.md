Yeimy Estefania Beltrán Sandoval
# Proposito de la Tarea
El propósito de esta tarea es comprender las operaciones aritméticas básicas en Haskell (suma, resta, multiplicación y división) utilizando únicamente las funciones sucesor y predecesor.
Ademas, se realizo lo mismo pero con números reales.

# Implementación de funciones 

1. Las funciones base de las cuales se derivaron las demas son Sucesor y predecesor

sucesor n = n + 1

predecesor n = n - 1

2. Suma

Definida de forma recursiva usando la función sucesor.

Ejemplo: suma 5 8 aplica sucesor cinco veces a 8, dando como resultado 13.

3. Resta

Implementada con la función predecesor.

Ejemplo: resta 5 2 aplica predecesor dos veces a 5, dando 3.

4. Multiplicación

Definida como suma repetida.

Ejemplo: multi 2 4 calcula 2 + 2 + 2 + 4 = 8.

5. División

Definida como resta repetida.

Se resta el divisor del dividendo hasta que el número ya no sea mayor o igual al divisor, contando el número de restas realizadas.

Ejemplo: divi 10 2 → se pueden restar 5 veces, entonces el resultado es 5.

6. Suma de números reales

Implementada directamente con una función addReal que opera sobre Float.

Ejemplo: addReal 2.5 3.1 = 5.6



Implementada directamente con una función addReal que opera sobre Float.

Ejemplo: addReal 2.5 3.1 = 5.6.
