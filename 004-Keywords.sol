// SPDX-License-Identifier: MIT

// Built in variables  tx,msg,block, ether units, time units
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    // keyword = Reserved words

    // tx == transaction 
    // tx.gasprice // gas price of the transaction
    // tx.origin // address which initiated the transaction at first

    // msg
    // msg.value // amount of ether(in wei) sent to the smart contract
    // msg.sender // address which sent the transaction

    // Harsh signs a Smart Contract A
    // tx.origin = Harsh's address
    // msg.sender = Harsh
    // Smart Contract A calls Smart Contract B
    // tx.origin = Harsh
    // msg.sender = Smart Contract A

    // ----------------------------------------------------------
    //block
    // block.timestamp // timestamp of the block mined (epochs)
    // uint256 time = 1685815947;
    // require(block.timestamp >= time)
    // ----------------------------------------------------------

    //ether units
    // 1 wei == 1
    // 1 szabo == 1e12
    // 1 finney == 1e15
    // 1 ether == 10 ^ 18 wei 

    // if we are deploying the contract on any other chain 
    // 1 ether = 1 native currency 
    
    // wei is the smallest ether unit 
    // ----------------------------------------------------------
    //time units
    // 1 seconds == 1
    // 1 minutes == 60 seconds
    // 1 hours == 60 minutes
    // 1 day == 24 hours
    // 1 week == 7 days
}
