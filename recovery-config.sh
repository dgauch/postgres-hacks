#!/bin/bash

cat <<EOF
standby_mode = 'on'
restore_command = 'cp /var/lib/postgresql/data/pgdata/wal/%f "%p"'
EOF