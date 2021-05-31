const fs = require('fs');
const TruffleConfig = require('@truffle/config');

const Overflow = artifacts.require('contracts/overflow/Overflow.sol');


let addresses = {};
const addressesPath = './addresses_overflow.json';

async function saveAddresesInfo(address, contractName) {
    addresses[contractName] = address;
    console.log(`${contractName} address info saved!`);
}

module.exports = async function (deployer) {
    try {
        await deployer.deploy(Overflow);
        const overflow = await Overflow.deployed();

        console.log('overflow deployed: ', overflow.address)
        await saveAddresesInfo(
            overflow.address,
            "overflow"
        );

        await fs.writeFileSync(addressesPath, JSON.stringify(addresses), {flag: 'wx'});
    }
    catch (err) {
        console.log("ERROR:", err);
        callback(null);
    }
}