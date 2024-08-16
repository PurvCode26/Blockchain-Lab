// How can a smart contract keep track of a count and allow it to be incremented?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleCounter {
    uint256 public count = 0;

    // Increments the counter by 1
    function increment() public {
        count += 1;
    }

    // Retrieves the current count
    function getCount() public view returns (uint256) {
        return count;
    }
}
