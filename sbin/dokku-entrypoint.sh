#!/bin/sh

if [ "${DB_TYPE}" = "postgresql" ]
then
    export DB_TYPE="postgres"
fi
export DB_HOST=="${DB_HOST}:${DB_PORT}"
export DB_PASSWD="${DB_PASS}"

/usr/bin/entrypoint "$@"
