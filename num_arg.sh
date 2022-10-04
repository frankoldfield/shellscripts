clear
if test $# -eq 0
then
	echo "el guion shell num_arg.sh ha recibido $# argumentos:"
	echo $@
	exit 1
else
	echo "el guion shell num_arg.sh no ha recibido ningún argumento"
	exit 0
fi