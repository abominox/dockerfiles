#FROM alpine:3.7
FROM debian:9.3-slim
MAINTAINER Christopher Marquart "christopher.jacob.marquart@gmail.com"

COPY ./files/install.sh /
COPY ./files/enable_tun.sh /

WORKDIR /

RUN ./enable_tun.sh
RUN ./install.sh
