// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract TestContract {

    string private value;
    bool isReady;
    uint num = 4500;
    uint[4] arr = [1, 2, 3, 4];

    constructor (string memory _value) {
        value = _value;
    }
    
    function getValue() public view returns(string memory) { 
        return value;
    }

    function setIsReady (bool _isReady) public {
        isReady = _isReady;
    }

    modifier isOwner {
        require(isReady == true, "Value is not ready");
        _;
    }
    function setValue(string memory _value) public isOwner{
        value = _value;
    }

    function getter() public pure returns (uint) {
        uint newNum = 800;
        return newNum;
    }

    function setArray(uint index, uint newValue) public {
        arr[index] = newValue;
    }
    function getArray() public view returns (uint[4] memory) {
        return arr;
    }

    function getTest(uint newNum) public pure returns(string memory) {
        if (newNum > 5) {
            return "Number is greater than 5";
        }
        return "Nothing";
    }

}