#!/bin/bash

export KAKAROT_ADDRESS=$(jq -r '.kakarot.address' ./deployments/deployments.json)
export PROXY_ACCOUNT_CLASS_HASH=$(jq -r '.proxy' ./deployments/declarations.json)
exec "$@"
