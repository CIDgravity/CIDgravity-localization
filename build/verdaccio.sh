#!/bin/bash

verdaccio_container="verdaccio"

if [ "$1" == "start" ]; then
    docker pull verdaccio/verdaccio
    docker run -d -it --rm --name="$verdaccio_container" -p 4873:4873 verdaccio/verdaccio

elif [ "$1" == "stop" ]; then
    docker stop "$verdaccio_container"

else
    echo "Parameter is required"
    echo "Use ./verdaccio start to start Verdaccio in background"
    echo "Use ./verdaccio stop to stop Verdaccio"

fi