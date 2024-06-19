#!/bin/bash

numero_random=$(( (RANDOM % 100) +1 ))
numero_ingresado=0
echo "El número random es $numero_random"
while test $numero_random -ne $numero_ingresado;
	do
	   read -p "Deberás adivinar un número del 1 al 100. Ingresa tu número: " numero_ingresado
		if test $numero_random -gt $numero_ingresado;
			then  echo "El número a adivinar es más grande"
		elif test $numero_ingresado -gt $numero_random;
			then echo "El número a adivinar es más chico"
		else echo "Felicitaciones. Has adivina el número. Era el $numero_random."
		fi
done
