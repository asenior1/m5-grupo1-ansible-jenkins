#!/bin/bash

echo '-------------------------------------------------------'
echo "Levantando Jenkins Server"
echo '-------------------------------------------------------'
cd nodos
vagrant destroy -f && vagrant up

echo '-------------------------------------------------------'
echo "Levantando Ansible Master"
echo '-------------------------------------------------------'
cd ../master
vagrant destroy -f && vagrant up

echo '-------------------------------------------------------'
echo '-------------------------------------------------------'
echo ' INSTRUCCIONES '
echo '-------------------------------------------------------'
echo '1 - Entrar a Ansible Master. Ejecutar:'
echo '-------------------------------------------------------'
echo 'cd master'
echo 'vagrant ssh'
echo '-------------------------------------------------------'
echo '-------------------------------------------------------'
echo '2 - Ejecutar Playbook'
echo '-------------------------------------------------------'
echo 'ansible-playbook -i projects/inventory/inventories projects/playbooks/playbook-jenkins.yaml'
echo '-------------------------------------------------------'
echo '-------------------------------------------------------'