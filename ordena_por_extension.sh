#!/bin/bash
if test $# -ne 1
then
	echo "ERROR: Número de argumentos no válido" >&2
	exit 1
fi

if test ! -d $1
then
	echo "ERROR: El argumento no es válido, no es un directorio" >&2
	exit 2
fi

find "$1" -maxdepth 1 -type f -printf "%f\n" | while read fichero
do
	extension=$(echo $fichero | rev | cut -fi -d"." -s | rev )
	if test ! -z "$extension"
	then
		echo $extension $fichero
	fi
done | sort | cut -f2 -d" "

exit 0
