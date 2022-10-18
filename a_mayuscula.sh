#!/bin/bash

if test $# -ne 3 -o ! -f "$1" -o -e "$3"
then
	echo "ERROR: O no se han pasado tres argumentos, o el primero no es un fichero regular, o el tercero es un directorio existente"
	exit 1
fi

numpalcam=0
numpal=0
temp=$(mktemp)
mayuscula=$(echo $2 | tr "[:lower:]" "[:upper:]")
while read linea
do
	comienzo=""
	for palabra in $linea
	do
		let numpal+=1
		if test "$palabra" == "$2"
		then
			echo -n "$comienzo$mayuscula" >> $temp
			let numpalcam+=1
		else
			echo -n "$comienzo$palabra" >> $temp
		fi
		if test -z "$comienzo"
		then
			comienzo=" "
		fi
	done
done < "$1"
let porcent=$numpalcam*100/$numpal
echo "Se cambian $numpalcam palabras, y representan el $porcent%"

mv $temp "$3"

exit 0
