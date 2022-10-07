#!/bin/bash

(echo USER VSZ;
ps aux | tail -n+2 | tr -s ' ' | cut -f1 -d ' ' | sort | uniq | while read usuario
do
	tamano=$(ps aux | tail -n+2 | grep "^$usuario" | tr -s ' ' | cut -f5 -d' ' | paste -s -d'+' | bc)
	echo $usuario $tamano
done) | column -t

