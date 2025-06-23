# InvenioDRM

## Installation

To install a InvenioDRM

1. Install general depencies with `invDRM_install.yml`
1. Reboot (recommended)
1. Install Docker engine: `files/install_docker.yml`
1. Install NodeJS: `files/install_nodejs.yml`
1. Reboot (recommended(?))

The following documents are for reference only. All the installation should be done using Ansible.

* Debian installation: [install_debian.md](install_debian.md)
* AlmaLinux installation: [install_almalinux.md](install_almalinux.md)

## Invenio CLI

Installing Invenio CLI:

```bash
pip install invenio-cli
```

> _Note_: the first build failed due missing depency: `limits`. Installed using `pip install limits`.

Testing the installation

```bash
# Check the version of Invenio CLI:
(invenioDRM) vagrant@bookworm:~$ invenio-cli --version
invenio-cli, version 1.7.1
(invenioDRM) vagrant@bookworm:~$
```

The scaffolding was according with the [Invenio documentation](https://inveniordm.docs.cern.ch/install/scaffold/). The build was following the ["For the impatient"](https://inveniordm.docs.cern.ch/install/build-setup-run/#for-the-impatient). 


## InvenioDRM Starter

[InvenioDRM Starter](https://starter.front-matter.io/) is a pre-configured Invenio instance that includes the InvenioDRM module. It is designed to be used as a starting point for building your own Invenio-based applications.

