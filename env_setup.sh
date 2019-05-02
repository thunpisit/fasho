#!/bin/bash

##################
# INSTALL DOCKER #
##################

# Install prerequisite packages
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce

# Install Docker
sudo apt install docker-ce -y
sudo systemctl status docker

# If you want to avoid typing sudo whenever you run the docker command, add your username to the docker group:
# $ sudo usermod -aG docker ${USER}

##################
#### RUN ENV ####
##################

sudo docker pull waleedka/modern-deep-learning
# sudo docker run -it -p 8888:8888 -p 6006:6006 -v ~/:/host waleedka/modern-deep-learning
