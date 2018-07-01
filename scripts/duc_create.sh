#!/bin/sh

sudo docker run --name=noip -d \
--restart=always \
--name duc_client \
-v /etc/localtime:/etc/localtime \
-v /mnt/mdrive/misc/docker/noip_duc:/config \
coppit/no-ip
