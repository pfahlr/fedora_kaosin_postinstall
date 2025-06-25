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

>note: at this point, these scripts are very unstable. I recommend that you simply open them in the text editor of your choice and step through the commands running them individually. I've created a script to combine them all in order for easy viewing. run: `./scripts-2-instructions.sh`


After `fedora-postinstall-script-step-1.sh` completes a reboot is requried. Run `sudo reboot now`
when you are ready, and when the system comes back up, run `fedora-postinstall-script-step-2.sh`
and you'll have saved yourself hours of trouble. 

---
## Installation Troubleshooting

### Separate /boot and /boot/efi Partitions are Required 
When installing Fedora Kinoite or Silverblue (OSTree based distributions), you may encounter a fatal error. 
something like:

`The command 'ostree admin --sysroot=/mnt/sysimage deploy --os=fedora fedora:fedora/42/x86_64/silverblue' exited with code 1`
OR
`The command 'ostree admin --sysroot=/mnt/sysimage deploy --os=fedora fedora:fedora/42/x86_64/kinoite' exited with code 1`
OR 
`The command 'ostree admin instutil set-kargs rhgb quiet root=UUID=#diskuuid# rw' exited with the code 1`

This is most likely due to the requirement by Fedora's OSTREE based distributions for the presence of both `/boot`(formatted as:ext3 and ext4 work, need source documenting available options) and `/boot/efi` (formetted as: EFI system)partitions. Here's some resources regarding this issue:
- [Fedora Project Docs: Installing Fedora Silverblue](https://docs.fedoraproject.org/en-US/fedora-silverblue/installation/)
- [Fedora Magazine: What is Silverblue?](https://fedoramagazine.org/what-is-silverblue/)
- [Fedora Magazine: Learning About Partitions and How to Create them For Fedora](https://fedoramagazine.org/learning-about-partitions-and-how-to-create-them-for-fedora)

**Forum Discussions**
- [Forum Discussion: Fedora kinoite 40 install always fail when installing bootloader](https://discussion.fedoraproject.org/t/fedora-kinoite-40-install-always-fail-when-installing-bootloader/116688)
- [Forum Discussion: Trouble shoot new install Silverblue dual boot ](https://discussion.fedoraproject.org/t/trouble-shoot-new-install-silverblue-dual-boot/144292)
- [Github Issue #530: Dual boot support for bootupd with static GRUB config installations - linked to solution comment](https://github.com/fedora-silverblue/issue-tracker/issues/530#issuecomment-2456909845)

---

## Additonal Reading
- [A journey to an OSTree container native distributed desktop configuration system with Fedora Silverblue/Kinoite by Alessandro Di Stefano, PhD](https://www.aleskandro.com/posts/rpm-ostree-container-native-fedora-silverblue-kinoite-dual-boot/)
