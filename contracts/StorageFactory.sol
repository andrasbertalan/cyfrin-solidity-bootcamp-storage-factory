// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract () public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push (newSimpleStorageContract);
    }

    function sfStore(uint256 _SimpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface
      
        listOfSimpleStorageContracts[_SimpleStorageIndex].store(_newSimpleStorageNumber);
    }
    function sfGet(uint256 _SimpleStorageIndex) public view returns(uint256) {
                 return listOfSimpleStorageContracts[_SimpleStorageIndex].retrieve();
        }
    }


