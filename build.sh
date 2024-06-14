#!/bin/bash
set -e 
# Function to build the Docker image
build_docker() {
    echo "Building the Docker image..."
    sleep 3
    docker build -t $DOCKER_IMAGE .
}

echo "Start build process..."
build_docker
echo "Successfully bult $DOCKER_IMAGE"