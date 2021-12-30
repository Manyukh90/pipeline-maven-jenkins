#!/bin/bash

echo *** Building Maven Jar***

WORKSPACE=/home/vicha-p/jenkins-data/jenkins_home/workspace/pipeline-maven-udemy

docker run --rm --name maven_contanier -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.2-ibmjava-alpine "$@"
