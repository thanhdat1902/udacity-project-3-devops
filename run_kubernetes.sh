#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="thanhdat1902/udap3app"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run udap3app\
#     --generator="run-pod/v1"\
#     --image=$dockerpath\
#     --port=80 --labels app=udap3app
kubectl run udap3app --image=$dockerpath:latest --port=80 --labels="app=udap3app,env=prod"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udap3app 8000:80