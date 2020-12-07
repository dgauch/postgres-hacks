#!/bin/bash

DBINDEX=$1;
shift;
docker run -it --rm \
    -v $(pwd)/scripts:/scripts \
    --network postgres-net \
    postgres:9.5 psql postgresql://postgres:postgres@data$DBINDEX "$@"

