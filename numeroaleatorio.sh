#!/bin/bash
if test $# -ne 1
then
	echo "ERROR: El número de argumentos es $#, y sólo se puede trabajar con uno" >&2
	exit 1
fi

if ! echo $1 | grep -x -q "[0-9]\+"
then
	echo "ERROR: $1 no es un número natural" >&2
	exit 2
fi

aleatorio=""
cifras=0
while test $cifras -lt $1
do
	aleatorio=$aleatorio$(echo $RANDOM | cut -c1)
	let cifras+=1
done
echo "El número aleatorio de $1 cifras es: $aleatorio"
