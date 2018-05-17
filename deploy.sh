#!/bin/bash


#Import rpm for visual studio code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
#Install base applications
sudo dnf check-update
sudo dnf install -y epel-release
sudo dnf install -y htop terminator vim code ansible git
#Update everything
sudo dnf update -y

