#!/bin/bash

read -p 'Enter word want to search: ' Name

read -p 'Enter file name: ' file_name
awk(){
	awk '/$name/{print}' $file_name
}
awk
