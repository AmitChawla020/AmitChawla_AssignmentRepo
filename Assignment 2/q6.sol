// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicVoting {
    // Struct to represent a candidate
    struct Candidate {
        string name;
        uint256 voteCount;
    }

    // Array of candidates
    Candidate[] public candidates;

    // Mapping to keep track of who has voted
    mapping(address => bool) public hasVoted;

    // Function to add a candidate (can be restricted to only the contract owner)
    function addCandidate(string memory _name) public {
        candidates.push(Candidate({name: _name, voteCount: 0}));
    }

    // Function to vote for a candidate by index
    function vote(uint256 _candidateIndex) public {
        // Check if the voter has already voted
        require(!hasVoted[msg.sender], "You have already voted.");

        // Increment the vote count for the selected candidate
        candidates[_candidateIndex].voteCount += 1;

        // Mark the voter as having voted
        hasVoted[msg.sender] = true;
    }

    // Function to get the number of candidates
    function getNumberOfCandidates() public view returns (uint256) {
        return candidates.length;
    }

    // Function to get a candidate's details by index
    function getCandidate(uint256 _index) public view returns (string memory name, uint256 voteCount) {
        Candidate memory candidate = candidates[_index];
        return (candidate.name, candidate.voteCount);
    }
}
