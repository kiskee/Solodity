// SPDX-License-Identifier: MIT

// Version
pragma solidity >=0.8.2 <0.9.0;

// import the smart contract from Openzeppelin
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Declare the contract
contract FirstContract is ERC721 {

    // Adress of the person who deploy
    address public owner;

    /* we store the variable  */
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        owner = msg.sender;
    }

}


