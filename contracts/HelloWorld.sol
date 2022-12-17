//SPDX-License-Identifier: MIT

pragma solidity >= 0.8.17;

contract HelloWorld{
    event UpdatedMessages(string oldstr, string newstr);

    string public messages;

    constructor (string memory initMessage){
        messages = initMessage;
    }

    function update(string memory newMessage) public{
        string memory oldMsg = messages;
        messages = newMessage;
        emit UpdatedMessages(oldMsg, newMessage);
    }
}