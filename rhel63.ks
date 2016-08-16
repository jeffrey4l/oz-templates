text
install
key --skip
keyboard us
lang en_US.UTF-8
skipx
network --onboot yes --device eth0 --bootproto dhcp --noipv6 --activate
rootpw password
firewall --disabled
authconfig --enableshadow --enablemd5
selinux --disable
timezone --utc Asia/Shanghai
bootloader --location=mbr --append=" console=tty0 console=ttyS0,115200"
zerombr yes
clearpart --all

part /boot --fstype ext4 --size=512
part swap --size=2048
part / --fstype ext4 --grow --size=1024
reboot

%packages --nobase
openssh-server
openssh-clients
rsync
vim

%post --log=/root/post_install.log
