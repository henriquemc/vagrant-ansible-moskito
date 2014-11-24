#!/bin/bash

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update

if [ ! -f /usr/bin/ansible ]; then
  echo "Installing Ansible and dependencies."
	sudo apt-get --no-install-recommends -q -y install ansible sshpass
  echo "Ansible installed."
fi 