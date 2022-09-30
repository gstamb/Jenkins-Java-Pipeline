#!/bin/bash


echo "TAG=$(sed -n '2p' /tmp/.auth)" >> /var/publish/.env
echo "IMAGE=$(sed -n '1p' /tmp/.auth)" >> /var/publish/.env
export PASS=$(sed -n '3p' /tmp/.auth)

echo "**********        Loggin docker        ******************"
docker login -u stambo -p $PASS

echo "********** Stop container if it exists ******************"
docker rm -f maven-app

echo "********** Start docker compose        ******************"
cd /var/publish && docker compose up -d

