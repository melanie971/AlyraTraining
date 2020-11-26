pragma solidity >=0.4.16 <0.7.0;

/**
 * Just a simple example
 */
contract SimpleStorage {
	uint data;

  function set(uint x) public {
  	data = x;
  }
  
  function get() public view returns (uint){
  	return data ;
  }
}

