#!/bin/bash
set -eoux pipefail

sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common wget

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

# sudo add-apt-repository -y ppa:projectatomic/ppa

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo add-apt-repository multiverse

sudo apt update
sudo apt install -y \
  google-chrome-stable \
  docker-ce \
  # podman \
  code \
  spotify-client \
  steam \
  gnome-shell-extensions \
  gnome-shell-extension-dash-to-panel \
  gnome-tweaks \
  adwaita-icon-theme-full

if [ ! -d ~/.local/share/gnome-shell/extensions/dynamic-panel-transparency@rockon999.github.io/ ]; then
  mkdir ~/tmp && mkdir -p ~/.local/share/gnome-shell/extensions/ && cd ~/tmp
  git clone https://github.com/rockon999/dynamic-panel-transparency.git
  mv dynamic-panel-transparency/dynamic-panel-transparency@rockon999.github.io/ ~/.local/share/gnome-shell/extensions/
fi

git config --global credential.helper store
git config --global user.email "lucasbasquerotto@example.com"
git config --global user.name "Lucas Basquerotto"

cd ~ && git clone https://bitbucket.org/lucasbasquerotto/info

sudo mkdir /main
sudo chmod 777 /main

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
