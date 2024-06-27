#!/bin/bash

read -p 'Enter word want to search: ' Name

read -p 'Enter file name: ' file_name

Awk_use(){

	awk /$Name/'{print}' $file_name

}

Awk_use
