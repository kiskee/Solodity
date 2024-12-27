// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

/*
             ether enviado al smart contact
                            |
                        ¿msg.data vacio?
                        /              \
                     si                 no
                    /                     \
                ¿existe receive()?       fallback()
                 /           \
               si             no
              /                 \
        receive()              fallback()
*/

contract Fallback_Receive {
    event log(string _name, address _sender, uint256 _amount, bytes _data);

    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit log("receive", msg.sender, msg.value, "");
    }
}
