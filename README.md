# InvenioRDM

Testing [InvenioRDM](https://inveniosoftware.org/products/rdm/) and [Caltech Authors](https://github.com/caltechlibrary/caltechauthors/tree/main?tab=readme-ov-file) as a replacement for our harvest mechanism IRTS.

## Installation

Installing InvenioRDM in a virtual machine running Debian 12 via [Vagrant](https://portal.cloud.hashicorp.com/vagrant/discover/debian/bookworm64).

> Note: be careful with `git` formatitng configuration for the end of line. Since this repository is most developed under Linux but ocasionally I work on Windows, the extra character for line feed in Windows can break the scripts. The solution was to [tell Git to convert CRLF to LF on commit but not the other way around](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration):

```
$ git config --global core.autocrlf input
```

### Dependencies

Installing InvenioRDM dependencies like development tools, wget, and others.

1. Install general depencies with `invDRM_install.yml`
1. (Optional) Reboot because of the system update. <br>_Note_: If there is a kernel update, then probably will be necessary to rebuild the guest additions (virtualbox). 
1. Install Docker engine: `files/install_docker.yml`
1. Install NodeJS: `files/install_nodejs.yml`
1. Logout and login again to update path and other parts of the environment. Or reboot the VM if you didn't done so.

#### Virtualbox Guest Additions

> Note: It seems that not mounting the shared folder was a problem with Alma only. That is, it doesn't affect Debian.

If Vagrant fails to mount the shared folder, `/vagrant`, probably is because the Virtualbox Guest Additions is not installed, or it needs to be rebuild after a kernel update of the quest system or upgrade of VirtualBox on the host system.  

To rebuild the Guest Addtions download the newer version from the [repository](https://download.virtualbox.org/virtualbox/7.1.12/):

```
[vagrant@invent ~]$ wget https://download.virtualbox.org/virtualbox/7.1.12/VirtualBox-7.1.12-169651-Linux_amd64.run
```

> Note this is for VirtualBox version *7.1.12*.

Run the `run` file to rebuild the guest addition:

```
[vagrant@invent ~]$ chmod +x VirtualBox-7.1.12-169651-Linux_amd64.run
[vagrant@invent ~]$ sudo ./VirtualBox-7.1.12-169651-Linux_amd64.run
```

Finally, reboot the guest:

```
PS C:\Users\joe\Work\InvenioRDM> vagrant reload
```

### Invenio CLI

After installing the dependencies, follow the steps in the [InvenioRDM documentation](https://inveniordm.docs.cern.ch/install/). 

Basically the steps are:

1. [Install the CLI](https://inveniordm.docs.cern.ch/install/cli/).
1. [Initialize](https://inveniordm.docs.cern.ch/install/initialize/).
1. [Lock Python dependencies](https://inveniordm.docs.cern.ch/install/build-setup-run/#python-dependencies). 
1. [Build, setup and run the local development](https://inveniordm.docs.cern.ch/install/build-setup-run/#option-1-local-development).

User for testing:

```
user@demo.org
123456
```

## InvenioRDM Starter

[InvenioRDM Starter](https://starter.front-matter.io/) is a pre-configured Invenio instance that includes the InvenioRDM module. It is designed to be used as a starting point for building your own Invenio-based applications.

