// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";

import {UniswapFactory} from "../src/UniswapFactory.sol";

// # To load the variables in the .env file
// source .env

// To deploy and verify UniswapFactoryScript contract
// forge script script/UniswapFactory.s.sol:UniswapFactoryScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv

// Deployed Contract Address: 0xe7f1725e7734ce288f8367e1bb143e90bb3f0512

// cast 

contract UniswapFactoryScript is Script {
    function setUp() public {}

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("ANVIL_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new UniswapFactory();
        
        vm.stopBroadcast();
    }
}


