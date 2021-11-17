#!/bin/bash

if [[ $# -ne 1 ]]; then
        echo 'Se deben pasar un parametro en la ejecucion'
        echo 'Ejemplo: ~# ./'$0' parametro1'
        exit 1
fi

IS_CONNECTED=`who | grep -e "^$1 "`

if [[ -n $IS_CONNECTED ]]; then
	exit 0
else
	exit 1
fi


