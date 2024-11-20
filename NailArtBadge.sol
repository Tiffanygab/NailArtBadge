// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract NailArtBadge {
    uint256 public totalBadge;
    mapping(address => uint256) public balances;

    event BadgeAdded(address indexed to, uint256 amount);
    event BadgeBurned(address indexed from, uint256 amount);

    // Add Nail Art badges
    function addBadge(address to, uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero.");
        require(to != address(0), "Invalid address.");
        totalBadge += amount;
        balances[to] += amount;
        assert(totalBadge >= amount); 
        // Ensure no overflow
        emit BadgeAdded(to, amount);
    }

    // Burn Nail Art badges
    function burnBadge(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance.");
        
        // Explicit revert for burning more badges than the balance
        if (balances[msg.sender] < amount) {
            revert("You cannot burn more badges than you own.");
        }
        
        balances[msg.sender] -= amount;
        totalBadge -= amount;
        assert(balances[msg.sender] >= 0); // Ensure correct balance reduction
        emit BadgeBurned(msg.sender, amount);
    }
}
