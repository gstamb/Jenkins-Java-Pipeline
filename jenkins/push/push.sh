#!/bin/bash

echo "****************** Pushing image.. *****************"
IMAGE="maven-project"

echo "***************** Login Docker hub... **************"

docker login -u stambo -p $PASS 

echo "**************** Tagging image ... ****************"
docker tag $IMAGE:$BUILD_TAG stambo/$IMAGE:$BUILD_TAG

echo "**************** Pushing image.... ****************"
docker push stambo/$IMAGE:$BUILD_TAG
