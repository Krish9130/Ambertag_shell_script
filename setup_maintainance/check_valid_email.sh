#!/bin/bash

read -p "Enter an email id:" id
if [[ $id =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]];
then
	echo "This is a valid email id"

else
	echo "This is not valid email id"
fi
