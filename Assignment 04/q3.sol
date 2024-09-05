// Dev => Karan | Rs 100
// Karan => Darsh | Rs 10


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransactionProofOfWork {
    function mineTransaction() public pure returns (uint256 nonce, bytes32 hash) {
        string memory transaction = "Dev => Karan | Rs 100 Karan => Darsh | Rs 10";
        nonce = 0;
        while (true) {
            hash = keccak256(abi.encodePacked(transaction, nonce));
            // Check if the hash starts with 5 leading zeroes
            if (uint256(hash) < 2**236) {
                break;
            }
            nonce++;
        }
    }
}
