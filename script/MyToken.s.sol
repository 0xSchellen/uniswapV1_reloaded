// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";

import {MyToken} from "../src/token/MyToken.sol";


// # To load the variables in the .env file
// source .env

// To deploy and verify our contract
// forge script script/MyToken.s.sol:MyTokenScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv

// Deployed Contract Address: 0x5fbdb2315678afecb367f032d93f642f64180aa3


contract MyTokenScript is Script {
    function setUp() public {}

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("ANVIL_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new MyToken();

        vm.stopBroadcast();
    }
}
