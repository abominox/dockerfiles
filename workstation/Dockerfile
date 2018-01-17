#FROM debian:9.3-slim
FROM debian:stretch-slim
MAINTAINER Christopher Marquart "christopher.jacob.marquart@gmail.com"

#RUN apt-get update \
#&& apt-get install -y apt-utils \
#&& apt-get install -y python tmux git \
#&& apt-get install -y net-tools htop man sudo

RUN apt-get update -y

#RUN apt-get install apt-utils -y

#dev tools
RUN apt-get install vim python tmux git -y

#utils
RUN apt-get install net-tools htop man sudo -y

#setup environment
RUN useradd -ms /bin/bash raxemremy
RUN echo "raxemremy ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#COPY dotfiles/.vim /home/raxemremy/.vim
COPY dotfiles/.bashrc /home/raxemremy/.bashrc
USER raxemremy
WORKDIR /home/raxemremy

#misc
