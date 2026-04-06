#!/bin/bash

growpart /dev/nvme0n1 4
lvextend -L +30G /dev/RootVG/varVol
xfs_growfs /var

dnf -y install dnf-plugins-core
dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable --now docker
docker run hello-world

usermod -aG docker ec2-user
