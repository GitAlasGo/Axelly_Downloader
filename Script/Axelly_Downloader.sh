#!/data/data/com.termux/files/usr/bin/bash
source ~/Axelly_Downloader/Script/Axelly_Downloader_Settings
echo "threads set to $threads"
echo
read -e -p "file name: " -i "$(sed -r 's#.*/##' <<< $1)" name
read -p 'thread: ' thread

[[ $thread =~ ^[0-9]+$ ]] && threads=$thread || echo "Using Default threads"
echo "Threads set to $threads"
axel -a -n $threads -o "$path$name" $1
