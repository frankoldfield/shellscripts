#!/bin/bash
directorio=$1
shift
temp=$(mktemp)
for usuario in $@
do
	echo "Usuario $usuario: $(find $directorio -user $usuario -perm /700 | wc -l) ficheros" 2>temp
done
if test -s $temp
then
	echo "Hay ficheros de $directorio a los que no se ha podido acceder"
	exit 1
fi

exit 0
