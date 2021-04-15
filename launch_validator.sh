#!/usr/bin/env bash
./substrate \
  --base-path $PWD/state/subplay \
  --chain ./customSpecRaw.json \
  --port 10222 \
  --ws-port 1244 \
  --rpc-port 1233 \
  --telemetry-url 'wss://telemetry.polkadot.io/submit/ 0' \
  --validator \
  --rpc-methods Unsafe \
  --name btwiuse \
  --bootnodes /ip4/207.148.101.172/tcp/10222/p2p/12D3KooWEXLBScA3NhFGPgubdESwNkyQCUrzbHWYGQfu5RmyEZjs
