#!/bin/bash
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum -y install docker-ce docker-ce-cli containerd.io
base=https://github.com/docker/machine/releases/download/v0.16.0
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
install /tmp/docker-machine /usr/local/bin/docker-machine
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl start docker
