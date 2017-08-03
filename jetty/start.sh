#!/usr/bin/env bash

set -e

IMAGE_NAME=jetty

docker build -t ${IMAGE_NAME} .

docker run \
    --rm \
    -v `pwd`/webapps:/opt/jetty/webapps \
    --name jetty-local \
    ${IMAGE_NAME}