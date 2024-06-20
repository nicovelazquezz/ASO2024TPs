#!/bin/bash

echo "Bienvenido a la calculadora."
read -p "Ingrese el primer número: " num1
read -p "Ingrese el segundo número: " num2
echo -e "Que quieres hacer?\n 1 - Sumar\n 2 - Restar\n 3 - Multiplicar\n 4 - Dividir"
read opcion
#control de flujo switch
case $opcion in
	1)
	suma=$((num1+num2))
	echo "Has sumado $num1 + $num2. El resultado da $suma"
	;;
	2)
	resta=$((num1-num2))
	echo "Has restado $num1 - $num2. El resultado da $resta"
	;;
	3)
	mult=$((num1*num2))
	echo "Has multiplicado $num1 x $num2. El resultado da $mult"
	;;
	4)
	div=$((num1/num2))
	echo "Has dividido $num1 / $num2. El resultado da $div"
	;;
	*)
	echo "No has ingresado opción válida."
esac
