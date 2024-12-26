// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Modifiers {
    // Valores enteros sin signo (uint)
    uint256 a;
    uint8 public b = 3;

    //valores enteros con signo
    int256 c;
    int8 public d = -32;
    int256 e = 65;

    // strings
    string str;
    string public str_public = "This is public";
    string private str_private = "This is private";

    //Booleans
    bool boolean;
    bool public bool_public_true = true;
    bool private bool_private_false = false;

    // Bbytes

    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 daniel;

    // algoritmo de hash
    bytes32 public hashing =
        keccak256(abi.encodePacked("Hola", "sisis sis si"));
    bytes32 public hashing_sha256 =
        sha256(abi.encodePacked("daniel", "sis si"));
    bytes20 public hashing_ripemd160 = ripemd160(abi.encode("daniel", "dis"));
    bytes32 public hashing_two =
        keccak256(
            abi.encodePacked(
                "Hola",
                uint256(10),
                msg.sender,
                0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
            )
        );

    //address
    address public my_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public adress_2 = msg.sender;
    address owner;

    //enums
    enum options {
        ON,
        OFF
    }
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;
    }

    function turnOff() public {
        state = options.OFF;
    }

    function displayState() public view returns (options) {
        return state;
    }

    constructor() {}
}
