source .env

echo "-----------------------------------------------------------"
echo "Deploying MyToken contract"
echo "forge script script/MyToken.s.sol:MyTokenScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv
"

forge script script/MyToken.s.sol:MyTokenScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv

echo "#"

echo "-----------------------------------------------------------"
echo "Deploying UniswapFactory contract"
echo "forge script script/UniswapFactory.s.sol:UniswapFactoryScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv
"

forge script script/UniswapFactory.s.sol:UniswapFactoryScript --rpc-url $ANVIL_RPC_URL --broadcast --verify -vvvv

# echo "-----------------------------------------------------------"
# echo "UniswapFactory getExchangeCount"
# echo "getExchangeCount())" 
# "
# echo ""
# cast send 0x0B306BF915C4d645ff596e518fAf3F9669b97016 "getExchangeCount())" --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80




