#!/bin/bash

if [ -e "file.sh" ]; then
    echo "File exists."
else
    touch "file.sh"
    echo "New file created."
fi

