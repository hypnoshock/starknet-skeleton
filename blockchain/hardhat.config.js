require("@nomiclabs/hardhat-ethers");
require("@shardlabs/starknet-hardhat-plugin");

// const starknet = require("hardhat").starknet;

task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
    const accounts = await hre.ethers.getSigners();
  
    for (const account of accounts) {
      console.log(account.address);
    }
  });

module.exports =
{
    solidity:
    {
        version: "0.8.4",
        settings:
        {
            optimizer:
            {
                enabled: true,
                runs: 200
            }
        }
    },
    starknet: 
    {
        // venv: "active" <- for the active virtual environment
        // venv: "path/to/my-venv" <- for env created with e.g. `python -m venv path/to/my-venv`
        venv: "/starknet-deploy/env",
        network: process.env.HARDHAT_NETWORK == 'goerli' ? 'alpha': "starkdev",
        // wallets: 
        // {
        //     test1: 
        //     {
        //       accountName: "test1",
        //       modulePath: "starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount",
        //       accountPath: "~/.starknet_accounts"
        //     }
        // },
    },
    networks:
    {
        hardhat:
        {
        },
        ganache:
        {
            url: "http://hardhat:8545",
            accounts:
            {
                mnemonic: process.env.ACCOUNT_MNEMONIC
            }
        },
        goerli:
        {
            url: process.env.GOERLI_ENDPOINT,
            accounts:
            {
                mnemonic: process.env.ACCOUNT_MNEMONIC
            }
        },    
        starkdev:
        {
            url: "http://starknetdevnet:5000"
        }     
    },
    mocha: 
    {
        // Used for deployment in Mocha tests
        // Defaults to "alpha" (for Alpha testnet), which is preconfigured even if you don't see it under `networks:`
        // NOTE: This is actually used to configure the deployment too!!
        starknetNetwork: process.env.HARDHAT_NETWORK == 'goerli' ? 'alpha': "starkdev"
    }
};
