#!/usr/bin/env bash

set -e

docker run \
    -p 8080:8080 -p 50000:50000 \
    -v `pwd`/home:/var/jenkins_home \
    jenkins