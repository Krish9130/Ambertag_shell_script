#!/bin/bash

read -p 'Enter word want to search: ' Name

read -p 'Enter file name: ' file_name

Awk_use(){

	awk /$Name/'{print}' $file_name

}

Awk_use

read -p "which word want to change: " Name1
read -p "Replacing Name: " Replace_name

Sed_use(){

	sed 's'/$Name1/$Replace_name/'g' $file_name
}
Sed_use
