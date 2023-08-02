#!/bin/bash

cd "$(dirname "$0")"

# Run LambdaClass explorer
rm -rf madara_explorer
git clone https://github.com/lambdaclass/madara_explorer
cd madara_explorer
git checkout eb66776d241c48b233e5c333707076d0b766e980

# TODO refactor this when the image is deployed
cp ../explorer/docker-compose.yml .

docker-compose -f ../docker-compose.yml up madara -d
docker-compose up -d
