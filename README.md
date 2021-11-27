### Manjaro-dev-tools

Notes on setting up a my dev tools. Used in Manjaro 21 with Gnome 3.38.4

If you have a HDPI screen, you may want to set the resolution to 3200x1800(16:9), instead of changing the scale. (Just like Ubuntu)

### Logitech K380 bluetooth keyboard
If keyboard cannot be found from the GUI:

```
sudo pacman -S bluez bluez-utils blueman
```
Then scan, pair and connect using the ```bluetoothctl``` [command](https://wiki.archlinux.org/title/Bluetooth#Pairing).
The keyboard can now be paired from the GUI if deleted.

### AUR packages
Enable AUR support in pamac GUI.

#### MySQL workbench
Install from pamac GUI

#### Telegram
Install from pamac GUI

### Anydesk
Install from pamac GUI (AUR)

### Gitkraken
Install from pamac (not the standalone version). (AUR)

#### VSCode + Platformio
Install ```visual-studio-code-bin``` from pamac GUI (AUR)

Install udev.rules so that platformio stops complaining (yellow warning in terminal). Documented [here](https://docs.platformio.org/en/latest/faq.html#platformio-udev-rules).

```
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/master/scripts/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules
```

Restart ```udev``` service

```
sudo udevadm control --reload-rules
sudo udevadm trigger
```

Add user to ```uucp``` group (similar to ```dialout``` in Debian/Ubuntu).
```
sudo usermod -a -G uucp $USER
sudo usermod -a -G lock $USER
```
Reboot for the user group changes to take effect.

#### Spotify
```
snap install spotify
```
If you have a HDPI screen, Spotify fonts will be too small. To enlarge them edit:
```
sudo gedit /var/lib/snapd/desktop/applications/spotify_spotify.desktop
```
Add ```--force-device-scale-factor=2.0``` (or 1.5 or whatever scale factor you want) to the ```Exec``` line:
```
Exec=env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/spotify_spotify.desktop /snap/bin/spotify --force-device-scale-factor=2.0 %U
```

#### Solstice

Download [tarball](https://www.meso-star.com/projects/solstice/downloads/Solstice-0.9.0-GNU-Linux64.tar.gz)

Manjaro does not use bash by default, so you need to replace ```realpath $BASH_SOURCE``` with ```realpath $0``` in ```solstice.profile``` file.

Then you may add e.g:

```source /home/orestis/Programs/Solstice/etc/solstice.profile```

in your ```~/.zshrc``` file.

#### fd

Fast and user-friendly alternative to find, see [here](https://github.com/sharkdp/fd)
```pacman -S fd --noconfirm```

#### zsh-z

Quick navigation to frequently used folders

Use ```zsh-z.sh``` script to install.
