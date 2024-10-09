#!/data/data/com.termux/files/usr/bin/bash
# We source or bash this file, so we can pull the stored variables from it
source ~/Axelly_Downloader/Script/Axelly_Downloader_Settings
echo "threads set to $threads"
echo "Reminder that you can't set threads more than 16"
# What i call threads is actually just --max-connection-per-server
# There's Aria2App on f-droid
# Reminder i use 1DM not Aria2app or axel

echo
read -e -p "file name: " -i "$(sed -r 's#.*/##' <<< $1)" name
read -p 'thread: ' thread
read -e -p 'path: ' -i "$path" n_path

[[ $thread =~ ^[0-9]+$ ]] && threads=$thread || echo "Using Default threads"
echo "Threads set to $threads"
# Downloading with aria2c
aria2c -x "$threads" -d "$n_path" -o "$name" $1
