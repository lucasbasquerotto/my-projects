#!/bin/bash
set -eou pipefail

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

# To disable the mouse middle click button pasting text:
# https://unix.stackexchange.com/a/277488/293952
sudo apt install xbindkeys xsel xdotool

cat > ~/.xbindkeysrc << EOF
"echo -n | xsel -n -i; pkill xbindkeys; xdotool click 2; xbindkeys"
b:2 + Release
EOF

xbindkeys -p

# Run "xbindkeys" on startup, "pkill xbindkeys" to stop
(cat | sudo tee /etc/systemd/system/xbindkeys > /dev/null) << EOF
[Unit]
Description=Job that runs xbindkeys to disable middle mouse button paste

[Service]
ExecStart=xbindkeys
Type=oneshot
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

# If keyboard is wrong in login page
# $ localectl set-x11-keymap br,br pc105 br
# $ or
# $ localectl set-x11-keymap br,br pc105 nativo
