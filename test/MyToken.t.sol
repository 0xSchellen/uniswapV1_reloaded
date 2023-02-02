// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {Test} from "forge-std/Test.sol";

import {IERC20} from "../src/token/IERC20.sol";
import {MyToken} from "../src/token/MyToken.sol";

contract MyTokenTest is Test {
    address internal immutable self = address(this);

    address tokenContractOwner = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;

    MyToken public token;
    IERC20 public tokenIERC20;

    function setUp() public virtual {
        string memory rpc_url = vm.envString("ANVIL_RPC_URL");
        vm.createSelectFork(rpc_url);

        // anvil deployed MyToken contract
        token = MyToken(0x5FbDB2315678afecb367f032d93F642f64180aa3); 
        tokenIERC20 = IERC20(0x5FbDB2315678afecb367f032d93F642f64180aa3); 

        vm.startPrank(tokenContractOwner);
    }

    function testMint() public {
        token.mint(tokenContractOwner, 1_000_000);

        assertEq(tokenIERC20.totalSupply(), 1_000_000);
        assertEq(tokenIERC20.balanceOf(tokenContractOwner), 1_000_000);
    }
}