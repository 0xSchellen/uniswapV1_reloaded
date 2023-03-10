## uniswapV1 - reloaded

This is a uniswapV1 update (study) of its original solidity code version.

This study uses language sintax update for the solidity compiler version 0.8.17, Foundry deployment and test tools, and ERC20 Token code from OpenZeppelin.

This is not a production ready version and it is made only for educational and fun purposes!

Enjoy!

## The original uniswapV1 code:

Uniswap V1 is the first version of the protocol, launched in November 2018 at Devcon 4. Because of its permissionless nature, it will exist for as long as Ethereum does.
https://docs.uniswap.org/contracts/v1/overview

This study is based on this repo:
https://github.com/Uniswap/old-solidity-contracts

The final version on uniswapV1 was written in vyper and can be found in:
[https://github.com/Uniswap/v1-contracts](https://github.com/Uniswap/v1-contracts)


## Original V1 Features
        Add support for any ERC20 token using the Uniswap factory
        Join liquidity pools to collect fees on ETH-ERC20 pairs
        Liquidity-sensitive automated pricing using constant product formula
        Trade ETH for any ERC20 without wrapping
        Trade any ERC20 for any ERC20 in a single transaction
        Trade and transfer to a different address in a single transaction
        Lowest gas cost of any decentralized exchange
        Support for private and custom uniswap exchanges
        Buy ERC20 tokens from any wallet using ENS
        Partially verified smart contracts written in Vyper
        Mobile-optimized open source frontend implementation
        Funded through an Ethereum Foundation grant

## Installation:

1. Clone uniswapV1_reloaded
```
$ git clone https://github.com/0xSchellen/uniswapV1_reloaded
$ cd uniswapV1_reloaded
```

2. Run anvil in a separate terminal

```
anvil
```

3. Return to the main terminal

4. Create the .env file 

```
ETHERSCAN_API_KEY=JZW5...8NPY  (put your etherscan api key here)
ANVIL_RPC_URL=http://127.0.0.1:8545
ANVIL_PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```

5. Set environment variables

```
source .env
```

6. Deploy Token contract using forge create

```
forge script script/UniswapFactory.s.sol:UniswapFactoryScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv
```

7. Deploy UniswapFactory contract using forge create
```
forge script script/UniswapFactory.s.sol:UniswapFactoryScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv
```

8. Run tests
```
forge test --rpc-url $ANVIL_RPC_URL -vvvv
```
