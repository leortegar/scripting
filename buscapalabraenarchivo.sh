#!/bin/bash
echo -n "Palabra a buscar: "
read palabra
echo -n "En qué archivo?: "
read archivo

if grep $palabra $archivo
then
    echo "Got it"
else
    echo "No se encontro $palabra en el archivo $archivo"
fi
