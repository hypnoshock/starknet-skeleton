const fs = require("fs");
const crypto = require("crypto");



module.exports = class Deployment {
    constructor(hre, signer) {
        this.hre = hre;
        this.signer = signer;
        this.instances = {};
        this.proxyInstances = {};
        this.proxyImplInstances = {};
        this.proxyInitTxns = {};
        this.jsonFilePath = `./deployments/${hre.network.name}.json`;
        this.deployment = {};

        if (!fs.existsSync("./deployments")) {
            fs.mkdirSync("./deployments");
        }

        if (fs.existsSync(this.jsonFilePath)) {
            this.deployment = JSON.parse(fs.readFileSync(this.jsonFilePath));
        }

        if (this.deployment.contracts == undefined) {
            this.deployment.contracts = {};
        }
        if (this.deployment.artifacts == undefined) {
            this.deployment.artifacts = {};
        }
    }

    async deploy(contractInfo, ...args) {
        if (this.deployment.contracts[contractInfo.id] == undefined) {
            this.deployment.contracts[contractInfo.id] = {};
        }

        let instance;

        if (contractInfo.contract.indexOf('.cairo') > -1)
        {
            instance = await this.deployStarknet(
                contractInfo,
                this.deployment.contracts[contractInfo.id],
                ...args);
        }
        else
        {
            instance = await this._deploy(
                contractInfo,
                this.deployment.contracts[contractInfo.id],
                ...args);
        }

        this.instances[contractInfo.id] = instance;
        return instance;
    }

    async deployUpgradeable(contractInfo, initialiseFunc, ...args) {
        if (this.deployment.contracts[contractInfo.id] == undefined) {
            this.deployment.contracts[contractInfo.id] = { implementation: {} };
        }
        else if (this.deployment.contracts[contractInfo.id].implementation == undefined) {
            this.deployment.contracts[contractInfo.id].implementation = {};
        }

        const implementationInfo =
        {
            id: contractInfo.id + "[impl]",
            contract: contractInfo.implementation.contract,
            autoUpdate: contractInfo.implementation.autoUpdate
        }
        const implementation = await this._deploy(
            implementationInfo,
            this.deployment.contracts[contractInfo.id].implementation);

        const proxyInfo =
        {
            id: contractInfo.id + "[proxy]",
            contract: contractInfo.proxy.contract,
            autoUpdate: contractInfo.proxy.autoUpdate
        };

        const initData = implementation.interface.encodeFunctionData(initialiseFunc, args);
        const proxy = await this._deploy(
            proxyInfo,
            this.deployment.contracts[contractInfo.id],
            implementation.address,
            initData);

        const instance = await this.hre.ethers.getContractAt(
            contractInfo.implementation.contract,
            proxy.address,
            this.signer);

        // this is where the implementation address is stored in ERC1967 proxies
        let currentImplementation = await this.hre.ethers.provider.getStorageAt(proxy.address, 
            "0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc");
        // on hardhat node (and possibly others) this returns a full 32 byte word
        // with padded zeroes at the start, those need trimming or getAddress will
        // fail. Ganache doesn't though, so we just chop off the last 40 chars
        // (20 bytes) and prepend 0x.
        currentImplementation = this.hre.ethers.utils.getAddress("0x" + currentImplementation.substring(currentImplementation.length - 40));

        if (currentImplementation != implementation.address) {
            console.log("implementation contract has changed, updating");
            await (await instance.setImplementation(implementation.address)).wait();
        }

        this.instances[contractInfo.id] = instance;
        this.proxyInstances[contractInfo.id] = proxy;
        this.proxyImplInstances[contractInfo.id] = implementation;

        return instance;
    }

    async _deploy(contractInfo, deployedContract, ...args) {
        if (contractInfo.autoUpdate == undefined) {
            contractInfo.autoUpdate = true;
        }

        console.log(`deploying ${contractInfo.id} | ${contractInfo.contract} | autoUpdate=${contractInfo.autoUpdate}`);

        const artifact = await this.hre.artifacts.readArtifact(contractInfo.contract);
        const buildInfo = await this.hre.artifacts.getBuildInfo(contractInfo.contract);

        const hash = crypto.createHash("sha256");
        hash.update(artifact.bytecode);
        const bytecodeHash = hash.digest("hex");

        if (deployedContract.address != undefined) {
            console.log(`${contractInfo.id} is already deployed at ${deployedContract.address}`);

            if (deployedContract.bytecodeHash != bytecodeHash && contractInfo.autoUpdate) {
                console.log(`${contractInfo.id} is out of date (${deployedContract.bytecodeHash}), redeploying (${bytecodeHash})`);
            }
            else {
                return await this.hre.ethers.getContractAt(
                    contractInfo.contract,
                    deployedContract.address,
                    this.signer);
            }
        }

        const contract = await this.hre.ethers.getContractFactory(contractInfo.contract, this.signer);
        const instance = await (await contract.deploy(...args)).deployed();

        console.log("deployed to", instance.address);

        if (this.deployment.artifacts[buildInfo.id] == undefined) {
            this.deployment.artifacts[buildInfo.id] = buildInfo;
        }

        deployedContract.contract = contractInfo.contract;
        deployedContract.address = instance.address;
        deployedContract.bytecodeHash = bytecodeHash;
        deployedContract.buildInfo = buildInfo.id;

        return instance;
    }

    async deployStarknet(contractInfo, deployedContract, ...args) {
        console.log(`deploying ${contractInfo.id} | ${contractInfo.contract} | autoUpdate=${contractInfo.autoUpdate}`);
        
        // There doesn't appear to be an equivalent to hre.artifacts.readArtifact for Starknet
        const splitPath = contractInfo.contract.split('/');
        const contractFilename = splitPath[splitPath.length - 1];
        const contractName = contractFilename.replace('.cairo', '');
        const artifact = JSON.parse(fs.readFileSync(`starknet-artifacts/${contractInfo.contract}/${contractName}.json`));
        const bytecode = artifact.program.data.join();
        
        const hash = crypto.createHash("sha256");
        hash.update(bytecode);
        const bytecodeHash = hash.digest("hex");
        
        const contractFactory = await this.hre.starknet.getContractFactory(contractInfo.contract);

        if (deployedContract.address != undefined) {
            console.log(`${contractInfo.id} is already deployed at ${deployedContract.address}`);

            if (deployedContract.bytecodeHash != bytecodeHash && contractInfo.autoUpdate) {
                console.log(`${contractInfo.id} is out of date (${deployedContract.bytecodeHash}), redeploying (${bytecodeHash})`);
            }
            else {
                return await contractFactory.getContractAt(deployedContract.address);
            }
        }

        const instance = await contractFactory.deploy(args[0]);

        console.log(`deployed to`, instance.address);

        const buildInfo = {};
        buildInfo.id = bytecodeHash.slice(0, 32);

        // if (this.deployment.artifacts[buildInfo.id] == undefined) {
        //     this.deployment.artifacts[buildInfo.id] = buildInfo;
        // }

        this.deployment.artifacts[buildInfo.id] = artifact.abi;

        deployedContract.contract = contractInfo.contract;
        deployedContract.address = instance.address;
        deployedContract.bytecodeHash = bytecodeHash;
        deployedContract.buildInfo = buildInfo.id;

        return instance;
    }

    writeToFile() {
        // prune any unneeded artifacts
        try {
            let usedBuildInfoIds = {};
            for (const contractId in this.deployment.contracts) {
                usedBuildInfoIds[this.deployment.contracts[contractId].buildInfo] = true;

                if (this.deployment.contracts[contractId].implementation != undefined) {
                    usedBuildInfoIds[this.deployment.contracts[contractId].implementation.buildInfo] = true;
                }
            }

            let toPrune = [];
            for (const buildInfo in this.deployment.artifacts) {
                if (usedBuildInfoIds[buildInfo] == undefined) {
                    toPrune.push(buildInfo);
                }
            }

            for (let i = 0; i < toPrune.length; ++i) {
                delete this.deployment.artifacts[toPrune[i]];
            }

            for (const artifact in this.deployment.artifacts)
            {
                delete this.deployment.artifacts[artifact].output;
            }
        }
        catch
        {

        }

        fs.writeFileSync(this.jsonFilePath, JSON.stringify(this.deployment, null, 4));
    }
}
