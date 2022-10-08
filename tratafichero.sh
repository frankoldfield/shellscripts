#!/bin/bash
( test \( "$1" = *".sh$" \) && sh ./$1 ; test \( "$1" = *"txt$" \) && cat $1 ) || echo "No se puede tratar ese archivo"

