// SPDX-License-Identifier: MIT

// Let's code a Bank !!
pragma solidity >=0.8.4; // solidity compiler version

contract BobDAO {

    struct Account {
        // address owner;
        uint256 balance;
        uint256 lastTransactionDoneAt;
    }

    mapping(address => Account) public _21dinMaiPaisaDouble;

    event balanceAdded(address owner, uint256 balance, uint256 timestamp);
    
    event withdrawalDone(address owner, uint256 balance, uint256 amount,uint256 timestamp);

    event transferDone(address owner, address receiver, uint256 amount, uint256 timestamp);


    modifier minimum() {
        require(msg.value >= 1 ether, "Doesn't follow minimum criteria");
        _;
    }

    function deposit() public payable {
        _21dinMaiPaisaDouble[msg.sender].balance = msg.value + _21dinMaiPaisaDouble[msg.sender].balance;
        _21dinMaiPaisaDouble[msg.sender].lastTransactionDoneAt = block.timestamp;

        emit balanceAdded(
            msg.sender,
            _21dinMaiPaisaDouble[msg.sender].balance,
            block.timestamp
        );
    }

    function withdraw(uint256 _amount) public payable {
        require(
            _amount <= _21dinMaiPaisaDouble[msg.sender].balance,
            "YOU ARE BROKE !"
        );
        _21dinMaiPaisaDouble[msg.sender].balance -= _amount;
        _21dinMaiPaisaDouble[msg.sender].lastTransactionDoneAt = block.timestamp;

        payable(msg.sender).transfer(_amount);

        emit withdrawalDone(
            msg.sender,
            _21dinMaiPaisaDouble[msg.sender].balance,
            _amount,
            block.timestamp
            );
    }

    function transfer(uint256 _amount, address _receiver) public payable{
        require(
            _amount <= _21dinMaiPaisaDouble[msg.sender].balance,
            "YOU ARE BROKE !"
        );

        _21dinMaiPaisaDouble[msg.sender].balance -= _amount;
        _21dinMaiPaisaDouble[msg.sender].lastTransactionDoneAt = block.timestamp;

        payable(_receiver).transfer(_amount);

        emit transferDone(
            msg.sender,
            _receiver,
            _amount,
            block.timestamp
            );

    }

}
