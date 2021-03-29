#!/bin/bash

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa
ssh-keyscan 192.168.3.10 >> ~/.ssh/known_hosts
sshpass -p vagrant ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.3.10
sshpass -p vagrant ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@192.168.3.10