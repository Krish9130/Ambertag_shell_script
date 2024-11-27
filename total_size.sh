#!/bin/bash

# Calculates the total size of all files in a directory.
directory="/home/krishna//Documents/Sangachadwam/shell"

#
total_size=$(du -sh "$directory" | awk '{print $1}')

echo "Total size of files in $directory: $total_size"

