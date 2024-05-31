#!/bin/bash

source_dir="/home/kutso/Desktop/project_challenge"
dest_dir="/home/kutso/Desktop/"

backup_dir="$dest_dir/backup"
mkdir -p "$backup_dir"

timestamp=$(date +%Y-%m-%d-%H-%M)
backup_folder="$backup_dir/backup_$timestamp"

cp -r "$source_dir" "$backup_folder"

exit 0

