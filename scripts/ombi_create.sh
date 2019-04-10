#!/bin/sh

docker run -d \
--name=ombi \
-e PUID=1000 \
-e PGID=1000 \
-e TZ=America/New_York \
-p 3579:3579 \
-v $HOME/container_files/ombi:/config \
--restart unless-stopped \
linuxserver/ombi
