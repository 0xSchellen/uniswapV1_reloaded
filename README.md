## uniswapV1 - reloaded

See the Vyper repo for latest smart contracts:

[https://github.com/Uniswap/contracts-vyper](https://github.com/Uniswap/contracts-vyper)

#1 - Create .env file

ETHERSCAN_API_KEY=JZW5...8NPY  (put your etherscan api key here)

ANVIL_RPC_URL=http://127.0.0.1:8545
ANVIL_PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80


#2 - Deploy Token contract using forge create

forge script script/UniswapFactory.s.sol:UniswapFactoryScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv


#3 - Deploy UniswapFactory contract using forge create

forge script script/UniswapFactory.s.sol:UniswapFactoryScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv


