echo "Preparing Docker Installation..."

# First, update your existing list of packages
apt update

# Next, install a few prerequisite packages which let apt use packages over HTTPS
apt install -y apt-transport-https ca-certificates curl software-properties-common

# Then add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add the Docker repository to APT sources
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

# Next, update the package database with the Docker packages from the newly added repo
apt update

# Finally, install Docker
apt install -y docker-ce

echo "Docker Installed"
