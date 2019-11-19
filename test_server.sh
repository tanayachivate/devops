#!/bin/bash

# download the node modules
# npm install

# remove the container if exists or running 
if [ $(docker container ls -q -a --filter name=myserver_con) != '' ]; then
    docker container stop myserverc
    docker container rm myserverc
fi

# remove the image if exists
if [ $(docker image ls -q --filter reference=myserverimg) != '' ]; then
    docker image rm myserverimg
fi

# build the image
docker image build -t myserverimg .

# start the container
docker container run -itd -p 4000:4000 --name myserverc myserverimg
