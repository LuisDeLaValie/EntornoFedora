x#!/bin/bash

# Descargar Android Studio Koala
echo "Descargando Android Studio Koala..."
curl -L -o android-studio-2024.1.1.12-linux.tar.gz "https://r2---sn-9gv7zn7e.gvt1.com/edgedl/android/studio/ide-zips/2024.1.1.12/android-studio-2024.1.1.12-linux.tar.gz?mh=0q&pl=50&shardbypass=sd&redirect_counter=1&cm2rm=sn-0opoxu-ja9e7l&rrc=80&req_id=77502107f5adf913&cms_redirect=yes&mip=2806:102e:e:48bf:2989:10d7:dc43:651e&mm=42&mn=sn-9gv7zn7e&ms=onc&mt=1722723162&mv=m&mvi=2&smhost=r4---sn-9gv7ened.gvt1.com"

# Descomprimir el archivo
echo "Descomprimiendo Android Studio..."
tar -xzf android-studio-2024.1.1.12-linux.tar.gz 

# Mover Android Studio a /opt
echo "Moviendo Android Studio a /opt..."
sudo mv android-studio /opt/android-studio

# Agregar /opt/android-studio/bin a las variables de entorno
echo "Agregando Android Studio a las variables de entorno..."
echo 'export ANDROID_HOME=~/Android/Sdk' | sudo tee -a ~/.bashrc ~/.bash_profile ~/.zshrc
echo 'export ANDROID_STUDIO_HOME=/opt/android-studio' | sudo tee -a ~/.bashrc ~/.bash_profile ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_STUDIO_HOME/bin' | sudo tee -a ~/.bashrc ~/.bash_profile ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' | sudo tee -a ~/.bashrc ~/.bash_profile ~/.zshrc





 # Instalar Android
        andorid_home = os.path.expanduser('~/Android/Sdk')
        click.echo("\t>> Instalar Android con snap")
        commandsScrip("sudo snap install android-studio --classic")
        click.echo("\t>> Instalar java con dnf")
        commandsScrip("sudo dnf install java-11-openjdk")
        zshrc.sobreEscribir([
            # export JAVA_HOME=/ruta/a/jdk
            f"export ANDROID_HOME={andorid_home}",
            # export PATH=$PATH:$JAVA_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
            "export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools",
        ])
        
        click.echo("""Flutter y Android Instalado Correctamente.
Antes de iniciar revisa las configuracios de desarrollo de android para flutter, consultar el enlace https://docs.flutter.dev/get-started/install/linux/android?tab=later-start#configure-android-development     
""");
        commandsScrip("android-studio")






# Crear archivo android-studio.desktop para poder acceder a Android Studio desde el menú de aplicaciones
echo "Creando archivo android-studio.desktop..."
sudo tee /usr/share/applications/android-studio.desktop > /dev/null << EOL
[Desktop Entry]
Version=1.0
Exec=/opt/android-studio/bin/studio.sh %f
Icon=/opt/android-studio/bin/studio.png
Type=Application
Name=Android Studio
Comment=IDE for Android Development
Categories=Development;IDE;
Terminal=false
EOL

echo "Instalación y configuración completadas. Por favor, reinicia tu terminal para aplicar los cambios."
