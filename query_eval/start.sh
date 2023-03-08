#!/usr/bin/env bash

pg_ctl start -l ~/log.txt -o "-p 5400 -B 5000"
export PGPORT=5400
./createdb.sh
./size.sh
