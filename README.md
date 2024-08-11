
# Farrucoins ICO Smart Contract

## Overview

This repository contains a smart contract for the **Farrucoins ICO**, a simple implementation of an Initial Coin Offering (ICO) using the Solidity programming language. The contract allows investors to purchase Farrucoins with USD, tracks the number of Farrucoins bought, and manages the equity of each investor.

## Features

- **Token Sale Management**:
  - Maximum supply of 1,000,000 Farrucoins.
  - USD to Farrucoins conversion rate: 1000 Farrucoins per USD.
  - Tracks the total number of Farrucoins bought by investors.

- **Investor Management**:
  - Tracks investor equity in both Farrucoins and USD.
  - Ensures that investors cannot purchase more Farrucoins than are available.

- **Safety Features**:
  - Modifier to check and enforce the maximum Farrucoins supply.
  - Prevents over-purchasing by verifying availability before each purchase.

## Smart Contract Details

- **Solidity Version**: ^0.8.4
- **Contract Name**: `FarrucoinsICO`
- **Key Variables**:
  - `maxFarrucoins`: The maximum number of Farrucoins available for sale.
  - `usdToFarrucoins`: The conversion rate from USD to Farrucoins.
  - `totalFarrucoinsBought`: The total number of Farrucoins that have been purchased.

- **Key Functions**:
  - `equityInFarrucoins(address investor)`: Returns the equity in Farrucoins of a given investor.
  - `equityInUsd(address investor)`: Returns the equity in USD of a given investor.
  - `buyFarrucoins(uint usdInvested)`: Allows an investor to buy Farrucoins by investing USD.
  - `sellFarrucoins(uint farrucoinsSold)`: Allows an investor to sell Farrucoins back to the contract.

## Installation and Deployment

1. **Clone the repository**:
    ```bash
    git clone https://github.com/far-sae/Smartcontrac_Farrucoins-ICO.git
    ```
2. **Navigate to the project directory**:
    ```bash
    cd Smartcontrac_Farrucoins-ICO
    ```
3. **Compile the contract**:
    Use a Solidity compiler (e.g., Remix, Truffle) to compile the `Farrucoins.sol` contract.
4. **Deploy the contract**:
    Deploy the contract to a test network (e.g., Ropsten, Rinkeby) or a local blockchain (e.g., Ganache).

## Usage

- **Buying Farrucoins**:
  Investors can buy Farrucoins by calling the `buyFarrucoins` function with the amount of USD they wish to invest.

- **Selling Farrucoins**:
  Investors can sell their Farrucoins by calling the `sellFarrucoins` function with the number of Farrucoins they wish to sell.


