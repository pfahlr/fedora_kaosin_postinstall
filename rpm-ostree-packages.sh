#!/usr/bin/bash
PACKAGES=""
# INSTALL PACKAGES FROM RPM-OSTREE
# uncomment/comment sections you wish to (in/ex)clude

# package installers
PACKAGES+=" snapd "

# downloaders
PACKAGES+=" aria2 qbittorrent "

#office
PACKAGES+=" libreoffice "

#commandline utils
PACKAGES+=" grubby gparted vim-enhanced nmap netcat speedcrunch inkscape gimp scribus qgis qgis-grass qgis-server postgis postgis-client postgis-utils postgis-gui gdal python3-qgis grass grass-devel grass-gui grass-libs "

#development
PACKAGES+=" ghostwriter kate-plugins kate python3-virtualenv python3-pip python3-sen python3-visidata git-interactive-rebase-tool gitui nodejs nodejs-npm glow nodejs-libs nodejs-devel pnpm postgresql "

#GIS
PACKAGES+=" qgis qgis-grass qgis-server postgis postgis-client postgis-utils postgis-gui gdal python3-qgis grass grass-devel grass-gui grass-libs "

#remote backup
PACKAGES+=" nextcloud-client"

#devops and containerization - I'm commenting a list of docker packages because podman is recommended for this distribution. Save yourself the headache. The command usage is nearly identical
PACKAGES+=" kubernetes kubernetes-client kubernetes-kubeadm kubernetes-systemd helm cri-o buildah-tests atomic-reactor "

#SYSTEM ADMINISTRATION
PACKAGES+="  htop iotop-c iftop atop nvtop bpftop bpytop "

# terminals and associated utils
PACKAGES+=" alacritty chafa contour-terminal cosmic-term deepin-terminal maui-mauikit-station nemo-terminal podman-tui ptyxis qmlkonsole conman conmux consolation console-setup bicon jline-console glow thefuck gdu mc ov diskonaut foot zsh tmux tmux-powerline tmux-top "

# mathematics packages
PACKAGES+=" speedcrunch  kmplot mp R R-devel R-systemfonts maxima maxima-gui wxMaxima python3-spyder python3-spyder-kernels python3-pyls-spyder pspp R-rstudioapi "

# design packages
PACKAGES+=" inkscape gimp scribus flameshot "

# audio production
PACKAGES+=" jack-audio-connection-kit jack-audio-connection-kit-dbus jack-example-tools-common jaaa vlc-plugin-jack qjackctl a2jmidid pipewire-plugin-jack baresip-jack lsp-plugins-jack audacious-plugins-jack allegro-jack-plugin alsa-plugins-jack arpage japa ladspa-zam-plugins lv2-sorcer lv2-zam-plugins meterbridge gitjacker jacktrip "

#fonts
PACKAGES+=" cascadia-code-nf-fonts cascadia-mono-nf-fonts "

# pentesting
PACKAGES+=" gitjacker "

echo "SELECTED PACKAGES: $PACKAGES"
