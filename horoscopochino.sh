#!/bin/bash

# Solicitar el año de nacimiento al usuario y validar la entrada
while true; do
   echo "Por favor, ingresa el año de tu  nacimiento (4 cifras):"
   read anno
   if [[ $anno =~ ^[0-9]{4}$ ]]; then
      break
   else 
      echo "El año ingresado no es válido. Por favor, ingresa un año de 4 cifras."
   fi 
done

# Calcular el animal correspondiente al año de nacimiento
animal=""
case $((anno % 12)) in
   0) animal="El mono" ;;
   1) animal="La rata" ;;
   2) animal="El buey" ;;
   3) animal="El tigre" ;;
   4) animal="El conejo" ;;
   5) animal="El dragón" ;;
   6) animal="La serpiente" ;;
   7) animal="El caballo" ;;
   8) animal="La cabra" ;;
   9) animal="El mono" ;;
   10) animal="El gallo" ;;
   11) animal="El perro" ;;
esac

# Mostrar el resultado
echo "Según el horóscopo chino, naciste en el año del $animal"

