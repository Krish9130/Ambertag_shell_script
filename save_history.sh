#!/bin/bash

# Define the output file
output_file="myfile.txt"

# Check if the file exists
if [ ! -f "$output_file" ]; then
    # Create the file if it doesn't exist
    touch "$output_file"
    echo "$output_file has been created."
else
    echo "$output_file already exists."
fi

# Get the command history and append it to the file
$(fc -l) >> "$output_file"

# Notify the user
echo "Command history has been saved to $output_file."

