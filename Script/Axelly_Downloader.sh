#!/data/data/com.termux/files/usr/bin/bash
source ~/Axelly_Downloader/Script/Axelly_Downloader_Settings
echo "threads set to $threads"
echo
echo "file name: $(sed -r 's#.*/##' <<< $1)"
read -p 'name: ' name
read -p 'thread: ' thread

[[ $thread =~ ^[0-9]+$ ]] && threads=$thread || echo "Using Default threads"
echo "Threads set to $threads"
axel -a -n $threads -o "$path$name" $1
