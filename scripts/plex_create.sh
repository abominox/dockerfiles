#!/bin/sh

docker run -d \
--restart=always \
--name=plex \
--net=host \
-e VERSION=latest \
-e PUID="1000" -e PGID="1000" \
-e TZ="America/New_York" \
-v /home/raxemremy/lib_data:/config \
-v /mnt/mdrive:/data \
-v plex_transcode:/transcode \
linuxserver/plex