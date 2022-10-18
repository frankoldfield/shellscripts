#!/bin/bash

if test $# -ne 1
then
	echo "ERROR: Número de argumentos erróneo" >&2
	exit 1
fi

if test ! -f "$1" -o ! -r "$1"
then
	echo "ERROR: El argumento no es un fichero regular que se pueda leer" >&2
	exit 2
fi

anterior=""
while read linea
do
	if test "$linea" != "$anterior"
	then
		echo $linea
		anterior=$linea
	fi
done <$1

exit 0
