#!/bin/bash

docker run -d --name=transmission \
-v /mnt/mdrive/misc/docker/transmission:/config \
-v /mnt/mdrive/torrents:/downloads \
-e PGID=1000 \
-e PUID=1000 \
-e TZ=America/New_York \
-p 9091:9091 \
-p 51413:51413 \
-p 51413:51413/udp \
linuxserver/transmission
