// How can a smart contract allow users to vote for a candidate and keep track of votes?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(string => uint256) public votes;

    // Casts a vote for a candidate
    function vote(string memory candidate) public {
        votes[candidate] += 1;
    }

    // Retrieves the vote count for a candidate
    function getVotes(string memory candidate) public view returns (uint256) {
        return votes[candidate];
    }
}
