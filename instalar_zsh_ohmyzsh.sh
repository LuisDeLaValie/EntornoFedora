#!/bin/bash

# Instalar zsh desde Fedora
echo "Instalando zsh..."
sudo dnf -y install zsh

# Instalar Oh My Zsh
echo "Instalando Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Instalación de zsh y Oh My Zsh completadas."

# Configuración adicional para zsh
USER_SHELL=$(echo $SHELL)
if [ "$USER_SHELL" != "/bin/zsh" ]; then
    echo "Cambiando el shell predeterminado a zsh..."
    chsh -s $(which zsh)
    echo "El shell predeterminado ha sido cambiado a zsh. Por favor, reinicia tu terminal para aplicar los cambios."
else
    echo "zsh ya es el shell predeterminado."
fi

echo "Instalación y configuración completadas."
