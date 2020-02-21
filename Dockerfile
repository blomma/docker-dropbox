FROM ubuntu:18.04

RUN \
    apt-get update && \
    apt-get install -y wget && \
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - && \
    apt-get clean && \
    mkdir /dropbox && \
    ln -sf /dropbox /root/Dropbox

VOLUME /dropbox

CMD [ "/root/.dropbox-dist/dropboxd" ]