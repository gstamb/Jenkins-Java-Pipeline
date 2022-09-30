#!/bin/bash

echo "**************************************"
echo "*********** Building Jar *************"
echo "**************************************"
WORKSPACE=/var/jenkins_home/workspace/pipeline-docker

#docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.4-ibmjava-8-alpine "$@"
docker run --rm -v /var/jenkins_home/workspace/pipeline-docker/java-app:/app:z -v /root/.m2:/root/.m2 -w /app maven:3.8.4-ibmjava-8-alpine "$@"
