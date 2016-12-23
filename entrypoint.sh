#!/bin/sh

echo $key > /root/.ssh/authorized_keys

if [ $# -ne 0 ];then
	/bin/sh -c "$*"
else
	/usr/sbin/sshd -D
fi

