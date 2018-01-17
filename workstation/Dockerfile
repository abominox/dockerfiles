FROM debian:9.3-slim
MAINTAINER Christopher Marquart "christopher.jacob.marquart@gmail.com"

RUN apt-get update -y

RUN apt-get install apt-utils -y

#dev tools
RUN apt-get install vim tmux git -y

#utils
RUN apt-get install net-tools htop man sudo -y

#setup environment
RUN useradd -ms /bin/bash raxemremy
RUN echo "raxemremy ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN echo "workstation" > /etc/hostname
#COPY .vim /home/raxemremy/.vim
USER raxemremy
WORKDIR /home/raxemremy

#misc
