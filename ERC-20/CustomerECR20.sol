// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

import "./ERC20.sol";

contract customERC20 is ERC20 {

    // Constructor del Smart Contract
    constructor() ERC20("SantiCoin", "STNC") {}

    // Creacion de nuevos Tokens
    function crearTokens() public {
        _mint(msg.sender, 1000);
    }
}