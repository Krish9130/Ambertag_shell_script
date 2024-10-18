#!/bin/bash

output_file="system_info.txt"

# Gather system information and save to a file

echo "Gathring System Information:" > "$output_file"
echo "Date Time: $(date)" >> "$output_file"
echo "Hostname: $(hostname)" >> "$output_file"
echo "OS is used: $(uname -a)" >> "$output_file"
echo "Memory is used or free status: $(free -h)" >> "$output_file"
echo "Disk Space: $(df -h)" >> "$output_file"
echo "Disk Usage: $(du -h)" >> "$output_file"
echo "System info saved to $output_file."
