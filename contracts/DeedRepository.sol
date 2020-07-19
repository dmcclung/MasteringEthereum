// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/**
 * @title Repository of ERC721 deeds
 * This contract contains the list of deeds registered by users.
 * This is a demo to show how tokens (deeds) can be minted and added
 * to the repository.
 */
contract DeedRepository is ERC721 {

    /**
     * @dev Created a DeedRepository with a name and symbol
     * @param _name string represents thename of the repository
     * @param _symbol string represents the symbol of the repository     
     */
     function DeedRepository(string _name, string _symbol) {
         
     }
}