#!/bin/bash

#export the variables

export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

#log into docker hub

docker login -u ssingha -p ${PASS}

#run the docker compose file to deploy the app

cd ~/maven/ && docker-compose up -d
