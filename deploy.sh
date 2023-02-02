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

echo "-----------------------------------------------------------"
echo "Testing contracts"
echo "forge test --rpc-url $ANVIL_RPC_URL -vvvv
"
forge test --rpc-url $ANVIL_RPC_URL -vvvv
