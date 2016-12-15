FROM ubuntu:latest

MAINTAINER Lycreal Lu <jgsly123@gmail.com>

RUN apt-get update
RUN apt-get install -y openssh-server

RUN mkdir /var/run/sshd

RUN echo 'root:root' |chpasswd

RUN mkdir -p /root/.ssh

EXPOSE 22

ENTRYPOINT echo $key > /root/.ssh/authorized_keys && /usr/bin/sshd -D
