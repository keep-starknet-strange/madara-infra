#!/bin/bash

export SHARINGAN_RPC_URL=${RPC_URL}
export STARKNET_NETWORK=sharingan
export SHARINGAN_ACCOUNT_ADDRESS=0x3
export SHARINGAN_PRIVATE_KEY=0x00c1cf1490de1352865301bb8705143f3ef938f97fdf892f1090dcb5ac7bcd1d

cd /app/kakarot && make deploy &
cd /app/starksheet-monorepo/packages/starksheet-cairo && poetry run python deploy/starksheet.py
cd /app/madara-swap/packages/contracts && make deploy

# Wait for both commands to finish
wait
