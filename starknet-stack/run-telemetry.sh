#!/bin/bash

cd "$(dirname "$0")"

# Run Substrate Telemetry
rm -rf substrate-telemetry
git clone https://github.com/paritytech/substrate-telemetry

cp telemetry/Dockerfile.backend  substrate-telemetry/backend/Dockerfile
cp telemetry/Dockerfile.frontend  substrate-telemetry/frontend/Dockerfile

docker-compose -f substrate-telemetry/docker-compose.yml up -d
