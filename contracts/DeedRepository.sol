// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

/**
 * @title Repository of ERC721 deeds
 * This contract contains the list of deeds registered by users.
 * This is a demo to show how tokens (deeds) can be minted and added
 * to the repository.
 */
contract DeedRepository is ERC721 {

    /**
     * @dev Created a DeedRepository with a name and symbol
     * @param name string represents the name of the repository
     * @param symbol string represents the symbol of the repository
     */
    constructor(string memory name, string memory symbol) public ERC721(name, symbol) {

    }

    /**
     * @dev Public function to register a new deed
     * @dev Call the ERC721 token minter
     * @param tokenId uint256 represents a specific deed
     * @param uri string containing metadata/uri
     */
    function registerDeed(uint256 tokenId, string memory uri) public {
        _mint(msg.sender, tokenId);
        addDeedMetadata(tokenId, uri);
        emit DeedRegistered(msg.sender, tokenId);
    }

    /**
     * @dev Public function to add metadata to a deed
     * @param tokenId represents a specific deed
     * @param uri text which describes the characteristics of a given deed
     * @return whether the deed metadata was added to the repository
     */
    function addDeedMetadata(uint256 tokenId, string memory uri) public returns(bool) {
        _setTokenURI(tokenId, uri);
        return true;
    }

    /**
     * @dev Event is triggered if deed/token is registered
     * @param by address of the registrar
     * @param tokenId uint256 represents a specific deed
     */
    event DeedRegistered(address by, uint256 tokenId);
}