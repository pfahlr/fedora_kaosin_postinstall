####
# FEDORA POST INSTALL SCRIPT PART 2
# run this after the reboot initiated by part 1
# [https://github.com/devangshekhawat/Fedora-41-Post-Install-Guide]
####

#!/bin/bash
source environment-vars.sh

# install starship
# rpm-ostree install cascadia-code-nf-fonts cascadia-mono-nf-fonts
curl -sS https://starship.rs/install.sh | sh

# Only follow this if you have a NVIDIA gpu. Also, don't follow this if you have a gpu which has dropped support for newer driver releases i.e. anything earlier than nvidia GT/GTX 600, 700, 800, 900, 1000, 1600 and RTX 2000, 3000, 4000 series. Fedora comes preinstalled with NOUVEAU drivers which may or may not work better on those remaining older GPUs. This should be followed by Desktop and Laptop users alike.
# rpm-ostree akmod-nvidia

# Install this if you use applications that can utilise CUDA i.e. Davinci Resolve, Blender etc.
# rpm-ostree xorg-x11-drv-nvidia-cuda

# you can test this ran smoothly by running `modinfo -F version nvidia`


#FLATPAK INSTALL

echo "edit and run `./flatpak-packages.sh` to install the groups of flatpaks you wish to install."
echo "note: flatpaks work by installing a complete set of dependencies for each program you install, this is similar to how programs are added on windows packaged along with a complete set of .DLLs. Given the option to install a program from the ostree vs a flatpak (unless you need a specific version), you should choose the ostree version." 

#source ./flatpak-packages.sh
