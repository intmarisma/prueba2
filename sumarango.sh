#!/bin/bash

# Solicitar dos números por teclado
read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2

# Verificar cuál número es menor
if [ $num1 -gt $num2 ]; then
   temp=$num1
   num1=$num2
   num2=$temp
fi

# Calcular la suma de los números en el rango
suma_seq=$(seq -s+ $num1 $num2 | bc)
suma_c=0
for ((i=num1; i<=num2; i++)); do
   suma_c=$((suma_c +i))
done

# Mostar el resultado
echo "La suma del rango $num1 a $num2 es (obtenido mediante seq): $suma_seq"
echo "La suma del rango $num1 a $num2 es (Obtenido mediante la nomenclatura de C): $suma_c"

