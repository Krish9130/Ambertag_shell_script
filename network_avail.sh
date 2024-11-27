#!/bin/bash

# Assign the first argument (hostname or IP) to a variable
host="$1"

# Check if the host variable is empty
if [ -z "$host" ]; then
    echo "Usage: $0 <hostname or IP>"  # Display usage if no argument is provided
    exit 1
fi

# Ping the host with 4 packets
ping -c 4 "$host"

# Check the exit status of the ping command
if [ $? -eq 0 ]; then
    echo "$host is reachable."  # Notify if the host is reachable
else
    echo "$host is not reachable."  # Notify if the host is not reachable
fi

