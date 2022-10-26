#!/bin/bash
cat $1 | while read linea
do
	let resultado=$linea
	echo "$linea" | grep -q '*' && echo "$(echo "$linea" | cut -f1 -d'*') * $(echo "$linea" | cut -f2 -d'*') = $resultado"
	echo "$linea" | grep -q '+' && echo "$(echo "$linea" | cut -f1 -d'+') + $(echo "$linea" | cut -f2 -d'+') = $resultado"
	echo "$linea" | grep -q '-' && echo "$(echo "$linea" | cut -f1 -d'-') - $(echo "$linea" | cut -f2 -d'-') = $resultado"
	echo "$linea" | grep -q '%' && echo "$(echo "$linea" | cut -f1 -d'%') % $(echo "$linea" | cut -f2 -d'%') = $resultado"
	echo "$linea" | grep -q '/' && echo "$(echo "$linea" | cut -f1 -d'/') / $(echo "$linea" | cut -f2 -d'/') = $resultado"
done

exit 0
