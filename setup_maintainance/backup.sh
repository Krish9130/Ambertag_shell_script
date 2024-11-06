#!/bin/bash

# Shell Script for Backup of any directory
# assign variable for backup & source dir

#bk_dir = "/home/krishna/Documents/Sangachadwam/projects/"     #Backup directory
#source_dir = "/home/krishna/Documents/Sngachadwam/pshell"

read -p "Give Backup Directory Path: " bk_dir
read -p "Give Source Directory Path: " source_dir

#Create a timestamped backup of the source directory

sudo tar -czf "$bk_dir/backup_$(date +%Y%m%d_%H%M%S).tar.gz" -C "$source_dir" .


