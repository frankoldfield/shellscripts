#!/bin/bash
opcion="s"
while test "$opcion" = "s"
do
	echo "Introduce un número para calcular el doble:"
	read num
	let doble=$num*2
	echo "El doble de $num es $doble"
	echo "¿Quiere calcular otro doble?"
	read opcion
done
if test $opcion != n
then
	exit 1
else
	exit 0
fi
