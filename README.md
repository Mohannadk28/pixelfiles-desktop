# pixelfiles-desktop

the desktop division of [my dotfiles](https://github.com/mohannadk28/pixelfiles)

---

## Installation

You could use the [Pixelfiles Installer](https://github.com/mohannadk28/pixelfiles) but if you only want the desktop:

1. Install all the necessery packages
```sh
sudo pacman -S awesome sddm rofi kitty thunar brightnessctl volumeicon cbatticon network-manager-applet slock
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

---

## Credit
1. [AwesomeWM Config Template](https://github.com/lcpz/awesome-copycats) by [lcpz](https://github.com/lcpz) on [Github](https://github.com)
2. [Nordic Rofi Theme](https://github.com/undiabler/nord-rofi-theme) by [undiabler](https://github.com/undiabler/) on [Github](https://github.com)
3. [Nordic Kitty Theme](https://github.com/connorholyday/nord-kitty) by [connorholyday](https://github.com/connorholyday/) by [Github](https://github.com)
4. [Wallpaper](https://unsplash.com/photos/8P-uQaTd8rw) by [Rodion Kutsaiev](https://unsplash.com/@frostroomhead) on [Unsplash](https://unsplash.com)
