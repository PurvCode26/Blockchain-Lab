// How can a smart contract restrict certain functions to only the contract owner?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerAccess {
    address public owner;

    // Sets the deployer as the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Restricts access to owner-only functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Example function restricted to the owner
    function restrictedFunction() public onlyOwner {
        // Owner-only logic here
    }
}
