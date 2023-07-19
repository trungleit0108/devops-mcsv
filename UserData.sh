#!/bin/bash
echo "Starting user data script"
echo "Installing Docker..."
yum install -y docker

echo "Starting Docker service..."
service docker start

echo "Building and running Docker container..."
docker build --tag=image_demo .

echo "Running Docker container..."
docker run -d -p 8000:80 image_demo