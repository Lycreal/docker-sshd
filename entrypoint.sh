#!/bin/sh

echo $key > /root/.ssh/authorized_keys

if [ $port ];then
  sed -r "s/#?(Port).*/\1 ${port}/" -i /etc/ssh/sshd_config
fi

while [ $users ]
do
  user=$(echo $users | cut -d ',' -f1)
  users=${users#*$user}
  users=${users#*,}
  u=$(echo $user | cut -d ':' -f1)
  useradd -m -s /bin/bash $u
  if [[ $user == *":"* ]];then
	echo $user|chpasswd
  else
    echo $u:$u|chpasswd
  fi
done

if [ $# -ne 0 ];then
    /bin/sh -c '$*'
fi

while [ true ]; do
    /usr/sbin/sshd -D
done
