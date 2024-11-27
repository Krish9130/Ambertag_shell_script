#!/bin/bash

# List running processes
echo "Current running processes:"
ps aux | awk '{print $1, $2, $11}' | column -t

# Ask user for the process ID (PID) to kill
read -p "Enter the PID of the process you want to kill: " pid

# Check if the PID is a number
if ! [[ "$pid" =~ ^[0-9]+$ ]]; then
    echo "Invalid PID. Please enter a numeric PID."
    exit 1
fi

# Check if the process exists
if ps -p "$pid" > /dev/null; then
    # Ask for confirmation
    read -p "Are you sure you want to kill process $pid? (y/n): " confirm
    if [[ "$confirm" =~ ^[yY]$ ]]; then
        kill "$pid"
        if [ $? -eq 0 ]; then
            echo "Process $pid has been killed."
        else
            echo "Failed to kill process $pid."
        fi
    else
        echo "Process $pid was not killed."
    fi
else
    echo "No such process with PID $pid."
fi

