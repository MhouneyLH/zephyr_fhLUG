# Zephyr fhLUG

> [!WARNING]
> Everything qemu related was tested on Debian 13. If you are using another distribution, some commands may differ.

> [!WARNING]
> Everything inside the VM related was tested on Ubuntu 22.04 LTS. If you are using another distribution, some commands may differ.

This project was created during the [fhLUG Hagenberg Zephyr Workshop 2025](https://fhlug.at/2025/11/getting-started-with-zephyr-rtos-without-real-hardware/). It provides scripts to setup a virtual machine with a development environment for [Zephyr RTOS](https://www.zephyrproject.org/) as well as a small project that was created during the workshop.

## Getting Started

For getting started, setup your VM manager executing (make sure that you logout and login like the script will tell you):

```bash
./scripts/setup_virtual_machine_management.sh
```

Then catch e.g. an [Ubuntu 22.04 LTS image](https://releases.ubuntu.com/jammy/) and create a new VM with at least `4GB` of RAM, some CPU cores and just to be safe `60GB` of disk space. (NixOS guru [@EdgeLordKirito](https://github.com/EdgeLordKirito) learned the "too less disk space" lesson the hard way...)

Start the VM and copy the `scripts/setup_zephyr.sh` script into the VM (e.g. via copy paste, shared folders or whatever way you prefer).

Execute the script inside the VM:

```bash
./setup_zephyr.sh
```

Now you should have a working Zephyr development environment inside your VM. 🎉
