// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NeverStopBuilding is ERC1155, Ownable {
    constructor()
        ERC1155("https://gateway.pinata.cloud/ipfs/QmRz4Z8sw9ue7Jx824wnUGBbD9aFAfjyfHm9VENJT2VGSm")
    {}

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function loop (address[] memory accounts) public onlyOwner {

        for(uint i = 0; i < accounts.length;i++){
            _mint(
                accounts[i],
                1,
                1,
                "0x00"
            );
        }

    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}
