FROM ubuntu:16.04
COPY cosfs_1.0.2-ubuntu16.04_amd64.deb /tmp/
COPY passwd-cosfs /etc/passwd-cosfs

RUN apt-get update && apt-get install -y fuse libfuse-dev   libcurl4-gnutls-dev libssl-dev libxml2-dev
RUN dpkg -i /tmp/cosfs_1.0.2-ubuntu16.04_amd64.deb && \
    rm /tmp/cosfs_1.0.2-ubuntu16.04_amd64.deb

ENV APPID=""
ENV BUCKET=""
ENV LOCAL="/data"
ENV REMOTE=""
ENV DEBUGLEVEL="info"
ENV SECRETID=""
ENV SECRETKEY=""

USER root
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT [ "docker-entrypoint.sh"]
