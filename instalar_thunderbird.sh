#!/bin/bash

# Descargar Thunderbird 128.0.1esr
echo "Descargando Thunderbird 128.0.1esr..."
curl -L -o thunderbird-128.0.1esr.tar.bz2 "https://download.mozilla.org/?product=thunderbird-128.0.1esr-SSL&os=linux64&lang=es-ES"


# Descomprimir el archivo
echo "Descomprimiendo Thunderbird..."
tar -jxvf thunderbird-128.0.1esr.tar.bz2 

# Mover Thunderbird a /opt
echo "Moviendo Thunderbird a /opt..."
sudo mv thunderbird /opt/thunderbird

# Crear archivo thunderbird.desktop para poder acceder a Thunderbird desde el menú de aplicaciones
echo "Creando archivo thunderbird.desktop..."
sudo tee /usr/share/applications/thunderbird.desktop > /dev/null << EOL
[Desktop Entry]
Name=Thunderbird Mail
Comment=Send and receive mail with Thunderbird
Exec=/opt/thunderbird/thunderbird %u
Terminal=false
Type=Application
Icon=/opt/thunderbird/chrome/icons/default/default128.png
Categories=Application;Network;Email;
MimeType=x-scheme-handler/mailto;application/x-xpinstall;
EOL

echo "Instalación y configuración completadas. Puedes acceder a Thunderbird desde el menú de aplicaciones."
