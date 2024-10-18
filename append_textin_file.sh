#!/bin/bash

echo "Enter the number of the file : \c"
read file_name

if [ $file_name ]
then
	if [ -w $file_name ]
	then
		echo "Type some text data. To quite press ctrl+d"
		cat >> $file_name
	else
		echo "The file do not have write permission"
	fi
else
	echo "$file_name is not exists"
fi
