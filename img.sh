#!/bin/bash -e

sudo mkdir /home/img-102

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

sudo apt update  && sudo apt install -y curl gnupg apt-transport-https


curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -


sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye main" > /etc/apt/sources.list.d/microsoft.list'


sudo apt update && sudo apt install -y powershell

echo 'Install-Module Az.ManagedServiceIdentity -Scope AllUsers  -Force -Verbose' >> /home/mod1.ps1
echo 'Install-Module Az.ImageBuilder -Scope AllUsers  -Force -verbose' >> /home/mod1.ps1

sudo pwsh -command /home/mod1.ps1


