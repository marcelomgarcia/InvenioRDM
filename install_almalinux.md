# AlmaLinux

Change to `Vagrantfile` to use AlmaLinux 9.2

```bash
# 
Vagrant.configure("2") do |config|
  config.vm.box = "almalinux/9"
  config.vm.box_version = "9.5.20241203"
end
```

System update

```bash
[vagrant@minint-2gof9o1 ~]$ sudo yum update
```

Installing dependencies

```bash
[vagrant@domain ~]$ sudo dnf install wget curl
[vagrant@domain ~]$ sudo dnf install dkms kernel-devel kernel-headers gcc make bzip2 perl elfutils-libelf-devel
```

Double check the kernel version and kernel-devel version matches:

```bash
[vagrant@domain ~]$ uname -r
5.14.0-503.38.1.el9_5.x86_64
[vagrant@domain ~]$
[vagrant@domain ~]$ rpm -q kernel-devel
kernel-devel-5.14.0-503.38.1.el9_5.x86_64
[vagrant@domain ~]$
```

## Installing VirtualBox Guest Additions

[Install the VirtualBox Guest Additions](https://computingforgeeks.com/install-virtualbox-guest-additions-rocky/) to enable shared folders and other features.

Downloading the Guest Additions ISO

```bash
[vagrant@domain ~]$ wget https://download.virtualbox.org/virtualbox/7.0.22/VBoxGuestAdditions_7.0.22.iso
```
