// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import "./SimpleStorage.sol";

contract StorageFactory {

    //type visibility name
    SimpleStorage public simpleStorage;
    function createSimpleContract() public {
        simpleStorage = new SimpleStorage(); // The new keyword is how solidity know to deploy the contract
    }
}