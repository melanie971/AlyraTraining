// Creation de notre token ERC20

pragma solidity 0.6.11;

//recupération du code/librarie OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

//https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
//https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20/ERC20.sol

//faire hériter notre smart contract de celui ci-dessus

contract ERC20Token is ERC20 {
    constructor(uint256 initialSupply) public ERC20("ALYRA", "ALY"){
    	_mint(msg.sender, initialSupply); // créer nos tokens
}
}