#!/bin/bash

opcion_random=$(( (RANDOM % 3) +1 ))
echo "La maquina eligió: $opcion_random"

piedra=1
papel=2
tijera=3

read -p "Jugarás piedra, papel o tijera. Ingresa el número: 1 - Piedra, 2 - Papel y 3 - Tijera. " opcion_usuario

while test $opcion_random = $opcion_usuario; do 
	opcion_random=$(( (RANDOM % 3) +1 ))
	echo "Nuevo num $opcion_random"
	read -p "Has empatado. Vuelve a ingresar una opción: " opcion_usuario
done

if [ $opcion_random -eq $piedra ] && [ $opcion_usuario -eq $tijera ]; then
	 echo "Has perdido la maquina eligió piedra y vos tijera"
elif [ $opcion_random -eq $piedra ] && [ $opcion_usuario -eq $papel ]; then
	echo "Has ganado, la maquina eligió piedra y vos papel"
elif [ $opcion_random -eq $papel ] && [ $opcion_usuario -eq $tijera ]; then
	echo "Has ganado, la maquina eligió papel y vos tijera"
elif [ $opcion_random -eq $papel ] && [ $opcion_usuario -eq $piedra ]; then
	echo "Has perdido, la maquina eligió papel y vos piedra"
elif [ $opcion_random -eq $tijera ] && [ $opcion_usuario -eq $papel ]; then
	echo "Has perdido, la maquina eligió tijera y vos papel"
elif [ $opcion_random -eq $tijera ] && [ $opcion_usuario -eq $piedra ]; then
	echo "Has ganado, la maquina eligió tijera y vos piedra"
fi
