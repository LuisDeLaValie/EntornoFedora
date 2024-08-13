#!/bin/bash

# Descargar Flutter 3.22.3
echo "Descargando Flutter 3.22.3..."
curl -L -o flutter_linux_3.22.3-stable.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.3-stable.tar.xz

# Descomprimir y mover a /usr/bin
echo "Descomprimiendo y moviendo Flutter a /usr/bin..."
sudo tar -xf flutter_linux_3.22.3-stable.tar.xz -C /usr/bin/

# Comprobar qué shell usa el usuario
USER_SHELL=$(echo $SHELL)
echo "El shell del usuario es: $USER_SHELL"

# Agregar el path del SDK según la shell
if [ "$USER_SHELL" == "/bin/bash" ]; then
    echo 'export PATH="/usr/bin/flutter/bin:$PATH"' >> ~/.bash_profile
    echo "Path agregado a ~/.bash_profile"
elif [ "$USER_SHELL" == "/bin/zsh" ]; then
    echo 'export PATH="/usr/bin/flutter/bin:$PATH"' >> ~/.zshenv
    echo "Path agregado a ~/.zshenv"
else
    echo "Shell no soportado. Agrega el path manualmente."
    exit 1
fi

# Reiniciar todas las sesiones de terminal abiertas
echo "Reiniciando todas las sesiones de terminal abiertas..."
exec $USER_SHELL -l

echo "Instalación y configuración completadas. Reinicia tu terminal para aplicar los cambios."
