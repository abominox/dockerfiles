#!/bin/sh

docker run -d \
--name=rutorrent \
-e PUID=1000 \
-e PGID=1000 \
-p 8082:80 \
-p 5000:5000 \
-p 51413:51413 \
-p 6881:6881/udp \
-v "$HOME"/container_files/rutorrent/config:/config \
-v /mnt/torrent_cache:/downloads \
-v /mnt/torrents:/downloads_complete \
--restart unless-stopped \
linuxserver/rutorrent
