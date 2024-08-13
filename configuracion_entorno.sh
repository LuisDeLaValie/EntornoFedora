#!/bin/bash

sudo  dnf install git

# Mandar a llamar instalar_zsh_ohmyzsh.sh
echo "Llamando a instalar_zsh_ohmyzsh.sh..."
./instalar_zsh_ohmyzsh.sh

# Crear directorios
echo "Creando directorios..."
mkdir -p ~/Developer/Personal ~/Developer/Escuela ~/Developer/Cositec

# Crear Alias
echo "Creando alias..."
echo 'alias DevP=~/Developer/Personal' >> ~/.bashrc
echo 'alias DevP=~/Developer/Personal' >> ~/.bash_profile
echo 'alias DevP=~/Developer/Personal' >> ~/.zshrc

echo 'alias DevE=~/Developer/Escuela' >> ~/.bashrc
echo 'alias DevE=~/Developer/Escuela' >> ~/.bash_profile
echo 'alias DevE=~/Developer/Escuela' >> ~/.zshrc

echo 'alias DevC=~/Developer/Cositec' >> ~/.bashrc
echo 'alias DevC=~/Developer/Cositec' >> ~/.bash_profile
echo 'alias DevC=~/Developer/Cositec' >> ~/.zshrc

# Mandar a llamar instalar_thunderbird.sh
echo "Llamando a instalar_thunderbird.sh..."
./instalar_thunderbird.sh

# Mandar a llamar instalar_android_studio.sh
echo "Llamando a instalar_android_studio.sh..."
./instalar_android_studio.sh

# Mandar a llamar instalar_flutter-3.22.3r.sh
echo "Llamando a instalar_flutter-3.22.3r.sh..."
./instalar_flutter-3.22.3r.sh

# Mandar a llamar instalar_docker.sh
echo "Llamando a instalar_docker.sh..."
./instalar_docker.sh

echo "Configuración completada. Por favor, reinicia tu terminal para aplicar los cambios."
