// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract METoken is ERC20 {

    constructor(uint256 initialSupply) public ERC20("METoken", "MET") {
        _mint(msg.sender, initialSupply);
    }
}