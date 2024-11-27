#!/bin/bash

# Converts all filenames in a directory to lowercase.

# Assign the first argument (directory) to a variable
directory="$1"

# Check if the directory variable is empty
if [ -z "$directory" ]; then
    echo "Usage: $0 <directory>"            # Display usage if no argument is provided
    exit 1
fi

# Check if the provided argument is a valid directory
if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a valid directory."  # Display error if the directory is invalid
    exit 1
fi

# Change to the specified directory; exit if this fails
cd "$directory" || exit 1

# Loop through each file in the directory
for file in *; do
    # Check if the item is a regular file (not a directory)
    
    if [ -f "$file" ]; then
	# Convert the filename to lowercase using 'tr' and store it in newname
	newname=$(echo "$file" | tr 'A-Z' 'a-z')

        # If the new name is different, rename the file
        [ "$file" != "$newname" ] && mv "$file" "$newname"
    fi
done

