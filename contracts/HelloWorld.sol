//SPDX-License-Identifier

pragma solidity >= 0.7.3;

contract HelloWorld{
    event UpdateMessage(string oldStr, string newStr);

    string public message;

    constructor (string memory initMessage){
        message = initMessage;
    }

    function update(string memory newMeassage) public {
        string memory oldMsg = message;
        message = newMeassage;
        emit UpdateMessage(oldMsg, newMeassage);
    }
}