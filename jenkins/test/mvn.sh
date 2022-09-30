#!/bin/bash

echo "**************************************"
echo "*********** Testing..... *************"
echo "**************************************"
WORKSPACE=/var/jenkins_home/workspace/pipeline-docker

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.4-ibmjava-8-alpine "$@"
