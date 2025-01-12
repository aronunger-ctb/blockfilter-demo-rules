# blockfilter-demo-rules

This repository is designed to create rules on the blockchain that will determine if a website should be open or closed based on predefined status codes.

## Overview

The smart contracts in this repository provide a mechanism to manage website accessibility using status codes. The status codes are defined as follows:
- **0**: Not defined (open with a whitelist filter and closed with a blacklist filter)
- **1**: Closed
- **2**: Always open

### Purpose

The primary goal of this project is to replace traditional VPN filters, which incur costs for every call, with a blockchain-based filter system. This blockchain filter will only incur costs when rules are edited, making it a more cost-effective solution.

### Components

1. **AlwaysBlocked.sol**: This contract initializes a list of social media websites that are always blocked (status code 1).
2. **FilterRules.sol**: This contract manages the rules for website accessibility. It imports the rules from `AlwaysBlocked.sol` and allows for dynamic updates and retrieval of website statuses.

### How It Works

- **Initialization**: The `AlwaysBlocked` contract is instantiated within the `FilterRules` contract, and its rules are copied over.
- **Rule Management**: The `FilterRules` contract allows adding new rules and retrieving the status of a website.
- **Status Codes**: The status of each website is determined based on the predefined status codes.

## To-Do

1. Build code for the operating system to handle the rules.
2. Develop different categories for filtering.
3. Implement an image and video filtering system.

## Usage

1. **Deploy Contracts**: Deploy the `AlwaysBlocked` and `FilterRules` contracts to the blockchain.
2. **Set Rules**: Use the `setRulesFromAlwaysBlocked` function to initialize the rules from `AlwaysBlocked`.
3. **Add Rules**: Use the `addRules` function to add new website rules.
4. **Get Rules**: Use the `getRules` function to retrieve the status of a website.

## Example

```solidity
// Example of adding a new rule
filterRules.addRules("example.com", 1); // Block example.com
