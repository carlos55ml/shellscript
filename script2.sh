#!/bin/bash
if [[ $# < 3 ]]; then
	echo 'Se deben pasar 3 parametros en la ejecucion'
	echo 'Ejemplo: ~# ./'$0' parametro1 parametro2 parametro3'
	exit 0
fi

echo 'El primer parametro es: '$1
echo 'El segundo parametro es: '$2
echo 'El tercer parametro es: '$3 

exit 0
