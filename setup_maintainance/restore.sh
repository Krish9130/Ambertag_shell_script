#!/bin/bash

read -p "Provide Path of Your backup file(.tar.gz): " backup_file
read -p "Provide Path where you want to restore backup: " restore_dir

# Restoring the backup file or extracting backup file in restore directory

sudo tar -xzf "$backup_file" -C "$restore_dir"
