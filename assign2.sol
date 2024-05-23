// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
contract assignment{
    uint[5] public arr=[7,9,3];
    function addelem(uint index, uint elem) public {
        arr[index]=elem;
    
    }
     function countelem() public view returns(uint) {
        return arr.length;
        }
         function replacelem(uint index, uint elem) public returns(uint) {
            return arr[index]=elem;
        
        }
         function getAllelem() public view returns(uint[5] memory) {
        return arr;
}
}