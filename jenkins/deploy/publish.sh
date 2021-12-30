#!/bin/bash

echo "*** Create Env ***"
export IMAGE=$(sed -n '1p' /tmp/.auth)
export BUILD_TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

echo "*** Docker Login ***"
docker login -u manyukh90 -p $PASS

echo "*** Docker Compose Up ***"

cd ~/maven && docker-compose up -d
