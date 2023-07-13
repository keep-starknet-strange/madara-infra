#!/bin/bash

cd "$(dirname "$0")"

./run-explorer.sh
./run-telemetry.sh

docker-compose -f docker-compose.yml -f telemetry/docker-compose.telemetry.yml up -d
