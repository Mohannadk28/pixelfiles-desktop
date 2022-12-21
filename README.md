# pixelfiles-desktop

-the desktop division of [my dotfiles](https://github.com/mohannadk28/pixelfiles)

---

This Config Applies To:-
1. [volumeicon](https://github.com/Maato/volumeicon)
2. [AwesomeWM](https://awesomewm.org/)
3. [Kitty](https://sw.kovidgoyal.net/kitty/)
4. [Conky](https://github.com/brndnmtthws/conky)
5. [Picom](https://github.com/yshui/picom)
6. [Rofi](https://github.com/davatorium/rofi)
7. [Kvantum](https://github.com/tsujan/Kvantum)

---
## Installation

You could use the [Pixelfiles Installer](https://github.com/mohannadk28/pixelfiles) but if you only want the desktop:

1. Install all the necessery packages
```sh
sudo pacman -S kvantum shotgun hacksaw wget conky firefox awesome sddm rofi kitty thunar brightnessctl volumeicon cbatticon network-manager-applet picom polkit-gnome slock lxappearance ttf-ubuntu-font-family noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk ttf-ubuntumono-nerd 
```

2. Clone the Repo to it's appropirate directory
```sh
mkdir -p ~/.pixelfiles
git clone --recurse-submodules --remote-submodules --depth=1 https://github.com/mohannadk28/pixelfiles-desktop ~/.pixelfiles/pixelfiles-desktop
```

3. allow `setup-desktop.sh` to execute
```sh
chmod +x setup-desktop.sh
```

4. run `setup-desktop.sh`
```sh
sh setup-desktop
```

5. clone the [Nordic GTK Theme](https://github.com/EliverLara/Nordic) by [EliverLara](https://github.com/EliverLara)
```sh
cd "$HOME"/.themes
wget https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic-bluish-accent-standard-buttons-v40.tar.xz
tar -xf  Nordic-bluish-accent-standard-buttons-v40.tar.xz
rm -rf Nordic-bluish-accent-standard-buttons-v40.tar.xz
```
6. Install The [MateriaNordDark](https://github.com/tonyfettes/materia-nord-kvantum) [Kvantum](https://github.com/tsujan/Kvantum) Theme By [tonyfettes]()
```sh
git clone https://github.com/tonyfettes/materia-nord-kvantum.git /tmp/materia-nord-kvantum 
sudo mv /tmp/materia-nord-kvantum/Kvantum/MateriaNordDark /usr/share/Kvantum
rm -rf /tmp/materia-nord-kvantum
```

7. Add This to your /etc/environment
```
QT_STYLE_OVERRIDE=kvantum
```

8. Install the [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) by the [PapirusDevelopmentTeam](https://github.com/PapirusDevelopmentTeam/)
```sh
wget -qO- https://git.io/papirus-icon-theme-install | sh
```

9. Reboot
```sh
reboot
```

10. Use [LXAppearance](https://github.com/lxde/lxappearance) to Change the Icon Theme and the GTK Theme

11. Use Kvantum Manager to Apply the Kvantum Theme

---

## Credit
1. [Nordic GTK Theme](https://github.com/EliverLara/Nordic) by [EliverLara](https://github.com/EliverLara)
2. [MateriaNordDark](https://github.com/tonyfettes/materia-nord-kvantum) by [tonyfettes](https://github.com/tonyfettes)
3. [Nord Conky Config](https://gitlab.com/dwt1/dotfiles/-/blob/master/.config/conky/awesome/nord-01.conkyrc) by [dwt1 (DistroTube)](https://gitlab.com/dwt1) on [Gitlab](https://gitlab.com/)
4. [AwesomeWM Config Template](https://github.com/lcpz/awesome-copycats) by [lcpz](https://github.com/lcpz) on [Github](https://github.com)
5. [Nord Rofi Theme](https://github.com/amayer5125/nord-rofi) by [amayer5125](https://github.com/amayer5125/) on [Github](https://github.com)
5. [Nord Kitty Theme](https://github.com/connorholyday/nord-kitty) by [connorholyday](https://github.com/connorholyday/) by [Github](https://github.com)
6. [Wallpaper](https://unsplash.com/photos/8P-uQaTd8rw) by [Rodion Kutsaiev](https://unsplash.com/@frostroomhead) on [Unsplash](https://unsplash.com)
