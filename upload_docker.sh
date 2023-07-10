#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=trungleit0108/image_demo

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag image_demo $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker image push $dockerpath:latest