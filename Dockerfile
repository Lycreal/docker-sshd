FROM ubuntu:devel

MAINTAINER Lycreal <jgsly123@gmail.com>

RUN apt-get update && \
    apt-get install -y openssh-server

COPY entrypoint.sh /entrypoint

RUN chmod +x /entrypoint && \
    mkdir /var/run/sshd /root/.ssh

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
