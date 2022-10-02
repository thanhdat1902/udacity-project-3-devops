#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="thanhdat1902/udap3app"

# Step 2:  
# Authenticate & tag
docker login
docker tag udap3app $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest