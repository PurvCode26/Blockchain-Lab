// How can a smart contract maintain a ledger of transactions with basic entries?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleLedger {
    struct Transaction {
        address from;
        address to;
        uint256 amount;
    }

    Transaction[] public transactions;

    // Adds a new transaction
    function addTransaction(address to, uint256 amount) public {
        transactions.push(Transaction(msg.sender, to, amount));
    }

    // Retrieves a transaction by index
    function getTransaction(uint256 index) public view returns (address, address, uint256) {
        Transaction memory txn = transactions[index];
        return (txn.from, txn.to, txn.amount);
    }
}
