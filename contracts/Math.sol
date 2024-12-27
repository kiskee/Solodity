// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract maths {
    // Suma
    function suma(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Resta
    function resta(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    // Producto
    function prod(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // Division
    function div(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }

    // Exponenciacion
    function expon(uint256 a, uint256 b) public pure returns (uint256) {
        return a**b;
    }

    // Modulo
    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        return a % b;
    }

    // (x+y)%k
    function _addmod(
        uint256 x,
        uint256 y,
        uint256 k
    ) public pure returns (uint256, uint256) {
        return (addmod(x, y, k), (x + y) % k);
    }

    // (x*y)%k
    function _mulmod(
        uint256 x,
        uint256 y,
        uint256 k
    ) public pure returns (uint256, uint256) {
        return (mulmod(x, y, k), (x * y) % k);
    }
}
