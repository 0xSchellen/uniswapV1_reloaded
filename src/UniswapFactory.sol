// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {UniswapExchange} from "./UniswapExchange.sol";


contract UniswapFactory {
    event ExchangeLaunch(address indexed exchange, address indexed token);

    // index of tokens with registered exchanges
    address[] public tokenList;
    mapping(address => address) tokenToExchange;
    mapping(address => address) exchangeToToken;

    function launchExchange(address _token) public returns (address exchange) {
        require(tokenToExchange[_token] == address(0)); //There can only be one exchange per token
        require(_token != address(0) && _token != address(this));

        UniswapExchange newExchangeContract = new UniswapExchange(_token);
        address newExchange = address(newExchangeContract);

        tokenList.push(_token);
        tokenToExchange[_token] = address(newExchange);
        exchangeToToken[newExchange] = _token;

        emit ExchangeLaunch(newExchange, _token);
        return newExchange;
    }

    function getExchangeCount() public view returns (uint256 exchangeCount) {
        return tokenList.length;
    }

    function tokenToExchangeLookup(address _token) public view returns (address exchange) {
        return tokenToExchange[_token];
    }

    function exchangeToTokenLookup(address _exchange) public view returns (address token) {
        return exchangeToToken[_exchange];
    }
}
