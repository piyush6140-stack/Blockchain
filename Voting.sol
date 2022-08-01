// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Voting{
    address immutable voterMachineAddress=0x6383ebeAAdC93A0f0506191F04A3909B9c73aDA1;
    address immutable ControlMachineAddress=0xD7C919Ef10A7365ce9DC19B5aE817a952A019e42;   
    mapping (string=>uint) public voteHistory;
    bool public voteStatus;
    uint public totalVotesGiven;
    event mathdan(string Neta);
    function addVote(string memory _id) public{
        require(msg.sender==0x6383ebeAAdC93A0f0506191F04A3909B9c73aDA1," You cannot vote from another account");
        require(voteStatus, "Take permission to vote");
        voteHistory[_id]+=1;
        totalVotesGiven+=1;
        voteStatus=false;
    }

    function allowToVote() public{
        require(msg.sender==0xD7C919Ef10A7365ce9DC19B5aE817a952A019e42," You cannot do changes from another account");
        require(!voteStatus," Voter have not given vote yet");
        voteStatus=true;
    }
}

    
