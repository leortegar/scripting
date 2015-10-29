#!/bin/bash
p=$PS1
set PS1="Welcome...."
echo "Manual:: sos"
x="Hola"

read x

if [ $x = "sos" ] ; then
	clear
	echo "---------------------------------Inprete de ordenes básico----------------------------------"
	echo "Use los comandos:"
	echo "---Búsqueda:: encuentra 'Archivo_a_buscar' 'Donde_comenzar'"
        echo "---Compresión:: enpaqueta 'Archivo'"
       	echo "---Despliega archivos/carpetas:: ver 'archivo|carpeta'  "
        echo "---Moverte a un directorio:: vamos_a '/ruta"
       	echo "---Mostrar contenido de archivo:: muestra 'archivo'"
        echo "---Salir del interprete:: bye"
	echo "---------------------------------- LEOR Version 1.0-----------------------------------------"
	sh test.sh
elif [ $x = "encuentra" ] ; then
	echo "Encontraré"
	#find $2
elif [ $x = "bye" ] ; then
	echo "Adios"
else
	echo "No se encontro la orden $x"
	sh test.sh
fi
