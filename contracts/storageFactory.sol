// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./simpleStorage.sol";

contract storageFactory {

        simpleStorage[] public simplestorageArray;

      function createSimpleStorageContract() public {
          
        simpleStorage simplestorage = new simpleStorage();
         simplestorageArray.push(simplestorage);
      }
        function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
            // ABI - Application Binary Interface | Address 
       simplestorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
      
        }

       function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
          
          return simplestorageArray[_simpleStorageIndex].retrieve();
           
       }
}