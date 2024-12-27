// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract DataStructure {
    //  structs of the client data
    struct Customer {
        uint256 id;
        string name;
        string email;
    }

    // Variale client type
    Customer customer_1 = Customer(1, "daniel", "daniel@me.com");

    // mappings
    mapping(address => uint256) public address_uint;
    mapping(string => uint256[]) public string_listUnits;
    mapping(address => Customer) public adrress_dataStructure;

    // asing a name to an address
    function assingNumer(uint256 _number) public {
        address_uint[msg.sender] = _number;
    }

    // Asing a number to an address
    function assingList(string memory _name, uint256 _number) public {
        string_listUnits[_name].push(_number);
    }

    //Asing a struc to an address
    function assingDataStructure(
        uint256 _id,
        string memory _name,
        string memory _email
    ) public {
        adrress_dataStructure[msg.sender] = Customer(_id, _name, _email);
    }

    // arrays
    //longitud fija
    uint256[5] public fixed_list_uints = [1, 2, 3, 4, 5];
    // dynamic array
    uint256[] dynamic_list;
    // customers array
    Customer[] public dynamic_list_customer;

    // New data on the array
    function array_modification(
        uint256 _id,
        string memory _name,
        string memory _email
    ) public {
        Customer memory random_customer = Customer(_id, _name, _email);
        dynamic_list_customer.push(random_customer);
    }

    constructor() {}
}
