#!/bin/sh

docker run -d \
--name morrowind-server \
--restart=unless-stopped \
-v "$HOME/container_files/te3mp:/server/data" \
-p "25565:25565/udp" \
tes3mp/server
