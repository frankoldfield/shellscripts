#!/bin/bash
test ! $1 -lt 0 && test ! $1 -gt 10 && echo -e "TABLA DEL $1\n=====================================" && for i in $(seq 1 1 10) 
	do
		let prod=$1*$i
		echo "$1 * $i = $prod"
	done
	echo "No es un número válido"
	exit 1
