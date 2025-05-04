// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";

contract Yulintro is Test {
    function test() public pure {
        bytes32 wordFreeMemory;
        assembly {
            let free_memory := mload(0x40)
            mstore(free_memory, 64)
            wordFreeMemory := mload(free_memory)

        }

        console.logBytes32(wordFreeMemory);
    }
}