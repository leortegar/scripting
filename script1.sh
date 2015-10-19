#!/bin/bash
#Script para leer una linea, saber su longitud, vocales y consonantes

echo "Ingrese una cadena de texto: "
read frase
vocales=0
consonantes=0

echo "La cadena tiene una longitud de: ${#frase}"

for ((i=0;i<${#frase};i++))
do
  #echo "$i - ${frase:$i:1}"
  if !( [ ${frase:$i:1} ] ); then
    echo "es un espacio"
  elif [ ${frase:$i:1} = "a" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "A" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "e" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "E" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "i" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "I" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "o" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "O" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "u" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  elif [ ${frase:$i:1} = "U" ]; then
    vocales=`expr $vocales + 1`
    echo "Vocal...............: ${frase:$i:1}"
  else
    consonantes=`expr $consonantes + 1`
    echo "Puede ser consonante: ${frase:$i:1}"
  fi
done
 
echo "La cadena tiene $vocales vocales"
echo "La cadena tiene $consonantes consonantes"
