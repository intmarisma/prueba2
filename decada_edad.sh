#!/bin/bash

# Verificar que se hay introducido un parámetro
if [ -z "$1" ]; then
   echo "Por favor, introduce tu edad como parámetro."
   exit 1
fi

# Verificar que el parámetro sea un número válido 
if ! [[ $1 =~ ^[0-9]+$ ]]; then
   echo "El parámetro introducido no es un número válido."
   exit 1
fi

# Verificar que la edad esté en el rango de 15 a 60 años
if (( $1 < 15 || $1 > 60 )); then
   echo "La edad introducida debe estar en el rango de 15 a 60 años."
   exit 1
fi

# Obtener el año actual de forma automática
anno_actual=$(date +'%Y')

# Calcular el año de nacimiento
anno_nacimiento=$((anno_actual - $1))

# Calcular la década de nacimiento
decada=$((anno_nacimiento - (anno_nacimiento % 10)))

# Imprime el resultado
echo "Si naciste en $anno_nacimiento, naciste en la década de $decada"
