#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
# docker build --tag=flask-ml .

# Step 1:
# Create dockerpath
dockerpath=ytk007/devops-k8s-aws

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker tag flask-ml $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
