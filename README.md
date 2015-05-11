# Oz Templates

## Usage

The iso is located in `/data/isos/`. The isos' name are conversionally.
Including

* CentOS-6.3-x86_64-bin-DVD1.iso
* RHEL-6.3-x86_64-DVD.iso
* ubuntu-14.04.1-server-amd64.iso


```
git clone https://github.com/clalancette/oz.git
cd oz
git clone https://github.com/jeffrey4l/oz-templates.git
cd oz-templates
make all
```

## Detail

The image are configured as following

* without lvm, which will helpful for partion auto extend.
* Default image size is 40GB
* Installed cloud-init with some basic configuration.

