// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CheckOdd {

    function check(uint256 number ) public pure returns (bool) {
        
        uint256 numberOdd = number % 2;
       
        if (numberOdd == 1)
            return true;
        else
            return false;
    }
    
}