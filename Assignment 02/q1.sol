// How can a smart contract return a simple message, like "Hello, World!"?


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    // Returns "Hello, World!"
    function getMessage() public pure returns (string memory) {
        return "Hello, World!";
    }
}

