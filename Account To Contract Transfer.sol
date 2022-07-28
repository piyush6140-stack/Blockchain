// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract Payment{
    /* 3 ways To recieve ether from account
    1.    "fallback() external payable{}" just simple add to contract ,add ether in value and press Transcat
    2.    "receive() external payable{}" just simple add to contract ,add ether in value and press Transcat
    3.  Create Function with anyname, make it payable 
    --  Add ether to value
    -- Press payable function 
   */
   
// using Function by your Own
   
   function getEther() public payable{
       
   }
    function contractBalance() public  view returns(uint){
        return address(this).balance;
    }
}
