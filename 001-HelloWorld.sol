// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; // Counter Application 

contract CounterApplication {

    // public keyword => allows outside world interactions 

    int public count = 0;  // variable 

    function increaseCounter() public { // function to increase 
        count+=1;
    }
    function decreaseCounter() public { // function to decrease
        count-=1;
    }
    function setCounter(int _number) public { // function to set 
        count = _number;
    }
    
}
 /// CRUD App => CREATE, READ, UPDATE, DELETE 
