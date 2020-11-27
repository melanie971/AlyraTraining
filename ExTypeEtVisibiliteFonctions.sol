pragma solidity 0.6.11;

contract HelloWorld {
	string myString = "Hello F World!";

  function hello () public view returns(string memory) {
  	return myString;
  }
  
}

function (<parameter types>) {internal|external|public|private} [pure|view|payable] [returns (<return types>)]

