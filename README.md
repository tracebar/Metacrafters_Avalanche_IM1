# Metacrafters_Avalanche_IM1
This Solidity program showcases different error handling techniques in smart contracts. It includes functions for `require`, `revert`, and `assert` statements to handle different scenarios when dealing with numbers divisible by 3.

## Description

This program is a Solidity smart contract that demonstrates error handling techniques using `require`, `revert`, and `assert` statements. It provides functions to check if a given input is an numbers divisible by 3. Depending on the function called, it will either return a message, revert the transaction, or assert a condition.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. Visit the Remix website at https://remix.ethereum.org/.

1. Once on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorContract.sol).
2. Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error_handling{
    string public state = "Number is divisible by 3";
    function _require(uint256 _x) public view returns (string memory){
        require(_x %3 == 0,"Input must be divisible by 3");
        return state;
    }
    function _revert(uint256 _x) public view returns (string memory){
        if(_x%3 != 0){
            revert("Input must be divisible by 3");
        }
        return state;
    }
    function _assert(uint256 _x) public view returns (string memory){
        assert(_x %3 == 0);
        return state;
    }
}
```

3. To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "^0.8.13" (or another compatible version), and then click on the "Compile ErrorContract.sol" button.

4. Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorContract" contract from the dropdown menu, and then click on the "Deploy" button.

5. After deployment, you can interact with the contract by calling its functions. Click on the "ErrorContract" contract in the left-hand sidebar, and then click on any of its functions to interact with it.


## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
