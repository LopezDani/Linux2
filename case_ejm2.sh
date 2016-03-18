#!bin/bash

# Script para probar el tamano en el disco duro.

espacio=`df | awk '{print $5}' | grep -v Usados | sort -n | tail -1 | cut -d "%" -f "1"`

case $espacio in 
	[1-6]*)
		MENSAJE="Uso bajo de almacenamiento"
	;;
	[7-8]+)
		MENSAJE="HAy una particion medio llena. Tamano = $espacio%"
	;;
        9[0-5])
		MENSAJE="El sistema pronto colapsara. Tamano = $espacio%"
	;; 
	*)
		MENSAJE="NO HAY SISTEMA DE ARCHIVOS!!!"
esac

echo $MENSAJE | mail -s "Reporte de espacio en disco `date`" dani_lopez@hotmail.com

exit 0

	



