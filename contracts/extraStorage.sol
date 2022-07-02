// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./simpleStorage.sol";

contract extraStorage is simpleStorage {

    function store(uint256 _favouriteNumber) public override {
       
       favouriteNumber = _favouriteNumber +5;

                }
}