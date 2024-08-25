// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
    address payable[] public players;

    constructor() {
        // Set the contract deployer as the manager
        manager = msg.sender;
    }

    // Function to enter the lottery
    function enter() public payable {
        // Require a minimum amount of Ether to enter the lottery
        require(msg.value > .01 ether, "Minimum Ether not sent");
        
        // Add the player's address to the players array
        players.push(payable(msg.sender));
    }

    // Function to get the total number of players
    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }

    // Function to get the balance of the lottery pool
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Function to generate a pseudo-random number
    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }

    // Function to pick a winner
    function pickWinner() public restricted {
        // Require at least one player to pick a winner
        require(players.length > 0, "No players in the lottery");
        
        // Generate a random index from the players array
        uint index = random() % players.length;
        
        // Send the entire balance to the winner
        players[index].transfer(address(this).balance);
        
        // Reset the players array for the next lottery
        players = new address payable ;
    }

    // Modifier to restrict access to the manager
    modifier restricted() {
        require(msg.sender == manager, "Only manager can call this function");
        _;
    }
}
