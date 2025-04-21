# InvenioDRM

## Installation

Extra packages:
- `python-is-python3`
- `python3-dev`
- `git` (probably will be already installed as dependency of `python3-dev`)
- `unzip` (for `fnm` installation)
- `DejaVu` fonts: `fonts-dejavu fonts-dejavu-extra fonts-dejavu-web`
- `imagemagick`
- `libcairo2-dev`
- `python3-venv`
- `tree`
- `vim`
- [Docker (via apt)](https://docs.docker.com/engine/install/debian/#install-using-the-repository)
- [Nodejs using `fnm` with `npm`](https://nodejs.org/en/download)
- [Invenio Scaffold](https://inveniordm.docs.cern.ch/install/scaffold/)

### Docker Installation

Configure the repository and install Docker Engine:

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

Install Docker Engine, containerd, and Docker Compose:

```bash

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Test the engine

```bash
sudo docker run hello-world
```

Running docker as non-root user

```bash
sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker

docker run hello-world
```

Configure Docker to start on boot:

```bash
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

### Node Installation

Download and install Node.js using `fnm` (Fast Node Manager). 

```bash
# Install the required packages:
# Download and install fnm:
curl -o- https://fnm.vercel.app/install | bash

# Update the $PATH with fnm:
source /home/vagrant/.bashrc

# Download and install Node.js:
fnm install 22

# Verify the Node.js version:
node -v # Should print "v22.14.0".

# Verify npm version:
npm -v # Should print "10.9.2".
```

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

