#!/bin/bash

# Función para pedir un número
pedir_numero() {
   read -p "Introduce un número: " num
   echo $num
}

# Función para sumar
sumar() {
   num1=$(pedir_numero)
   num2=$(pedir_numero)
   echo "El resultado de la suma es $(($num1 + $num2))"
   read -n 1 -s -r -p "Presiona cualquier tecla para continuar"
}

# Función para restar
restar() {
   clear
   num1=$(pedir_numero)
   num2=$(pedir_numero)
   echo "El resultado de la resta es: $(($num1 - $num2))"
   read -n 1 -s -r -p "Presiona cualquier tecla para continuar"
}

# Función para dividr 
dividir() {
   clear
   num1=$(pedir_numero)
   num2=$(pedir_numero)
   if [ $num2 -eq 0 ]; then
      echo "No se puede dividr por cero."
   else
      echo "El resultado de la división es: $(($num1 / $num2))"
   fi
   read -n 1 -s -r -p "Presiona cualquier tecla para continuar"

}

# función para multiplicar
multiplicar() {
   clear
   num1=$(pedir_numero)
   num2=$(pedir_numero)
   echo "El resultado de la multiplicación es: $(($num1 * $num2))"
   read -n 1 -s -r -p "Presiona cualquier tecla para continuar"

}

# Función principal

main() {
   while true; do
      clear # Borra la pantalla
      echo "Menú:"
      echo "1) Sumar"
      echo "2) Restar"
      echo "3) Dividir"
      echo "4) Multiplicar"
      echo "5) Salir"
      read -p "Elige una opción: " opcion

      case $opcion in
         1) sumar ;;
         2) restar ;;
         3) dividir ;;
         4) multiplicar ;;
         5) break ;;
         *) echo "Opción no válida." ;;
      esac
   done
}

# Llamada a la función principal
main
