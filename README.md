# starknet-skeleton

## Quickstart

Create a .env file in the root of the project folder with the following environment variables

    HARDHAT_NETWORK=""
    GOERLI_ENDPOINT=""
    ACCOUNT_MNEMONIC=""

`HARDHAT_NETWORK` can be either `goerli` for testing online or `ganache` for testing locally\
`GOERLI_ENDPOINT` can be any Goerli endpoint i.e one created in Infura or Alchemy\
`ACCOUNT_MNEMONIC` this mnemonic is both used for the Ganache account generation and for the account used with Goerli

Start the docker container by running
    `docker-compose up`

## What does this do?

- Starts a container running `starknet-devnet` running on port `5001`
- Starts a container which deploys a Solidity and Cairo contract to either Goerli or Ganache depending on what was set in the .env file
  - The deployed addresses can be found in `blockchain/deployments/{network}.json`
- Starts a container running a basic Webpack TypeScript project served up via `webpack-dev-server` on port `9000`
  - The main source file is in `frontend/src/index.ts`
  - Just has a very basic example of setting and retrieving values from contracts
  - *NOTE:* This isn't production safe as keys are revealed. For production, providers should be retrieved from a wallet plugin e.g MetaMask for Ethereum and Argent X for Starknet

## Hardhat console
If you open a console to the Hardhat docker container you can interact with both the sample L1 and L2 contracts directly.

    docker exec -it starknet-skeleton_hardhat_1 /bin/bash
    npx hardhat console --network $HARDHAT_NETWORK
    .load hhEnv/env.js

    await simpleL1.a()
    await simpleL2.call("get_a")

The env.js file is in `blockchain/hhEnv/env.js`
