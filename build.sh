#!/bin/bash

[ -z "$1" ] && echo "Please specify docker base image!" && exit 1
[ -z "$2" ] && echo "Please specify docker image tag!" && exit 1

echo "BUILD START"
echo "----------------------------------------"

# build and push image
docker build -t $DOCKER_ID/dev-vim:$2 --build-arg image=$1 .
docker push $DOCKER_ID/dev-vim:$2

echo "----------------------------------------"
echo "BUILD COMPLETED"
