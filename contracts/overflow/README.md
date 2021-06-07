# Integer Overflow and Underflow

- [SWC-101](https://swcregistry.io/docs/SWC-101)
- [CWE-682](https://cwe.mitre.org/data/definitions/682.html) Incorrect Calculation

## Description

An **overflow/underflow** happens when an arithmetic operation reaches the maximum or minimum size of a type. For instance if a number is stored in the `uint8` type, it means that the number is stored in a 8 bits unsigned number ranging from <img src="https://render.githubusercontent.com/render/math?math=0"> to <img src="https://render.githubusercontent.com/render/math?math=2^{8}-1">. In computer programming, an integer overflow occurs when an arithmetic operation attempts to create a numeric value that is outside of the range that can be represented with a given number of bits, either larger than the maximum or lower than the minimum representable value.

## Remediation

It is recommended to use vetted safe math libraries for arithmetic operations consistently throughout the smart contract system, such as [Open Zeppelin SafeMath.sol](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol).