#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="kiminza/demolocal"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment demolocal-first --image=kiminza/demolocal

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/demolocal-first 8000:80
