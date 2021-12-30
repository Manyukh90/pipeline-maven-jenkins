#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

echo "*** Transfer Data To Remote VM ***"
scp -i /opt/pipeline_keygen /tmp/.auth apps@35.198.195.141:/tmp/.auth
scp -i /opt/pipeline_keygen ./jenkins/deploy/publish.sh apps@35.198.195.141:/tmp/publish
ssh -i /opt/pipeline_keygen apps@35.198.195.141 "/tmp/publish"
