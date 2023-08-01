# ubuntu-touch-utility-scripts
Just a bunch of useful scripts for Ubuntu Touch

In order to run a file, open Terminal in Ubuntu Touch, change the file permission with `chmod 700 [filename]` then run the file with `./[filename]`.

I usually put these files in the `Documents/` folder for convenience.

## createSymbolicLinkToWaydroid.sh
This will create a symbolic link named `waydroid_home_link`, which allows root user to easily access the home folder of the Waydroid user.

## fromWaydroid.sh / toWaydroid.sh
Both of these scripts need to be run as root. The first one will retrieve files from Waydroid `Documents/` folder and put it inside a folder named `retrieved/` where the script was ran. The second one will send files from a folder named `send/` where the script was ran, to the `Documents/` folder inside Waydroid.

I created these scripts because there is no convenient way to send files between Waydroid and Ubuntu Touch. However, during a discussion with a Volla Phone representative, I was told there is a way to use bind mount between Ubuntu Touch and Waydroid: https://docs.waydro.id/faq/setting-up-a-shared-folder

```
sudo mount --bind ~/Documents ~/.local/share/waydroid/data/media/0/Documents 
sudo mount --bind ~/Downloads ~/.local/share/waydroid/data/media/0/Download 
sudo mount --bind ~/Music ~/.local/share/waydroid/data/media/0/Music 
sudo mount --bind ~/Pictures ~/.local/share/waydroid/data/media/0/Pictures 
sudo mount --bind ~/Videos ~/.local/share/waydroid/data/media/0/Movies
```

Bear in mind though that if you have any files in these folders within Waydroid, they will no longer be visible until you remove the bind mount. Make sure you don't have anything of importance before you run these commands.

## showBatteryPercentage.sh
This script will show battery percentage on Ubuntu Touch 20.04. If you are running Ubuntu Touch 16.04, have a look at the following app which can be used to tweak your system (including enabling/disabling dark mode and battery percentage): https://open-store.io/app/ut-tweak-tool.sverzegnassi

## install-waydroid.sh
See: https://github.com/HelloVolla/ubuntu-touch-beta-tests/issues/132#issuecomment-1304274366

This script is no longer relevant, because installing Waydroid on Volla 22 is now as simple as installing the following app and pressing a few buttons: https://open-store.io/app/waydroidhelper.aaronhafer
