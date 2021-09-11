#!/bin/sh

# docker
# Attempting to install docker using the convenience script gives
# Unsupported distribution 'manjaro'
# Follow the speps from this tutorial
# https://linuxconfig.org/manjaro-linux-docker-installation
sudo pacman -S docker

sudo systemctl start docker.service
sudo systemctl enable docker.service

# Run docker without sudo (needs reboot)
sudo usermod -aG docker $USER

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
