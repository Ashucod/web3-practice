// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import {SimpleStorage} from "./SimpleStorage.sol";
// we use the above method to import selective or required contracts from a file
// in this case we only have one contract but if we had many in a single file import "./SimpleStorage.sol"; would import all the contracts making our deployment expensive
// wwe can import multiple contracts also as follows
// import (SimpleStorage, SimpleStorage2) from "./SimpleStorage.sol";

contract StorageFactory {

    //type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;
    // address[] public listOfSimpleStorageAddresses;

    function createSimpleContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        // ABI (technically a lie, you just need a function selector)
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
        // SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex]); // SimpleStorage(Address)
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
