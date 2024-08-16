// How can a smart contract allow a user to set and get a personalized greeting message?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greeting {
    string public greeting;

    // Sets a personalized greeting
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    // Retrieves the greeting
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}
