//PDX-License-Identifier: UNLICENSED

pragma solidity  ^0.8.0;

contract Vote {
    uint256 private votes=0;

    function vote() public {
        votes+=1;
    }
    function getCount() public view returns(uint256){
        return votes;
    }
}