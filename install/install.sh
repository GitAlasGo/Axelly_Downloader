#! /data/data/com.termux/files/usr/bin/bash
cd ~
pkg install wget -y
rm -rf ~/Alabanta_Downloader
mkdir -p ~/Alabanta_Downloader
wget https://raw.githubusercontent.com/GitAlasGo/Alabanta_Downloader/refs/heads/main/Script/{Alabanta_Downloader.sh,Alabanta_Downloader_Settings}
chmod +x ~/Alabanta_Downloader.sh
mkdir -p ~/bin
ln -s ~/Alabanta_Downloader/Alabanta_Downloader.sh $HOME/bin/termux-url-opener
