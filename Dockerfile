FROM ubuntu:18.04

LABEL MAINTAINER="Mikael Hultgren <blomma@artsoftheinsane.com>"

USER root

RUN \
    apt-get update && \
    apt-get install -y wget python3 && \
    apt-get clean && \
    mkdir -p /root/Dropbox && \
    mkdir -p /root/.dropbox

COPY entrypoint.sh /

VOLUME ["/root/Dropbox", "/root/.dropbox"]

ENTRYPOINT ["/entrypoint.sh"]