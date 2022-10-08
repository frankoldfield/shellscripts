#!/bin/bash
echo -e "TABLA DE MULTIPLICAR DEL 5\n================================="
for i in $(seq 1 1 10)
do
	let prod=$1*$i
	echo "$1 * $i = $prod"
done
