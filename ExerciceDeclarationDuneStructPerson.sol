/**
 * Contract qui représente une personne avec de multiples propriétés. 
 */


pragma solidity 0.6.11;
contract Whitelist {
   struct Person { // Structure de données
       string name;
       uint age;   
   }


    function createPerson(string memory _name, uint _age) public {
       Person memory person = Person(_name, _age);
  }
  
  
}

// Contrat qui déclare un tableau de personne

pragma solidity 0.6.11;
contract Whitelist {
	struct Person { // Structure de données
       string name;
       uint age;   
   }

   Person [] public people; // déclaration du tableau people;
   }


 // Contrat qui gère un tableau de personnes

 pragma solidity 0.6.11;

 
 contract Whitelist {

   struct Person {
   	string name;
   	uint age;
   	}

   	Person [] public persons; // déclaration du tableau persons;

   	function add (string memory _name, uint _age) public {
   		Person memory person;
   		person.name = _name;
   		person.age = _age;
   		// ou Person memory person = Person(_name, _age);
   	    persons.push(person);

   	}
   	
   	function remove () public {
   		persons.pop();
   	}
   	
   
 }
 
 