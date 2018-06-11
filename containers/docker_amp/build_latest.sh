#!/bin/bash
# Build script for "workstation" Dockerfile

# delete old container (if applicable)
docker stop AMP
docker rm AMP
docker system prune -y
# delete orphaned Docker volumes
docker volume ls -qf dangling=true | xargs -r docker volume rm

# remove all untagged images
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

# build docker container
cd /home/raxemremy/docker_amp
docker build -t amp:latest .

# run new container with settings
docker run -d \
--name AMP \
--restart=unless-stopped \
-e license='06eb3be0-db43-4546-a2cb-4023e268932d' \
-e username='popman183' \
-e password='test123' \
-v /home/raxemremy/amp_volume_test:/home/AMP/.ampdata/instances/MCMA \
-p 25565:25565 \
-p 8000:8080 \
amp
