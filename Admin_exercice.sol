pragma solidity 0.6.11;

/**
 * The Admin contract does simulate an administration system
 */

 
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/access/Ownable.sol";


contract Admin is Ownable {

    mapping (address => bool) private whitelist_map; //liste des comptes sur la whitelist
    mapping (address => bool) private blacklist_map;

    event Whitelisted(address _address);
    event Blacklisted(address _address);
      

      
 // Autoriser l'ajout d'un compte si celui-ci n'est pas déjà sur la liste
 function whitelist (address _address) public onlyOwner {
 	require(! whitelist_map[_address], "Account already in whitelist ");
 	whitelist_map[_address] = true;
 	emit Whitelisted(_address); // trigerring event
 }


 function isWhitelisted (address _address) public onlyOwner {
 	return whitelist_map[_address];
 }

//Bloquer un compte:
 function blacklist (address _address) public onlyOwner{
 	require(! _blacklist_map(_address), "Account already in blacklist"); // l'administrateur est le seul quui a le droit
  	blacklist_map[_address] = true;
 	emit Blacklisted(_address);
 }
 



 function isBlacklisted (address _address) public view returns(bool) {
 	return blacklist_map[_address];
}