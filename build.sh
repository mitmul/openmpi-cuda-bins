#!/bin/bash

docker build -t openmpi-cuda:10.2 .
docker run --rm -v $PWD:/build -t openmpi-cuda:10.2 cp /openmpi-4.0.3.tar.gz /build/openmpi-4.0.3-cuda102.tar.gz

sed -E '1s/(10.2)/10.1/g' Dockerfile | docker build -t openmpi-cuda:10.1 -
docker run --rm -v $PWD:/build -t openmpi-cuda:10.1 cp /openmpi-4.0.3.tar.gz /build/openmpi-4.0.3-cuda101.tar.gz

sed -E '1s/(10.2)/10.0/g' Dockerfile | docker build -t openmpi-cuda:10.0 -
docker run --rm -v $PWD:/build -t openmpi-cuda:10.0 cp /openmpi-4.0.3.tar.gz /build/openmpi-4.0.3-cuda100.tar.gz