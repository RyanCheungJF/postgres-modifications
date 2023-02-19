#!/usr/bin/env bash

make clock
./start.sh
./stop.sh
rm log.txt
make lru
