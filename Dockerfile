FROM ubuntu:16.04

MAINTAINER Lycreal Lu <jgsly123@gmail.com>

RUN apt-get update && \
    apt-get install -y openssh-server

RUN mkdir /var/run/sshd /root/.ssh

RUN echo 'root:root' |chpasswd

COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
