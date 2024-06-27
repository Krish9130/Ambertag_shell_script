#!/bin/bash

read -p 'Enter word want to search: ' Name

read -p 'Enter file name: ' file_name
read -p 'which number of column you want to print: ' n

Awk_use(){

	awk /$Name/'{print $n}' $file_name

}

Awk_use
