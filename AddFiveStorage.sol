// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage { // 'is' keyword indicates that SimpleStorage contract is inherited to AddFiveStorage
    // +5
    // overrides
    // virtual , override
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}