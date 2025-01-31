# FEDORA POST INSTALL SCRIPT 

---

Inspired by [devangshekhawat's Fedora 41 Post Install Guide](https://github.com/devangshekhawat/Fedora-41-Post-Install-Guide?tab=readme-ov-file). 

This version is slightly different as these steps were applied to Fedora Kaosine, 
a Plasma and rpm-ostree based distro rather than the Gnome/dnf system described in that guide. 
Mostly, I needed to leave a few parts out that did not apply. 

---

## Instructions

To begin run the ``start` script. It will propmt you to edit the `environment-vars.sh` script
it copied the template into, and then run `fedora-postinstall-script-step-1.sh`.



After `fedora-postinstall-script-step-1.sh` completes a reboot is requried. Run `sudo reboot now`
when you are ready, and when the system comes back up, run `fedora-postinstall-script-step-2.sh`
and you'll have saved yourself hours of trouble. 


