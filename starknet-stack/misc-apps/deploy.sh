#!/bin/bash

# Dynamically set the RPC, account address and private key based on the network
export STARKNET_NETWORK=${STARKNET_NETWORK}
export SN=$(echo "${STARKNET_NETWORK}" | tr '[:lower:]' '[:upper:]')
export "${SN}_RPC_URL"=${RPC_URL}
export "${SN}_ACCOUNT_ADDRESS"=0x3
export "${SN}_PRIVATE_KEY"=0x00c1cf1490de1352865301bb8705143f3ef938f97fdf892f1090dcb5ac7bcd1d

exec "$@"
