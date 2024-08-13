#!/bin/bash

# Instalar el paquete dnf-plugins-core y configurar el repositorio de Docker
echo "Instalando dnf-plugins-core y configurando el repositorio de Docker..."
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Instalar Docker
echo "Instalando Docker..."
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Iniciar Docker
echo "Iniciando Docker..."
sudo systemctl start docker
sudo systemctl enable docker

echo "Instalación y configuración de Docker completadas."
