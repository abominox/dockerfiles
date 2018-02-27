#!/bin/sh

echo "Please enter a username for web-client access:"
read username
echo "Please enter a password for web-client access:"
read password

docker run \
--name torrent \
--restart=always \
-v /mnt/mdrive/torrents:/downloads \
-v torrent:/home/rtorrent/rtorrent-session \
-e HTUSER=$username \
-e HTPASS=$password \
-p 8181:80 \
-p 51001:51001 \
-d kerwood/rtorrent-lxc
