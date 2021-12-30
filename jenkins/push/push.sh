#!/bin/bash

echo "*** Pushing Image To Docker Hub"

IMAGE="maven-project"

echo "*** Docker Login ***"

docker login -u manyukh90 -p $PASS

echo "*** Docker Tag Images ***"

docker tag $IMAGE:$BUILD_TAG manyukh90/$IMAGE:$BUILD_TAG

echo "*** Docker Push Image ***"

docker push manyukh90/$IMAGE:$BUILD_TAG

