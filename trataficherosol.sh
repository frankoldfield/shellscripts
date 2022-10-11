#!/bin/bash
case $1 in
  *.txt)
    echo "Contenido del fichero $1:"
    cat $1
    ;;
  *.sh)
    echo "Ejecutando el script $1:"
    bash $1
    ;;
  *)
    echo "No hay tratamiento establecido para el fichero $1"
    ;;
esac
