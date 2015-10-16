#!/bin/bash
#La función se debe definir antes de ser llamada
funcion1(){
echo "Parametros pasados a la funcion $*"
echo "Parametro 1: $1"
echo "Parametro 2: $2"
}

#Programa principal
funcion1 "hola" "como estas ahora tu..." adios
