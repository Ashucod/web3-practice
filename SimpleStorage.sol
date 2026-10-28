// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

contract SimpleStorage {
    // uint256 favoriteNumber;
    struct Person{
        uint256 myFavoriteNumber;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber, string memory _name) public {
        // listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


    // function retrive() public view returns(uint256) {
    //     return favoriteNumber;
    // }
}