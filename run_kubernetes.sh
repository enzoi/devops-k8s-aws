#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ytk007/devops-k8s-aws

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devops-k8s-aws\
    --image=$dockerpath\
    --port=80\
    --labels app=udacityproject

# Wait 5 seconds until the pod is running
sleep 5

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward devops-k8s-aws 8080:80
