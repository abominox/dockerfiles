# Dockerfile for my you-get script web front-end, leveraging Flask.

MAINTAINER Christopher Marquart "christopher.jacob.marquart@gmail.com"

FROM debian:9.3-slim

# install flask
RUN apt-get update && apt-get install -y \
python-dev \
build-essential \
python-pip

RUN pip install flask
