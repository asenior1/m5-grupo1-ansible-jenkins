# m5-grupo1-ansible-jenkins
Diplomado Devops - Grupo 1 - Modulo 05 - Instalacion de Jenkins con Ansible

#### Levantar Nodo Jenkins Server

Entrar en carpeta `nodos` y ejecutar:

`vagrant up`

#### Levantar Ansible Master 

Entrar en carpeta `master` y ejecutar:

`vagrant up`


#### Ejecutar Playbook

Entrar en carpeta `master` y ejecutar:

`vagrant ssh`

Desde el terminal ssh (dentro del master) ejecutar:

`ansible-playbook -i projects/inventory/inventories projects/playbooks/playbook-jenkins.yaml`

o

`ansible-playbook --connection=local -i inventory.yml playbook-jenkins.yml`


### LEVANTAR VAGRANT ALTERNATIVA

Ejecutar:

`./initVagrant.sh`

## Abrir Jenkins

- Copiar Password desde TASK \[Imprimir password\]
- Abrir url [192.168.3.10:8080](192.168.3.10:8080)

### Ejecutar en Windows 

- Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Hypervisor  (En PowerShell)



