#!/bin/sh
# A Shell script for installing Docker
# Alvaro Casado - 10/May/2020

# If you already have an older version of Docker, make sure to uninstall it first. 
# https://www.docker.com/blog/getting-started-with-docker-for-arm-on-linux/

# uninstall older versions of Docker
sudo apt-get purge docker docker-engine docker.io containerd runc

# update and upgrade 
sudo apt-get update && sudo apt-get upgrade -y

# install necesary packages
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common vim fail2ban ntfs-3g -y

# install docker
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh

# install docker-compose
sudo apt-get update && sudo apt-get install -y --no-install-recommends docker-ce docker-compose

# add the current user to the docker group to avoid needing sudo to run the docker command
sudo usermod -aG docker $USER

echo 'Make sure to log out and back in again'