// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrefixProofOfWork {
    function mineWithPrefix() public pure returns (uint256 nonce, bytes32 hash) {
        string memory prefix = "devadnani26";
        nonce = 0;
        while (true) {
            hash = keccak256(abi.encodePacked(prefix, nonce));
            // Check if the hash starts with 5 leading zeroes
            if (uint256(hash) < 2**236) {
                break;
            }
            nonce++;
        }
    }
}
