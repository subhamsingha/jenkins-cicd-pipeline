#!/bin/bash

echo "*************pushing the docker image to docker hub *********************"


IMAGE="maven-project"

echo "-----log into docker hub--------"

docker login -u ssingha -p ${PASS}

echo "--tag the docker image ----"

docker tag ${IMAGE}:${BUILD_TAG} ssingha/${IMAGE}:${BUILD_TAG}

echo "----pushing image-----"

docker push ssingha/${IMAGE}:${BUILD_TAG}
