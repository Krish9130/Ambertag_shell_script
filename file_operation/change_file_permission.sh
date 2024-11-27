#!/bin/bash

# change overall permission of file

read -p "Enter the file name: " file

read -p "Enter new permission in Absolute Mode(eg.777): " permissions

# if file is present then it change the permissions else it printing file does not exist
if [ -f $file ]; then
	sudo chmod $permissions $file
	echo "Permission for file $file has been changed"
else
	echo "Error the file $file does not exist"
fi


