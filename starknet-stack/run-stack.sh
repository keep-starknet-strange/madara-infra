#!/bin/bash

cd "$(dirname "$0")"

# TODO: choose things to run instead of running everything

docker-compose up -d

# Run LambdaClass explorer
git clone https://github.com/lambdaclass/starknet_explorer || (cd starknet_explorer ; git pull)
cd starknet_explorer

sed -ir 's/\.\/\.volumes\/postgres\//pg-/g' docker-compose.yml
grep -qxF '  pg-data:' docker-compose.yml || echo '  pg-data:' >> docker-compose.yml

# the var needs to be exported
export RPC_API_HOST=http://127.0.0.1:9944
make setup run
make run

