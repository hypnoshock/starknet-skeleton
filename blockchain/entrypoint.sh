#!/bin/bash

# This is not a volume like it is in loot-dungeon as I dont' want it to persist due to devnet not persisting
mkdir /db -p

# set blocktime - sometimes it is useful to simulate slower mining
: ${MINER_BLOCKTIME:=0}

echo "+-------------------+"
echo "| starting evm node |"
echo "+-------------------+"
npx ganache ethereum \
	--miner.blockTime "${MINER_BLOCKTIME}" \
	--server.host 0.0.0.0 \
	--server.port 8545 \
	--database.dbPath /db/chain.db \
	--wallet.mnemonic "${ACCOUNT_MNEMONIC}" \
	--chain.chainId 31337 \
	--chain.networkId 31337 \
	--chain.allowUnlimitedContractSize \
	--chain.hardfork london \
	&

# wait for node to start
while ! curl -sf -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' localhost:8545 >/dev/null; do
	echo "waiting for evm node to start..."
	sleep 1
done

echo "+---------------------+"
echo "| Deploying contracts |"
echo "+---------------------+"

node ./scripts/deploy.js