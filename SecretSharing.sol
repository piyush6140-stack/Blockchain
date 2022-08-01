// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Problem Statement-- Suppose there are few people in an organisation who are having some secret info 
// and if any other in the organisation want to see it ,he/she must take permission of all members 
// after approval of all members he/she can see it.

// Consider 3 people

contract SecretApproval{
    address public A_address=0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address public B_address=0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;
    address public C_address=0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
    bool public A_flag=false;
    bool public B_flag=false;
    bool public C_flag=false;
    function givepermission_A() public {
        require(msg.sender==A_address,"You are not part of Contract");
        A_flag=true;
    }
    function givepermission_B() public {
        require(msg.sender==B_address,"You are not part of Contract");
        B_flag=true;
    }
    function givepermission_C() public {
        require(msg.sender==C_address,"You are not part of Contract");
        C_flag=true;
    }

    function cancelPermission_A() public{
        require(msg.sender==A_address,"You are not part of Contract");
        A_flag=false;
    }

    function cancelPermission_B() public{
        require(msg.sender==B_address,"You are not part of Contract");
        B_flag=false;
    }

    function cancelPermission_C() public{
        require(msg.sender==C_address,"You are not part of Contract");
        C_flag=false;
    }

    function viewCode() public returns(string memory){
        require(A_flag,"Take Permission of all memebers");
        require(B_flag,"Take Permission of all memebers");
        require(C_flag,"Take Permission of all memebers");
        A_flag=false;
        B_flag=false;
        C_flag=false;
        return "This is secret Code";
    }
}
