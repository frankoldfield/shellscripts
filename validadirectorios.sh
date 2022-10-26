#!/bin/bash

if test $# -lt 0
then
	echo "ERROR: Número de argumentos inválido" 1>&2
	exit 2
fi

temporal=$(mktemp)
echo -e "ERROR\nEstos directorios no cumplen las condiciones:" >>$temporal
error=0
for directorio in $@
do
	if ! test -e "$directorio" -a -d "$directorio" -a -r "$directorio" -a -x "$directorio"
	then
		error=1
		echo "$directorio" >>$temporal
	fi
done
if test "$error" -eq 1
then
	cat $temporal >&2
	exit 1
else
	exit 0
fi
