FROM ubuntu:latest

MAINTAINER Lycreal <jgsly123@gmail.com>

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY entrypoint.sh /entrypoint

RUN chmod +x /entrypoint && \
    mkdir /var/run/sshd /root/.ssh

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
