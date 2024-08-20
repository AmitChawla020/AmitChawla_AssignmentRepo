// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // State variable to store an integer
    uint256 private storedData;

    // Function to store a value
    function set(uint256 x) public {
        storedData = x;
    }

    // Function to retrieve the stored value
    function get() public view returns (uint256) {
        return storedData;
    }
}
