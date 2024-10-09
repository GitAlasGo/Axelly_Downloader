#! /data/data/com.termux/files/usr/bin/bash
pkg install aria2c -y
mkdir -p ~/bin
# If you already have a termux-url-opener, i'm just gonna move it so i can put mine
mv --backup=t $HOME/bin/termux-url-opener $HOME
ln -s ~/Axelly_Downloader/Script/Axelly_Downloader.sh $HOME/bin/termux-url-opener
