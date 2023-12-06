#!/bin/bash

# Verifica si se ha proporcionado la carpeta como parámetro
if [ -z "$1" ]; then
   echo "Debe proporcionar la carpeta como parámetro."
   exit 1
fi

# Asigna el primer parámetro pasado al script a la variable 'carpeta'
carpeta=$1

# Obtiene la fecha actual en el formato especificado (ddmmaaaa)
fecha=$(date +"%d%m%Y")

# Genera el nombre del archivo de copia con el formato deseado
nombre_archivo="copia_scripts_$fecha.tar"

# Empaqueta todos los archivos con extensión ".sh" de la carpeta especificada en un archivo con el nombre generado
tar -cf $nombre_archivo -C $carpeta *.sh

# Muestra un mensaje indicando que se ha creado el archivo de copia
# con los scripts de la carpeta especificada
echo "Se ha creado el archivo $nombre_archivo con los scripts de la carpeta $carpeta"
