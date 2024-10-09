# Run this at your own risk, because the code is badly written.

Run this command to install everything.
```
pkg install axel -y && cd ~ && axel -n 10 -o $PREFIX/tmp https://raw.githubusercontent.com/GitAlasGo/Axelly_Downloader/refs/heads/main/install/install.sh && bash $PREFIX/tmp/install.sh
```
You need the url of the file you want to download, share it to termux to download it.

This script uses axel to download the files.

The default path where files gets downloaded in is /sdcard/download.

So you need to grant: termux-setup-storage, or you can change this path in the "Alabanta_Downloader_Settings" file.
