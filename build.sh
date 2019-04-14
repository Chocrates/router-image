#!/bin/bash

yes y | ssh-keygen -t rsa -b 4096 -f ./id_rsa -q -N "" >/dev/null
git clone https://github.com/core-process/linux-unattended-installation.git
// apply patches
sudo linux-unattended-installation/ubuntu/18.04/build-iso.sh $(pwd)/id_rsa.pub

// start vm
// get ip
ansible-playbook provision.yml
