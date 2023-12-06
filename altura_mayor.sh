#!/bin/bash

# Solicitar la altura de tres personas en centímetros 

read -p "Ingresa la altura de la persona 1 (en cm) : " altura1
read -p "Ingresa la altura de la persona 2 (en cm) : " altura2
read -p "Ingresa la altura de la persona 3 (en cm) : " altura3

# Convertir las alturas a metros
altura1_m=$(echo "scale=2; $altura1 / 100" | bc)
altura2_m=$(echo "scale=2; $altura2 / 100" | bc)
altura3_m=$(echo "scale=2; $altura3 / 100" | bc)

# Encontrar la altura más alta
altura_mas_alta=$(printf "%s\n" "$altura1_m" "$altura2_m" "$altura3_m" | sort -nr | head -1)

# Mostrar la altura más alta en metros
echo "La altura más alta es $altura_mas_alta metros."

