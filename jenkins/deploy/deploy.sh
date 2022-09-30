#!/bin/bash
echo "********** Transfer variables *************"
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth


echo "********** Copy Files         *************"
scp -i /opt/pub /tmp/.auth vagrant@192.168.99.101:/tmp/.auth
scp -i /opt/pub ./jenkins/deploy/docker-compose.yml vagrant@192.168.99.101:/var/publish/docker-compose.yml
scp -i /opt/pub ./jenkins/deploy/publish.sh vagrant@192.168.99.101:/var/publish/publish.sh


echo "********** Start the script ***************"
ssh -i /opt/pub vagrant@192.168.99.101 "/var/publish/publish.sh"
