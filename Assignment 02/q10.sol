// How can a smart contract allow a user to store and retrieve a message string?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageStorage {
    string public message;

    // Stores a message string
    function setMessage(string memory _message) public {
        message = _message;
    }

    // Retrieves the stored message
    function getMessage() public view returns (string memory) {
        return message;
    }
}
