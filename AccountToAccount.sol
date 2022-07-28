// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Payment{
/*
-- We cannot transfer ether direct from account to account 
  First we have to transfer to contract then to account
*/

  function getEther(address _to) public payable{
       contractToAccount(_to);
   }
    function contractBalance() public  view returns(uint){
        return address(this).balance;
    }

    function contractToAccount(address _to) private{
        payable(_to).transfer(address(this).balance);
    }
    
}
