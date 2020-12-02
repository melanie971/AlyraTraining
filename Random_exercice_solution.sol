// Random.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;
contract Random {  
  uint private nonce = 0;
  
   function random() public returns(uint) {
       nonce++; //pour que le nombre change à chaque appel de fonction
       return  uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, nonce))) % 100; //pour avoir un nombre entre 0 et 100!
   }
}