FROM debian:stretch-slim
MAINTAINER abominox

## install dependencies
RUN apt-get update && apt-get -y install \
screen \
socat \
tmux \
libsqlite3-dev \
lib32gcc1 \
git \
wget \
coreutils \
unzip

# install Java (janky shit)
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u162-b12/0da788060d494f5095bf8624735fa2f1/jdk-8u162-linux-x64.tar.gz && tar -zxvf jdk-8u*-linux-*.tar.gz
RUN mv jdk1.8.*/ /usr/ && update-alternatives --install /usr/bin/java java /usr/jdk1.8.*/bin/java 2

## make the AMP user
RUN useradd -d /home/AMP -m AMP
USER AMP
WORKDIR /home/AMP

## set required environment vars
#ENV license=${license}
#ENV username=${username}
#ENV password=${password}

## expose required ports
EXPOSE 25565 8080

#RUN wget https://cubecoders.com/Downloads/ampinstmgr.zip && unzip ampinstmgr.zip && rm ampinstmgr.zip
COPY files/ampinstmgr.zip .
RUN unzip ampinstmgr.zip && rm ampinstmgr.zip


## create required volumes

# full filesystem
VOLUME /home/AMP/.ampdata/instances/MCMA
# plugins directory
VOLUME /home/AMP/.ampdata/instances/MCMA/plugins

## set healthchecks
#HEALTHCHECK

## configure the entrypoint
ENTRYPOINT /home/AMP/ampinstmgr CreateInstance McMyAdmin MCMA 0.0.0.0 8080 ${license} ${password} +Core.Login.Username ${username} \
&& /home/AMP/.ampdata/instances/MCMA/AMP_Linux_x86_64 --StartInstance MCMA
