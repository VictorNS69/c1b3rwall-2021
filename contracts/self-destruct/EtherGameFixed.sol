// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

/*
    The goal of this game is to be the 3th player to deposit 1 Ether.
    Players can deposit only 1 Ether at a time.
    Winner will be able to withdraw all Ether.
*/
contract EtherGameFixed {
    uint public targetAmount = 3 ether;
    uint public balance;
    address public winner;

    /** Adds an ETH to the balance of the contract
     */
    function deposit() public payable {
        require(msg.value == 1 ether, "You can only send 1 Ether");

        balance += msg.value;
        require(balance <= targetAmount, "Game is over!");

        if (balance == targetAmount) {
            winner = msg.sender;
        }
    }

    /** Claims the reward and withdraw all the balance
     */
    function claimReward() public {
        require(msg.sender == winner, "You are not the winner");

        (bool sent, ) = msg.sender.call{value: balance}("");
        require(sent, "Failed to send Ether");
        balance = 0;
        winner = address(0);
    }
    
     /** Checks the contract balance
     */
    function getContractBalance() public view returns (uint){
        return address(this).balance;
    }
    
}