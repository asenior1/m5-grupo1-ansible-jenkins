#!/bin/bash

sudo echo 'root:vagrant' | chpasswd
sudo sed -i 's/prohibit-password/yes/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication\ no/PasswordAuthentication\ yes/' /etc/ssh/sshd_config
sudo service ssh restart
