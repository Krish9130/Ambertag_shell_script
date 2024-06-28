#!/bin/bash
read -p 'Enter file name: ' file_name
echo "$file_name"
 
if [ -f $file_name ]
then
	echo "File is present in the directory"
else
	echo "File is not present inside the directory"
	exit
fi
echo

#Which string want to search
read -p 'Enter word want to search: ' String_Name
echo "$String_Name"

if grep -q "$String_Name" "$file_name"
then
	echo "$String_Name is found in $file_name"
else
	echo "$String_Name is not found in $file_name"
	exit
fi
echo


#read -p 'Enter the Column number; ' n

Awk_use(){

	awk /$String_Name/'{print}' $file_name

}

Awk_use

echo

read -p "which word want to change: " Name1
read -p "Replacing Name: " Replace_name

Sed_use(){

	sed 's'/$Name1/$Replace_name/'g' $file_name
}
Sed_use
