// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract SimpleToken is ERC20 {
    constructor() ERC20("Simple Token", "STK") {
        uint256 initialSupply = 1000000000000000000000; // 1e18 in 18 decimal places
        _mint(msg.sender, initialSupply);
    }
}
