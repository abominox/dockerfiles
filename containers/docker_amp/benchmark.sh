#!/bin/bash
# Benchmark script to measure Docker image build performance across one versus more cores

# delete old container (if applicable)
docker rm workstation

# delete old image (if applicable)
docker rmi workstation

# build docker container
cd /home/raxemremy/projects/dockerfiles/workstation
time docker build -t workstation:latest .
