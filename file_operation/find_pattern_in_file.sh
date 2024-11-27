#!/bin/bash
#Search for a Pattern inside a File


read -p "Enter filename: " filename
read -p "Enter a pattern to search for: " pattern

echo ""
# Search for the pattern in the file and display line numbers
# -w: Only match whole words.
grep -w -n $pattern $filename

echo "" 
# If no match is found, display a message
if [ $? -eq 1 ]; then
	echo "pattern did not match."
fi
