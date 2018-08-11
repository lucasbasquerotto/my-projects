#!/bin/bash
# 1. Add yourself to the sudo group 
# (Note: if you are a member of the docker group this is not needed.).
sudo usermod -a -G sudo $USER

# 2. Install Python3 and pip3:
sudo apt-get install python3-pip

# 3. Install subuser
pip3 install subuser

# Add ~/.subuser/bin to your path by adding the line 
#  PATH=$HOME/.subuser/bin:$PATH to the end of your ~/.bashrc file.
echo -e "PATH=\n\$HOME/.subuser/bin:\$PATH\n" >> ~/.bashrc