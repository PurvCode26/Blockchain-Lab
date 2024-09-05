// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProofOfWork {
    function mine(string memory input) public pure returns (uint256 nonce, bytes32 hash) {
        nonce = 0;
        while (true) {
            hash = keccak256(abi.encodePacked(input, nonce));
            // Check if the hash starts with 5 leading zeroes
            if (uint256(hash) < 2**236) { // 00000 in binary is 236 bits of zeroes
                break;
            }
            nonce++;
        }
    }
}
