#!/bin/bash
echo "Building docker image x86 cross compiler"
docker build   -t gwiz/konan-x86-xc:1.3.11  \
               -t gwiz/konan-x86-xc:latest \
               ./x86
echo "Building docker image Raspberry PI cross compiler"
docker build    -t gwiz/konan-pi-xc:1.3.11 \
                -t gwiz/konan-pi-xc:latest \
                ./pi
