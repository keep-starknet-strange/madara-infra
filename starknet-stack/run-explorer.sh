#!/bin/bash

cd "$(dirname "$0")"

# Run LambdaClass explorer
rm -rf madara_explorer
git clone https://github.com/lambdaclass/madara_explorer

# TODO refactor this when the image is deployed
cp explorer/docker-compose.yml madara_explorer/

cd madara_explorer

docker-compose -f ../docker-compose.yml up -d
docker-compose up -d
