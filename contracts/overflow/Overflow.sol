// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
/** Fixed in 0.8.0+ ?
 */
contract Overflow {
    mapping(address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = type(uint256).max -1;
    }

    // (2**256 - 1) + 1 = 0
    function overflow(uint256 _value) public returns (uint256 _overflow) {
        return balanceOf[msg.sender] += _value;
    }

    // 0 - 1 = 2**256 - 1
    function underflow(uint256 _value) public  returns (uint256 _underflow) {
        return balanceOf[msg.sender] -= _value;
    }
}
