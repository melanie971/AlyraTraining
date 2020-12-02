// Exercice - Banque décentralisée

pragma solidity 0.6.11;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/math/SafeMath.sol";


contract Bank {
  
  using SafeMath for uint;

  event LogDeposit(address sender, uint amount);
  event LogTransfert(address sender, address to, uint amount);

  mapping (address => uint256) _balances; // mapping qui détient le solde détenu par un compte

  function deposit (uint _amount) public payable returns(bool success) {
  	_balances[msg.sender] += _amount; // permet le dépot dans le compte
  	emit LogDeposit(msg.sender, _amount);
  	return true;
  }
  
  function transfer (address payable _recipient, uint _amount) public returns (bool success) {
  	require (_amount <= _balances[msg.sender], "Not enough money sorry");
  	_balances[msg.sender] -= _amount;
  	_recipient.transfer(_amount);
  	emit LogTransfert(msg.sender, _recipient, _amount);
  	return true;
  }
  
  function balanceOf (address _address) public view returns(uint) {
  	return _balances[_address];// renvoie le solde détenu par un compte
  }
  
  
}

