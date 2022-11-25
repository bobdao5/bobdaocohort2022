// SPDX-License-Identifier: MIT

// Variables and Control Statements
pragma solidity >=0.8.4; // solidity compiler version

contract BobDAO {
    // fixed size
    uint256 unsignedNumber; // non negative 
    int256 Number;  // can be negative 
    bool state; // true or false 
    address user; // will store an address 
    bytes32 e; 

    // dynamic size
    string s; // "Hello world" 
    bytes something; 
    uint[] array; // array of unsigned integers 
    // hash map 
    // {
    //     key1: value1,
    //     key2: value2,
    //     key3: value3
    // }
    mapping(uint => address) nameOfDataStructure;

    nameOfDataStructure[0] = "0x4aB65FEb7Dc1644Cabe45e00e918815D3acbFa0a";
    nameOfDataStructure[1] = "0x00";

    // user defined

    struct student { // structure 
        string name;
        uint256 rollNumber;
        string homeAddress;
        address walletAddress;
    }

    mapping(uint256 => student) studentDatabase;

    studentDatabase[0].name = "Harsh";
    studentDatabase[0].rollNumber = "10";
    studentDatabase[0].walletAddress = "0x4aB65FEb7Dc1644Cabe45e00e918815D3acbFa0a";    

    enum gameLevel {
        Novice,
        Intermediate,
        Expert
    }
    // gameLevel.Novice

    // control statements

    uint256 public coins = 0;

    function add(uint256 _num) public {

        if (_num == 100) {
            coins += _num;
        }
        else if (_num < 100) {
            coins += 100;
        } 
        else {
            // just sit
        }
    }
}
