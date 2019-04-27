#!/bin/bash
# Install Tweaks and allow ungroup applications
sudo apt install -y \
  gnome-shell-extensions \
  gnome-shell-extension-dash-to-panel \
  gnome-tweaks \
  adwaita-icon-theme-full

echo "1) Log-out and Log back-in"
echo "2) Launch the “Tweaks” application"
echo "3) Click the “Extensions” category at the left side of the Tweaks window"
echo "4) Enable the “Dash to Panel” extension"
echo "5) Click in the Settings button of the “Dash to Panel” extension"
echo "(or right-click the 'Show Applications' button at the bottom left corner of your screen and click 'Dash to Panel Settings')"
echo "6) Go to Behaviour -> Desktop Button"
echo "7) Go to Behaviour -> Ungroup Applications"
echo "(in the settings define title width as 0)"

# If keyboard is wrong in login page
# $ localectl set-x11-keymap br,br pc105 br
# $ or
# $ localectl set-x11-keymap br,br pc105 nativo
