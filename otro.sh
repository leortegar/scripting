#!/bin/bash

#PATH_OLD=$PATH
#PATH=$PATH:`pwd`

read -p "Ingresa cadena:: " x


if [ -z "$x" ] ; then
	echo "Nada... Ingrese un comando"
else
	palabras=( $x )
	longi="${#palabras[@]}"
	if [ $longi -eq 2 ] ; then
		if [ ${palabras[0]} = "moversea" ] ; then
			#echo "nos movemos a ${palabras[1]}"
			cd ${palabras[1]}
			pwd
			sh otro.sh
			pwd
		fi
	else
		echo "Sobran parametros. Uso:: moversea [/ruta]"
		sh otro.sh
	fi
fi
