// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerAccess {
    // State variable to store the owner's address
    address public owner;

    // Modifier to restrict access to only the contract owner
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner.");
        _;
    }

    // Constructor to set the owner as the address that deploys the contract
    constructor() {
        owner = msg.sender;
    }

    // Example function that is restricted to the owner
    function ownerFunction() public onlyOwner {
        // Function logic that only the owner can execute
    }

    // Function to transfer ownership to a new address
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner address is invalid.");
        owner = newOwner;
    }
}
