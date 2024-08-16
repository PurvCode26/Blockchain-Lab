// How can a smart contract store and retrieve a user's name?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NameStorage {
    string public name;

    // Stores a user's name
    function setName(string memory _name) public {
        name = _name;
    }

    // Retrieves the stored name
    function getName() public view returns (string memory) {
        return name;
    }
}
