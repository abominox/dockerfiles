#!/bin/sh

docker run -d \
--name=plex \
--net=host \
-e VERSION=latest \
-e PUID="1000" -e PGID="1000" \
-e TZ="America/New_York" \
-v plex_config:/config \
-v /mnt/mdrive/torrents:/data \
-v plex_transcode:/transcode \
linuxserver/plex
