FROM ubuntu:16.04
MAINTAINER abominox

## install dependencies
RUN mkdir -p /usr/share/man/man1 \
&& apt-get update && apt-get -y install \
tzdata \
screen \
socat \
tmux \
libsqlite3-dev \
lib32stdc++6 \
lib32gcc1 \
git \
wget \
coreutils \
unzip \
iputils-ping \
netcat \
openjdk-8-jre-headless

## make the AMP user
RUN useradd -d /home/AMP -s /bin/bash -m AMP
WORKDIR /home/AMP

## expose required ports
EXPOSE 25565 8080

RUN wget https://cubecoders.com/Downloads/ampinstmgr.zip \
&& unzip ampinstmgr.zip \
&& rm ampinstmgr.zip

COPY start.sh .
RUN chmod +x start.sh


## create required volumes
RUN mkdir /home/AMP/server_data \
&& ln -vs /home/AMP/.ampdata/instances/MCMA/Minecraft /home/AMP/server_data
VOLUME ["/home/AMP/server_data"]

# full filesystem
#VOLUME /home/AMP/.ampdata/instances/MCMA
# plugins directory
#VOLUME /home/AMP/.ampdata/instances/MCMA/plugins

## set healthchecks
HEALTHCHECK --interval=10s --timeout=15s --retries=3 CMD nc -vz 127.0.0.1 8080 || exit 1

USER AMP

## configure the container process
CMD ["/bin/bash", "/home/AMP/start.sh"]
