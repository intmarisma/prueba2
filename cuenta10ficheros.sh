#!/bin/bash

# Directorio que quemos verificar
directorio=$1

# Verificamos si se ha pasdo alǵun argumento
if [ "$#" -ne 1 ]; then
   # si no se ha pasado ningún argumento, mostramos el uso del script
   echo "Usage: $0 <directorio>"
   # salimos del script con un código de estado 1
   exit 1
fi

# usamos find para buscar todos los archivos en el directorio y sus subdirectorios
ficheros=$(find "$directorio" -type f -print)

# Verificamos si encontramos alǵun archivo
if [ "$ficheros" ]; then
   # Contamos la cantidad de archivos encontrados con wc -l
   cantidad=$(echo "$ficheros" | wc -l)

   # Verificamos si hay más de 10 archivos
   if [ "$cantidad" -gt 10 ]; then 
      # Si hay más de 10 archivos, mostramos un mensaje indicando que hay más de 10 ficheros
      echo "El directorio $directorio contiene más de 10 ficheros."
   else 
      # Si hay menos de 10 archivos, mostramos un mensaje indicando que hay menos de 10 ficheros
      echo "El directorio $directorio contiene menos de 10 ficheros."
  fi
else 
   # Si no encontramos ningún archivo, mostramos un mensaje indicando que no hay ficheros
   echo "El directorio $directorio no contiene ficheros."
fi
