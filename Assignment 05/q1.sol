// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {

    struct Campaign {
        address creator;
        uint targetAmount;
        uint totalContributions;
        uint deadline;
        bool finalized;
    }

    mapping(uint => Campaign) public campaigns;
    mapping(uint => mapping(address => uint)) public contributions;
    uint public campaignCount;

    event CampaignCreated(uint campaignId, address creator, uint targetAmount, uint deadline);
    event ContributionMade(uint campaignId, address contributor, uint amount);
    event CampaignFinalized(uint campaignId, bool success);

    function createCampaign(uint _targetAmount, uint _duration) external {
        require(_targetAmount > 0, "Target amount must be greater than zero.");
        require(_duration > 0, "Duration must be greater than zero.");

        uint deadline = block.timestamp + _duration;
        campaignCount++;
        campaigns[campaignCount] = Campaign({
            creator: msg.sender,
            targetAmount: _targetAmount,
            totalContributions: 0,
            deadline: deadline,
            finalized: false
        });

        emit CampaignCreated(campaignCount, msg.sender, _targetAmount, deadline);
    }

    function contribute(uint _campaignId) external payable {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp < campaign.deadline, "Campaign has ended.");
        require(!campaign.finalized, "Campaign is finalized.");
        require(msg.value > 0, "Contribution must be greater than zero.");

        campaign.totalContributions += msg.value;
        contributions[_campaignId][msg.sender] += msg.value;

        emit ContributionMade(_campaignId, msg.sender, msg.value);
    }

    function finalizeCampaign(uint _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Campaign has not ended yet.");
        require(!campaign.finalized, "Campaign is already finalized.");
        require(msg.sender == campaign.creator, "Only the campaign creator can finalize.");

        campaign.finalized = true;

        if (campaign.totalContributions >= campaign.targetAmount) {
            // Successful campaign, transfer funds to the creator
            payable(campaign.creator).transfer(campaign.totalContributions);
        } else {
            // Unsuccessful campaign, allow contributors to withdraw
            uint256 contribution = contributions[_campaignId][msg.sender];
            if (contribution > 0) {
                contributions[_campaignId][msg.sender] = 0;
                payable(msg.sender).transfer(contribution);
            }
        }

        emit CampaignFinalized(_campaignId, campaign.totalContributions >= campaign.targetAmount);
    }

    function withdraw(uint _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(campaign.finalized, "Campaign is not finalized yet.");
        require(block.timestamp >= campaign.deadline, "Campaign has not ended yet.");
        
        uint256 contribution = contributions[_campaignId][msg.sender];
        require(contribution > 0, "No funds to withdraw.");

        contributions[_campaignId][msg.sender] = 0;
        payable(msg.sender).transfer(contribution);
    }
}