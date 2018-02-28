#!/bin/sh

docker run \
-d \
--name sonarr \
-p 8989:8989 \
-e PUID=1000 -e PGID=1000 \
-e TZ=EST \
-v /etc/localtime:/etc/localtime:ro \
-v sonarr:/config \
-v /mnt/mdrive/torrents:/tv \
-v /mnt/mdrive/torrents:/downloads \
linuxserver/sonarr
