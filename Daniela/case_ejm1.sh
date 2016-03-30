#!/bin/bash

# Primer ejemplo de case, Determina si el script puede correr en una 
# arquitectura determinada. Ademas ignora los tamanos de 
# las letras. Asi. Ubuntu, ubuntu, UBUNTU van a corresponder al valor deseado

shopt -s nocasematch

distro="$1"

case "$distro" in	
	Ubuntu)
		echo "Sistema soportado en 32 bits"
	;;
	Fedora)
		echo "Sistema soportado en 64 bits"
	;;
	Debian)
		echo "Sistema para ARM"
	;;
	*)
		echo "Sistema no soportado"

esac

exit 0
		
