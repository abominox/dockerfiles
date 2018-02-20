#FROM debian:9.3-slim
FROM debian:stretch-slim
MAINTAINER Christopher Marquart "christopher.jacob.marquart@gmail.com"

#dev tools
RUN apt-get update && apt-get install -y \
#dev tools
vim \
python \
python-pip \
tmux \
git \
build-essential \
#utils
curl \
wget \
net-tools \
htop \
man \
sudo

RUN pip install powerline-status

#setup environment
RUN useradd -ms /bin/bash raxemremy
RUN echo "raxemremy ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
WORKDIR /home/raxemremy

COPY dotfiles/.vim /home/raxemremy/.vim
COPY dotfiles/.vimrc /home/raxemremy/.vimrc
COPY dotfiles/.bashrc /home/raxemremy/.bashrc

#misc
RUN chown -R raxemremy:raxemremy /home/raxemremy

USER raxemremy
