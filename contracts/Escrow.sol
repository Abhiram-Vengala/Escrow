// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Escrow{
    address payable public buyer;
    address payable public seller;

    uint256 contractBal;

    receive() external payable {}

    function SetAddress(address payable  _buyer,address payable  _seller) external{
        buyer=_buyer;
        seller=_seller;
    }

    function depositFunds() public payable {
        require(msg.sender==buyer,"Only buyer can send the amount");
        require(msg.value>0,"amount should be greater than zero");
        contractBal+=msg.value;
    }

    function releaseFunds() external{
        require(msg.sender==buyer,"Only buyer can release the funds");
        require(contractBal>0,"No funds to release");
        uint256 amount = contractBal;
        seller.transfer(amount);
    }

    function getBalance() external view returns(uint256){
        return contractBal;
    }
}