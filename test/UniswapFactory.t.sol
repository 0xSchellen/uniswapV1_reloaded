// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {Test} from "forge-std/Test.sol";

import {UniswapFactoryInterface} from "../src/UniswapFactoryInterface.sol";

import {IERC20} from "../src/token/IERC20.sol";
import {MyToken} from "../src/token/MyToken.sol";

contract UniswapFactoryTest is Test {
    address internal immutable self = address(this);

    // bytes internal constant ARITHMETIC_ERROR = abi.encodeWithSignature("Panic(uint256)", 0x11);

    address deployer = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;

    address factoryContract = 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512;

    address uniswapExchange = 0xCafac3dD18aC6c6e92c921884f9E4176737C052c;

    address tokenContract = 0x5FbDB2315678afecb367f032d93F642f64180aa3; // Deployed MyToken(ERC20) address

    UniswapFactoryInterface public factory;

    IERC20 public tokenIERC20;

    function setUp() public virtual {
        string memory rpc_url = vm.envString("ANVIL_RPC_URL");
        vm.createSelectFork(rpc_url);

        // anvil deployed MyToken contract
        factory = UniswapFactoryInterface(factoryContract); 

        tokenIERC20 = IERC20(tokenContract); 

        vm.startPrank(deployer);
    }

    function testLaunchExchange() public {
        factory.launchExchange(tokenContract);

        assertEq(factory.getExchangeCount(), 1);
        assertEq(factory.tokenToExchangeLookup(tokenContract), uniswapExchange);
        assertEq(factory.exchangeToTokenLookup(uniswapExchange), tokenContract);
    }
}