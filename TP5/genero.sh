#!/bin/bash

read -p "Ingrese un nombre para saber a que genero pertecene: " nombre
response=$(curl -s https://api.genderize.io/?name=$nombre)
genero=$(echo "$response" | jq -r '.gender')
if test $genero = "male"; 
		then echo "$nombre es un nombre probable para el género Masculino"
	elif test $genero = "female";
		then echo "$nombre es un nombre probable para el género Femenino"
	else echo "Nombre no válido."
fi
