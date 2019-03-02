#!/bin/sh

echo "Installing google translate tool in Ubunut desktop environment"
sudo apt-get install libnotify-bin xsel
sudo cp usr/bin/* /usr/bin/


# import the shortcut config file
# the command to backup custom shortcut
# dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > config/keybindings-translate.dconf
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < config/keybindings-translate.dconf

echo "Install complete"
echo "select the work and press shortcut Alt+t for translating"

