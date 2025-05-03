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
[vagrant@domain ~]$ sudo dnf install wget curl git-all vim-enhanced cairo cairo-devel dejavu-sans-fonts dejavu-sans-mono-fonts dejavu-serif-fonts ImageMagick 
[vagrant@minint-2gof9o1 iso]$ sudo dnf install bzip2
[vagrant@domain ~]$ sudo dnf install dkms kernel-devel kernel-headers gcc make bzip2 perl elfutils-libelf-devel python3-devel
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

Installing nodejs

```bash
# Download and install fnm:
curl -o- https://fnm.vercel.app/install | bash

# Download and install Node.js:
fnm install 22

# Verify the Node.js version:
node -v # Should print "v22.15.0".

# Verify npm version:
npm -v # Should print "10.9.2".
```

## Installing VirtualBox Guest Additions
> _Note_: This part optional. Use in case Vagrant can't mount the shared folder. This is a common issue with Vagrant and VirtualBox.

[Install the VirtualBox Guest Additions](https://computingforgeeks.com/install-virtualbox-guest-additions-rocky/) to enable shared folders and other features.

Downloading the Guest Additions ISO

```bash
[vagrant@domain ~]$ wget https://download.virtualbox.org/virtualbox/7.0.22/VBoxGuestAdditions_7.0.22.iso
```

Mounting the ISO

```bash
[vagrant@minint-2gof9o1 ~]$ sudo mkdir /mnt/iso
[vagrant@minint-2gof9o1 ~]$ sudo mount VBoxGuestAdditions_7.0.22.iso /mnt/iso
mount: /mnt/iso: WARNING: source write-protected, mounted read-only.
[vagrant@minint-2gof9o1 ~]$
```

