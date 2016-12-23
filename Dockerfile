FROM ubuntu:16.04

MAINTAINER Lycreal Lu <jgsly123@gmail.com>

RUN apt-get update && \
    apt-get install -y openssh-server

COPY entrypoint.sh /entrypoint

RUN chmod +x /entrypoint && \
    mkdir /var/run/sshd /root/.ssh && \
    echo 'root:root' |chpasswd

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
