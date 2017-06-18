FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y ca-certificates wget curl

RUN wget https://minergate.com/download/deb-cli && \
    dpkg -i deb-cli

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -qy nodejs

ENV USER bluesky.os@yandex.com
ENV COIN --xmr

ENTRYPOINT minergate-cli -user $USER $COIN
