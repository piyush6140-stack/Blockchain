// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Delievery address: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

contract Delivery{
    address owner;
    address deliveryWala=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bool contractStatus;
    uint public contractBalance=address(this).balance;
    constructor(){
        owner=msg.sender;
        contractStatus=false;
    }
          
    

    function AddEtherToContract()payable public {
        require(owner==msg.sender,"Not Owner");
    }

    function PutContract()public{
        require(owner==msg.sender,"Not Owner");
        require(address(this).balance>=50000 ,"Add ether to contract ,balance is below 50000");
        require(contractStatus==false,"There is contract which is not over yet");
        contractStatus=true;
    }
    function DelieveryDone()public{
        require(msg.sender==deliveryWala,"You are not Deilevry Boy");
        require(contractStatus==true,"Contract has not been made yet");
        payable(deliveryWala).transfer(45000);
        contractStatus=false;

    }
}
