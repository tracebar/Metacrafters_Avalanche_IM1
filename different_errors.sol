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
