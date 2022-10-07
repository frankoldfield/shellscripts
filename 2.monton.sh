#!/bin/bash

if test $# -ne 1
then
	echo USO: $0 numero_entero 1>&2
	exit 1
fi

if echo $1 | grep -qx '[+]\(0,1\)[0-9]\-'
then
	echo Ha de introducir un numero mayor o igual a 0 >&2
	exit 2
fi

let espacios=$1-1
asteriscos=1

for nivel in $(seq 1 1 $1)
do
	for i in $(seq 1 1 $espacios)
	do
		echo -n ' '
	done

	for i in $(seq 1 1 $asteriscos)
	do
		echo -n '*'
	done
	echo
	let espacios-=1
	let asteriscos+=2
done
