# Docker-sshd

SSH server on docker. [Docker Hub page](https://hub.docker.com/r/lycreal/sshd/).

## Description

Password login is disabled, RSA key is the **only** way to start a ssh connection.  
So make sure to define the environment variable _key_ .  

## Usage:
`docker run -d -e key="<key>" lycreal/sshd`  
or  
`docker run -d -e key="<key1>\n<key2>\n<key3>..." lycreal/sshd`  

The \<key\> should be something same as `~/.ssh/id_rsa.pub` like
>ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZrLXIhYwLKAypU7JLRg7mhNmW1GrOI0vrUFbspAPrkOzGY2jT7C1gMUohahCPKliRWz8gVp+PMh8aRLnShZ8bESNUbtOMGvEiTO5/AaXIMjIs4GJ/g8F7Nx9DGXuv6dY7iORyF0ivx+ahDhhJzsqLaKYpWj3EpJ4FB9RkxU5PekPnfz5snK63J9/jQ4eB4lm9Z0Ir61eaPgxEeosQOO2v+ozw7y8GhQRMBQjG7EcyVrMg2NHhgai8UWyoabAcYSG3ma5r6jOeK+6Lg+dFFkPeK+07nQmqg1p8w6wt+y2EGupaiuU8BCcZrnkxTMQbGg5EB3MxV1WCanDRo0FMDo6b root@fce60b4bb9ca

## example:
```shell
docker run -d -e key="`cat ~/.ssh/id_rsa.pub`" -p 2222:22 lycreal/sshd
```
or
```shell
key=`cat ~/.ssh/id_rsa.pub`
docker run -d -e key=$key -p 2222:22 lycreal/sshd
```

After that, run `ssh root@127.0.0.1 -p 2222` to access it.  

## License
[MIT-LICENSE](MIT-LICENSE)
