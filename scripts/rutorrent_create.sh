#!/bin/sh

docker create --name=rutorrent \
--restart=always \
-v rutorrent:/config \
-v /mnt/mdrive/torrents:/downloads \
-e PGID=1000 -e PUID=1000 \
-e TZ=EST \
-p 80:80 -p 5000:5000 \
-p 51413:51413 -p 6881:6881/udp \
linuxserver/rutorrent
