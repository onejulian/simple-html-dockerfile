#!/bin/bash
container='simple-html-container'
if [ "$(docker ps -aq -f name=$container -f status=running)" ]; then
    docker kill $container
fi