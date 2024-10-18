#!/bin/bash

num1= echo "Enter num1 :\c"
read num1

num2= echo "Enter num2 :\c"
read num2

result=$(( $num1+$num2 ))
echo "Addition of two Number is :"$result

result=$(( num1-num2 ))
echo "Subtraction of two number $num1 and $num2 is $result"

result=$(( $num1*$num2 )) 
echo "Multiplication of two number $num1 and $num2 is $result"

result=$(( num1/num2 ))
echo "Division of two number $num1 and $num2 is $result"

result=$(( num1%num2 ))
echo "Reminder of $num1 and $num2 is $result"

