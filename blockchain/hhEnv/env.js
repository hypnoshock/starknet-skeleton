// Load this file into the hardhat conosole type typing: .load hhEnv/env.js

FP = 10 ** 2

deployments = JSON.parse(fs.readFileSync(`./deployments/${hre.network.name}.json`));

simpleL1 = await hre.ethers.getContractAt("contracts/solidity/SimpleContract.sol:SimpleContract", deployments.contracts.simpleContractL1.address)
simpleL2 = await (await hre.starknet.getContractFactory('contracts/cairo/SimpleContract.cairo')).getContractAt(deployments.contracts.simpleContractL2.address)

