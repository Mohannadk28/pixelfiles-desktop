#!/bin/bash

PFWMDIR=$HOME/.pixelfiles/pixelfiles-desktop
CONFIGDIR=$HOME/.config

rm -rf "$CONFIGDIR"/awesome
rm -rf "$CONFIGDIR"/kitty
rm -rf "$CONFIGDIR"/volumeicon
rm -rf "$CONFIGDIR"/rofi
rm -rf "$CONFIGDIR"/picom.conf

ln -s "$PFWMDIR"/awesome "$CONFIGDIR"/awesome
ln -s "$PFWMDIR"/rofi "$CONFIGDIR"/rofi
ln -s "$PFWMDIR"/picom.conf "$CONFIGDIR"/picom.conf
ln -s "$PFWMDIR"/kitty "$CONFIGDIR"/kitty
ln -s "$PFWMDIR"/volumeicon "$CONFIGDIR"/volumeicon
