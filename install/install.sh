#! /data/data/com.termux/files/usr/bin/bash
cd ~
pkg install wget -y
mkdir -p ~/Alabanta_Downloader
rm -rf ~/Alabanta_Downloader/*
rm -rf $PREFIX/tmp/install.sh
cd ~/Alabanta_Downloader
wget https://raw.githubusercontent.com/GitAlasGo/Alabanta_Downloader/refs/heads/main/Script/{Alabanta_Downloader.sh,Alabanta_Downloader_Settings}
chmod +x ~/Alabanta_Downloader/Alabanta_Downloader.sh
mkdir -p ~/bin
# If you already have a termux-url-opener, i'm just gonna move it so i can put mine
mv --backup=t $HOME/bin/termux-url-opener $HOME
ln -s ~/Alabanta_Downloader/Alabanta_Downloader.sh $HOME/bin/termux-url-opener
