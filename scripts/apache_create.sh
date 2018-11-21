#!/bin/sh

docker run -d \
--name apache \
--restart=unless-stopped \
-v /home/raxemremy/container_files/apache:/app \
-p 80:8080 \
bitnami/apache:latest
