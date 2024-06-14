#!/bin/bash
set -e
# Define Docker image name
DOCKER_IMAGE="lbg/1.0"
cleanup() {
    echo "Cleaning up previous build artifacts..."
    sleep 3
    # Add commands to clean up previous build artifacts
    docker rm -f $(docker ps -aq) || true
    docker rmi -f $(docker images) || true
    echo "Cleanup done."
}


# Main script execution
echo "Starting cleanup process..."
sleep 3
cleanup
echo "cleanup process completed successfully."
