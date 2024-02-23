#!/bin/bash

#directorio="Apuntes"

echo "Dentro de este directorio, las partes de los ficheros con notas son: "
grep -rn "<<" --exclude="*.sh*" Apuntes/
echo "----------------------"


for archivo in $(find Apuntes -type f -name "*.txt")
do
	
	
	echo "Procesando el archivo: $archivo"
	patron="<<\K[^<]+(?=>>)"
	nombres_totales_tag=$(grep -oP "$patron" "$archivo")
	#echo "el nombre es $nombres_totales_tag"
	
	for nombre_tag in $nombres_totales_tag
	
	do
		archivo_salida="Notas/${nombre_tag}.txt"
		#echo "Guardando en el archivo: $archivo_salida"
		sed -n "/<<${nombre_tag}>>.*<<<${nombre_tag}>>/p" "$archivo" > "$archivo_salida" 
		
		

	
	done
	echo "Se ha guardado el contenido entre los tags '$nombre_tag' en el archivo '$archivo_salida'"
	
	echo ""
	
done
echo "---------------------------"
echo "Proceso de copia finalizado"

exit 0
