#!/bin/sh

echo $key > /root/.ssh/authorized_keys

if [ $# -ne 0 ];then
    /bin/sh -c "$*"
fi

while [ true ]; do
    /usr/sbin/sshd -D
done

