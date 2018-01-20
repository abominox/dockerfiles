#!/bin/bash
# Build script for "lamp" Dockerfile

# delete old container (if applicable)
docker rm workstation

# remove all untagged images
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

# delete old image (if applicable)
# uncomment this to rebuild new image every single time
#docker rmi workstation

# build docker container
#docker build -t workstation:latest -f ~/home/raxemremy/projects/dockerfiles/workstation .
cd /home/raxemremy/projects/dockerfiles/workstation
docker build -t workstation:latest .

# run new container with settings
docker run --user raxemremy --hostname workstation --name workstation -it workstation
