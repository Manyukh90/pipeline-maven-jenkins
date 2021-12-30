#!/bin/bash

echo *** Testing Maven ***

docker run --rm --name maven_contanier -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.2-ibmjava-alpine "$@"
