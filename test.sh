#!/bin/bash
#p=$PS1
#set PS1="Welcome...."
echo "::Bienvenido a interprete basico::"

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
	sh test.sh
elif [ $x = "bye" ] ; then
	#dialog --yesno "Desea salir?" 6 30
	echo "Adios"
elif [ $x = "ver" ] ; then
	lista=`echo *`
	for i in ${lista}
	do
	#if !( [ ${frase:$i:1} ] ); then
	#	echo "es un espacio"
		echo ${lista:1}
	done
	echo $lista
	sh test.sh
else
	echo -e '\E[31;47m'"\033[6mNo se encontró la órden \"$x\"." '\E[30;47m'"Obtenga ayuda con el comando" '\E[35;47m'"\033[5msos\033[0m"
	sh test.sh
fi
