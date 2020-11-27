pragma solidity 0.6.11;


contract Time {
	
   	   	function getTime () public view returns(uint) {
   		return block.timestamp;
   	}
   	
}

//La fonction now est obsolète à partir de la version 0.7.0, il faut utiliser block.timestamp à la place.
