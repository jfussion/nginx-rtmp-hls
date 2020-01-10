#!/bin/sh

set -e

# update and upgrade
apt update
apt upgrade

# install zsh
apt install zsh
yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Install docker-compose
apt install docker-compose
