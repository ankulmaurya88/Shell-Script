#!/bin/bash




echo "Enter first number: "
read num1

echo "Enter second number: "
read num2


sum=$((num1+num2))

deff=$((num1-num2))

prod=$((num1*num2))


if [ "$num2" -ne 0 ]; then 
	div=$(echo "scale=2; $num1 / $num2" | bc)
else
	div="Undefined (division by zero)"
fi


echo "Addition: $sum"
echo "Subtraction: $deff"

echo "Multiplication: $prod"
echo "Division: $div"


