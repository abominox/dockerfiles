#!/bin/sh

docker run -d \
--name=ubooquity \
--restart=unless-stopped \
-v "$HOME"/container_files/ubooquity/config:/config \
-v /mnt/mdrive/books:/books \
-v /mnt/mdrive/books/comics:/comics \
-v "$HOME"/container_files/ubooquity/files:/files \
-e MAXMEM= \
-e PGID=1000 \
-e PUID=1000  \
-p 2202:2202 \
-p 2203:2203 \
linuxserver/ubooquity
