#!/bin/bash

# Obtener el mes actual y el año actual
mes_actual=$(date +"%m")
anno_actual=$(date +"%Y")

# Determinar si el año es bisiesto
if (( ($anno_actual % 4 == 0 && $anno_actual % 100 != 0) || $anno_actual % 400 == 0)); then
   bisiesto=true
else
   bisieto=false
fi

# Determinar el número de días en el mes actual
case $mes_actual in
   "01" | "03" | "05" | "07" | "08" | "10" | "12")
      dias=31
      ;;
   "04" | "06" | "09" | "11")
      dias=30
      ;;
   "02")
      if [ $bisiesto = true ]; then
         dias=29
      else
         dias=28
      fi
      ;;
esac

# Mostrar el resultado
nombre_mes=$(date +"%B")
echo "Estamos en $nombre_mes, un mes con $dias días"
