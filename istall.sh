#!/bin/sh

set -e

# update and upgrade
apt update
apt upgrade

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Install docker-compose
apt install docker-compose
