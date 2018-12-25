#!/bin/bash

# google translate
sudo apt-get install libnotify-bin xsel
sudo cp usr/bin/* /usr/bin/

# select the work and press shortcut Alt+t for translating
# import the shortcut config file
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < config/keybindings-translate.dconf
