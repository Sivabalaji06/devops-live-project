#!/bin/bash

echo "Stopping existing container..."
docker stop devops_app || true
docker rm devops_app || true

echo "Pulling latest image..."
docker pull yourdockerhubusername/devops-live-project:latest

echo "Starting new container..."
docker run -d -p 5000:5000 --name devops_app yourdockerhubusername/devops-live-project:latest
