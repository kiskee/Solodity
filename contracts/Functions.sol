// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Functions {
    // Pure type functions dont need to access the blockchain
    function getName() public pure returns (string memory) {
        return "dani";
    }

    // View type functions
    uint256 x = 100;

    function getNumber() public view returns (uint256) {
        return x * 2;
    }

    constructor() {}
}
