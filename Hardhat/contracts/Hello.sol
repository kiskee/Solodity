// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

//import "hardhat/console.sol";


contract Hello {
    address public owner;
    string public message = "Hello world";

    constructor(){
        owner = msg.sender;
        //console.log("Deploying a Gretter with greeting", msg.sender);
    }

    function getMessage() public view returns (string memory){
        return message;
    }

}