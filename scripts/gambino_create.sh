#!/bin/sh
docker run \
-it \
--name gambino \
--restart=unless-stopped \
-v gambino_bot:/app/data \
-v gambino_bot:/app/cogs \
pejter/red-discordbot
