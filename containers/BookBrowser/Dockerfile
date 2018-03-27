FROM debian:stretch-slim
MAINTAINER raxemremy

RUN apt-get update && apt-get install -y \
# dependencies
build-essential \
git \



# clone and build BookBrowser
RUN git clone https://github.com/geek1011/BookBrowser.git
WORKDIR BookBrowser
RUN make && 

# define ports
EXPOSE 8090

# define volumes




# set environment variables
ENV 
