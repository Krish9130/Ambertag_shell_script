#!/bin/bash

# Calculate the average of an array of numbers

echo "Enter an array of numbers (separated by space):"
read -a arr               # Read the input as an array of numbers and store in 'arr'
sum=0

# loop each item or number in array
for i in "${arr[@]}"
do
	sum=$((sum+i))               #add each no to sum
done
avg=$((sum/${#arr[@]}))         # ${#arr[@]} gives the number of elements in the array

echo "Average of the array element: $avg"
