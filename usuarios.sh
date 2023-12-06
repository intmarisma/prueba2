#!/bin/bash

# Función para mostrar la información de un usuario

mostrar_informacion_usuario() {
   local username=$1
   if id "$username" &>/dev/null; then
      echo "Nombre de usuario: $username"
      echo "UID: $(id -u $username)"
      echo "GID: $(id -g $username)"
      echo "Directorio de trabajo: $(eval echo ~$username)"
   else
      echo "El usuario $username no existe."
   fi
}

# Función principal
main() {
   while true; do
      read -p "Introduce el nombre de usuario (o 'salir' para terminar): " username
      if [ "$username" = "salir" ]; then
         break
      fi 
      mostrar_informacion_usuario "$username"
   done
}

# Llamada a la función principal
main

