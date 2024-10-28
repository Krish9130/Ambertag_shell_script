#!/bin/bash

# Threshold in percentage
THRESHOLD=50

# Check disk usage for root (/)
USAGE=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')

# check disk space is not more than Threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
	echo "Disk space usage is exceeded more than defined Threashold is $THRESHOLD & Current Usage is at ${USAGE}% on / (root) directory"

else
  echo "Disk space usage is under control."
fi

