
# Project Title  
Nail Art Badge Smart Contract

## Simple Overview  
The NailArtBadge contract is a Solidity-based smart contract that allows users to earn, burn, and track Nail Art badges.


## Description  
The NailArtBadge contract enables users to interact with a decentralized badge system. Users can add badges to their accounts, burn them, and track their badge balance. This contract logs all transactions using events for transparency. It also demonstrates error handling in Solidity with the use of require(), assert(), and revert().


### Executing the Program  

#### Deployment  
Open the contract file NailArtBadge.sol in Remix or your preferred IDE.

Ensure your environment is set to use the Solidity version ^0.8.18.

Compile the contract.

Deploy the contract using a test network or a local blockchain.

#### Using the Contract  
1. **Add Badges:**
Call the addBadge() function with a recipient address and the number of badges to add. The amount must be greater than zero.

2. **Burn Badges:**
Call the burnBadge() function with the number of badges you want to burn. You must have a sufficient balance.\

4. **Check Balance:**
Use the balances() function to check your current badge balance.


## Help  
**Common Issues**:  
  - Ensure the amount you are adding or burning is greater than zero.
  - Only valid addresses are accepted for the badge addition.

**Troubleshooting**:  
  - For insufficient balance errors when burning, ensure you have enough badges.  
  - Use Remix's debugger to troubleshoot any unexpected issues.
 

## License  
This project is licensed under the MIT License - see the `SPDX-License-Identifier` header in the contract code for details.  
 
