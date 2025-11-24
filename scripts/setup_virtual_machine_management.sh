#!/bin/bash

# see following sources for more information:
# - qemu: https://wiki.debian.org/QEMU#Installation
# - virt-manager: https://virt-manager.org/
# - libvirt (for vm configuration): https://libvirt.org/

set -e

sudo apt install qemu-kvm qemu-system qemu-utils libvirt-daemon-system libvirt-clients bridge-utils virt-manager
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER

echo "[ATTENTION] Now logout and login again so that user group changes take effect."