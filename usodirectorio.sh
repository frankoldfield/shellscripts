#!/bin/bash
total=0
num=1
find $1 -maxdepth 1 -type f -printf '%f:%s\n'| sort -n -r -k2 -t: | ( while read fichero
do
	
	if test $num -le $2
	then
		echo "Fichero: $(echo $fichero | cut -f1 -d':'), tamaño: $(echo $fichero | cut -f2 -d':') bytes"
		let total=$total+$(echo $fichero | cut -f2 -d':')
		let num+=1
	fi
done ; let num-=1 ; echo "Tamaño total de los $num ficheros regulares mostrados: $total bytes" )
exit 0
