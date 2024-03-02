#!/bin/bash
echo "Building image ..."
docker build -t handson-image:v0.0.1 -f Dockerfile .
echo "Running container ..."
echo "Please open http://localhost to view resource served by the container."
docker run -p 80:80 --name handson-container handson-image:v0.0.1