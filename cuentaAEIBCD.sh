#!/bin/bash
#Script de ejemplificación del uso del case

read -p "Ingresa una palabra: " frase

echo ":::$frase::: tiene una longitud de ${#frase}"

vocal=0
consonante=0
otro=0

for ((i=0;i<${#frase};i++))
do
	case ${frase:$i:1} in
	"a"|"e"|"i"|"o"|"u")
	echo ":::${frase:$i:1}::: Es una vocal"
	vocal=`expr $vocal + 1`
	;;
	"A"|"E"|"I"|"O"|"U")
	echo ":::${frase:$i:1}::: Es una vocal"
	vocal=`expr $vocal + 1`
	;;
	"b"|"c"|"d"|"f"|"g"|"h"|"j"|"k"|"l"|"m"|"n"|"ñ"|"p"|"q"|"r"|"s"|"t"|"v"|"w"|"x"|"y"|"z")
        echo ":::${frase:$i:1}::: Consonante"
	consonante=`expr $consonante + 1`
        ;;
	"B"|"C"|"D"|"F"|"G"|"H"|"J"|"K"|"L"|"M"|"N"|"Ñ"|"P"|"Q"|"R"|"S"|"T"|"V"|"W"|"X"|"Y"|"Z")
        echo ":::${frase:$i:1}::: Consonante"
	consonante=`expr $consonante + 1`
        ;;
	*)
	echo ":::${frase:$i:1}::: Otro caracter"
	otro=`expr $otro + 1`
	esac
done
echo -e ":::#Vocales::: $vocal\n:::#Consonantes::: $consonante\n:::#Otros caracteres::: $otro"
