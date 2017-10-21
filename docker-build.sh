#!/bin/bash

echo "BUILD START"
echo "----------------------------------------"

# build image for python2 and python3
docker build -t $DOCKER_ID/py-dev-vim:0.1-python2 --build-arg version=2 .
docker build -t $DOCKER_ID/py-dev-vim:0.1-python3 --build-arg version=3 .

# push images
docker push $DOCKER_ID/py-dev-vim:0.1-python2
docker push $DOCKER_ID/py-dev-vim:0.1-python3

echo "----------------------------------------"
echo "BUILD COMPLETED AND PUSHED!"
