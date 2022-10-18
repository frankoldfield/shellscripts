#!/bin/bash
if test $# -ne 1
then
	echo "ERROR: Número de argumentos inválido"
	exit 1
fi

if test ! -d "$1" -o ! -r "$1" -o ! -w "$1"
then
	echo "ERROR: No es un directorio con permisos de escritura y lectura" >&2
	exit 2
fi
num_fichero=0
find "$1" -maxdepth 1 -type f -printf "%f\n"| sort | while read fichero
do
	let num_fichero+=1
	echo -n "$fichero,"
done

exit 0
