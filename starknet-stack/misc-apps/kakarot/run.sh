#!/bin/bash

export KAKAROT_ADDRESS=$(jq -r '.kakarot.address' ./deployments/${STARKNET_NETWORK}/deployments.json)
export PROXY_ACCOUNT_CLASS_HASH=$(jq -r '.proxy' ./deployments/${STARKNET_NETWORK}/declarations.json)
exec "$@"
