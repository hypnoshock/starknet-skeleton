const Deployment = require("./deployment");
const fs = require('fs');


module.exports.createDeployment = function (hre) {
    let signer;
    return new Deployment(hre, signer);
}

module.exports.deployContracts = async function (deployment) {

    // goerli core contract addr
    const STARKNET_CORE_ADDR = '0xde29d060D45901Fb19ED6C6e959EB22d8626708e';
    const allowAutoUpdate = true;

    // -- SOLIDITY

    const simpleL1 = await deployment.deploy(
        {
            id: "simpleContractL1",
            contract: "contracts/solidity/SimpleContract.sol:SimpleContract",
            autoUpdate: allowAutoUpdate
        });

    await simpleVarCheckValue(simpleL1, "b", "setB", 1234);

    // -- STARKNET

    await deployment.deploy(
        {
            id: "simpleContractL2",
            contract: "contracts/cairo/SimpleContract.cairo",
            autoUpdate: allowAutoUpdate,
        }   
    )
}


async function simpleVarCheckValue(contract, getter, setter, value) {
    const current = await contract[getter]();
    if (current != value) {
        console.log(getter, "returned", current, "updating to", value)
        await (await contract[setter](value)).wait();
    } else {
        console.log(getter, "already set to ", value);
    }


}
