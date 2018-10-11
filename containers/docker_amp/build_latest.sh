#!/bin/bash
# Build script for "AMP" Dockerfile

# delete old container (if applicable)
docker stop AMP
docker rm AMP
docker system prune -y

# delete orphaned Docker volumes
docker volume ls -qf dangling=true | xargs -r docker volume rm

# remove all untagged images
docker rmi "$(docker images | grep "^<none>" | awk "{print $3}")"

# build docker container
cd /home/raxemremy/projects/dockerfiles/containers/docker_amp || exit
docker build -t amp:latest .

# run new container with settings
docker run -itd \
--name AMP \
--restart=unless-stopped \
-e license='e0283d4b-3ca0-4835-a118-ae58eb83b295' \
-e username='popman183' \
-e password='test123' \
-v /home/raxemremy/amp/Minecraft:/home/AMP/server_data \
-p 25565:25565 \
-p 8000:8080 \
amp
