#!/bin/sh
docker run \
--name torrent \
--restart=always \
-v /mnt/mdrive/torrents:/downloads \
-v torrent:/home/rtorrent/rtorrent-session \
-p 8181:80 \
-p 51001:51001 \
-d kerwood/rtorrent-lxc
