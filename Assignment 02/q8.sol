// How can a smart contract log events when certain actions are performed?



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventLogging {
    event MessageLogged(address indexed sender, string message);

    // Logs a message event
    function logMessage(string memory message) public {
        emit MessageLogged(msg.sender, message);
    }
}
