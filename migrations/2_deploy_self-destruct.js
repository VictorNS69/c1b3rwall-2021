const fs = require('fs');
const TruffleConfig = require('@truffle/config');

const EtherGame = artifacts.require('contracts/self-destruct/EtherGame.sol');
const Attack = artifacts.require('contracts/self-destruct/Attack.sol');
const EtherGameFixed = artifacts.require('contracts/self-destruct/EtherGameFixed.sol');


let addresses = {};
const addressesPath = './addresses.json';

async function saveAddresesInfo(address, contractName) {
    addresses[contractName] = address;
    console.log(`${contractName} address info saved!`);
}

module.exports = async function (deployer) {
    const config = TruffleConfig.detect().env;
    //addresses = JSON.parse(fs.readFileSync(addressesPath));
    try {
        await deployer.deploy(EtherGame);
        const etherGame = await EtherGame.deployed();

        console.log('etherGame deployed: ', etherGame.address)
        await saveAddresesInfo(
            etherGame.address,
            "etherGame"
        );

        const attack1 = await deployer.deploy(Attack, etherGame.address);

        console.log('attack1 deployed: ', attack1.address);
        await saveAddresesInfo(
            attack1.address,
            "attack1"
        );

        await deployer.deploy(EtherGameFixed);

        const etherGameFixed = await EtherGameFixed.deployed();
        console.log('etherGameFixed deployed: ', etherGameFixed.address);
        await saveAddresesInfo(
            etherGameFixed.address,
            "etherGameFixed"
        );
        
        const attack2 = await deployer.deploy(Attack, etherGameFixed.address);

        console.log('attack2 deployed: ', attack2.address);
        await saveAddresesInfo(
            attack2.address,
            "attack2"
        );

        await fs.writeFileSync(addressesPath, JSON.stringify(addresses));
    }
    catch (err) {
        console.log("ERROR:", err);
        callback(null);
    }
}