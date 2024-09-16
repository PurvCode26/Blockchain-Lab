// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {

    struct Proposal {
        string description;
        uint voteCount;
    }

    struct Voter {
        bool hasVoted;
        uint voteIndex;
    }

    Proposal[] public proposals;
    mapping(address => Voter) public voters;
    address public admin;

    event ProposalAdded(uint proposalIndex, string description);
    event Voted(address voter, uint proposalIndex);
    event VotingResults(uint winningProposalIndex, string winningProposalDescription, uint voteCount);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can perform this action.");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function addProposal(string calldata _description) external onlyAdmin {
        proposals.push(Proposal({
            description: _description,
            voteCount: 0
        }));

        emit ProposalAdded(proposals.length - 1, _description);
    }

    function vote(uint _proposalIndex) external {
        require(_proposalIndex < proposals.length, "Invalid proposal index.");
        Voter storage sender = voters[msg.sender];
        require(!sender.hasVoted, "You have already voted.");
        
        sender.hasVoted = true;
        sender.voteIndex = _proposalIndex;

        proposals[_proposalIndex].voteCount += 1;

        emit Voted(msg.sender, _proposalIndex);
    }

    function getProposal(uint _proposalIndex) external view returns (string memory description, uint voteCount) {
        require(_proposalIndex < proposals.length, "Invalid proposal index.");
        Proposal storage proposal = proposals[_proposalIndex];
        return (proposal.description, proposal.voteCount);
    }

    function getProposals() external view returns (Proposal[] memory) {
        return proposals;
    }

    function getWinningProposal() external view returns (uint winningProposalIndex, string memory winningProposalDescription, uint voteCount) {
        require(proposals.length > 0, "No proposals available.");
        
        uint highestVoteCount = 0;
        uint index = 0;
        
        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > highestVoteCount) {
                highestVoteCount = proposals[i].voteCount;
                index = i;
            }
        }

        Proposal storage winningProposal = proposals[index];
        return (index, winningProposal.description, winningProposal.voteCount);
    }
}
