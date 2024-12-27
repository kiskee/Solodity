// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract ethSend {
    constructor() payable {}

    receive() external payable {}

    //events
    event sendStatus(bool);
    event callStatus(bool, bytes);

    // Transfer better function
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(1 ether);
    }

    // Send
    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(1 ether);
        emit sendStatus(sent);
        require(sent == true, "El envio ha fallado");
    }

    // Call
    function sendViaCall( address payable _to) public payable {
        (bool sucess, bytes memory data) = _to.call{value: 1 ether}("");
        emit callStatus(sucess, data);
        require(sucess == true, "El envio ha fallado");

    }
}

contract ethReceiver {

    event log(uint amount, uint gasleft);
    receive() external payable {
        emit log(address(this).balance, gasleft());
     }
}
