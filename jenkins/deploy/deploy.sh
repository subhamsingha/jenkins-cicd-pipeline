#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i ${newKey} /tmp/.auth prod-user@34.229.19.184:/tmp/.auth


#transfer the publish.sh script to remote machine
scp -i ${newKey} ./jenkins/deploy/publish.sh prod-user@34.229.19.184:/tmp/publish.sh

#run the publish.sh script to the deployment machine
#this will deploy the container to deployment machine from host machine i.e jenkins machine

ssh -i ${newKey} prod-user@34.229.19.184 "/tmp/publish.sh"
