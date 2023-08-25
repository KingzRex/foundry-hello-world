// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {SimpleToken} from "../src/SimpleToken.sol";

contract SimpleTokenTest is Test {
    SimpleToken public token;

    function setUp() public {
        token = new SimpleToken();
    }

    function test_InitialSupply() public {
        assertEq(token.name(), "Simple Token");
        assertEq(token.symbol(), "STK");
        assertEq(token.totalSupply(), 1000000000000000000000000);

        uint256 ownerBalance = token.balanceOf(address(this));
        assertEq(ownerBalance, 1000000000000000000000000);
    }
}
