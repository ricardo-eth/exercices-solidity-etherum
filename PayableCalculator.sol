// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PayableCalculator {
    
    uint256 private _totalOperation;
    
    event Added(address indexed account, int256 nb1, int256 nb2, int256 res);

    function add(int256 nb1, int256 nb2) public payable returns (int256) {
        require(msg.value > 1000, "PayableCalculator: Not enough ether sent");
        emit Added(msg.sender, nb1, nb2, nb1 + nb2);
        _totalOperation += 1;
        return nb1 + nb1;
    }
    
    function sub(int256 nb1, int256 nb2) public payable returns (int256) {
        require(msg.value > 1000, "PayableCalculator: Not enough ether sent");
        emit Added(msg.sender, nb1, nb2, nb1 + nb2);
        _totalOperation += 1;
        return nb1 - nb1;
    }
    
    function mul(int256 nb1, int256 nb2) public payable returns (int256) {
        require(msg.value > 1000, "PayableCalculator: Not enough ether sent");
        emit Added(msg.sender, nb1, nb2, nb1 + nb2);
        _totalOperation += 1;
        return nb1 * nb1;
    }
    
    function div(int256 nb1, int256 nb2) public payable returns (int256) {
        require(msg.value > 1000, "PayableCalculator: Not enough ether sent");
        require(nb2 != 0, "PayableCalculator: Can not devide by 0");
        emit Added(msg.sender, nb1, nb2, nb1 + nb2);
        _totalOperation += 1;
        return nb1 / nb1;
    }
    
    function mod(int256 nb1, int256 nb2) public payable returns (int256) {
        require(msg.value > 1000, "PayableCalculator: Not enough ether sent");
        emit Added(msg.sender, nb1, nb2, nb1 + nb2);
        _totalOperation += 1;
        return nb1 % nb1;
    }
    
     function totalOperation() public view returns(uint256) {
        return _totalOperation;
    }
    
}