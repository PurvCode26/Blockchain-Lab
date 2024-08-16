// How can a smart contract store and retrieve a single integer value?


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 storedValue;

    // Stores an integer value
    function set(uint256 _value) public {
        storedValue = _value;
    }

    // Retrieves the stored integer value
    function get() public view returns (uint256) {
        return storedValue;
    }
}
