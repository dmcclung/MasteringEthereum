// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

contract Faucet {

    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 10000);

        msg.sender.transfer(withdraw_amount);
    }

    receive() external payable {}

    fallback() external payable {}

}