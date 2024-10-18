#!/bin/bash

num1=1000
num2=800

$num1 + $num2= $(( num1+num2 )) 
echo "The addition of two number is $num1 and $num2 is $(( num1+num2 ))"
echo

$(( num1-num2 )) = $num1 - $num2
echo "The subtraction of two number is $num1 and $num2 is $(( num1-num2 ))"
echo 

$(( num1*num2 )) = $num1 * $num2
echo "The Multiplication of two number is $num1 and $num2 is $(( num1*num2 ))"
echo

$(( num1/num2 )) = $num1 / $num2 | bc
echo "The division of two number $num1 and $num2 is $(( num1/num2 ))"
echo

$(( num1%num2 )) = $num1 % $num2 
echo "The remainder of two division number $num1 and $num2 is $(( num1%num2 ))"

