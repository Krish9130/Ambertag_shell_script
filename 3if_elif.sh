#!/bin/bash
word="a"

if [ $word = "b" ]
then
	echo "Condition b is true"
elif [ $word = "a" ]
then
	echo "Condition a is true"
else
	echo "Condition is false"
fi
