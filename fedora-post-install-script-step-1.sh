####
# FEDORA POST INSTALL SCRIPT
# [https://github.com/devangshekhawat/Fedora-41-Post-Install-Guide]
####

!#/bin/bash
source environment-vars.sh

# set system hostname
hostnamectl set-hostname $NEW_HOSTNAME

# firmware updates
sudo fwupdmgr refresh --force
sudo fwupdmgr get-devices # Lists devices with available updates.
sudo fwupdmgr get-updates # Fetches list of available updates.
sudo fwupdmgr update

# improve dns handling
sudo mkdir -p '/etc/systemd/resolved.conf.d' && sudo -e '/etc/systemd/resolved.conf.d/99-dns-over-tls.conf'
[Resolve]
DNS=1.1.1.2#security.cloudflare-dns.com 1.0.0.2#security.cloudflare-dns.com 2606:4700:4700::1112#security.cloudflare-dns.com 2606:4700:4700::1002#security.cloudflare-dns.com
DNSOverTLS=yes

# Disable NetworkManager-wait-online.service. This can decrease the boot time by at least ~15s-20s:
sudo systemctl disable NetworkManager-wait-online.service

# set UTC time - Used to counter time inconsistencies in dual boot systems
sudo timedatectl set-local-rtc '0'

sudo grubby --update-kernel=ALL --args="mitigations=off"
sudo grubby --update-kernel=ALL --args="nvidia-drm.modeset=1"


#install ostree packages
source rpm-ostree-packages.sh

#reboot
echo "completed part 1, please reboot then run `fedora-post-install-script-part-2.sh`
