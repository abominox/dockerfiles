#!/bin/sh
docker run \
--name torrent \
--restart=unless-stopped \
-v torrent:/downloads \
-p 8181:80 \
-p 51001:51001 \
-d kerwood/rtorrent-lxc
