#!/bin/bash

#Uninstall old versions
sudo su
yum search docker
yum info docker

#Install Docker
yum install docker -y
systemctl start docker
systemctl enable docker

#Cloning the repo
docker pull bnktch/petclinic

#Deploying app
docker run -d -p 8080:8080 bnktch/petclinic