#!/bin/bash
# 1. If you already installed a previous version, remove it
sudo apt-get remove docker docker-engine

# 2. Install the key managers and related tools
sudo apt-get install apt-transport-https ca-certificates curl python-software-properties software-properties-common

# 3. Download and install the key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# 4. Add the Docker official repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian wheezy stable"

# 5. Update the packages
sudo apt-get update

# 6. Install Docker-ce
sudo apt-get install docker-ce

# 7. Verify if docker is correctly installed
# If everything runs fine, it should show: "Hello from Docker! ..."
sudo docker run hello-world