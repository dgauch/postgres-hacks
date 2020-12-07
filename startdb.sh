#!/bin/bash

docker stop data$1 2>/dev/null
docker run -dit --rm \
    -e POSTGRES_PASSWORD=postgres \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v $(pwd)/pgdata/data$1:/var/lib/postgresql/data \
    -v $(pwd)/config/postgresql.conf:/etc/postgresql/postgresql.conf \
    -v $(pwd)/config/pg_hba.conf:/etc/postgresql/pg_hba.conf \
    --name data$1 \
    --network postgres-net \
    postgres:9.5 \
    -c 'config_file=/etc/postgresql/postgresql.conf'
