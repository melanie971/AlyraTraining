pragma solidity 0.6.11;

/**
 * to generate random numbers - just for exercice because it is NOTE safe to do that in the real word
 */
contract Random {
 
  uint private nonce = 0;

  function random() public pure returns(uint) {
  	uint _randomNumber =  keccak256(msg.sender);
  	_randomNumber.bytes32(msg.sender)
  	block.timestamp;
  	nonce; 

  }
  
  

}

