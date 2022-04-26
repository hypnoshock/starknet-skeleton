const hre = require("hardhat");
const { createDeployment, deployContracts } = require("./deployContracts");



let deployment = null;

async function main() {
    await hre.run("compile");
    await hre.run("starknet-compile");

    deployment = createDeployment(hre);
    await deployContracts(deployment);
}

main()
    .catch((error) => {
        console.error(error);
        process.exitCode = 1;
    })
    .finally(() => {
        if (deployment != null && hre.network.name != "hardhat") {
            deployment.writeToFile();
        }

        // Keeps the docker running so we are able to get access to the Hardhat console
        setInterval(()=>{}, 1 << 30)
    });
