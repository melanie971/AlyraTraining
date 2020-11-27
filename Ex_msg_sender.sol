pragma solidity 0.6.11;


contract Choice {
	
		mapping (address => uint) choices;
		
   	   	function add (uint _myuint) {
   		choices[msg.value] = _myuint;
   	}
   	
}

