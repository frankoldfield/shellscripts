
let dob=$1*2
if test \( $1 -lt 200 \) -a \( $1 -gt 100 \) 
then
	echo "El doble de $1 es $dob"
else
	echo "El argumento debe ser un número entre 100 y 200"
	exit 1
fi
