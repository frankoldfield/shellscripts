#!/bin/bash
if test $@ -eq 0
then
	exit 0
fi

for directorio in "$@"
do
	if test ! -d $i
	then
		echo "ERROR: Directorio $i no válido" >&2
		exit 1
	fi
done
	find "$@" -type f "*.PDF" -printf "%p\n" 2> /dev/null | while read fichero
	do
		nombre=$"(basename "fichero" ".PDF").pdf"
		ruta=$"(dirname "$fichero")"
		echo "Cambiando el nombre a $fichero por $ruta/$nuevo_nombre"
		mv "$fichero" "$ruta/$nuevo_nombre"
	done
 
 exit 0
