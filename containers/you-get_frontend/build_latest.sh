#!/bin/bash
# Build script for "you-get_frontend" Dockerfile

# delete old container (if applicable)
docker rm you_get_frontend

# remove all untagged images
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

# delete old image (if applicable)
# uncomment this to rebuild new image every single time
#docker rmi workstation

# build docker container
#docker build -t workstation:latest -f ~/home/raxemremy/projects/dockerfiles/workstation .
cd /home/raxemremy/projects/dockerfiles/containers/you-get_frontend
docker build -t you-get_frontend:latest .

# run new container with settings
docker run -d \
--name you-get_frontend
-p 80:80 \
