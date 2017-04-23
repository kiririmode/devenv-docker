#!/bin/bash

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<EOF
    CREATE USER gitbucket PASSWORD 'password';
    CREATE DATABASE gitbucket;
    GRANT ALL PRIVILEGES ON DATABASE gitbucket TO gitbucket;
EOF
