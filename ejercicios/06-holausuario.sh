#!/bin/bash

if [[ $# < 1 ]]; then
        echo 'Se deben pasar parametros en la ejecucion'
        echo 'Ejemplo: ~# ./'$0' parametro1 parametro2 parametro3...'
        exit 1
fi

for i in `seq 1 1 $#`; do
    IS_CONNECTED=`who | grep -e "^$1"`;
    if [[ -n $IS_CONNECTED ]]; then
        echo "Hola $1! esta conectado!"
    else 
        echo "$1 no esta conectado..."
    fi
    shift 1;
done;

exit 0
