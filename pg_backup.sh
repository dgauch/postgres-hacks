#!/bin/bash

DBINDEX=$1;
shift;
docker exec -it -u postgres data$DBINDEX \
    pg_basebackup --pgdata=/var/lib/postgresql/data/backup/ --format=tar --gzip --xlog-method=fetch
