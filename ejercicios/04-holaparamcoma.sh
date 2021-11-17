#!/bin/bash

if [[ $# < 1 ]]; then
	echo 'Se deben pasar parametros en la ejecucion'
	echo 'Ejemplo: ~# ./'$0' parametro1 parametro2 parametro3...'
	exit 1
fi
TEXTO="$1"
for i in `seq 1 1 $#`; do
	shift 1;
	TEXTO=$TEXTO", "$1
done;

echo "Hola $TEXTO"

exit 0
