// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Donation {
    address public owner;

    // Events to log donation activity
    event Donated(address indexed donor, uint256 amount, address indexed recipient);

    constructor() {
        owner = msg.sender;
    }

    // Allows an individual to donate to a recipient
    function donate(address payable recipient) public payable {
        require(msg.value > 0, "Donation amount should be greater than zero");

        recipient.transfer(msg.value);
        
        emit Donated(msg.sender, msg.value, recipient);
    }

    // Withdraw function for owner to retrieve funds (optional)
    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(amount);
    }

    // Fallback function to accept ETH
    receive() external payable {}
}
