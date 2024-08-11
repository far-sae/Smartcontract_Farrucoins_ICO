// SPDX-License-Identifier: MIT
// Faruucoine ICO

// Version of compiler 
pragma solidity ^0.8.4;

contract FarrucoinsICO {
    // The maximum number of Farrucoins available for sale 
    uint public maxFarrucoins = 1000000;
    // The USD to Farrucoins conversion rate 
    uint public usdToFarrucoins = 1000;
    // The total number of Farrucoins that have been bought by investors
    uint public totalFarrucoinsBought = 0;
    
    // Mapping from the investor's address to their equity in Farrucoins and USD
    mapping (address => uint) equityFarrucoins;
    mapping (address => uint) equityUsd;

    // Modifier to check if an investor can buy Farrucoins
    modifier canBuyFarrucoins(uint usdInvested) {
        require(usdInvested * usdToFarrucoins + totalFarrucoinsBought <= maxFarrucoins, "Not enough Farrucoins available");
        _;
    }
    
    // Getting the equity in Farrucoins of an investor
    function equityInFarrucoins(address investor) external view returns (uint) {
        return equityFarrucoins[investor];
    }
    
    // Getting the equity in USD of an investor
    function equityInUsd(address investor) external view returns (uint) {
        return equityUsd[investor];
    }

    // Buying Farrucoins
    function buyFarrucoins(address investor, uint usdInvested) external 
    canBuyFarrucoins(usdInvested) {
        uint farrucoinsBought = usdInvested * usdToFarrucoins;
        equityFarrucoins[investor] += farrucoinsBought;
        equityUsd[investor] = equityFarrucoins[investor] / usdToFarrucoins;
        totalFarrucoinsBought += farrucoinsBought;
    }

    // Selling Farrucoins
    function sellFarrucoins(address investor, uint farrucoinsSold) external {
        require(farrucoinsSold <= equityFarrucoins[investor], " Insufficient Farrucoins to sell");
        equityFarrucoins[investor] -= farrucoinsSold;
        equityUsd[investor] = equityFarrucoins[investor] / usdToFarrucoins;
        totalFarrucoinsBought -= farrucoinsSold;
    }
}
