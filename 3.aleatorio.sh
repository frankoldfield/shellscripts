#!/bin/bash

let numero=$RANDOM%100+1
while echo $@ | tr ' ' '\n' | grep -qx $numero
do
	let numero=$RANDOM%100+1
done
echo "Numero aleatorio entre 1 y 100 (eliminando argumentos): $numero"
