#!/bin/bash
set -eou pipefail

# Install Tweaks and allow ungroup applications
sudo apt install -y \
  gnome-shell-extensions \
  gnome-shell-extension-dash-to-panel \
  gnome-tweaks \
  adwaita-icon-theme-full

mkdir ~/tmp && mkdir -p ~/.local/share/gnome-shell/extensions/ && cd ~/tmp
git clone https://github.com/rockon999/dynamic-panel-transparency.git
mv dynamic-panel-transparency/dynamic-panel-transparency@rockon999.github.io/ ~/.local/share/gnome-shell/extensions/

echo "1) Log-out and Log back-in"
echo "2) Launch the “Tweaks” application"
echo "3) Click the “Extensions” category at the left side of the Tweaks window"
echo "4) Enable the “Dash to Panel” and “Dynamic Panel Transparency” extensions"
echo "5) Click in the Settings button of the “Dash to Panel” extension"
echo "(or right-click the 'Show Applications' button at the bottom left corner of your screen and click 'Dash to Panel Settings')"
echo "6) Go to Behaviour -> Desktop Button"
echo "7) Go to Behaviour -> Ungroup Applications"
echo "(in the settings define title width as 0)"
echo "8) Press “Alt + F2”, type “r”, and press ENTER to reload your shell"
