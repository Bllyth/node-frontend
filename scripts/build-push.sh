#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t blyth/node-frontend:15 .

docker build -t blyth/node-frontend:latest .

docker push blyth/node-frontend:15

docker push blyth/node-frontend:latest
