#!/bin/sh

docker run --name=noip -d \
--restart=always \
--name duc_client \
-v /etc/localtime:/etc/localtime \
-v "$HOME"/container_files/duc_client:/config \
coppit/no-ip
