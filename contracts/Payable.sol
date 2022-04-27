// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Payable {

    address payable owner;
    uint amount;

    constructor () {
        owner = payable(msg.sender);
    }

    function getBalance () public view returns (uint) {
        return owner.balance;
    }
    receive() external payable {
        amount+= msg.value;
    }
    function invest() public payable {
        amount+= msg.value;
    }
    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }

    function transferToOwner() public payable  {
        owner.transfer(1 ether);
    }


}