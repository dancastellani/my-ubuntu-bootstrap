#!/usr/bin/env bash

### From: https://docs.docker.com/engine/installation/linux/ubuntulinux/
### Tested on Ubuntu 16.04

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' >> /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
apt-cache policy docker-engine
sudo apt-get install docker-engine
sudo service docker start

sudo groupadd docker
sudo gpasswd -a ${USER} docker

#Test if works
sudo docker run hello-world
