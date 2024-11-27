#!/bin/bash

# Prompt the user to enter the filename
read -p "Enter filename: " filename

# Prompt the user to enter the pattern to replace
read -p "Enter a pattern to replace: " pattern

# Prompt the user to enter the new pattern
read -p "Enter new pattern: " new_pattern

# Check if the pattern exists in the file
grep -q $pattern $filename

# If the pattern is found, replace it with the new pattern
if [ $? -eq 0 ]; then
    # Replace the old pattern with the new one in the file using sed
    sed -i "s/$pattern/$new_pattern/g" $filename

    # Display the updated lines that contain the new pattern
    echo "Updated Lines: "
    grep -w -n $new_pattern $filename
else
    # If the pattern was not found, show an error message
    echo "Error! Pattern did not match."
fi

