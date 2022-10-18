#!/bin/bash
total=0
find -type f "*.pdf" -printf "%p$%s\n" | (while read fichero #El $ es para separar las columnas mas adelante
do
	nombre=$(echo $fichero | cut -f1 -d"$")
	tamano=$(echo $fichero | cut -f2 -d"$")
	echo -e "Fichero: $nombre\tTamaño: $tamano bytes"
	let total+=$tamano
done;
echo "Tamaño total de los ficheros acabados en .pdf: $total")

exit 0
