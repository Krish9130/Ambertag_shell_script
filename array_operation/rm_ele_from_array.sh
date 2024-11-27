#!/bin/bash

arr=("s3" "route53" "Ec2" "vpc" "subnet")

echo "Given arrey: ${arr[*]}"
read -p "Enter an element to remove: " val

arr=("${arr[@]/$val}")
echo "Resultant array: ${arr[*]}"
