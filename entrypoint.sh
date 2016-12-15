#!/bin/sh

echo $key > /root/.ssh/authorized_keys

if [ -n "$1" ];then
	/bin/sh -c "$*"
else
	/usr/sbin/sshd -D
fi

