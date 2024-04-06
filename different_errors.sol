// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error_handling{
    string public state = "Number is positive";
    function _require(int256 _x) public view returns (string memory){
        require(_x > 0,"Input must be positive number");
        return state;
    }
    function _revert(int256 _x) public view returns (string memory){
        if(_x <= 0){
            revert("Input must be positive number");
        }
        return state;
    }
    function _assert(int256 _x) public view returns (string memory){
        assert(_x > 0);
        return state;
    }
}
