#!/bin/bash

num1=20
num2=10

echo $(( num1+num2 ))
echo $(( num1-num2 ))
echo $(( num1*num2 ))
echo $(( num1/num2 ))
echo $(( num1%num2 ))
echo

#Using expression

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )
echo

#Floating point math operation
num1=20.3
num2=10.6

echo "$num1+$num2" | bc     #bc -->base conversion: using for performing floating point operation
echo "$num1-$num2" | bc 
echo "$num1*$num2" | bc
echo "scale=2;$num1/$num2" | bc
echo "$num1%$num2" | bc
echo

#Using scale and bc 
num=24
echo "scale=2;sqrt($num)" | bc -l      # scale=2;=>meaning print upto 2 decimal point
echo "scale=2;3^3" | bc -l


