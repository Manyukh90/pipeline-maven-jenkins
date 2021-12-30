#!/bin/bash

# Copy the new jar file to build location

echo "*** Copy the new jar file ***"

cp -f java-app/target/*.jar jenkins/build/

echo "*** Building Docker Image ***"

cd jenkins/build/ && docker-compose -f Docker-Compose.yml build --no-cache
