#!/bin/bash
# https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-debian
export UBUNTU_CODENAME=jammy
echo "Adding the keyring"
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | apt-key add - 
echo "Adding to apt sources"
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | tee /etc/apt/sources.list.d/ansible.list
echo "Running apt update and install"
apt  update
apt -y install ansible
