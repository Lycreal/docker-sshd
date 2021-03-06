#!/bin/sh

ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ""
ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ""
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ""
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ""

mkdir -p /root/.ssh
echo $key > /root/.ssh/authorized_keys

if [ $# -ne 0 ];then
    /bin/sh -c "$*"
fi

while [ true ]; do
    /usr/sbin/sshd -D
done

