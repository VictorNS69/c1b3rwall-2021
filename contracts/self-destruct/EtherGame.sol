// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

/*
    The goal of this game is to be the 3th player to deposit 1 Ether.
    Players can deposit only 1 Ether at a time.
    Winner will be able to withdraw all Ether.
*/
contract EtherGame {
    uint public targetAmount = 3 ether;
    address public winner;

    /** Adds an ETH to the balance of the contract
     */
    function deposit() public payable {
        require(msg.value == 1 ether, "You can only send 1 Ether");

        uint balance = address(this).balance;
        require(balance <= targetAmount, "Game is over!");

        if (balance == targetAmount) {
            winner = msg.sender;
        }
    }
    
    /** Claims the reward and withdraw all the balance
     */
    function claimReward() public {
        require(msg.sender == winner, "You are not the winner");

        (bool sent, ) = msg.sender.call{value: address(this).balance}("");
        require(sent, "Failed to send Ether");
        winner = address(0);
    }
    
    /** Checks the contract balance
     */
    function getContractBalance() public view returns (uint){
        return address(this).balance;
    }
}