#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="prasunsrivastava89/udacity:udacity-devops"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-devops --port=80 --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $(kubectl get pods -o=name | grep udacity-devops | sed "s/^.\{4\}//") 8000:80
