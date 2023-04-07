// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Greetings {
    string public name;
    string public gPrefix = "Hello ";

    constructor(string memory initName) {
        name = initName;
    }

    function setName(string memory newName) public {
        name = newName;
    }

    function getGreeting() public view returns(string memory) {
        return string(abi.encodePacked(gPrefix,name));
    }
}