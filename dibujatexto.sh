#!/bin/bash
cat "$1" | while read linea
do
	i=1
	limite=$(echo "$linea" | wc -m)
	while test $i -lt "$limite"
	do
		numero=$(echo $linea | cut -b "$i")
		let poscar=$i+1
		#echo "$poscar a"
		car=$(echo "$linea" | cut -b "$poscar")
		for j in $(seq 1 1 $numero)
		do
			echo -n "$car"
		done
		let i+=2
	done
	echo ""
done
