#!/bin/bash

cd "$(dirname "$0")"

# Run LambdaClass explorer
rm -rf madara_explorer
git clone https://github.com/lambdaclass/madara_explorer
cd madara_explorer
git checkout dockerfile

# sed -ir 's/\.\/\.volumes\/postgres\//pg-/g' docker-compose.yml
# grep -qxF '  pg-data:' docker-compose.yml || echo '  pg-data:' >> docker-compose.yml

# the var needs to be exported
# export RPC_API_HOST=http://127.0.0.1:9944
# make setup run
# make run

docker-compose up -d
