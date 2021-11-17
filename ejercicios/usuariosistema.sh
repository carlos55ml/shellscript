#!/bin/bash

if [[ $# < 1 ]]; then
        echo 'Se deben pasar parametros en la ejecucion'
        echo 'Ejemplo: ~# ./'$0' parametro1 parametro2 parametro3...'
        exit 1
fi

for i in `seq 1 1 $#`; do
     IS_USER=`cat /etc/passwd | grep -e "^$1:"`

	if [[ -n $IS_USER ]]; then
        	echo "$1 ES UN USUARIO"
    	else 
        	echo "$1 no es un usuario."
    	fi
    	shift 1;
done;
