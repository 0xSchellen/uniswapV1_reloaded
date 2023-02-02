// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface UniswapFactoryInterface {
    // address[] public tokenList;
    // mapping(address => address) tokenToExchange;
    // mapping(address => address) exchangeToToken;

    function launchExchange(address _token) external returns (address);
    function getExchangeCount() external view returns (uint256);
    function tokenToExchangeLookup(address _token) external view returns (address);
    function exchangeToTokenLookup(address _exchange) external view returns (address);

    event ExchangeLaunch(address indexed exchange, address indexed token);
}
