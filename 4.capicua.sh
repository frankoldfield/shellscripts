#ª/bin/bash

if test $# -ne 1 || echo $1 | grep -qxv '[0-9]\+'
then
	echo "USO: $0 numero_natural" >&2
	exit 2
fi

i=1
j=${#1}

while test $i -lt $j
do
	cifrai=$(echo $1 | cut -c$i)
	cifraj=$(echo $1 | cut -c$j)
	
	test $cifrai -ne $cifraj && exit 1

	let i+=2
	let j-=1
done
exit 0
