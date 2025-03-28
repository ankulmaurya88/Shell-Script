#!/bin/bash 

echo "Enter the Number: "
read num1 

if [ $(($num1 % 2)) -eq 0 ]; then
	echo " $num1 is Even number."
else
	echo " $num1 is Odd number."
fi
