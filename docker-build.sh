#!/bin/bash

echo "BUILD START"
echo "----------------------------------------"

# build and push images
for VERSION in 2 3; do
    docker build -t $DOCKER_ID/py-dev-vim:0.1-python$VERSION --build-arg version=$VERSION .
    docker push $DOCKER_ID/py-dev-vim:0.1-python$VERSION
done

echo "----------------------------------------"
echo "BUILD COMPLETED"
