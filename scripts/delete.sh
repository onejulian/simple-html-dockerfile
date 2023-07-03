#!/bin/bash
./scripts/stop.sh
base_name='simple-html'
container=$base_name'-container'
image=$base_name':dev'
if [ "$(docker ps -aq -f name=$container)" ]; then
    docker rm -f $container
fi
if [ "$(docker images -q $image)" ]; then
    docker rmi $image
fi