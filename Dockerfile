FROM debian

RUN apt-get update && \
    apt-get install -y ca-certificates wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://minergate.com/download/deb-cli && \
    dpkg -i deb-cli
    
ENV USER bluesky.os@yandex.com
ENV COIN --xmr

ENTRYPOINT minergate-cli -user $USER $COIN
