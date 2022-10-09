#!/bin/bash
for i in $(seq 1 1 $#)
do
	numerolineas=0
	cat $1 | ( while read linea
	do
		let numerolineas=$numerolineas+1
	done ; 
	echo "El fichero: $1 tiene $numerolineas lineas" )
shift
done
